<?php /* Smarty version Smarty-3.1.13, created on 2014-03-31 07:25:48
         compiled from "D:\BaiduWeb\PHPnow\htdocs\demo\web\protected\views\tpl\template\home\page\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10495533832ee2b56e7-16716481%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1727ad8575273dbfd10df8bb697ea9754771811a' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\demo\\web\\protected\\views\\tpl\\template\\home\\page\\index.tpl',
      1 => 1396250747,
      2 => 'file',
    ),
    'd94b308df8a379fc7b7d029e2ce1b5583a308766' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\demo\\web\\protected\\views\\tpl\\template\\common\\page\\layout.tpl',
      1 => 1396250006,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10495533832ee2b56e7-16716481',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_533832ee300f33_11922045',
  'variables' => 
  array (
    'title' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_533832ee300f33_11922045')) {function content_533832ee300f33_11922045($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\BaiduWeb\\PHPnow\\htdocs\\demo\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><!DOCTYPE html>

<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::setFramework(FISResource::getUri("common:static/js/mod.js", $_smarty_tpl->smarty)); ?><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="web前端|javascript|div+css|响应式布局|php" name="description">
<title><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['title']->value);?>
</title>
<!--[if lt IE 9]>
<script src="/demo/web/static/common/js/html5_36134e1.js"></script>
<![endif]-->


<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::load("common:static/css/bootstrap.css",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::load("common:static/js/libs/jquery-1.10.1.js",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::load("common:static/js/libs/mod.js",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}echo FISResource::cssHook();?></head>

<body>

<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}$_tpl_path=FISResource::getUri("home:widget/hackerempire/hackerempire.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."home:widget/hackerempire/hackerempire.tpl".'"', E_USER_ERROR);}FISResource::load("home:widget/hackerempire/hackerempire.tpl", $_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::load("home:static/css/index.css",$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::load('home:page/index.tpl',$_smarty_tpl->smarty);?>
<?php if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/demo/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::load('common:page/layout.tpl',$_smarty_tpl->smarty);?></body><?php if(class_exists('FISResource')){echo FISResource::render('js');echo FISResource::renderScriptPool();}?>
<script type="text/javascript">
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F10ca66ed74f9d277201c7682f5d25752' type='text/javascript'%3E%3C/script%3E"));
	</script>
<?php $_smarty_tpl->registerFilter('output', array('FISResource', 'renderResponse'));?></html><?php }} ?>