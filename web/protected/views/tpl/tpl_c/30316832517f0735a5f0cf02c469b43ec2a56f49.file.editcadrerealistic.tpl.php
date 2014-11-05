<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:07:49
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/editcadrerealistic/editcadrerealistic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14600609785426aea044fb47-05128735%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '30316832517f0735a5f0cf02c469b43ec2a56f49' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/editcadrerealistic/editcadrerealistic.tpl',
      1 => 1412678167,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14600609785426aea044fb47-05128735',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5426aea0450f21_01817591',
  'variables' => 
  array (
    'id' => 0,
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5426aea0450f21_01817591')) {function content_5426aea0450f21_01817591($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_path')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_path.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
?><style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#realinvestigation-form.large-input{
    width: 90% !important;
}
#realinvestigation-form  .small-input{
    width: 90% !important;
}
  </style>
<form id="realinvestigation-form" action="index.php?r=realinvestigation/Update&id=<?php echo smarty_modifier_f_escape_path($_smarty_tpl->tpl_vars['id']->value);?>
" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td>整改情况</td>
<td colspan="3"><textarea name="Realinvestigation[rectification]" id="Realinvestigation_rectification" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rectification']);?>
</textarea></td>
</tr>
<tr>
<td>改进意见</td>
<td colspan="3"><textarea  cols="79" rows="5" name="Realinvestigation[improvement]" id="Realinvestigation_improvement"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['improvement']);?>
</textarea>
</td>
</tr>
<tr>
<td>发现问题</td>
<td colspan="3">
<textarea  name="Realinvestigation[foundproblem]" id="Realinvestigation_foundproblem" name="textfield" cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['foundproblem']);?>
</textarea>
</td>
</tr>
<tr>
<td>两违类别/件数</td>
<td colspan="3"><input name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber"  class="text-input small-input" value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['categorynumber']);?>
"/></td>
</tr>
<tr>
<td>考核扣分</td>
<td colspan="3"><input  class="text-input small-input"  name="Realinvestigation[evaluationpoints]" id="Realinvestigation_evaluationpoints" value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['evaluationpoints']);?>
" /></td>
</tr>
<tr>
<td>扣分原因</td>
<td colspan="3"><input name="Realinvestigation[pointsreasons]" id="Realinvestigation_pointsreasons" class="text-input small-input" type="text"   value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['pointsreasons']);?>
"/></td>
</tr>
<tr>
<td>考核主体</td>
<td colspan="3"><input type="text"   value="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['assessmentmain']);?>
" class="text-input small-input"  name="Realinvestigation[assessmentmain]" id="Realinvestigation_assessmentmain" cols="79" rows="5"></input></td>
</tr>
<tr>
<td>评语</td>
<td colspan="3"><textarea   name="Realinvestigation[comment]" id="Realinvestigation_comment"  cols="79" rows="5"><?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['comment']);?>
</textarea></td>
</tr>
<tr>
<td colspan="4" style="text-align: center !important;"><input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editcardreal" value="确认修改"/>
</td>
</tr>
</tbody>
</table>
</form>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>