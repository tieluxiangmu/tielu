var cadrerealistic = cadrerealistic || {},
    url = 'index.php?r=realinvestigation/realinvestigationman',
    //commonhelp = require('common:widget/commonhelp/commonhelp.js');
    commonhelp = window.ui;
cadrerealistic = {
    init: function(redirturlparmas) {
        // 初始化绑定元素以及事件
        var me = this;
        me.redirturlparmas = redirturlparmas; //若用户直接刷新传递过来的参数
        me.render();
        me.bind();
    },
    load: function(loadurl, loadtype, indexflag) {
        var me = this;
        /*处理用户刷新*/
        if (loadtype == "init" && me.redirturlparmas) {
            loadurl += me.redirturlparmas;
        };
        commonhelp.loadpage({
            url: loadurl,
            index: indexflag,
            conid: 'js-p-listcadrerealistic'
        });
    },
    render: function() {
        var me = this;
        me.cadcontinue = $('#js-input-cadcontinue');
        me.submitseacrhbtn = $('#submitseacrh-btn');
        me.submit = $('#js-btn-cardreal');
        me.cancelbtn = $('#js-input-cadrealcancel');
    },
    bind: function() {
        var me = this;
        me.setSearchword();
        $(".chosen-select").chosen({
            no_results_text: "没有查找结果!"
        });
        (me.cadcontinue).on('click', $.proxy(me._submitEvent, this));
        me._cadcontinueEvent();
        (me.submitseacrhbtn).on('click', $.proxy(me._submitseacrhEvent, this));
        (me.submit).on('click', $.proxy(me._submitEvent, this));
        (me.cancelbtn).on('click', $.proxy(me._cancelEvent, this));
        $('#js-a-realinvestigation').addClass('current');
        /*初始化加载页面*/
        me.load(url, 'init', true);
        //提交成功更新数据
        listener.on('realinvestigation-form', 'success', function(event, info) {
            if (info == "add") {
                //录入成功将url更换至最新
                window.history.pushState({}, document.title, 'index.php?r=realinvestigation/index');
                me.load(url);
            }
            if (info == "delete") {
                var params = location.search.split('&'),
                    _temp = url;
                params.shift();
                if (params.length > 0) {
                    _temp += "&" + params.join('&');
                }
                me.load(_temp, "", false);
                _temp = "";
            }
        });
        //me.formvalidtaeres = me.formValidate();
    },
    setSearchword: function() {
        /*用户刷新URL的时候把用户的筛选数据回填*/
        var sdateofentry = Request.QueryString('sdateofentry'),
            edateofentry = Request.QueryString('edateofentry'),
            checkperson = decodeURIComponent(Request.QueryString('checkperson')),
            checkmodel = decodeURIComponent(Request.QueryString('checkmodel')),
            adresonduty = decodeURIComponent(Request.QueryString('adresonduty')),
            categorynumber = decodeURIComponent(Request.QueryString('categorynumber'));
        sdateofentry && $('#js-input-sdateofentry').val(sdateofentry);
        edateofentry && $('#js-input-edateofentry').val(sdateofentry);
        checkperson && $('#checkperson').find("option[value='" + checkperson + "']").attr("selected", "selected");
        checkmodel && $('#checkmodel').find("option[value='" + checkmodel + "']").attr("selected", "selected");
        adresonduty && $('#adresonduty').find("option[value='" + adresonduty + "']").attr("selected", "selected");
        categorynumber && $('#categorynumber').find("option[value='" + categorynumber + "']").attr("selected", "selected");

    },
    //验证表单
    formValidate: function() {
        var $validate = $('#realinvestigation-form').validate({
            errorElement: "span",
            rules: {
                'Realinvestigation[dateofentry]': {
                    required: true
                },
                'Realinvestigation[timeofentry]': {
                    required: true
                },
                'Realinvestigation[checkperson]': {
                    required: true
                },
                'Realinvestigation[cadresonduty]': {
                    required: true
                },
                'Realinvestigation[foundproblem]': {
                    required: true
                },
                'Realinvestigation[noticeflag]': {
                    required: true
                },
                'Realinvestigation[categorynumber]': {
                    required: true
                },
                'Realinvestigation[checkcontents]': {
                    required: true
                },
                'Realinvestigation[improvement]': {
                    required: true
                },
                'Realinvestigation[checkmodel]': {
                    required: true
                },
                'Realinvestigation[company]': {
                    required: true
                }
            },
            errorPlacement: function(error, element) {
                if (element.is(":radio")) {
                    error.appendTo(element.parent());
                } else {
                    error.insertAfter(element);
                }
            },
            success: function(label) {
                label.html("&nbsp;").addClass("success");
            }
        });
        return $validate;
    },
    _cancelEvent: function() {
        location.href = "index.php?r=realinvestigation/index";
    },
    /*内部逻辑跳转*/
    _cadcontinueEvent: function(e) {
        listener.on('realinvestigation-form', 'jump', function(event, info) {
            if (info == "jump") {
                var $selected = $("#js-select-cadrerealistic  option:selected"),
                    $selectedval = $selected.val(),
                    $selectedtxt = $selected.text(),
                    tempurl = "index.php?r=cadrerealistic/";
                /*从干部写实到安全生产管理map参数关系*/
                var twoparams = {
                    checktime: $('#Realinvestigation_dateofentry').val(), //检查时间<=日期
                    rummager: $('#Realinvestigation_checkperson  option:selected').val(), //检查人<=检查人
                    company: $('#Realinvestigation_company  option:selected').val(), //被查单位<=单位
                    Illegalcontent: $('#Realinvestigation_foundproblem').val(), //违章内容<=发现问题
                    llegalcategory: $('#Realinvestigation_categorynumber option:selected').val() //违章类别<=两违类别/件数
                };
                /*从干部写实到两违问题管理map参数关系*/
                var produparams = {
                    company: $('#Realinvestigation_company  option:selected').val(), //单位<=单位
                    theproblem: $('#Realinvestigation_foundproblem').val(), //问题点<=发现问题
                    storagetime: $('#Realinvestigation_dateofentry').val() //入库时间<=日期
                    //Illegalcontent: $('#Realinvestigation_foundproblem').val() //整改情况<=整改情况
                };
                switch ($selectedval) {
                    case "0":
                        tempurl += "addtwocontrary&twoparams=" + JSON.stringify(twoparams);
                        break;
                    case "1":
                        tempurl += "addecurityprodu&produparams=" + JSON.stringify(produparams);
                        break;
                    case "2":
                        tempurl += "addecurityprodu&step=both&produparams=" + JSON.stringify(produparams) + "&twoparams=" + JSON.stringify(twoparams);
                        break;
                }
                ui.notifyDialog('系统即将跳转到' + $selectedtxt, function() {
                    window.location.href = tempurl;
                });
            };
        });
    },
    _submitseacrhEvent: function() {
        var _url = "";
        _url += url;
        if ($('#js-input-sdateofentry').val()) {
            _url += "&sdateofentry=" + $('#js-input-sdateofentry').val();
        };
        if ($('#js-input-edateofentry').val()) {
            _url += "&edateofentry=" + $('#js-input-edateofentry').val();
        };
        var checkperson = commonhelp.getchosensingleSelect('checkperson');
        if (checkperson) {
            _url += "&checkperson=" + checkperson;
        };
        var checkmodel = commonhelp.getchosensingleSelect('checkmodel');
        if (checkmodel) {
            _url += "&checkmodel=" + checkmodel;
        };
        var adresonduty = commonhelp.getchosensingleSelect('adresonduty');
        if (adresonduty) {
            _url += "&adresonduty=" + adresonduty;
        };
        var categorynumber = commonhelp.getchosensingleSelect('categorynumber');
        if (categorynumber) {
            _url += "&categorynumber=" + categorynumber;
        };
        window.history.pushState({}, document.title, _url);
        /*无刷新加载搜索*/
        commonhelp.loadpage({
            url: _url,
            conid: 'js-p-listcadrerealistic'
        });
        _url = "";
    },
    _submitEvent: function(e) {
        //e.stopPropagation();
        var me = this;
        if (!me.formValidate().form()) {
            e.preventDefault();
            jError('请按系统要求填写干部写实数据！');
            return false;
        }
    }
}
module.exports = cadrerealistic;