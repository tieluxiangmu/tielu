<?php /* Smarty version Smarty-3.1.13, created on 2014-11-07 04:48:53
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\cadrerealisticdetail\cadrerealisticdetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1766545b5c96dd86e4-14979532%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ce2e72cf99eab77b41f8b1eb0772052f36712814' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\cadrerealisticdetail\\cadrerealisticdetail.tpl',
      1 => 1415335730,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1766545b5c96dd86e4-14979532',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545b5c96eb1b72_24900671',
  'variables' => 
  array (
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545b5c96eb1b72_24900671')) {function content_545b5c96eb1b72_24900671($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td class="spantitle">
日期</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['dateofentry']);?>

</td>
<td class="spantitle">
时间</td>
<td >
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['timeofentry']);?>

</td>
<td class="spantitle">
检查人</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkperson']);?>

</td>
</tr>
<tr>
<td class="spantitle">
检查方式</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkmodel']);?>

</td>
<td class="spantitle">
单位</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['company']);?>

</td>
<td class="spantitle">
值班干部</td>
<td >
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['cadresonduty']);?>

</td>
</tr>
<tr>
<td class="spantitle">
发现问题</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['foundproblem']);?>

</td>
</tr>
<tr>
<td colspan="2" class="spantitle">
是否下发检查通知书</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['noticeflag']);?>

</td>
<td colspan="2" class="spantitle">
两违类别/件数</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['categorynumber']);?>

</td>
</tr>
<tr>
<td class="spantitle">
检查内容</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkcontents']);?>

</td>
</tr>
<tr>
<td class="spantitle">
改进意见</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['improvement']);?>

</td>
</tr>
<tr>
<td class="spantitle">
考核扣分</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['evaluationpoints']);?>

</td>
<td class="spantitle">
扣分原因</td>
<td colspan="3">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['pointsreasons']);?>

</td>
</tr>
<tr>
<td class="spantitle">
考核主体</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['assessmentmain']);?>

</td>
</tr>
<tr>
<td class="spantitle">
评语</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['comment']);?>

</td>
</tr>
<tr>
<td class="spantitle">
整改情况</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rectification']);?>

</td>
</tr>
</tbody>
</table>
<div class="btn-container" style="margin-bottom:20px;">
<input type="button" style="margin-left:20px;" data-formtype="update" class="btn" id="js-btn-cancelcardreal" value="关闭"/>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/cadrerealisticdetail/cadrerealisticdetail.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>