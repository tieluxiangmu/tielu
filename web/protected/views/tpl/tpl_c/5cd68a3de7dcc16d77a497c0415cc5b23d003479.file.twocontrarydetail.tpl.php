<?php /* Smarty version Smarty-3.1.13, created on 2014-10-06 11:06:14
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/twocontrarydetail/twocontrarydetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:135514393654324647c978c2-16387952%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5cd68a3de7dcc16d77a497c0415cc5b23d003479' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/twocontrarydetail/twocontrarydetail.tpl',
      1 => 1412586335,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '135514393654324647c978c2-16387952',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54324647cbc708_37961949',
  'variables' => 
  array (
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54324647cbc708_37961949')) {function content_54324647cbc708_37961949($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
?><style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td>序号</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['serialnumber']);?>
</td>
<td>检查时间</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checktime']);?>
</td>
</tr>
<tr>
<td>检查单位</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['inspectionunit']);?>
</td>
<td>检查人</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rummager']);?>
</td>
</tr>
<tr>
<td>被查单位</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['company']);?>
</td>
<td>责任人</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['responsibleperson']);?>
</td>
</tr>
<tr>
<td>职名</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['jobname']);?>
</td>
<td>政治面貌</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['politicalaffiliation']);?>
</td>
</tr>
<tr>
<td>违章内容</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['Illegalcontent']);?>
</td>
</tr>
<tr>
<td>处理结果</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['processingresults']);?>
</td>
</tr>
<tr>
<td>违章类别</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['llegalcategory']);?>
</td>
<td>责任人扣分</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['deduction']);?>
</td>
</tr>
<tr>
<td>所在生产小组长（值班员）</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['productionleader']);?>
</td>
<td>扣积分情况</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['buckleintegral']);?>
</td>
</tr>
<tr>
<td>（班组长）扣积分情况</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['teamleaderIntegral']);?>
</td>
</tr>
</tbody>
</table>
<?php }} ?>