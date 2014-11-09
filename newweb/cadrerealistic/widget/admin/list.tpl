<div>
    <div>用户管理</div>
    <div>
        <div id="userTree" class="ztree"></div>
    </div>
</div>
{%script%}
window.userAdmin = require("list.js");
userAdmin.init();
{%/script%}