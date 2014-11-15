<?php /* Smarty version Smarty-3.1.13, created on 2014-11-15 09:36:03
         compiled from "D:\xampp\htdocs\web\protected\views\tpl\templates\contact\widget\userlist\userlist.tpl" */ ?>
<?php /*%%SmartyHeaderCode:210545da91e54a434-58051032%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8619f6942b8c1ca76f99b452a6f6e8ddb69a777d' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\contact\\widget\\userlist\\userlist.tpl',
      1 => 1416040561,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '210545da91e54a434-58051032',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545da91e54e2b4_80407129',
  'variables' => 
  array (
    'i' => 0,
    'data' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545da91e54e2b4_80407129')) {function content_545da91e54e2b4_80407129($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\xampp\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><div class="content-box">
<div class="content-box-header">
<h3>联系人列表</h3>
</div>
<div class="content-box-content">
<table class="table-striped">
<thead>
<tr>
<th>姓名</th>
<th>电话</th>
<th>手机号</th>
<th>单位</th>
<th>职位</th>
<th>邮箱</th>
</tr>
</thead>
<tbody>
<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 0;
  if ($_smarty_tpl->tpl_vars['i']->value<count($_smarty_tpl->tpl_vars['data']->value)){ for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value<count($_smarty_tpl->tpl_vars['data']->value); $_smarty_tpl->tpl_vars['i']->value++){
?>
<tr>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['name']);?>
</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['tel']);?>
</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['mobile']);?>
</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['department']);?>
</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['position']);?>
</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['email']);?>
</td>
</tr>
<?php }} ?>
</tbody>
</table>
</div>
</div>
<?php }} ?>