<?php /* Smarty version Smarty-3.1.13, created on 2014-03-31 08:36:33
         compiled from "D:\BaiduWeb\PHPnow\htdocs\web\protected\views\tpl\templates\home\widget\hackerempire\hackerempire.tpl" */ ?>
<?php /*%%SmartyHeaderCode:45585339285345ce37-92303316%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cf3184d08bfb533d8c4bf94a4812527dc9b03cbb' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\web\\protected\\views\\tpl\\templates\\home\\widget\\hackerempire\\hackerempire.tpl',
      1 => 1396254889,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '45585339285345ce37-92303316',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5339285345f632_98075672',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5339285345f632_98075672')) {function content_5339285345f632_98075672($_smarty_tpl) {?><p class="mywebdram">
我曾经是个屌丝，如今还是吊丝。但是同样是diao字，意义完全不一样！        我只有一个简单的梦想，就是想把我的过去经历的事情告诉你们，把我的毕生绝学传递给你们，让你们最短时间学到真经，拿到白银。敬请期待！<br/>
<span>by 袁哥 2014-03-30 午饭</span>
</p>
<?php ob_start(); ?>
    (require("home:widget/hackerempire/hackerempire.js")).init();
<?php $script=ob_get_clean();if($script!==false){if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::addScriptPool($script);}?><?php }} ?>