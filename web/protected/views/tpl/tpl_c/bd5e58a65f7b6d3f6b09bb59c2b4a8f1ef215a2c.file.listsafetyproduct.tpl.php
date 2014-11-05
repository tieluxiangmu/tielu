<?php /* Smarty version Smarty-3.1.13, created on 2014-11-04 02:10:21
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\page\listsafetyproduct.tpl" */ ?>
<?php /*%%SmartyHeaderCode:125905458358d6580a8-88323569%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bd5e58a65f7b6d3f6b09bb59c2b4a8f1ef215a2c' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\page\\listsafetyproduct.tpl',
      1 => 1412678168,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '125905458358d6580a8-88323569',
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
  'unifunc' => 'content_5458358d86bec4_86632995',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5458358d86bec4_86632995')) {function content_5458358d86bec4_86632995($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.escape.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><?php if ((count($_smarty_tpl->tpl_vars['data']->value)==0)){?>
<div class="notification attention png_bg"><a href="#" class="close">
<img src="/web/static/cadrerealistic/images/icons/cross_grey_small_b635c2e.png" title="关闭" alt="可关闭这个提示">
</a>
<div>暂无符合条件的安全生产管理数据！</div>
</div>
<?php }else{ ?>
<table class="table-striped">
<thead>
<tr>
<th>
<input class="check-all" type="checkbox"/>
</th>
<th>
编号</th>
<th>
信息来源</th>
<th>
单位</th>
<th>
问题点</th>
<th>
责任部门</th>
<th>
责任人</th>
<th>
完成期限</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" data-conid="js-p-listecurityprodu">
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
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['serialnumber']);?>

</td>
<td>
<a>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['infosources']);?>

</a>
</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['company']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['theproblem']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['dutydepartment']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['dutyperson']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['deadline']);?>

</td>
<td>
<a href="" class="edit"  data-editinfo='{"page":"safetyproduct/editecurityprodu","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'  title="修改安全生产管理">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="编辑" />
</a>
<a href="" title="点击删除"   data-deleteinfo='{"channelid":"safetyproduct-form","page":"safetyproduct/delete","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}' class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_bc68ad4.png"  alt="删除" />
</a>
<a href="" title="安全生产管理详情"  class="detail"  data-detailinfo='{"page":"safetyproduct/view","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'>
<img src="/web/static/cadrerealistic/images/icons/detail_4ffc6a5.png" alt="详情" />
</a>
<a href="index.php?r=cadrerealistic/addsaferisk" title="收录为安全风险问题">
<img src="/web/static/cadrerealistic/images/icons/addrisk_e6d1dcd.png" alt="收录为安全风险问题" />
</a>
</td>
</tr>
<?php }} ?>
</tbody>
</table>
<?php }?><?php }} ?>