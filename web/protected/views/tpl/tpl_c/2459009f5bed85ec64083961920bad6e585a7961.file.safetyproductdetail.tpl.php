<?php /* Smarty version Smarty-3.1.13, created on 2014-11-04 02:41:17
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\safetyproductdetail\safetyproductdetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1712154583ccdbc02f3-58606968%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2459009f5bed85ec64083961920bad6e585a7961' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\safetyproductdetail\\safetyproductdetail.tpl',
      1 => 1412678168,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1712154583ccdbc02f3-58606968',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'model' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54583ccdc6f0b6_60143447',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54583ccdc6f0b6_60143447')) {function content_54583ccdc6f0b6_60143447($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td>编号</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['serialnumber']);?>
</td>
<td>信息来源</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['infosources']);?>
</td>
</tr>
<tr>
<td>单位</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['company']);?>
</td>
<td>入库时间</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['storagetime']);?>
</td>
</tr>
<tr>
<td>问题点</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['theproblem']);?>
</td>
</tr>
<tr>
<td>解决方案</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['thesolution']);?>
</td>
</tr>
<tr>
<td>责任部门</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['dutydepartment']);?>
</td>
<td>责任人</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['dutyperson']);?>
</td>
</tr>
<tr>
<td>完成期限</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['deadline']);?>
</td>
<td>检查人</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkperson']);?>
</td>
</tr>
<tr>
<td>整改情况</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rectification']);?>
</td>
</tr>
<tr>
<td>消号时间</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['registertime']);?>
</td>
<td>问题目前状况</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['currentstatus']);?>
</td>
</tr>
<tr>
<td>备注</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['comments']);?>
</td>
</tr>
</tbody>
</table>
<?php }} ?>