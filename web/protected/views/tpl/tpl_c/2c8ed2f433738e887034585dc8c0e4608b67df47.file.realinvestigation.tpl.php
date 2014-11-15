<?php /* Smarty version Smarty-3.1.13, created on 2014-11-15 08:54:03
         compiled from "D:\xampp\htdocs\web\protected\views\tpl\templates\cadrerealistic\page\realinvestigation.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25727545db8de657432-93527566%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2c8ed2f433738e887034585dc8c0e4608b67df47' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\page\\realinvestigation.tpl',
      1 => 1415527386,
      2 => 'file',
    ),
    '7d1897eabf771eb4ab43c0624f79afaa9af4db3c' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\common\\page\\layout.tpl',
      1 => 1416037977,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25727545db8de657432-93527566',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545db8de7552d0_52792342',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545db8de7552d0_52792342')) {function content_545db8de7552d0_52792342($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_path')) include 'D:\\xampp\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_path.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\xampp\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISResource::setFramework(FISResource::load("common:static/js/libs/mod.js", $_smarty_tpl->smarty));FISPagelet::init(null); ?><html xmlns="<?php echo "http://www.w3.org/1999/xhtml";?>">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>重庆车务段安全管理信息系统</title>
<!--[if lt IE 9]>
<script src="/static/js/html5.js"></script>
<![endif]-->

<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/reset.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/style.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/invalid.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/jNotify.jquery.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/chosen.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/zTreeStyle.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/jquery.autocomplete.css",$_smarty_tpl->smarty,false);?>
<script type="text/javascript">
	window.Request = {
		QueryString : function(item){
		var svalue = location.search.match(new RegExp("[\?\&]" + item + "=([^\&]*)(\&?)","i"));
		return svalue ? svalue[1] : svalue;
		}
	};
	</script>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}echo FISPagelet::cssHook();?></head>

<body id="<?php echo "body-wrapper";?>">
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/common_libs.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/chosen.jquery.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/jquery.validate.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/validate-ex.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/jquery.ztree.all-3.5.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/jquery.autocomplete.js",$_smarty_tpl->smarty,false);?>

<div id="sidebar">
<div id="sidebar-wrapper">
<a href="#">
<img id="pic" src="/web<?php echo smarty_modifier_f_escape_path($_SESSION['user']['photo']);?>
" alt="用户照片" />
</a>
<div id="profile-links">
姓名：<a id="profile-edit" href="javascript:void(0);" data-uid="<?php echo smarty_modifier_f_escape_xml($_SESSION['user']['id']);?>
"title="姓名">
<?php echo smarty_modifier_f_escape_xml($_SESSION['user']['name']);?>

</a>
<br />
职务：<a href="#messages" rel="modal" title="职务">
<?php echo smarty_modifier_f_escape_xml($_SESSION['user']['position']);?>

</a>
<br />
办公电话：<a href="#messages" rel="modal" title="">
<?php echo smarty_modifier_f_escape_xml($_SESSION['user']['tel']);?>

</a>
<br />
手机：<a href="#messages" rel="modal" title="">
<?php echo smarty_modifier_f_escape_xml($_SESSION['user']['mobile']);?>

</a>
<br />
<div class="spliter">
</div>
<p>
<a href="/web" title="点击进入系统主页">
系统主页</a>
|<a href="index.php?r=userinfo/logout" title="退出">
退出</a>
</p>
</div>
<ul id="main-nav">
<li>
<a href="#/" class="nav-top-item no-submenu">
个人信息管理</a>
</li>

<?php if(!class_exists('FISPagelet')){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("cadrerealistic:widget/cadrerealisticnav/cadrerealisticnav.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."cadrerealistic:widget/cadrerealisticnav/cadrerealisticnav.tpl".'"', E_USER_ERROR);}FISPagelet::load("cadrerealistic:widget/cadrerealisticnav/cadrerealisticnav.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>

</ul>
</div>
</div>
<div id="main-content">

<?php if(!class_exists('FISPagelet')){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("cadrerealistic:widget/cadrerealistic/cadrerealistic.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."cadrerealistic:widget/cadrerealistic/cadrerealistic.tpl".'"', E_USER_ERROR);}FISPagelet::load("cadrerealistic:widget/cadrerealistic/cadrerealistic.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('cadrerealistic:page/realinvestigation.tpl',$_smarty_tpl->smarty,false);?>
</div>

<script type="text/javascript" src="/web/static/libs/My97DatePicker/WdatePicker.js"></script>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
			require('common:widget/weblistener/weblistener.js').init();
			$('#profile-edit').on('click', function() {
				var id = $('#profile-edit').attr('data-uid');
				$.dialog({
		            title: '编辑',
		            width: '500px',
		            height: '300px',
		            content: 'url:index.php?r=userinfo/update&id='+id
		        }); 
			});
			setTimeout(function(){
				listener.trigger('com.myTest', 'say', '全站通信信使');
			},100);	
		<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('common:page/layout.tpl',$_smarty_tpl->smarty,false);?></body><?php if(class_exists('FISPagelet', false)){echo FISPagelet::jsHook();}?>
<?php $_smarty_tpl->registerFilter('output', array('FISPagelet', 'renderResponse'));?></html><?php }} ?>