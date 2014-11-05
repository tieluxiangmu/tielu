<?php /* Smarty version Smarty-3.1.13, created on 2014-10-06 15:15:12
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/editsafetyrisk/editsafetyrisk.tpl" */ ?>
<?php /*%%SmartyHeaderCode:64262433454328ea35715b0-79235044%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a9bf27bfd0dda7d01f89256a2df248d6cef24dac' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/editsafetyrisk/editsafetyrisk.tpl',
      1 => 1412601266,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '64262433454328ea35715b0-79235044',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54328ea359ce35_08262320',
  'variables' => 
  array (
    'id' => 0,
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54328ea359ce35_08262320')) {function content_54328ea359ce35_08262320($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_path')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_path.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
if (!is_callable('smarty_modifier_f_escape_js')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_js.php';
?><style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#safetyrisk-form  .small-input{
    width: 90% !important;
}
  </style>
<form id="safetyrisk-form" action="index.php?r=safetyrisk/Update&id=<?php echo smarty_modifier_f_escape_path($_smarty_tpl->tpl_vars['id']->value);?>
" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td>完成日期</td>
<td><input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyrisk[completiondate]" id="Safetyrisk_completiondate"   value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['completiondate']);?>
" /></td>
<td>风险名称</td>
<td><input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyrisk[riskname]" id="Safetyrisk_riskname"  value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['riskname']);?>
" />
</td>
</tr>
<tr>
<td>风险分类</td>
<td><select class="text-input small-input chosen-select" nname="Safetyrisk[riskclass]" id="Safetyrisk_riskclass" >
<option selected="selected" value="">请选择</option>
<option value="余戈">余戈</option>
</select>
</td>
<td>系统</td>
<td>
<select class="text-input small-input chosen-select" name="Safetyrisk[risksystem]" id="Safetyrisk_risksystem" >
<option selected="selected" value="">请选择</option>
<option value="系统1">系统</option>
</select>
</td>
</tr>
<tr>
<td>风险原因（致因）</td>
<td colspan="3">
<textarea class="text-input textarea"name="Safetyrisk[reasonofrisk]" id="Safetyrisk_reasonofrisk" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['reasonofrisk']);?>
</textarea>
</td>
</tr>
<tr>
<td>可能后果</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[consequence]" id="Safetyrisk_consequence" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['consequence']);?>
</textarea>
</td>
</tr>
<tr>
<td>既有措施及有效性（问题）</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[measures]" id="Safetyrisk_measures" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['measures']);?>
</textarea>
</td>
</tr>
<tr>
<td>分布情况</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[distribution]" id="Safetyrisk_distribution" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['distribution']);?>
</textarea>
</td>
</tr>
<tr>
<td>进一步防控措施</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[furtherproof]" id="Safetyrisk_furtherproof"  cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['furtherproof']);?>
</textarea>
</td>
</tr>
<tr>
<td>应急（预警）处置措施</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[emergencyhand]" id="Safetyrisk_emergencyhand"  cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['emergencyhand']);?>
</textarea>
</td>
</tr>
<tr>
<td>负责领导</td>
<td><select class="text-input small-input chosen-select" name="Safetyrisk[responsibilitylead]" id="Safetyrisk_responsibilitylead" >
<option selected="selected" value="">请选择</option>
<option value="余戈">余戈</option>
</select>
</td>
<td>责任部门</td>
<td>
<select class="text-input small-input chosen-select" name="Safetyrisk[dutypartments]" id="Safetyrisk_dutypartments" >
<option selected="selected" value="">请选择</option>
<option value="系统1">系统</option>
</select>
</td>
</tr>
<tr>
<td>配合部门</td>
<td><select class="text-input small-input chosen-select" name="Safetyrisk[coordinationpart]" id="Safetyrisk_coordinationpart" >
<option selected="selected" value="">请选择</option>
<option value="余戈">余戈</option>
</select>
</td>
<td>实施日期</td>
<td>
<input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyrisk[implementdate]" id="Safetyrisk_implementdate"   value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['implementdate']);?>
" />
</td>
</tr>
<tr>
<td>备注客车</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[notethebus]" id="Safetyrisk_notethebus"  cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['notethebus']);?>
</textarea>
</td>
</tr>
<tr>
<td>备注高铁</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyrisk[notehighspeedrail]" id="Safetyrisk_notehighspeedrail"  cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['notehighspeedrail']);?>
</textarea>
</td>
</tr>
<tr>
<td colspan="4" style="text-align: center !important;"><input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editsafetyrisk" value="确认修改"/>
</td>
</tr>
</tbody>
</table>
</form>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
$('#Safetyrisk_dutypartments').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['dutypartments']);?>
']").attr("selected", "selected");
$('#Safetyrisk_riskclass').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['riskclass']);?>
']").attr("selected", "selected");
$('#Safetyrisk_risksystem').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['risksystem']);?>
']").attr("selected", "selected");
$('#Safetyrisk_responsibilitylead').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['responsibilitylead']);?>
']").attr("selected", "selected");
$('#Safetyrisk_coordinationpart').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['coordinationpart']);?>
']").attr("selected", "selected");
require("cadrerealistic:widget/editsafetyrisk/editsafetyrisk.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>