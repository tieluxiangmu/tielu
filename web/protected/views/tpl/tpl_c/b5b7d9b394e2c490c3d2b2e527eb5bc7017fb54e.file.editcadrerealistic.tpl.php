<?php /* Smarty version Smarty-3.1.13, created on 2014-11-06 11:44:55
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\page\editcadrerealistic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2023545835d9804f01-15442842%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b5b7d9b394e2c490c3d2b2e527eb5bc7017fb54e' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\page\\editcadrerealistic.tpl',
      1 => 1415274294,
      2 => 'file',
    ),
    '6730cc0f8d0edb19731f980e1e71c59d39b67783' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\common\\page\\layout.tpl',
      1 => 1415270324,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2023545835d9804f01-15442842',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545835d99d2b94_25534476',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545835d99d2b94_25534476')) {function content_545835d99d2b94_25534476($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISResource::setFramework(FISResource::load("common:static/js/libs/mod.js", $_smarty_tpl->smarty));FISPagelet::init(null); ?><html xmlns="<?php echo "http://www.w3.org/1999/xhtml";?>">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>重庆车务段安全管理信息系统</title>
<!--[if lt IE 9]>
<script src="/static/js/html5.js"></script>
<![endif]-->

<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/reset.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/style.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/invalid.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/jNotify.jquery.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/chosen.css",$_smarty_tpl->smarty,false);?>
<script type="text/javascript">
	window.Request = {
		QueryString : function(item){
		var svalue = location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)","i"));
		return svalue ? svalue[1] : svalue;
		}
	};
	</script>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}echo FISPagelet::cssHook();?></head>

<body id="<?php echo "body-wrapper";?>">
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/common_libs.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/chosen.jquery.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/jquery.validate.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/validate-ex.js",$_smarty_tpl->smarty,false);?>

<?php if(!class_exists('FISPagelet')){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."cadrerealistic:widget/editcadrerealistic/editcadrerealistic.tpl".'"', E_USER_ERROR);}FISPagelet::load("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('cadrerealistic:page/editcadrerealistic.tpl',$_smarty_tpl->smarty,false);?>
<script type="text/javascript" src="/web/static/libs/My97DatePicker/WdatePicker.js"></script>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
			require('common:widget/weblistener/weblistener.js').init();
			setTimeout(function(){
				listener.trigger('com.myTest', 'say', '全站通信信使');
			},100);	
		<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('common:page/layout.tpl',$_smarty_tpl->smarty,false);?></body><?php if(class_exists('FISPagelet', false)){echo FISPagelet::jsHook();}?>
<?php $_smarty_tpl->registerFilter('output', array('FISPagelet', 'renderResponse'));?></html><?php }} ?>