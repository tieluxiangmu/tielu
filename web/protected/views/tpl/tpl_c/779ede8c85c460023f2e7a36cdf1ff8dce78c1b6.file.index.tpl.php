<?php /* Smarty version Smarty-3.1.13, created on 2014-03-30 15:59:52
         compiled from "D:\BaiduWeb\PHPnow\htdocs\demo\web\protected\views\tpl\template\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:532653383f784625a5-27442121%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '779ede8c85c460023f2e7a36cdf1ff8dce78c1b6' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\demo\\web\\protected\\views\\tpl\\template\\index.tpl',
      1 => 1396191723,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '532653383f784625a5-27442121',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'title' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53383f7852f728_46574990',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53383f7852f728_46574990')) {function content_53383f7852f728_46574990($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\BaiduWeb\\PHPnow\\htdocs\\demo\\web\\protected\\extensions\\smarty\\plugin\\modifier.f_escape_xml.php';
?><!DOCTYPE html>

<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugin/FISResource.class.php');}FISResource::setFramework(FISResource::getUri("common:static/js/mod.js", $_smarty_tpl->smarty)); ?><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="web前端|javascript|div+css|响应式布局|php" name="description">
<title><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['title']->value);?>
</title>
<!--[if lt IE 9]>
<script src="/static/common/js/html5_36134e1.js"></script>
<![endif]-->


<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugin/FISResource.class.php');}FISResource::load("common:static/css/bootstrap.css",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugin/FISResource.class.php');}FISResource::load("common:static/js/libs/jquery-1.10.1.js",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugin/FISResource.class.php');}FISResource::load("common:static/js/libs/mod.js",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugin/FISResource.class.php');}echo FISResource::cssHook();?></head>

<body>

<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugin/FISResource.class.php');}FISResource::load('common:page/layout.tpl',$_smarty_tpl->smarty);?></body><?php if(class_exists('FISResource')){echo FISResource::render('js');echo FISResource::renderScriptPool();}?>
<?php $_smarty_tpl->registerFilter('output', array('FISResource', 'renderResponse'));?></html><?php }} ?>