<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:01:35
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/page/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9715697865426399182f9c9-66960512%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a1932d55fdc4b2fb385319c042110d71fa3aac93' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/page/login.tpl',
      1 => 1412678184,
      2 => 'file',
    ),
    'd1e2eab709d35125eda9a5f2b3947c914214aace' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/common/page/layout.tpl',
      1 => 1412678175,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9715697865426399182f9c9-66960512',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54263991873c45_55802693',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54263991873c45_55802693')) {function content_54263991873c45_55802693($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISResource::setFramework(FISResource::load("common:static/js/libs/mod.js", $_smarty_tpl->smarty));FISPagelet::init(null); ?><html xmlns="<?php echo "http://www.w3.org/1999/xhtml";?>">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>重庆车务段安全管理信息系统</title>
<!--[if lt IE 9]>
<script src="/static/js/html5.js"></script>
<![endif]-->

<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/reset.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/style.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/invalid.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/jNotify.jquery.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/chosen.css",$_smarty_tpl->smarty,false);?>
<script type="text/javascript">
	window.Request = {
		QueryString : function(item){
		var svalue = location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)","i"));
		return svalue ? svalue[1] : svalue;
		}
	};
	</script>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}echo FISPagelet::cssHook();?></head>

<body id="<?php echo "body-wrapper";?>">
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/common_libs.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/chosen.jquery.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/jquery.validate.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/validate-ex.js",$_smarty_tpl->smarty,false);?>

<?php if(!class_exists('FISPagelet')){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("index:widget/login/login.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."index:widget/login/login.tpl".'"', E_USER_ERROR);}FISPagelet::load("index:widget/login/login.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('index:page/login.tpl',$_smarty_tpl->smarty,false);?>
<script type="text/javascript" src="/web/static/libs/My97DatePicker/WdatePicker.js"></script>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
			require('common:widget/weblistener/weblistener.js').init();
			setTimeout(function(){
				listener.trigger('com.myTest', 'say', '全站通信信使');
			},100);	
		<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('common:page/layout.tpl',$_smarty_tpl->smarty,false);?></body><?php if(class_exists('FISPagelet', false)){echo FISPagelet::jsHook();}?>
<?php $_smarty_tpl->registerFilter('output', array('FISPagelet', 'renderResponse'));?></html><?php }} ?>