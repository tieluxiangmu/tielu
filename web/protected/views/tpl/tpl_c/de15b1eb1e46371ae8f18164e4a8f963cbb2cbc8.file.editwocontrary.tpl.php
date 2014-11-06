<?php /* Smarty version Smarty-3.1.13, created on 2014-11-06 13:00:38
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\editwocontrary\editwocontrary.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6553545b6d4b4c68c8-46342219%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'de15b1eb1e46371ae8f18164e4a8f963cbb2cbc8' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\editwocontrary\\editwocontrary.tpl',
      1 => 1415278828,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6553545b6d4b4c68c8-46342219',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545b6d4b54c3e5_58173616',
  'variables' => 
  array (
    'id' => 0,
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545b6d4b54c3e5_58173616')) {function content_545b6d4b54c3e5_58173616($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_path')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_path.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
if (!is_callable('smarty_modifier_f_escape_js')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_js.php';
?><style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#twocontrarymanage-form  .small-input{
    width: 90% !important;
}
td{
    width:120px;
}
  </style>
<form id="twocontrarymanage-form" action="/web/index.php?r=twocontrarymanage/update&id=<?php echo smarty_modifier_f_escape_path($_smarty_tpl->tpl_vars['id']->value);?>
" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td class="spantitle">违章内容</td>
<td colspan="3">
<textarea class="text-input textarea" name="Twocontrarymanage[Illegalcontent]" id="Twocontrarymanage_Illegalcontent" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['Illegalcontent']);?>
</textarea>
</td>
</tr>
<tr>
<td class="spantitle">处理结果</td>
<td colspan="3">
<textarea class="text-input textarea" name="Twocontrarymanage[processingresults]" id="Twocontrarymanage_processingresults" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['processingresults']);?>
</textarea>
</td>
</tr>
<tr>
<td class="spantitle">违章类别</td>
<td><select class="text-input small-input chosen-select" name="Twocontrarymanage[llegalcategory]" id="Twocontrarymanage_llegalcategory">
<option selected="selected" value=""></option>
<option value="类别1">类别1</option>
</select>
</td>
<td class="spantitle">责任人扣分</td>
<td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[deduction]" id="Twocontrarymanage_deduction" value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['deduction']);?>
" /></td>
</tr>
<tr>
<td class="spantitle">所在生产小组长（值班员）</td>
<td>
    <select class="text-input small-input " name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"
<option selected="selected" value=""></option>

<option value="组长1">组长1</option>
</select>
</td>
<td class="spantitle">扣积分情况</td>
<td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['buckleintegral']);?>
" /></td>
</tr>
<tr>
    <td class="spantitle">班组长</td>
    <td>
    <select class="text-input small-input " name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"
<option selected="selected" value=""></option>

<option value="组长1">班组长1</option>
</select>
</td>
<td class="spantitle">扣积分情况</td>
<td colspan="3">
<textarea class="text-input textarea" name="Twocontrarymanage[teamleaderIntegral]" id="Twocontrarymanage_teamleaderIntegral" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['teamleaderIntegral']);?>
</textarea>
</td>
</tr>

</tbody>
</table>
<div style="text-align:center">
    <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editwocontrary" value="确认修改"/>
    <input type="submit" data-formtype="update" class="btn" id="js-btn-cancelwocontrary" value="撤消修改"/>
</div>
</form>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
$('#Twocontrarymanage_llegalcategory').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['llegalcategory']);?>
']").attr("selected", "selected");
$('#Twocontrarymanage_productionleader').find("option[value='<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['model']->value['productionleader']);?>
']").attr("selected", "selected");
require("cadrerealistic:widget/editwocontrary/editwocontrary.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>