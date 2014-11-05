<?php /* Smarty version Smarty-3.1.13, created on 2014-08-31 21:19:47
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/loginerr/loginerr.tpl" */ ?>
<?php /*%%SmartyHeaderCode:144512666453fbf712665174-64731534%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd1beaf7a8f1df351b6a5f104919a62f0e92c882b' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/home/widget/loginerr/loginerr.tpl',
      1 => 1409512659,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '144512666453fbf712665174-64731534',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_53fbf71267ce46_56616857',
  'variables' => 
  array (
    'data' => 0,
    'item' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_53fbf71267ce46_56616857')) {function content_53fbf71267ce46_56616857($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
?>
<link rel="stylesheet" type="text/css" href="/web/static/home/widget/loginerr/loginerr_6d62701.css"/>
<script language='javascript' type='text/javascript'> 
	var secs =5; //倒计时的秒数 
	var URL ; 
	function Load(url){ 
		URL =url; 
		for(var i=secs;i>=0;i--) 
		{ 
			window.setTimeout('doUpdate(' + i + ')', (secs-i) * 1000); 
		} 
	} 
	function doUpdate(num) 
	{ 
		document.getElementById('myherf').innerHTML ="将在【"+num+"】秒后自动返回。若无反应<a class='back' href='"+URL+"'>请点击这里</a>！"; 
		if(num == 0) { window.location=URL; } 
	} 
	</script>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td align="center" valign="middle">
<table class="errtable" align="center";cellpadding="0";cellspacing="0";>
<tr>
<td align="left" valign="middle">
<div class="message">
<strong>
<?php if ((is_array($_smarty_tpl->tpl_vars['data']->value))){?>
<?php  $_smarty_tpl->tpl_vars['item'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['item']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['data']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['item']->key => $_smarty_tpl->tpl_vars['item']->value){
$_smarty_tpl->tpl_vars['item']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['item']->key;
?>
<p><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['item']->value[0]);?>
</p>
<?php } ?>
<?php }else{ ?>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value);?>

<?php }?>
</strong>
</div>
<div id="myherf"></div>
</td>
</tr>
</table>
</td>
</tr>
</table>
<script type="text/javascript">
	Load("index.php?r=site/login"); //要跳转到的页面 
</script><?php }} ?>