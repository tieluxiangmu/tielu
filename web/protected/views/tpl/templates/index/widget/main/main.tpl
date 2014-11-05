{%block name="block_head_static"%}
<style type="text/css">
        body{
            background:#f0f0f0 url('/newweb/static/index/images/bg-body_418c2bd.gif') top left repeat-y
        }
        #body-wrapper{
            background:url('/newweb/static/index/images/bg-radial-gradient_0dbe291.gif') fixed 230px top no-repeat
        }
</style>
{%/block%}
<div id="sidebar">
<div id="sidebar-wrapper">
<a href="#">
<img id="pic" src="/newweb/static/index/images/zp_ef0aa51.png" alt="用户照片" />
</a>
<div id="profile-links">
姓名：<a href="#" title="姓名">
张雨琪</a>
<br />
职务：<a href="#messages" rel="modal" title="职务">
安全科长</a>
<br />
办公电话：<a href="#messages" rel="modal" title="">
22981</a>
<br />
手机：<a href="#messages" rel="modal" title="">
18566778899</a>
<br />
<div class="spliter">
</div>
<p>
<a href="/newweb" title="点击进入系统主页">
系统主页</a>
|<a href="#" title="退出">
退出</a>
</p>
</div>
<ul id="main-nav">
<li>
<a href="#/" class="nav-top-item no-submenu">
用户管理</a>
</li>
<li style="display:none;" id="jd-li-realistic">
<a href="#" class="nav-top-item current">
干部写实</a>
<ul>
<li>
<a class="current" href="#">
干部写实管理</a>
</li>
<li>
<a href="#">
安全生产管理</a>
</li>
<li>
<a href="#">
两违问题管理</a>
</li>
<li>
<a href="#">
安全风险管理</a>
</li>
</ul>
</li>
</ul>
</div>
</div>
<div id="main-content">
{%widget name="index:widget/main/main.tpl" mode="quickling" pagelet_id="index-widget-main"%}
<div id="js-div-main">
<h2 id="welcome">
系统欢迎您！</h2>
<p id="page-intro">
您可以点击下方按钮进行操作</p>
<ul class="shortcut-buttons-set">
<li>
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/schedule_a86794f.png" alt="日程" />
<br />
日程</span>
</a>
</li>
<li id="js-li-cadrerealistic">
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/notes_d60da20.png" alt="写实录入" />
<br />
干部写实</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/bookshelf_75f07d4.png" alt="相关资料" />
<br />
相关资料</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/summary_44e023d.png" alt="工作情况汇总" />
<br />
工作情况汇总</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#messages" rel="modal">
<span>
<img src="/newweb/static/index/images/transfer_8c630a3.png" alt="文件流转" />
<br />
文件流转</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#messages" rel="modal">
<span>
<img src="/newweb/static/index/images/search_0f7ebbd.png" alt="查询" />
<br />
查询</span>
</a>
</li>
</ul>
</div>
{%script%}
         window.onload = function() {
            //执行全部异步请求为quickling的模块
                    var elms = document.getElementsByClassName('g_fis_bigrender');
                    for (var i = 0, len = elms.length; i < len; i++) {
                        window['eval'] && window['eval'](elms[i].innerHTML);
                    }
        };
require("index:widget/main/main.js").init();
{%/script%}