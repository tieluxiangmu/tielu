<?php /* Smarty version Smarty-3.1.13, created on 2014-11-08 09:51:06
         compiled from "D:\xampp\htdocs\web\protected\views\tpl\templates\cadrerealistic\page\listcadrerealistic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:26767545dd97a797443-84182277%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a73e59505dd8c020efd031adb28c3c5dc6dcddda' => 
    array (
      0 => 'D:\\xampp\\htdocs\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\page\\listcadrerealistic.tpl',
      1 => 1415436661,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '26767545dd97a797443-84182277',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'data' => 0,
    'show_page' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_545dd97a843298_38866442',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_545dd97a843298_38866442')) {function content_545dd97a843298_38866442($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\xampp\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.escape.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\xampp\\htdocs\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><?php if ((count($_smarty_tpl->tpl_vars['data']->value)==0)){?>
<div class="notification attention png_bg"><a href="#" class="close">
<img src="/web/static/cadrerealistic/images/icons/cross_grey_small_b635c2e.png" title="关闭" alt="可关闭这个提示">
</a>
<div>暂无符合条件的干部写实数据！</div>
</div>
<?php }else{ ?>
<table class="table-striped">
<thead>
<tr>
<th>
<input class="check-all" type="checkbox" />
</th>
<th>
日期</th>
<th>
检查方式</th>
<th>
单位</th>
<th>
值班干部</th>
<th>
发现问题</th>
<th>
两违类别/件数</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" data-conid="js-p-listcadrerealistic">
<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['show_page']->value, 'none');?>

</div>
</div>
</td>
</tr>
</tfoot>
<tbody>
<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 0;
  if ($_smarty_tpl->tpl_vars['i']->value<count($_smarty_tpl->tpl_vars['data']->value)){ for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value<count($_smarty_tpl->tpl_vars['data']->value); $_smarty_tpl->tpl_vars['i']->value++){
?>
<tr>
<td>
<input type="checkbox" data-id="<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['id']);?>
"/>
</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['dateofentry']);?>

</td>
<td>
<a>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['checkmodel']);?>

</a>
</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['company']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['cadresonduty']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['foundproblem']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['categorynumber']);?>

</td>
<td>
<a href="" class="edit"  data-editinfo='{"page":"realinvestigation/editcadrerealistic","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'  title="修改干部写实管理">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="编辑" />
</a>
<a href="" title="点击删除"   data-deleteinfo='{"channelid":"realinvestigation-form","page":"realinvestigation/delete","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}' class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_bc68ad4.png"  alt="删除" />
</a>
<a href="" title="干部写实管理详情"  class="detail"  data-detailinfo='{"page":"realinvestigation/view","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'>
<img src="/web/static/cadrerealistic/images/icons/detail_4ffc6a5.png" alt="详情" />
</a>
</td>
<?php }} ?>
</tbody>
</table>
<script type="text/javascript">
        // 表格自动按照隔行添加样式
        //$('tbody tr:even').addClass("alt-row");
</script>
<?php }?><?php }} ?>