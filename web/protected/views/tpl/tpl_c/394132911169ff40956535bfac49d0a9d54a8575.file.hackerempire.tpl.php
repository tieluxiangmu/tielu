<?php /* Smarty version Smarty-3.1.13, created on 2014-03-31 07:46:52
         compiled from "D:\BaiduWeb\PHPnow\htdocs\mywebdream\web\protected\views\tpl\template\home\widget\hackerempire\hackerempire.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3168053391d6cb8fbc4-03050076%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '394132911169ff40956535bfac49d0a9d54a8575' => 
    array (
      0 => 'D:\\BaiduWeb\\PHPnow\\htdocs\\mywebdream\\web\\protected\\views\\tpl\\template\\home\\widget\\hackerempire\\hackerempire.tpl',
      1 => 1396250747,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3168053391d6cb8fbc4-03050076',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53391d6cba2b88_30214937',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53391d6cba2b88_30214937')) {function content_53391d6cba2b88_30214937($_smarty_tpl) {?><p class="mywebdram">
我曾经是个屌丝，如今还是吊丝。但是同样是diao字，意义完全不一样！        我只有一个简单的梦想，就是想把我的过去经历的事情告诉你们，把我的毕生绝学传递给你们，让你们最短时间学到真经，拿到白银。敬请期待！<br/>
<span>by 袁哥 2014-03-30 午饭</span>
</p>
<?php ob_start(); ?>
    (require("home:widget/hackerempire/hackerempire.js")).init();
<?php $script=ob_get_clean();if($script!==false){if(!class_exists('FISResource')){require_once('D:/BaiduWeb/PHPnow/htdocs/mywebdream/web/protected/extensions/smarty/plugins/FISResource.class.php');}FISResource::addScriptPool($script);}?><?php }} ?>