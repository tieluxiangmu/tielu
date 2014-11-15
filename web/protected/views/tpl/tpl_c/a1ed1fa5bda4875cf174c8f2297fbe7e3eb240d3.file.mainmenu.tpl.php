<?php /* Smarty version Smarty-3.1.13, created on 2014-11-15 06:02:44
         compiled from "D:\xampp\htdocs\web\protected\views\tpl\templates\index\widget\mainmenu\mainmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15036545da765eed758-92932907%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a1ed1fa5bda4875cf174c8f2297fbe7e3eb240d3' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\index\\widget\\mainmenu\\mainmenu.tpl',
      1 => 1416027687,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15036545da765eed758-92932907',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545da765ef15d3_53139497',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545da765ef15d3_53139497')) {function content_545da765ef15d3_53139497($_smarty_tpl) {?><div id="js-div-main">
<h2 id="welcome">
系统欢迎您！<span id="js-span-calendar"></span>
</h2>
<p id="page-intro">
您可以点击下方按钮进行操作</p>
<ul class="shortcut-buttons-set">
<li>
<a class="shortcut-button" href="index.php?r=schedule/index">
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
<a class="shortcut-button" href="index.php?r=cadreexamine">
<span>
<img src="/web/static/index/images/check_1abb341.png" alt="相关资料" />
<br />
干部考核</span>
</a>
</li>
<li>
<a class="shortcut-button" href="index.php?r=WorkInfo/Listtwocontrary">
<span>
<img src="/web/static/index/images/summary_44e023d.png" alt="工作情况汇总" />
<br />
工作情况汇总</span>
</a>
</li>
<li>
<a class="shortcut-button" href="index.php?r=contact/Index">
<span>
<img src="/web/static/index/images/transfer_4bbceb0.png" alt="联系人" />
<br />
联系人</span>
</a>
</li>
</ul>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/xampp/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require('index:widget/calendar/calendar.js').calendar('js-span-calendar');
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>