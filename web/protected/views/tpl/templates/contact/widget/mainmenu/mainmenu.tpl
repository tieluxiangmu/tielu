<div id="js-div-main">
<h2 id="welcome">
系统欢迎您！<span id="js-span-calendar"></span>
</h2>
<p id="page-intro">
您可以点击下方按钮进行操作</p>
<ul class="shortcut-buttons-set">
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/contact/images/schedule_a86794f.png" alt="日程" />
<br />
日程</span>
</a>
</li>
<li class="js-action">
<a class="shortcut-button" href="index.php?r=realinvestigation/index">
<span>
<img src="/web/static/contact/images/notes_d60da20.png" alt="写实录入" />
<br />
干部写实</span>
</a>
</li>
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/contact/images/check_1abb341.png" alt="相关资料" />
<br />
干部考核</span>
</a>
</li>
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/contact/images/summary_44e023d.png" alt="工作情况汇总" />
<br />
工作情况汇总</span>
</a>
</li>
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/contact/images/transfer_4bbceb0.png" alt="联系人" />
<br />
联系人</span>
</a>
</li>
</ul>
</div>
{%script%}
require('index:widget/calendar/calendar.js').calendar('js-span-calendar');
{%/script%}