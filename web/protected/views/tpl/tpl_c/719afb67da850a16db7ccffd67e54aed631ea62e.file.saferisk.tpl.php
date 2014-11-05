<?php /* Smarty version Smarty-3.1.13, created on 2014-11-04 02:12:52
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\saferisk\saferisk.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2283254583624329997-55598810%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '719afb67da850a16db7ccffd67e54aed631ea62e' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\saferisk\\saferisk.tpl',
      1 => 1412678168,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2283254583624329997-55598810',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'urlparam' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5458362434c596_34107976',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5458362434c596_34107976')) {function content_5458362434c596_34107976($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_js')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_js.php';
?><style type="text/css">
  #ecurityprodu .small-input{
    width: 40% !important;
  }
</style>
<div class="content-box">
<div class="content-box-header">
<h3>
安全风险题管理表</h3>
<ul class="content-box-tabs">
<li>
<a href="#tab1" class="default-tab current">
管理安全风险</a>
</li>
</ul>
<div class="clear">
</div>
</div>
<div class="content-box-content">
<div class="tab-content default-tab" id="tab1">
<form class="search" id="ecurityprodu">
<fieldset>
<p>
<span>
实施日期</span>
<input class="text-input small-input" onClick="WdatePicker()" type="text" id="simplementdate" />
<span>到</span>
<input class="text-input small-input" onClick="WdatePicker()" type="text" id="eimplementdate" />
</p>
<p>
<span>
完成日期</span>
<input class="text-input small-input" onClick="WdatePicker()" type="text" id="scompletiondate" />
<span>到</span>
<input class="text-input small-input" onClick="WdatePicker()" type="text" id="ecompletiondate" />
</p>
<p>
<span>
风险分类</span>
<select class="small-input chosen-select" id="riskclass">
<option value="">请选择</option>
<option value="风险分类1">
风险分类1</option>
</select>
<span>
系统</span>
<select class="small-input chosen-select" id="risksystem">
<option value="">请选择</option>
<option value="系统1">
系统1</option>
</select>
</p>
<p>
<span>
负责领导</span>
<select class="small-input chosen-select" id="responsibilitylead">
<option value="">请选择</option>
<option value="负责领导1">
负责领导1</option>
</select>
<span>
责任部门</span>
<select class="small-input chosen-select" id="dutypartments">
<option value="">请选择</option>
<option value="责任部门1">
责任部门1</option>
</select>
</p>
<p >
<span>
配合部门</span>
<select class="small-input chosen-select" id="coordinationpart">
<option value="">请选择</option>
<option value="配合部门1">
配合部门1</option>
</select>
<input class="button btn btn-primary" type="button"  id="submitseacrh-btn" value="确认查询"/>
<input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listsafetyrisk","page":"safetyrisk/exportuserexcel"}' type="button" value="导出excel"/>
<input class="btn btn-warning  deleteall" data-deleteinfo='{"channelid":"safetyrisk-form","conid":"js-p-listsafetyrisk","page":"safetyrisk/delete"}' type="button" value="确认删除" />
</p>
</fieldset>
</form>
<p id="js-p-listsafetyrisk"></p>
</table>
</div>
</div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/saferisk/saferisk.js").init('<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['urlparam']->value);?>
');
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>