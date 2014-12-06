(function() {
     //保存y年m+1月的相关信息
    var SolarTermException = {"2011-11-22": "","2011-11-23": "\u5c0f\u96ea","2012-1-1": "\u5143\u65e6","2012-1-20": "","2012-1-21": "\u5927\u5bd2","2012-5-20": "\u5c0f\u6ee1","2012-5-21": "","2012-12-6": "","2012-12-7": "\u5927\u96ea","2013-2-3": "","2013-2-4": "\u7acb\u6625","2013-7-22": "\u5927\u6691","2013-7-23": "","2013-12-21": "","2013-12-22": "\u51ac\u81f3","2014-3-5": "","2014-3-6": "\u60ca\u86f0","2015-1-5": "","2015-1-6": "\u5c0f\u5bd2","2016-6-6": "","2016-6-7": "\u5927\u96ea","2017-7-22": "\u5927\u6691","2017-7-23": "",
    "2017-12-21": "","2017-12-22": "\u51ac\u81f3","2018-2-18": "","2018-2-19": "\u96e8\u6c34","2018-3-20": "","2018-3-21": "\u6625\u5206","2019-2-4": "\u7acb\u6625","2019-2-5": "","2019-6-21": "\u590f\u81f3","2019-6-22": "","2020-7-6": "\u5c0f\u6691","2020-7-7": "","2020-8-22": "\u5904\u6691","2020-8-23": "","2020-12-6": "","2020-12-7": "\u5927\u96ea"}, lichunException = {2013: "4"};
    var eve = 0;
    var lunarInfo = [
    0x04bd8, 0x04ae0, 0x0a570, 0x054d5, 0x0d260, 0x0d950, 0x16554, 0x056a0, 0x09ad0, 0x055d2,
    0x04ae0, 0x0a5b6, 0x0a4d0, 0x0d250, 0x1d255, 0x0b540, 0x0d6a0, 0x0ada2, 0x095b0, 0x14977,
    0x04970, 0x0a4b0, 0x0b4b5, 0x06a50, 0x06d40, 0x1ab54, 0x02b60, 0x09570, 0x052f2, 0x04970,
    0x06566, 0x0d4a0, 0x0ea50, 0x06e95, 0x05ad0, 0x02b60, 0x186e3, 0x092e0, 0x1c8d7, 0x0c950,
    0x0d4a0, 0x1d8a6, 0x0b550, 0x056a0, 0x1a5b4, 0x025d0, 0x092d0, 0x0d2b2, 0x0a950, 0x0b557,
    0x06ca0, 0x0b550, 0x15355, 0x04da0, 0x0a5d0, 0x14573, 0x052d0, 0x0a9a8, 0x0e950, 0x06aa0,
    0x0aea6, 0x0ab50, 0x04b60, 0x0aae4, 0x0a570, 0x05260, 0x0f263, 0x0d950, 0x05b57, 0x056a0,
    0x096d0, 0x04dd5, 0x04ad0, 0x0a4d0, 0x0d4d4, 0x0d250, 0x0d558, 0x0b540, 0x0b5a0, 0x195a6,
    0x095b0, 0x049b0, 0x0a974, 0x0a4b0, 0x0b27a, 0x06a50, 0x06d40, 0x0af46, 0x0ab60, 0x09570,
    0x04af5, 0x04970, 0x064b0, 0x074a3, 0x0ea50, 0x06b58, 0x055c0, 0x0ab60, 0x096d5, 0x092e0,
    0x0c960, 0x0d954, 0x0d4a0, 0x0da50, 0x07552, 0x056a0, 0x0abb7, 0x025d0, 0x092d0, 0x0cab5,
    0x0a950, 0x0b4a0, 0x0baa4, 0x0ad50, 0x055d9, 0x04ba0, 0x0a5b0, 0x15176, 0x052b0, 0x0a930,
    0x07954, 0x06aa0, 0x0ad50, 0x05b52, 0x04b60, 0x0a6e6, 0x0a4e0, 0x0d260, 0x0ea65, 0x0d530,
    0x05aa0, 0x076a3, 0x096d0, 0x04bd7, 0x04ad0, 0x0a4d0, 0x1d0b6, 0x0d250, 0x0d520, 0x0dd45,
    0x0b5a0, 0x056d0, 0x055b2, 0x049b0, 0x0a577, 0x0a4b0, 0x0aa50, 0x1b255, 0x06d20, 0x0ada0
  ],
  solarMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
  solarTerm = ["小寒","大寒","立春","雨水","惊蛰","春分","清明","谷雨","立夏","小满","芒种","夏至","小暑","大暑","立秋","处暑","白露","秋分","寒露","霜降","立冬","小雪","大雪","冬至"],
  sTermInfo = [0,21208,42467,63836,85337,107014,128867,150921,173149,195551,218072,240693,263343,285989,308563,331033,353350,375494,397447,419210,440795,462224,483532,504758],

  nStr1 = ["日", "一", "二", "三", "四", "五", "六", "七", "八", "九", "十"],
  nStr2 = ["初", "十", "廿", "卅", ""],
  //公历节日
  sFtv = ["0101*元旦", "0214 情人节", "0308 妇女节", "0312 植树节", "0401 愚人节", "0422 地球日", "0501 劳动节", "0504 青年节", "0531 无烟日", "0601 儿童节", "0606 爱眼日", "0701 建党日", "0707 抗战纪念日", "0801 建军节", "0910 教师节", "0918 九·一八事变纪念日", "1001*国庆节", "1031 万圣节", "1111 光棍节", "1201 艾滋病日", "1213 南京大屠杀纪念日", "1224 平安夜", "1225 圣诞节"],
  //调整后的阳历节日
  wFtv = ["0520 母亲节", "0630 父亲节", "1144 感恩节"],
  //农历节日
  lFtv = ["0101*春节", "0115 元宵节", "0202 龙抬头", "0505 端午节", "0707 七夕", "0715 中元节", "0815 中秋节", "0909 重阳节", "1208 腊八节", "1223 小年", "0100*除夕"];
  
  var utils = {
    //返回农历y年的总天数

    lYearDays: function(y) {
      var i, sum = 348;
      for (i = 0x8000; i > 0x8; i >>= 1) sum += (lunarInfo[y - 1900] & i) ? 1 : 0;
      return (sum + utils.leapDays(y));
    },

    //返回农历y年闰月的天数
    leapDays: function(y) {
      if (utils.leapMonth(y)) return ((lunarInfo[y - 1900] & 0x10000) ? 30 : 29);
      else return (0);
    },
    //判断y年的农历中那个月是闰月,不是闰月返回0

    leapMonth: function(y) {
      return (lunarInfo[y - 1900] & 0xf);
    },
    //返回农历y年m月的总天数

    monthDays: function(y, m) {
      return ((lunarInfo[y - 1900] & (0x10000 >> m)) ? 30 : 29);
    },

    //返回公历y年m+1月的天数

    solarDays: function(y, m) {
      if (m == 1)
        return (((y % 4 == 0) && (y % 100 != 0) || (y % 400 == 0)) ? 29 : 28);
      else
        return (solarMonth[m]);
    },
    sTerm: function(y, n) {
      var offDate = new Date((31556925974.7 * (y - 1900) + sTermInfo[n] * 60000) + Date.UTC(1900, 0, 6, 2, 5));
      return (offDate.getUTCDate())
    },
    //用中文显示农历的日期



    cDay: function(d) {
      var s;
      switch (d) {
        case 10:
          s = '初十';
          break;
        case 20:
          s = '二十';
          break;
        case 30:
          s = '三十';
          break;
        default:
          s = nStr2[Math.floor(d / 10)];
          s += nStr1[d % 10];
      }
      return (s);
    },
    addTime: function(date, amount, unit) {
        var ndate = new Date(date);
        switch (unit) {
          case "day":
              ndate.setDate(date.getDate() + amount);
              break;
          case "week":
              ndate.setDate(date.getDate() + 7 * amount);
              break;
          case "month":
              ndate.setMonth(date.getMonth() + amount);
              break;
          case "year":
              ndate.setYear(date.getFullYear() + amount);
              break;
        }
        return ndate
    }
  };


  //记录公历和农历某天的日期

  function calElement(sYear, sMonth, sDay, week, lYear, lMonth, lDay, isLeap) {
    this.isToday = false;
    //公历
    this.sYear = sYear;
    this.sMonth = sMonth;
    this.sDay = sDay;
    this.week = week;
    //农历
    this.lYear = lYear;
    this.lMonth = lMonth;
    this.lDay = lDay;
    this.isLeap = isLeap;
    //节日记录
    this.lunarFestival = ''; //农历节日
    this.solarFestival = ''; //公历节日
    this.solarTerms = ''; //节气
  }
  function Lunar(objDate) {
      var i, leap = 0,
        temp = 0;
      var baseDate = new Date(1900, 0, 31);
      var offset = (objDate - baseDate) / 86400000;
      this.dayCyl = offset + 40;
      this.monCyl = 14;
      for (i = 1900; i < 2050 && offset > 0; i++) {
        temp = utils.lYearDays(i)
        offset -= temp;
        this.monCyl += 12;
      }
      if (offset < 0) {
        offset += temp;
        i--;
        this.monCyl -= 12;
      }
      this.year = i;
      this.yearCyl = i - 1864;
      leap = utils.leapMonth(i); //闰哪个月
      this.isLeap = false;
      for (i = 1; i < 13 && offset > 0; i++) {
        if (leap > 0 && i == (leap + 1) && this.isLeap == false) { //闰月
          --i;
          this.isLeap = true;
          temp = utils.leapDays(this.year);
        } else {
          temp = utils.monthDays(this.year, i);
        }
        if (this.isLeap == true && i == (leap + 1)) this.isLeap = false; //解除闰月
        offset -= temp;
        if (this.isLeap == false) this.monCyl++;
      }
      if (offset == 0 && leap > 0 && i == leap + 1)
        if (this.isLeap) {
          this.isLeap = false;
        } else {
          this.isLeap = true;
          --i;
          --this.monCyl;
        }
      if (offset < 0) {
        offset += temp;
        --i;
        --this.monCyl;
      }
      this.month = i;
      this.day = offset + 1;
  };
  function calendar(y, m) {
    var sDObj, lDObj, lY, lM, lD = 1,
      lL, lX = 0,
      tmp1, tmp2
    var lDPOS = new Array(3)
    var n = 0
    var firstLM = 0

    sDObj = new Date(y, m, 1) //当月一日日期

    this.length = utils.solarDays(y, m) //国历当月天数
    this.firstWeek = sDObj.getDay() //国历当月1日星期几


    for (var i = 0; i < this.length; i++) {

      if (lD > lX) {
        sDObj = new Date(y, m, i + 1) //当月一日日期
        lDObj = new Lunar(sDObj) //农历
        lY = lDObj.year //农历年
        lM = lDObj.month //农历月
        lD = lDObj.day //农历日
        lL = lDObj.isLeap //农历是否闰月
        lX = lL ? utils.leapDays(lY) : utils.monthDays(lY, lM) //农历当月最後一天

        if (n == 0) firstLM = lM
        lDPOS[n++] = i - lD + 1
      }

      this[i] = new calElement(y, m + 1, i + 1, nStr1[(i + this.firstWeek) % 7],
        lY, lM, lD++, lL)


      // if ((i + this.firstWeek) % 7 == 0) this[i].color = 'red' //周日颜色
      // if ((i + this.firstWeek) % 14 == 13) this[i].color = 'red' //周休二日颜色
    }

    //节气
    tmp1 = utils.sTerm(y, m * 2) - 1;
    tmp2 = utils.sTerm(y, m * 2 + 1) - 1;
    this[tmp1].solarTerms = solarTerm[m * 2];
    this[tmp2].solarTerms = solarTerm[m * 2 + 1];



    //国历节日
    for (i in sFtv){
      if (sFtv[i].match(/^(\d{2})(\d{2})([\s\*])(.+)$/)) {
        if (Number(RegExp.$1) == (m + 1)) {
          this[Number(RegExp.$2) - 1].solarFestival += RegExp.$4 + ' '
          if (RegExp.$3 == '*') {
            this[Number(RegExp.$2) - 1].isXiujia = true;
          }
        }
      }
    }
      
        //月周节日
    for (i in wFtv){
      if (wFtv[i].match(/^(\d{2})(\d)(\d)([\s\*])(.+)$/)){
          if (Number(RegExp.$1) == (m + 1)) {
            tmp1 = Number(RegExp.$2)
            tmp2 = Number(RegExp.$3)
            this[((this.firstWeek > tmp2) ? 7 : 0) + 7 * (tmp1 - 1) + tmp2 - this.firstWeek].solarFestival += RegExp.$5 + ' '
          }
      }
    }

    //农历节日
    for (i in lFtv) {
        if (lFtv[i].match(/^(\d{2})(.{2})([\s\*])(.+)$/)) {
          tmp1 = Number(RegExp.$1) - firstLM
          if (tmp1 == -11){
             tmp1 = 1;
          }
          if (tmp1 >= 0 && tmp1 < n) {
            tmp2 = lDPOS[tmp1] + Number(RegExp.$2) - 1;
            if (tmp2 >= 0 && tmp2 < this.length && !this[tmp2].isLeap) {
              this[tmp2].lunarFestival += RegExp.$4 + ' '
              if (RegExp.$3 == '*') {
                this[tmp2].isXiujia = true;
              }
            }
          }
        }
    }
    //今日

    var today = new Date();
    var tY = today.getFullYear();
    var tM = today.getMonth();
    var tD = today.getDate();
    if (y == tY && m == tM) this[tD - 1].isToday = true; //今日
  }
  
   var calendarApp = function(opt) {
        this.opt = opt;
   };
   calendarApp.prototype = {
      initialize: function() {
          var today = new Date();
          var tY = today.getFullYear();
          var tM = today.getMonth();
          this.draw(tY, tM);
      },

      draw: function(SY, SM) {
        var TF = true;
        var p1 = p2 = "";
        var i,j, sD, s, size;
        var html = ['<table cellspacing = 0>'];
        var cld = new calendar(SY, SM);
        var ocld , ncld;
        var gNum = 1;//如果配置周日为第一个，gNum为0
        //SolarTermException = $.extend(SolarTermException, this.opt.SolarTermException);
        var processKeys = function(obj) {
          if(!obj) return null;
          for(var key in obj) {
            var value = obj[key];
            key = key.replace(/(\d{4})-(\d{1,2})-(\d{1,2})/g, function(a,y,m,d){return y + '-'+ (m.length ==1 ? '0':'')+m + '-'+ (d.length == 1? '0':'') +d;});
            obj[key] = value;
          }
          return obj;
        };
        var xiujia = processKeys(this.opt.xiujia);
        var shangban = processKeys(this.opt.shangban);
        var fixJieri= processKeys(this.opt.fixJieri);
        var jiaqiDays = jiaqiEndDate = shangbanDays =shangbanEndDate =  0;
        
        function buildHtml(sD, cld, thisMonth, gNum) {

            var clsName = 'op-calendar-new-relative';
            if(!thisMonth) {
                clsName += " op-calendar-new-disabled ";  
            }else {
              if(cld[sD].isToday) {
                  clsName +=" op-calendar-new-today "; 
              }
            }
            //显示公历数字
            var lHtml  = '<div class="op-calendar-new-daynumber">'+cld[sD].sDay+'</div>';
            var gHtml = utils.cDay(cld[sD].lDay);
            var Slfw = Ssfw = null;

            s = cld[sD].lunarFestival;

            if(s.length>0) { //农历节日
                if(s.length>6) s = s.substring(0, 3)+'…';
            }else {
                s=cld[sD].solarFestival;
                if(s.length>0) {
                  
                }else { //廿四节气
                  s=cld[sD].solarTerms;
                  var a = cld[sD].sYear + "-" + (cld[sD].sMonth) + "-" + cld[sD].sDay;
                  if (typeof SolarTermException[a] !== 'undefined' ) {
                        s = cld[sD].solarTerms = SolarTermException[a];
                  }
                }
            }

            var key = cld[sD].sYear + '-' + (cld[sD].sMonth < 10? '0':'')+cld[sD].sMonth  + '-'+ (cld[sD].sDay < 10?'0':'')+cld[sD].sDay;
            if(fixJieri[key]) {
              s = fixJieri[key];
            }
            if(s.length>0) {
              gHtml = s;
              clsName +=" op-calendar-new-jieri";
            }
            var bhtml = '';
            if((xiujia[key])) {
                clsName  += ' op-calendar-new-xiujia';
                bhtml += '<span class="op-calendar-new-jiaobiao">休</span>';
                jiaqiDays = parseInt(xiujia[key],10);
                jiaqiEndDate = gNum + jiaqiDays;
            }else if(jiaqiDays && ( gNum < jiaqiEndDate) ) {
                clsName  += ' op-calendar-new-xiujia';
            }else {
                jiaqiDays = jiaqiEndDate = 0;
            }

            if((shangban[key])) {

                clsName  += ' op-calendar-new-shangban';
                bhtml += '<span class="op-calendar-new-jiaobiao">班</span>';
                shangbanDays = parseInt(shangban[key],10);
                shangbanEndDate = gNum + shangbanDays;

            }else if(shangbanDays && gNum < shangbanEndDate ) {
                clsName  += ' op-calendar-new-shangban';
            }else {

                shangbanDays = shangbanEndDate = 0;
            }
            gHtml  = '<div class="op-calendar-new-lday">'+gHtml+'</div>';
            return '<td class="'+clsName+'"><a href="javascript:void(0);">'+lHtml+gHtml+bhtml+'</a></td>';
        }
        var tempHtml = '';
        for(i = 0; i < 6; i++) {
          html.push('<tr>')
          for(j = 0; j < 7; j++) {
              sD = gNum - cld.firstWeek;
              gNum++;
              if(sD < 0) {
                //补充上一个月的
                if(!ocld) {
                  var d = new Date(SY, SM);
                  d = utils.addTime(d, -1, 'month');
                  ocld = new calendar(d.getFullYear(), d.getMonth());
                }
                tempHtml = buildHtml(ocld.length + sD, ocld, false, gNum);

              }else if(sD >= cld.length) {
                //补充下一个月的
                if(!ncld) {
                  var d = new Date(SY, SM);
                  d = utils.addTime(d, 1, 'month');
                  ncld = new calendar(d.getFullYear(), d.getMonth());
                }
                tempHtml = buildHtml(sD - cld.length , ncld, false, gNum);


              }else {
                //正常的一个月份的
                tempHtml = buildHtml(sD, cld, true, gNum);
              }
              
              html.push(tempHtml);
          }
          html.push('</tr>');
        }
        html.push('</table>');
        var el = document.querySelector(this.opt.el);
        el.querySelector('.wise_calendar_oper_text').innerHTML = SY+'年'+(SM + 1)+'月';
        el.querySelector('.wise_calendar_body').innerHTML = html.join('');
      },
      change: function() {
        var year = document.querySelector('[name=SY]').value;
        var month = document.querySelector('[name=SM]').value;
        month = +month - 1;
        this.draw(year, month);

      },
      //算出当前月第一天的农历日期和当前农历日期下一个月农历的第一天日期
    
      bindEvent: function() {}
   };
   window.calendarApp = calendarApp;
})();

var calendarApp = new window.calendarApp({
  el: '#calendar',
  xiujia: {
    '2014-10-1': '5',
    '2015-01-01': '3',
    '2014-11-6': '4'
  },
  shangban: {
    '2014-10-6': '2',
    '2014-11-01': '2',
    '2014-12-31': '1'
  },
  fixJieri: {
    '2014-11-11':'新光棍节',
    '2014-12-13': '纪念日',
  }
});
calendarApp.initialize();