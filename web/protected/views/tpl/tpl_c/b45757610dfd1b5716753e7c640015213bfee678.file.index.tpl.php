<?php /* Smarty version Smarty-3.1.13, created on 2014-09-08 03:08:05
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/page/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:196368718453f9b3ff450131-81756068%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b45757610dfd1b5716753e7c640015213bfee678' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/page/index.tpl',
      1 => 1409512658,
      2 => 'file',
    ),
    '6bc38d1b24d853daa797d3b7dc04b61b34039c16' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/common/page/other.tpl',
      1 => 1409629407,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '196368718453f9b3ff450131-81756068',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53f9b3ff499507_69497178',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53f9b3ff499507_69497178')) {function content_53f9b3ff499507_69497178($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>重庆铁路局安全信息管理系统</title>
</head>
<body>


<?php if(!class_exists('FISPagelet')){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("home:widget/login/login.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."home:widget/login/login.tpl".'"', E_USER_ERROR);}FISPagelet::load("home:widget/login/login.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('home:page/index.tpl',$_smarty_tpl->smarty,false);?>
</body>
</html>
<?php }} ?>