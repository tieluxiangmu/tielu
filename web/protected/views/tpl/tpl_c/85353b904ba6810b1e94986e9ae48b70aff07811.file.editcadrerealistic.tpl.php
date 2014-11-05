<?php /* Smarty version Smarty-3.1.13, created on 2014-09-22 17:21:14
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/editcadrerealistic/editcadrerealistic.tpl" */ ?>
<?php /*%%SmartyHeaderCode:360882384541a7ba01dec89-07005009%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '85353b904ba6810b1e94986e9ae48b70aff07811' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/editcadrerealistic/editcadrerealistic.tpl',
      1 => 1411399156,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '360882384541a7ba01dec89-07005009',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_541a7ba01e0157_86269504',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_541a7ba01e0157_86269504')) {function content_541a7ba01e0157_86269504($_smarty_tpl) {?><style type="text/css">
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