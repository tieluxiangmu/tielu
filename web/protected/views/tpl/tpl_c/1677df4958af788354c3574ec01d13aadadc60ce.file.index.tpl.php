<?php /* Smarty version Smarty-3.1.13, created on 2014-04-04 08:24:50
         compiled from "D:\BaiduWeb\PHPnow\htdocs\web\protected\views\tpl\templates\home\page\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:584053392853330839-50456394%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1677df4958af788354c3574ec01d13aadadc60ce' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\web\\protected\\views\\tpl\\templates\\home\\page\\index.tpl',
      1 => 1396599885,
      2 => 'file',
    ),
    '85afcde6c5f04cf7dba53db5dc4c6deb32463217' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\web\\protected\\views\\tpl\\templates\\common\\page\\layout.tpl',
      1 => 1396599849,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '584053392853330839-50456394',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5339285342fff9_05700243',
  'variables' => 
  array (
    'title' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5339285342fff9_05700243')) {function content_5339285342fff9_05700243($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\BaiduWeb\\PHPnow\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><!DOCTYPE html>

<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISResource::setFramework(FISResource::load("common:static/js/libs/mod.js", $_smarty_tpl->smarty));FISPagelet::init(null); ?><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="web前端|javascript|div+css|响应式布局|php" name="description">
<title><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['title']->value);?>
</title>
<!--[if lt IE 9]>
<script src="/web/static/common/js/html5_36134e1.js"></script>
<![endif]-->


<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/base.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}echo FISPagelet::cssHook();?></head>

<body scroll="<?php echo "no";?>">
<div class="cloud" id="moveCloud"></div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/libs/jquery-1.10.1.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/libs/mod.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/libs/BigPipe.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/libs/listener.js",$_smarty_tpl->smarty,false);?>

<?php if(!class_exists('FISPagelet')){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start("widget_ornament", "quickling",null); if ($hit) {$_tpl_path=FISPagelet::getUri("home:widget/ornament/ornament.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."home:widget/ornament/ornament.tpl".'"', E_USER_ERROR);}FISPagelet::load("home:widget/ornament/ornament.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet')){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("home:widget/mainrole/mainrole.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."home:widget/mainrole/mainrole.tpl".'"', E_USER_ERROR);}FISPagelet::load("home:widget/mainrole/mainrole.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('home:page/index.tpl',$_smarty_tpl->smarty,false);?>
<script type="text/javascript" src="/web/static/common/js/lazyload_0842904.js"></script>
<script type="text/javascript" src="/web/static/common/js/ext_lib_cd44e3a.js"></script>
<script type="text/javascript">
		 window.onload = function() {
		 	//执行全部异步请求为quickling的模块
		            var elms = document.getElementsByClassName('g_fis_bigrender');
		            for (var i = 0, len = elms.length; i < len; i++) {
		                window['eval'] && window['eval'](elms[i].innerHTML);
		            }
		};
		</script>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('common:page/layout.tpl',$_smarty_tpl->smarty,false);?></body><?php if(class_exists('FISPagelet', false)){echo FISPagelet::jsHook();}?>
<script type="text/javascript">
	var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
	document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F10ca66ed74f9d277201c7682f5d25752' type='text/javascript'%3E%3C/script%3E"));
	</script>
<?php $_smarty_tpl->registerFilter('output', array('FISPagelet', 'renderResponse'));?></html><?php }} ?>