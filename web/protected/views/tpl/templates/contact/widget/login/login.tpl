<style type="text/css">
    body#body-wrapper{
            background: #222 url('/web/static/contact/images/logo_780b821.jpg') center no-repeat !important;
            background-size:cover !important;;  
}
</style>
<div id="login-wrapper" class="png_bg">
<div id="login-top">
<a href="#">
<img id="logo" src="/web/static/contact/images/logo_f815867.png" alt="重庆车务段安全管理信息系统" />
</a>
</div>
<div id="login-content">
<div class="form-content">
<form action="/newweb/">
<div class="notification information png_bg">
<div>
请妥善保管好您的用户名和密码！</div>
</div>
<p>
<label>
用&nbsp;&nbsp;户&nbsp;&nbsp;名</label>
<input class="text-input" type="text" />
</p>
<div class="clear">
</div>
<p>
<label>
用户密码</label>
<input class="text-input" type="password" />
</p>
<div class="clear">
</div>
<p>
<input class="button btn btn-primary" id="submit-btn" type="button" value="确认登陆"
                    />
</p>
</form>
</div>
</div>
</div>
{%script%}
require("contact:widget/login/login.js").init();
{%/script%}