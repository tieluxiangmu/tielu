<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:01:32
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/widget/mainmenu/mainmenu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1532744959542628f45bc038-33206313%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e9a8a672544a8e1d77e4f0b175934dbd021ca83d' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/widget/mainmenu/mainmenu.tpl',
      1 => 1412678184,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1532744959542628f45bc038-33206313',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_542628f45bd8b6_35278178',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_542628f45bd8b6_35278178')) {function content_542628f45bd8b6_35278178($_smarty_tpl) {?><div id="js-div-main">
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
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require('index:widget/calendar/calendar.js').calendar('js-span-calendar');
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>