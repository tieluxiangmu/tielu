<div id="js-div-main">
    <h2 id="welcome">
        系统欢迎您！<span id="js-span-calendar"></span>
    </h2>
    <p id="page-intro">
        您可以点击下方按钮进行操作
    </p>
    <ul class="shortcut-buttons-set">
        <li>
            <a class="shortcut-button" href="index.php?r=schedule/index">
                <span>
                    <img src="/static/images/schedule.png" alt="日程" />
                    <br />
                    日程
                </span>
            </a>
        </li>
        <li class="js-action">
            <a class="shortcut-button" href="index.php?r=realinvestigation/index">
                <span>
                    <img src="/static/images/notes.png" alt="写实录入" />
                    <br />
                    干部写实
                </span>
            </a>
        </li>
        <li>
            <a class="shortcut-button" href="index.php?r=cadreexamine">
                <span>
                    <img src="/static/images/check.png" alt="相关资料" />
                    <br />
                    干部考核
                </span>
            </a>
        </li>
        <li>
            <a class="shortcut-button" href="index.php?r=WorkInfo/Listtwocontrary">
                <span>
                    <img src="/static/images/summary.png" alt="工作情况汇总" />
                    <br />
                    工作情况汇总
                </span>
            </a>
        </li>
         <li>
            <a class="shortcut-button" href="index.php?r=safetyproduct/index">
                <span>
                    <img src="/static/images/resize_png_new.png" alt="问题库" />
                    <br />
                    问题库
                </span>
            </a>
        </li>
        <li>
            <a class="shortcut-button" href="">
                <span>
                    <img src="/static/images/Bulletin.png" alt="典型问题通报" />
                    <br />
                    典型问题通报
                </span>
            </a>
        </li>
        <li>
            <a class="shortcut-button" href="">
                <span>
                    <img src="/static/images/Safetywarning.png" alt="安全预警" />
                    <br />
                    安全预警
                </span>
            </a>
        </li>
        <li>
            <a class="shortcut-button" href="index.php?r=safetyproduct/search">
                <span>
                    <img src="/static/images/mainsearch.png" alt="查询" />
                    <br />
                    查询
                </span>
            </a>
        </li>
    </ul>
</div>
{%script%}
require('index:widget/calendar/calendar.js').calendar('js-span-calendar');
{%/script%}