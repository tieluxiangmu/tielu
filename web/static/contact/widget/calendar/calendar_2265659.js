define("contact:widget/calendar/calendar.js",function(e,t,r){function n(e,t){return e>>t&1}function a(){l=3!=arguments.length?new Date:new Date(arguments[0],arguments[1],arguments[2]);var e,t,r,a,o=!1,g=l.getFullYear();for(e=365*(g-1921)+Math.floor((g-1921)/4)+D[l.getMonth()]+l.getDate()-38,l.getYear()%4==0&&l.getMonth()>1&&e++,t=0;;t++){for(a=A[t]<4095?11:12,r=a;r>=0;r--){if(e<=29+n(A[t],r)){o=!0;break}e=e-29-n(A[t],r)}if(o)break}f=1921+t,h=a-r+1,i=e,12==a&&(h==Math.floor(A[t]/65536)+1&&(h=1-h),h>Math.floor(A[t]/65536)+1&&h--)}function o(){var e="";return e+=s.charAt((f-4)%10),e+=M.charAt((f-4)%12),e+="年 ",1>h?(e+="(闰)",e+=m.charAt(-h-1)):e+=m.charAt(h-1),e+="月",e+=11>i?"初":20>i?"十":30>i?"廿":"三十",(i%10!=0||10==i)&&(e+=d.charAt((i-1)%10)),e}function g(e,t,r){return 1921>e||e>2020?"":(t=parseInt(t)>0?t-1:11,a(e,t,r),o())}function c(e){return yr=e.getYear(),1e3>yr&&(yr+=1900),yr}function u(e){var t=c(w)+"年"+(w.getMonth()+1)+"月"+w.getDate()+"日 "+y[w.getDay()]+" ";t+=g(Y,p,I),document.getElementById(e).innerHTML=t}var f,h,i,l,y=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"),w=new Date,A=new Array(100),D=new Array(12),s="甲乙丙丁戊己庚辛壬癸",M="子丑寅卯辰巳午未申酉戌亥",d="一二三四五六七八九十",m="正二三四五六七八九十冬腊";A=new Array(2635,333387,1701,1748,267701,694,2391,133423,1175,396438,3402,3749,331177,1453,694,201326,2350,465197,3221,3402,400202,2901,1386,267611,605,2349,137515,2709,464533,1738,2901,330421,1242,2651,199255,1323,529706,3733,1706,398762,2741,1206,267438,2647,1318,204070,3477,461653,1386,2413,330077,1197,2637,268877,3365,531109,2900,2922,398042,2395,1179,267415,2635,661067,1701,1748,398772,2742,2391,330031,1175,1611,200010,3749,527717,1452,2742,332397,2350,3222,268949,3402,3493,133973,1386,464219,605,2349,334123,2709,2890,267946,2773,592565,1210,2651,395863,1323,2707,265877),D[0]=0,D[1]=31,D[2]=59,D[3]=90,D[4]=120,D[5]=151,D[6]=181,D[7]=212,D[8]=243,D[9]=273,D[10]=304,D[11]=334;{var v=new Date,Y=v.getFullYear(),p=v.getMonth()+1,I=v.getDate();v.getDay(),parseInt(v.getTime()/1e3)}r.exports.calendar=u});