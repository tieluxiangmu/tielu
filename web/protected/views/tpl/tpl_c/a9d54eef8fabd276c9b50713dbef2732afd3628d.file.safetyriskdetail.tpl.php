<?php /* Smarty version Smarty-3.1.13, created on 2014-10-06 14:19:41
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/safetyriskdetail/safetyriskdetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1303551470543287d887e2d6-94256836%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a9d54eef8fabd276c9b50713dbef2732afd3628d' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/safetyriskdetail/safetyriskdetail.tpl',
      1 => 1412597965,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1303551470543287d887e2d6-94256836',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_543287d88ba951_25610138',
  'variables' => 
  array (
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_543287d88ba951_25610138')) {function content_543287d88ba951_25610138($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
?><style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td>编号</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['serialnumber']);?>
</td>
<td>风险名称</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['riskname']);?>
</td>
</tr>
<tr>
<td>风险分类</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['riskclass']);?>
</td>
<td>系统</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['risksystem']);?>
</td>
</tr>
<tr>
<td>风险原因（致因）</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['reasonofrisk']);?>
</td>
</tr>
<tr>
<td>可能后果</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['consequence']);?>
</td>
</tr>
<tr>
<td>既有措施及有效性（问题）</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['measures']);?>
</td>
</tr>
<tr>
<td>分布情况</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['distribution']);?>
</td>
</tr>
<tr>
<td>进一步防控措施</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['furtherproof']);?>
</td>
</tr>
<tr>
<td>应急（预警）处置措施</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['emergencyhand']);?>
</td>
</tr>
<tr>
<td>负责领导</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['responsibilitylead']);?>
</td>
<td>责任部门</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['dutypartments']);?>
</td>
</tr><tr>
<td>配合部门</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['coordinationpart']);?>
</td>
<td>实施日期</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['implementdate']);?>
</td>
</tr>
<tr>
<td>完成日期</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['completiondate']);?>
</td>
</tr>
<tr>
<td>备注客车</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['notethebus']);?>
</td>
</tr>
<tr>
<td>备注高铁</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['notehighspeedrail']);?>
</td>
</tr>
</tbody>
</table>
<?php }} ?>