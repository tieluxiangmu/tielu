<?php /* Smarty version Smarty-3.1.13, created on 2014-11-07 04:40:43
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\editcadrerealistic\editcadrerealistic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19005545835d9a4ad31-10502547%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '15120647682b7188ae03d76c9859c564b5aee999' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\editcadrerealistic\\editcadrerealistic.tpl',
      1 => 1415335232,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19005545835d9a4ad31-10502547',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545835d9b6d3c4_93691988',
  'variables' => 
  array (
    'id' => 0,
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545835d9b6d3c4_93691988')) {function content_545835d9b6d3c4_93691988($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_path')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_path.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#realinvestigation-form.large-input{
    width: 300px !important;
}
#realinvestigation-form  .small-input{
    width: 200px !important;
}
  </style>
<form id="realinvestigation-form" action="index.php?r=realinvestigation/Update&id=<?php echo smarty_modifier_f_escape_path($_smarty_tpl->tpl_vars['id']->value);?>
" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td class="spantitle">整改情况</td>
<td colspan="3"><textarea name="Realinvestigation[rectification]" id="Realinvestigation_rectification" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rectification']);?>
</textarea></td>
</tr>
<tr>
<td class="spantitle">改进意见</td>
<td colspan="3"><textarea  cols="79" rows="5" name="Realinvestigation[improvement]" id="Realinvestigation_improvement"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['improvement']);?>
</textarea>
</td>
</tr>
<tr>
<td class="spantitle">发现问题</td>
<td colspan="3">
<textarea  name="Realinvestigation[foundproblem]" id="Realinvestigation_foundproblem" name="textfield" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['foundproblem']);?>
</textarea>
</td>
</tr>
<tr>
<td class="spantitle">两违类别/件数</td>
<td colspan="3"><input name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber"  class="text-input large-input" value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['categorynumber']);?>
"/></td>
</tr>
</tbody>
</table>
<div class="btn-container" style="margin-bottom:20px;">
<input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editcardreal" value="确认修改"/>
<input type="button" style="margin-left:20px;" data-formtype="update" class="btn" id="js-btn-cancelcardreal" value="撤销修改"/>
</div>
</form>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>