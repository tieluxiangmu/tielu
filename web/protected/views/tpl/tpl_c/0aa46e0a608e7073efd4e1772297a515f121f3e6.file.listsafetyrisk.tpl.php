<?php /* Smarty version Smarty-3.1.13, created on 2014-11-04 02:12:52
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\page\listsafetyrisk.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2635454583624b6c396-33942116%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0aa46e0a608e7073efd4e1772297a515f121f3e6' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\page\\listsafetyrisk.tpl',
      1 => 1412678168,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2635454583624b6c396-33942116',
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
  'unifunc' => 'content_54583624dbd520_12625585',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54583624dbd520_12625585')) {function content_54583624dbd520_12625585($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.escape.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_xml.php';
?><?php if ((count($_smarty_tpl->tpl_vars['data']->value)==0)){?>
<div class="notification attention png_bg"><a href="#" class="close">
<img src="/web/static/cadrerealistic/images/icons/cross_grey_small_b635c2e.png" title="关闭" alt="可关闭这个提示">
</a>
<div>暂无符合条件的安全风险管理数据！</div>
</div>
<?php }else{ ?>
<table class="table-striped">
<thead>
<tr>
<th>
<input class="check-all" type="checkbox" />
</th>
<th>
编号</th>
<th>
风险名称</th>
<th>
风险分类</th>
<th>
系统</th>
<th>
风险原因(致因)</th>
<th>
可能后果</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" data-conid="js-p-listsafetyrisk">
<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['show_page']->value, 'none');?>

</div>
<div class="clear">
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
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['riskname']);?>

</a>
</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['riskclass']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['risksystem']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['reasonofrisk']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['consequence']);?>

</td>
<td>
<a href="" class="edit"  data-editinfo='{"page":"safetyrisk/editsafetyrisk","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'  title="修改安全风险管理">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="编辑" />
</a>
<a href="" title="点击删除"   data-deleteinfo='{"channelid":"safetyrisk-form","page":"safetyrisk/delete","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}' class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_bc68ad4.png"  alt="删除" />
</a>
<a href="" title="安全风险详情"  class="detail"  data-detailinfo='{"page":"safetyrisk/view","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'>
<img src="/web/static/cadrerealistic/images/icons/detail_4ffc6a5.png" alt="详情" />
</a>
</td>
</tr>
<?php }} ?>
</tbody>
</table>
<?php }?><?php }} ?>