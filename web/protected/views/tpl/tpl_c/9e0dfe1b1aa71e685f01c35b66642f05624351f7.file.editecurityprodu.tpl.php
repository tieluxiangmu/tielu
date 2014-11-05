<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:09:33
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/editecurityprodu/editecurityprodu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6155745025431ecf3628362-60616901%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9e0dfe1b1aa71e685f01c35b66642f05624351f7' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/editecurityprodu/editecurityprodu.tpl',
      1 => 1412678167,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6155745025431ecf3628362-60616901',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5431ecf362c1e6_58052347',
  'variables' => 
  array (
    'id' => 0,
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5431ecf362c1e6_58052347')) {function content_5431ecf362c1e6_58052347($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_path')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_path.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
if (!is_callable('smarty_modifier_f_escape_js')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_js.php';
?><style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#safetyproduct-form  .small-input{
    width: 90% !important;
}
  </style>
<form id="safetyproduct-form" action="index.php?r=safetyproduct/Update&id=<?php echo smarty_modifier_f_escape_path($_smarty_tpl->tpl_vars['id']->value);?>
" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td>整改情况</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[rectification]" id="Safetyproduct_rectification" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rectification']);?>
</textarea>
</td>
</tr>
<tr>
<td>检查人</td>
<td><select class="text-input small-input chosen-select" name="Safetyproduct[checkperson]" id="Safetyproduct_checkperson">
<option selected="selected" value="">请选择</option>
<option value="余戈">余戈</option>
<option value="蔡泽琪">蔡泽琪</option>
<option value="李洁">李洁</option>
<option value="樊鹏">樊鹏</option>
<option value="刘远平">刘远平</option>
<option value="潘晓明">潘晓明</option>
<option value="刘宁">刘宁</option>
<option value="田兴明">田兴明</option>
<option value="汤献忠">汤献忠</option>
<option value="黄成福">黄成福</option>
</select>
</td>
<td>销号时间</td>
<td><input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyproduct[registertime]" id="Safetyproduct_registertime"  value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['registertime']);?>
" /></td>
</tr>
<tr>
<td>备注</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[comments]" id="Safetyproduct_comments" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['comments']);?>
</textarea>
</td>
</tr>
<tr>
<td>问题目前状况</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[currentstatus]" id="Safetyproduct_currentstatus" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['currentstatus']);?>
</textarea>
</td>
</tr>
<tr>
<td>解决方案</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[thesolution]" id="Safetyproduct_thesolution" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['thesolution']);?>
</textarea>
</td>
</tr>
<tr>
<td colspan="4" style="text-align: center !important;"><input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editecurityprodu" value="确认修改"/>
</td>
</tr>
</tbody>
</table>
</form>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
$('#Safetyproduct_checkperson').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['checkperson']);?>
']").attr("selected", "selected");
require("cadrerealistic:widget/editecurityprodu/editecurityprodu.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>