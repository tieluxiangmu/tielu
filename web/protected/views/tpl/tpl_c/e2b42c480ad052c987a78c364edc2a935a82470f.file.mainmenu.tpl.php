<?php /* Smarty version Smarty-3.1.13, created on 2014-11-04 02:04:10
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\index\widget\mainmenu\mainmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14355458341a389734-29439045%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e2b42c480ad052c987a78c364edc2a935a82470f' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\index\\widget\\mainmenu\\mainmenu.tpl',
      1 => 1412678184,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14355458341a389734-29439045',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5458341a395a47_61069944',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5458341a395a47_61069944')) {function content_5458341a395a47_61069944($_smarty_tpl) {?><div id="js-div-main">
<h2 id="welcome">
系统欢迎您！<span id="js-span-calendar"></span>
</h2>
<p id="page-intro">
您可以点击下方按钮进行操作</p>
<ul class="shortcut-buttons-set">
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/index/images/schedule_a86794f.png" alt="日程" />
<br />
日程</span>
</a>
</li>
<li class="js-action">
<a class="shortcut-button" href="index.php?r=realinvestigation/index">
<span>
<img src="/web/static/index/images/notes_d60da20.png" alt="写实录入" />
<br />
干部写实</span>
</a>
</li>
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/index/images/bookshelf_75f07d4.png" alt="相关资料" />
<br />
相关资料</span>
</a>
</li>
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/index/images/summary_44e023d.png" alt="工作情况汇总" />
<br />
工作情况汇总</span>
</a>
</li>
<li>
<a class="shortcut-button" href="">
<span>
<img src="/web/static/index/images/transfer_4bbceb0.png" alt="联系人" />
<br />
联系人</span>
</a>
</li>
<li>
<a class="shortcut-button" href="" rel="">
<span>
<img src="/web/static/index/images/search_0f7ebbd.png" alt="查询" />
<br />
查询</span>
</a>
</li>
</ul>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require('index:widget/calendar/calendar.js').calendar('js-span-calendar');
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>