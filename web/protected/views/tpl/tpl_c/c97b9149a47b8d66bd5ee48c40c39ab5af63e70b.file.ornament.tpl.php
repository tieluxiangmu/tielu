<?php /* Smarty version Smarty-3.1.13, created on 2014-08-31 21:17:49
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/ornament/ornament.tpl" */ ?>
<?php /*%%SmartyHeaderCode:210445863953f9b40001ee12-07600634%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c97b9149a47b8d66bd5ee48c40c39ab5af63e70b' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/ornament/ornament.tpl',
      1 => 1409512659,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '210445863953f9b40001ee12-07600634',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53f9b4000409e4_78240038',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53f9b4000409e4_78240038')) {function content_53f9b4000409e4_78240038($_smarty_tpl) {?><div class="widget_ornament">
<div class="clockpanel">
<object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="125" height="124">
<param name="movie" value="/static/images/clock.swf">
<param name="quality" value="high">
<param name="wmode" value="transparent">
<param name="swfversion" value="6.0.65.0">
<param name="expressinstall" value="/static/images/expressInstall.swf">
<!--[if !IE]>-->
<object type="application/x-shockwave-flash" data="/web/static/home/images/clock_ac96cbf.swf" width="125" height="124">
<!--<![endif]-->
<param name="quality" value="high">
<param name="wmode" value="transparent">
<param name="swfversion" value="6.0.65.0">
<param name="expressinstall" value="/static/images/expressInstall.swf">
<div>
<h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
<p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" width="112" height="33" /></a></p>
</div>
<!--[if !IE]>-->
</object>
<!--<![endif]-->
</object>
</div>
<div  class="weatherpanel">
<iframe src="http://www.thinkpage.cn/weather/weather.aspx?uid=&c=9005&l=&p=CMA&a=1&u=C&s=5&m=1&x=1&d=3&fc=&bgc=&bc=C6C6C6&ti=1&in=1&li=2&ct=iframe" 
	 frameborder="0" scrolling="no" width="200" height="320" allowTransparency="true">
</iframe>
</div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("home:widget/ornament/ornament.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>