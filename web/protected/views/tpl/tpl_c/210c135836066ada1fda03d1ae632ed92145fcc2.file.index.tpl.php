<?php /* Smarty version Smarty-3.1.13, created on 2014-11-09 11:28:33
         compiled from "D:\xampp\htdocs\web\protected\views\tpl\templates\cadreexamine\page\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14797545dbf9ee42994-80956743%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '210c135836066ada1fda03d1ae632ed92145fcc2' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\cadreexamine\\page\\index.tpl',
      1 => 1415528462,
      2 => 'file',
    ),
    '7d1897eabf771eb4ab43c0624f79afaa9af4db3c' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\common\\page\\layout.tpl',
      1 => 1415526274,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14797545dbf9ee42994-80956743',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545dbf9eefa364_21735061',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545dbf9eefa364_21735061')) {function content_545dbf9eefa364_21735061($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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

<div id="sidebar">
<div id="sidebar-wrapper">
<a href="#">
<img id="pic" src="/web/static/common/images/tzl_f00be3d.jpg" alt="用户照片" />
</a>
<div id="profile-links">
姓名：<a href="#" title="姓名">
谭自力</a>
<br />
职务：<a href="#messages" rel="modal" title="职务">
万盛站长</a>
<br />
办公电话：<a href="#messages" rel="modal" title="">
22981</a>
<br />
手机：<a href="#messages" rel="modal" title="">
18566778899</a>
<br />
<div class="spliter">
</div>
<p>
<a href="/web" title="点击进入系统主页">
系统主页</a>
|<a href="#" title="退出">
退出</a>
</p>
</div>
<ul id="main-nav">
<li>
<a href="#/" class="nav-top-item no-submenu">
个人信息管理</a>
</li>

</ul>
</div>
</div>
<div id="main-content">

<?php if(!class_exists('FISPagelet')){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start(null, null,null); if ($hit) {$_tpl_path=FISPagelet::getUri("cadreexamine:widget/examine/examine.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."cadreexamine:widget/examine/examine.tpl".'"', E_USER_ERROR);}FISPagelet::load("cadreexamine:widget/examine/examine.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('cadreexamine:page/index.tpl',$_smarty_tpl->smarty,false);?>
</div>

<script type="text/javascript" src="/web/static/libs/My97DatePicker/WdatePicker.js"></script>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
			require('common:widget/weblistener/weblistener.js').init();
			setTimeout(function(){
				listener.trigger('com.myTest', 'say', '全站通信信使');
			},100);	
		<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('common:page/layout.tpl',$_smarty_tpl->smarty,false);?></body><?php if(class_exists('FISPagelet', false)){echo FISPagelet::jsHook();}?>
<?php $_smarty_tpl->registerFilter('output', array('FISPagelet', 'renderResponse'));?></html><?php }} ?>