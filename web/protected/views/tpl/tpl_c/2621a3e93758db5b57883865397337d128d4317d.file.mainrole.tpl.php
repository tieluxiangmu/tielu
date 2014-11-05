<?php /* Smarty version Smarty-3.1.13, created on 2014-04-04 08:24:50
         compiled from "D:\BaiduWeb\PHPnow\htdocs\web\protected\views\tpl\templates\home\widget\mainrole\mainrole.tpl" */ ?>
<?php /*%%SmartyHeaderCode:57935339471b4534f6-94278981%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2621a3e93758db5b57883865397337d128d4317d' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\web\\protected\\views\\tpl\\templates\\home\\widget\\mainrole\\mainrole.tpl',
      1 => 1396599888,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '57935339471b4534f6-94278981',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5339471b455fb5_99121950',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5339471b455fb5_99121950')) {function content_5339471b455fb5_99121950($_smarty_tpl) {?><div id="x-desktop">
<dl id="x-shortcuts">
<dt id="grid-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>课程下载</div></a>
</dt>
<dt id="history-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>程序往事</div></a>
</dt>
<dt id="book-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>经典书籍</div></a>
</dt>
<dt id="contact-win-shortcut">
<a href="#"><img src="/web/static/home/images/s_fc94fb0.gif" />
<div>联系我们</div></a>
</dt>
</dl>
</div>
<div id="ux-taskbar">
<div id="ux-taskbar-start"></div>
<div id="ux-taskbuttons-panel"></div>
<div class="x-clear"></div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}FISPagelet::load("home:static/js/extdestop_libs.js",$_smarty_tpl->smarty,false);?>
require("home:widget/mainrole/mainrole.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>