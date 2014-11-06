<?php /* Smarty version Smarty-3.1.13, created on 2014-11-06 13:10:01
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\twocontrarydetail\twocontrarydetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:28687545b6e4a9e95a6-87858693%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '992dcdc766f20a811166042895d18ce6bab96622' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\twocontrarydetail\\twocontrarydetail.tpl',
      1 => 1415279396,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28687545b6e4a9e95a6-87858693',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545b6e4aac61a0_05796630',
  'variables' => 
  array (
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545b6e4aac61a0_05796630')) {function content_545b6e4aac61a0_05796630($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><style type="text/css">
    body{ background: white !important; padding: 5px; }
    
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td class="spantitle" style="width:200px;">序号</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['serialnumber']);?>
</td>
<td class="spantitle">检查时间</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checktime']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">检查单位</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['inspectionunit']);?>
</td>
<td class="spantitle">检查人</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rummager']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">被查单位</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['company']);?>
</td>
<td class="spantitle">责任人</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['responsibleperson']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">职名</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['jobname']);?>
</td>
<td class="spantitle">政治面貌</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['politicalaffiliation']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">违章内容</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['Illegalcontent']);?>
</td>
</tr>
<tr>
<td class="spantitle">处理结果</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['processingresults']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">违章类别</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['llegalcategory']);?>
</td>
<td class="spantitle">责任人扣分</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['deduction']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">所在生产小组长（值班员）</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['productionleader']);?>
</td>
<td class="spantitle">扣积分情况</td>
<td><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['buckleintegral']);?>
</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">（班组长）扣积分情况</td>
<td colspan="3"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['teamleaderIntegral']);?>
</td>
</tr>
</tbody>
</table>
<?php }} ?>