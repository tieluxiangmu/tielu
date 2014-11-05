<?php /* Smarty version Smarty-3.1.13, created on 2014-08-31 21:18:18
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/login/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:94030020853f9b7292de483-53249976%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8d9258e8ec55ea3f63b26f8d49b5f18977dce29c' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/login/login.tpl',
      1 => 1409512658,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '94030020853f9b7292de483-53249976',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53f9b7292df6b0_63905026',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53f9b7292df6b0_63905026')) {function content_53f9b7292df6b0_63905026($_smarty_tpl) {?>
<link rel="stylesheet" type="text/css" href="/web/static/home/widget/login/login_a82beb8.css"/>
<style type="text/css">
	*{padding:0px;margin:0px;}
	body{
	   background:#e9f7ff url('/web/static/home/images/bg_eb52f72.png') left top repeat-x;
	   font-size:12px;
	   color:#383838;
	   width: 100%;
	   height: 100%;
	}
	</style>
<script language="javascript" type="text/javascript">
	/*
	*登陆页采用原生的js写法 为了降低Extjs的加载浪费带宽
	*/
	function CheckValue(formname){
		if( formname.username.value =="") {
			alert('用户名不能为空！');
			this.focus();
			return false;
		} 
		if( formname.upassword.value =="") {
			 alert('密码不能为空！');
			this.focus();
			return false;
		}
		return true;
	}  
	</script>

<form id="userinfo-form" action="index.php?r=userinfo/checkusername" method="post">
<div id="logo">
<div id="form">
<div class="left">
<div class="user">
<input type="text" class="text" name="Userinfo[username]" id="username" maxlength="20" onmouseover="this.focus()" onfocus="this.select()">
</div>
<div class="pwd">
<input type="password" class="text" name="Userinfo[upassword]" id="upassword" onmouseover="this.focus()" onfocus="this.select()" maxlength="100"/>
</div>
</div>
<div class="right">
<input type="submit" class="submit" title="登录" value="" id="btnlogin"/>
</div>
</div>
</div>
</form>
<?php }} ?>