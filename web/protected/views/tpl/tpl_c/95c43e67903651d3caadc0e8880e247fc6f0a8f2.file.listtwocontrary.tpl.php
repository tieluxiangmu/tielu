<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:10:09
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/page/listtwocontrary.tpl" */ ?>
<?php /*%%SmartyHeaderCode:18733526835432058a593689-65772717%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '95c43e67903651d3caadc0e8880e247fc6f0a8f2' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/page/listtwocontrary.tpl',
      1 => 1412678167,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '18733526835432058a593689-65772717',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5432058a652be9_29576048',
  'variables' => 
  array (
    'data' => 0,
    'show_page' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5432058a652be9_29576048')) {function content_5432058a652be9_29576048($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_escape')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.escape.php';
if (!is_callable('smarty_modifier_f_escape_xml')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_xml.php';
?><?php if ((count($_smarty_tpl->tpl_vars['data']->value)==0)){?>
<div class="notification attention png_bg"><a href="#" class="close">
<img src="/web/static/cadrerealistic/images/icons/cross_grey_small_b635c2e.png" title="关闭" alt="可关闭这个提示">
</a>
<div>暂无符合条件的两违问题数据！</div>
</div>
<?php }else{ ?>
<table class="table-striped">
<thead>
<tr>
<th>
<input class="check-all" type="checkbox" />
</th>
<th>
序号</th>
<th>
检查时间</th>
<th>
检查单位</th>
<th>
检查人</th>
<th>
被查单位</th>
<th>
责任人</th>
<th>
违章内容</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" data-conid="js-p-listtwocontrary">
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
<a>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['serialnumber']);?>

</a>
</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['checktime']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['inspectionunit']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['rummager']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['company']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['responsibleperson']);?>

</td>
<td>
<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]['Illegalcontent']);?>

</td>
<td>
<a href="" class="edit"  data-editinfo='{"page":"twocontrarymanage/editecurityprodu","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}'  title="修改两违问题">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="编辑" />
</a>
<a href="" title="点击删除"   data-deleteinfo='{"channelid":"twocontrarymanage-form","page":"twocontrarymanage/delete","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
}' class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_bc68ad4.png"  alt="删除" />
</a>
<a href="" title="两违问题管理详情"  class="detail"  data-detailinfo='{"page":"twocontrarymanage/view","id":<?php echo smarty_modifier_f_escape_xml($_smarty_tpl->tpl_vars['data']->value[$_smarty_tpl->tpl_vars['i']->value]["id"]);?>
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