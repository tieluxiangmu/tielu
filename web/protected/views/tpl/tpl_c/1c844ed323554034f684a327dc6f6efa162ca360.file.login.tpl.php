<?php /* Smarty version Smarty-3.1.13, created on 2014-09-18 16:04:02
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/login/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:182797055154198cd01078c3-45157553%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1c844ed323554034f684a327dc6f6efa162ca360' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/login/login.tpl',
      1 => 1411049015,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '182797055154198cd01078c3-45157553',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54198cd010ff33_45208346',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54198cd010ff33_45208346')) {function content_54198cd010ff33_45208346($_smarty_tpl) {?>
<style type="text/css">
	 body#body-wrapper{
	       background:  url('/newweb/static/index/images/logo_c233fda.jpg')   top center no-repeat fixed !important;  
                  background-size: cover!important;
	}
</style>

<div id="login-wrapper" class="png_bg">
<div id="login-top">
<a href="#">
<img id="logo" src="/newweb/static/index/images/logo_f815867.png" alt="重庆车务段安全管理信息系统" />
</a>
</div>
<div id="login-content">
<div class="form-content">
<form action="/newweb/">
<div class="notification information png_bg">
<div>
请准确输入您的用户名和密码！</div>
</div>
<p>
<label>
用户名</label>
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
<input class="button btn btn-primary" id="submit-btn" type="button" value="确认登陆" />
</p>
</form>
</div>
</div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("index:widget/login/login.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>