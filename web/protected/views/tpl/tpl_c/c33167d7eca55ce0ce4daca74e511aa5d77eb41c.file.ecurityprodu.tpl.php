<?php /* Smarty version Smarty-3.1.13, created on 2014-10-07 13:09:08
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/ecurityprodu/ecurityprodu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13424612805426c151432810-37823893%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c33167d7eca55ce0ce4daca74e511aa5d77eb41c' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/web/protected/views/tpl/templates/cadrerealistic/widget/ecurityprodu/ecurityprodu.tpl',
      1 => 1412678167,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13424612805426c151432810-37823893',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5426c15143b6c1_83667959',
  'variables' => 
  array (
    'urlparam' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5426c15143b6c1_83667959')) {function content_5426c15143b6c1_83667959($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_js')) include '/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/modifier.f_escape_js.php';
?><style type="text/css">
  #ecurityprodu .small-input{
    width: 40% !important;
  }
</style>
<div class="content-box">
<div class="content-box-header">
<h3>
安全生产管理表</h3>
<ul class="content-box-tabs">
<li>
<a href="#tab1" class="default-tab current">
管理安全生产</a>
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
<span>入库时间</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sstoragetime" name="small-input"/>
<span>到</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="estoragetime" name="small-input"/>
</p>
<p>
<span>完成期限</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sdeadline" name="small-input"/>
<span>到</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="edeadline" name="small-input"/>
</p>
<p>
<span>销号时间</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sregistertime" name="small-input"/>
<span>到</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="eregistertime" name="small-input"/>
</p>
<p>
<span>信息来源</span>
<select class="small-input chosen-select" id="infosources">
<option value="">请选择</option>
<option value="信息来源1">信息来源1</option>
</select>
<span>单位</span>
<select class="small-input chosen-select" id="company">
<option value="">请选择</option>
<option value="单位1">单位1</option>
</select>
</p>
<p>
<span>责任部门</span>
<select class="chosen-select" id="dutydepartment" multiple="true">
<option value="责任部门1">责任部门1</option>
<option value="责任部门2">责任部门2</option>
</select>
<span>责任人</span>
<select class="chosen-select" id="dutyperson">
<option value="">请选择</option>
<option value="责任人1">责任人1</option>
</select>
</p>
<p>
<span>检查人</span>
<select class="small-input chosen-select" id="checkperson">
<option value="">请选择</option>
<option value="问题1">问题1</option>
</select>
<span>目前问题状况</span>
<select class="chosen-select" id="currentstatus">
<option value="">请选择</option>
<option value="责任人1">责任人1</option>
</select>
</p>
<p class="btn-con">
<input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="确认查询"/>
<input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listecurityprodu","page":"safetyproduct/exportuserexcel"}' type="button" value="导出excel"/>
<input class="btn btn-warning deleteall" data-deleteinfo='{"channelid":"safetyproduct-form","conid":"js-p-listecurityprodu","page":"safetyproduct/delete"}' type="button" value="确认删除"/>
</p>
</fieldset>
</form>
<p id="js-p-listecurityprodu"></p>
</div>
</div>
</div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/ecurityprodu/ecurityprodu.js").init('<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['urlparam']->value);?>
');
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>