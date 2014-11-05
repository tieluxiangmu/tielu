<?php /* Smarty version Smarty-3.1.13, created on 2014-08-31 21:17:48
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/mainrole/mainrole.tpl" */ ?>
<?php /*%%SmartyHeaderCode:129463910753f9b3ff4ad678-00162495%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ebb7f311ffea55919776f41cc4c55a4cdf7e64a2' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/mainrole/mainrole.tpl',
      1 => 1409512659,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '129463910753f9b3ff4ad678-00162495',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53f9b3ff4b4264_01765491',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53f9b3ff4b4264_01765491')) {function content_53f9b3ff4b4264_01765491($_smarty_tpl) {?><div id="x-desktop">
<dl id="x-shortcuts">
<dt id="securityissues-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>安全问题</div></a>
</dt>
<dt id="safetyrisk-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>安全风险</div></a>
</dt>
<dt id="twoviolation-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>两违管理</div></a>
</dt>
<dt id="realistic-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>写实考察</div></a>
</dt>
</dl>
</div>
<div id="ux-taskbar">
<div id="ux-taskbar-start"></div>
<div id="ux-taskbuttons-panel"></div>
<div class="x-clear"></div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
        require("home:widget/mainrole/mainrole.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>