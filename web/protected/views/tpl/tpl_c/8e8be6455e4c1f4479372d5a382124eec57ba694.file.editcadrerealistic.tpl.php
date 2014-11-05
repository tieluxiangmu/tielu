<?php /* Smarty version Smarty-3.1.13, created on 2014-09-27 06:32:20
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/widget/editcadrerealistic/editcadrerealistic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:168642908954263a0b1d3ce7-63767462%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8e8be6455e4c1f4479372d5a382124eec57ba694' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/index/widget/editcadrerealistic/editcadrerealistic.tpl',
      1 => 1411792337,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '168642908954263a0b1d3ce7-63767462',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54263a0b1d52d5_70996061',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54263a0b1d52d5_70996061')) {function content_54263a0b1d52d5_70996061($_smarty_tpl) {?><style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
  </style>
<form>
<table class="table table-bordered">
<tbody>
<tr>
<td>考核扣分</td>
<td><input class="text-input small-input" type="number" id="small-input" name="small-input" /></td>
<td>扣分原因</td>
<td><input style="width: 90% !important;" class="text-input large-input" type="text"  name="large-input" /></td>
</tr>
<tr>
<td>考核主体评语</td>
<td colspan="3"><textarea style="margin-left: 0px; margin-right: 0px; width: 608px;" id="textarea" name="textfield" cols="79" rows="5"></textarea></td>
</tr>
<tr>
<td>整改情况</td>
<td colspan="3"><textarea style="margin-left: 0px; margin-right: 0px; width: 608px;" name="textfield" cols="79" rows="5"></textarea></td>
</tr>
<tr>
<td colspan="4" style="text-align: center !important;"><button type="button" class="btn btn-primary">确认修改</button>
</td>
</tr>
</tbody>
</table>
</form>
<?php }} ?>