<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:07:42
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/cadrerealisticdetail/cadrerealisticdetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4736477995426b833a69542-11977856%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2865c4c333dbd59e5ac8599f5571d2596bb50984' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/cadrerealisticdetail/cadrerealisticdetail.tpl',
      1 => 1412678167,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4736477995426b833a69542-11977856',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5426b833a6d507_69635877',
  'variables' => 
  array (
    'model' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5426b833a6d507_69635877')) {function content_5426b833a6d507_69635877($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
?><style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td>
日期</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['dateofentry']);?>

</td>
<td>
时间</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['timeofentry']);?>

</td>
<td>
检查人</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkperson']);?>

</td>
</tr>
<tr>
<td>
检查方式</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkmodel']);?>

</td>
<td>
单位</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['company']);?>

</td>
<td>
值班干部</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['cadresonduty']);?>

</td>
</tr>
<tr>
<td>
发现问题</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['foundproblem']);?>

</td>
</tr>
<tr>
<td colspan="2">
是否下发检查通知书</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['noticeflag']);?>

</td>
<td colspan="2">
两违类别/件数</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['categorynumber']);?>

</td>
</tr>
<tr>
<td>
检查内容</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['checkcontents']);?>

</td>
</tr>
<tr>
<td>
改进意见</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['improvement']);?>

</td>
</tr>
<tr>
<td>
考核扣分</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['evaluationpoints']);?>

</td>
<td>
扣分原因</td>
<td colspan="3">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['pointsreasons']);?>

</td>
</tr>
<tr>
<td>
考核主体</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['assessmentmain']);?>

</td>
</tr>
<tr>
<td>
评语</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['comment']);?>

</td>
</tr>
<tr>
<td>
整改情况</td>
<td colspan="5">
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['model']->value['rectification']);?>

</td>
</tr>
</tbody>
</table>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/cadrerealisticdetail/cadrerealisticdetail.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?>
<?php }} ?>