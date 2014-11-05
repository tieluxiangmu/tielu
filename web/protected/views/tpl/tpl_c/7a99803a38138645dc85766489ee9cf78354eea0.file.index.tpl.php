<?php /* Smarty version Smarty-3.1.13, created on 2014-09-27 04:24:35
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/page/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:83485236354198d7354cea8-76029377%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a99803a38138645dc85766489ee9cf78354eea0' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/page/index.tpl',
      1 => 1411784425,
      2 => 'file',
    ),
    '8f34da4a4f92e7a74a9b5e2e1947589101cf2c36' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/common/page/layout.tpl',
      1 => 1411784673,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '83485236354198d7354cea8-76029377',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54198d735b64f4_18917843',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54198d735b64f4_18917843')) {function content_54198d735b64f4_18917843($_smarty_tpl) {?><!DOCTYPE html>

<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISResource::setFramework(FISResource::load("common:static/js/libs/mod.js", $_smarty_tpl->smarty));FISPagelet::init(null); ?><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>重庆车务段安全管理信息系统</title>
<!--[if lt IE 9]>
<script src="/static/js/html5.js"></script>
<![endif]-->


<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/reset.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/style.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/invalid.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/lhgdialog.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/css/chosen.css",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}echo FISPagelet::cssHook();?></head>

<body id="<?php echo "body-wrapper";?>">
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/common_libs.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/lhgdialog.js",$_smarty_tpl->smarty,false);?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("common:static/js/chosen.jquery.js",$_smarty_tpl->smarty,false);?>
<div id="sidebar">
<div id="sidebar-wrapper">
<a href="#">
<img id="pic" src="/static/images/tzl.jpg" alt="用户照片" />
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
<a href="/newweb" title="点击进入系统主页">
系统主页</a>
|<a href="#" title="退出">
退出</a>
</p>
</div>
<ul id="main-nav">
<li>
<a href="#/" class="nav-top-item no-submenu">
用户管理</a>
</li>
<li style="display:none;" id="js-li-realistic">
<a href="#" class="nav-top-item current">
干部写实</a>
<ul>
<li>
<a class="current" href="#">
干部写实管理</a>
</li>
<li>
<a href="#">
安全生产管理</a>
</li>
<li>
<a href="#">
两违问题管理</a>
</li>
<li>
<a href="#">
安全风险管理</a>
</li>
</ul>
</li>
</ul>
</div>
</div>

<div id="sidebar">
<div id="sidebar-wrapper">
<a href="#">
<img id="pic" src="/newweb/static/index/images/tzl_f00be3d.jpg" alt="用户照片" />
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
<a href="/newweb" title="点击进入系统主页">
系统主页</a>
|<a href="#" title="退出">
退出</a>
</p>
</div>
<ul id="main-nav">
<li>
<a href="#/" class="nav-top-item no-submenu">
用户管理</a>
</li>
<li style="display:none;" id="js-li-realistic">
<a href="#" class="nav-top-item current">
干部写实</a>
<ul>
<li>
<a class="current" href="#">
干部写实管理</a>
</li>
<li>
<a href="#">
安全生产管理</a>
</li>
<li>
<a href="#">
两违问题管理</a>
</li>
<li>
<a href="#">
安全风险管理</a>
</li>
</ul>
</li>
</ul>
</div>
</div>
<div id="main-content">
<?php if(!class_exists('FISPagelet')){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start("index-widget-cadrerealistic", "quickling",null); if ($hit) {$_tpl_path=FISPagelet::getUri("index:widget/cadrerealistic/cadrerealistic.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."index:widget/cadrerealistic/cadrerealistic.tpl".'"', E_USER_ERROR);}FISPagelet::load("index:widget/cadrerealistic/cadrerealistic.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet')){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start("index-widget-twocontraryman", "quickling",null); if ($hit) {$_tpl_path=FISPagelet::getUri("index:widget/twocontraryman/twocontraryman.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."index:widget/twocontraryman/twocontraryman.tpl".'"', E_USER_ERROR);}FISPagelet::load("index:widget/twocontraryman/twocontraryman.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet')){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start("index-widget-securityissues", "quickling",null); if ($hit) {$_tpl_path=FISPagelet::getUri("index:widget/securityissues/securityissues.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."index:widget/securityissues/securityissues.tpl".'"', E_USER_ERROR);}FISPagelet::load("index:widget/securityissues/securityissues.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<?php if(!class_exists('FISPagelet')){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}$hit = FISPagelet::start("index-widget-safetyrisk", "quickling",null); if ($hit) {$_tpl_path=FISPagelet::getUri("index:widget/safetyrisk/safetyrisk.tpl",$_smarty_tpl->smarty);if(isset($_tpl_path)){echo $_smarty_tpl->getSubTemplate($_tpl_path, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, $_smarty_tpl->caching, $_smarty_tpl->cache_lifetime, array(), Smarty::SCOPE_LOCAL);}else{trigger_error('unable to locale resource "'."index:widget/safetyrisk/safetyrisk.tpl".'"', E_USER_ERROR);}FISPagelet::load("index:widget/safetyrisk/safetyrisk.tpl", $_smarty_tpl->smarty);}FISPagelet::end();?>
<div id="js-div-main">
<h2 id="welcome">
系统欢迎您！</h2>
<p id="page-intro">
您可以点击下方按钮进行操作</p>
<ul class="shortcut-buttons-set">
<li>
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/schedule_a86794f.png" alt="日程" />
<br />
日程</span>
</a>
</li>
<li class="js-action" data-fn="_cadrerealisticEvent" data-bigpipeid="index-widget-cadrerealistic" data-leftconid="js-li-realistic">
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/notes_d60da20.png" alt="写实录入" />
<br />
干部写实</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/bookshelf_75f07d4.png" alt="相关资料" />
<br />
相关资料</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#">
<span>
<img src="/newweb/static/index/images/summary_44e023d.png" alt="工作情况汇总" />
<br />
工作情况汇总</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#messages" rel="modal">
<span>
<img src="/newweb/static/index/images/transfer_8c630a3.png" alt="文件流转" />
<br />
文件流转</span>
</a>
</li>
<li>
<a class="shortcut-button" href="#messages" rel="modal">
<span>
<img src="/newweb/static/index/images/search_0f7ebbd.png" alt="查询" />
<br />
查询</span>
</a>
</li>
</ul>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
	require("index:widget/main/main.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('index:page/index.tpl',$_smarty_tpl->smarty,false);?>
<script type="text/javascript" src="/newweb/static/common/js/lazyload_9b274e7.js"></script>
<script type="text/javascript" src="/newweb/static/libs/My97DatePicker/WdatePicker.js"></script>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load('common:page/layout.tpl',$_smarty_tpl->smarty,false);?></body><?php if(class_exists('FISPagelet', false)){echo FISPagelet::jsHook();}?>
<?php $_smarty_tpl->registerFilter('output', array('FISPagelet', 'renderResponse'));?></html><?php }} ?>