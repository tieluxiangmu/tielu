<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:01:35
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/widget/login/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8459128125426399187d7e7-97943092%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '41b0680664034017bf8434b32cb283633a5f57c4' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/widget/login/login.tpl',
      1 => 1412678184,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8459128125426399187d7e7-97943092',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54263991883354_15240823',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54263991883354_15240823')) {function content_54263991883354_15240823($_smarty_tpl) {?><style type="text/css">
    body#body-wrapper{
            background: #222 url('/web/static/index/images/logo_780b821.jpg') center no-repeat !important;
            background-size:cover !important;;  
}
</style>
<div id="login-wrapper" class="png_bg">
<div id="login-top">
<a href="#">
<img id="logo" src="/web/static/index/images/logo_f815867.png" alt="重庆车务段安全管理信息系统" />
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
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("index:widget/login/login.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>