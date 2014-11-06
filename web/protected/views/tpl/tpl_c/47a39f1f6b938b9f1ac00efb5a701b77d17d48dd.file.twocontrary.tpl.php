<?php /* Smarty version Smarty-3.1.13, created on 2014-11-06 12:37:32
         compiled from "D:\wamp\www\web\protected\views\tpl\templates\cadrerealistic\widget\twocontrary\twocontrary.tpl" */ ?>
<?php /*%%SmartyHeaderCode:207425458361fef6e59-93384588%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '47a39f1f6b938b9f1ac00efb5a701b77d17d48dd' => 
    array (
      0 => 'D:\\wamp\\www\\web\\protected\\views\\tpl\\templates\\cadrerealistic\\widget\\twocontrary\\twocontrary.tpl',
      1 => 1415277449,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '207425458361fef6e59-93384588',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5458361ff10ae9_70728907',
  'variables' => 
  array (
    'urlparam' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5458361ff10ae9_70728907')) {function content_5458361ff10ae9_70728907($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_f_escape_js')) include 'D:\\wamp\\www\\web\\protected\\extensions\\smarty\\plugins\\modifier.f_escape_js.php';
?><style type="text/css">
  #ecurityprodu .small-input{
    width: 40% !important;
  }
</style>
<div class="content-box">
<div class="content-box-header">
<h3>
两违问题管理</h3>
<ul class="content-box-tabs">
<li>
<a href="#tab1" class="default-tab current">
两违问题管理</a>
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
<span class="spantitle">
检查时间</span>
<input class="text-input small-input" onClick="WdatePicker()" type="text" id="schecktime" />
<span>到</span>
<input class="text-input small-input" onClick="WdatePicker()" type="text" id="echecktime" />
</p>
<p>
<span class="spantitle">
检查单位</span>
<select class="chosen-select"  id="inspectionunit">
<option value=""></option>
<option value="检查单位1">
检查单位1</option>
</select>
<span class="spantitle">
检查人</span>
<select class="chosen-select" id="rummager">
<option value=""></option>
<option value="">检查人1</option>
</select>
</p>
<p>
<span class="spantitle">被查单位</span>
<select class="chosen-select" id="company">
<option value=""></option>
<option value="被查单位1">
被查单位1</option>
</select>
<span class="spantitle">责任人</span>
<select class="chosen-select" id="responsibleperson">
<option value=""></option>
<option value="责任人1">
责任人1</option>
</select>
</p>
<p>
<span class="spantitle">违章类别</span>
<select class="chosen-select" id="llegalcategory">
<option value=""></option>
<option value="违章类别1">
违章类别1</option>
</select>
<span class="spantitle">所在生产小组长</span>
<select class="chosen-select" id="productionleader">
<option value=""></option>
<option value="组长1">
组长1</option>
</select>
</p>
<p class="btn-con">
<input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="开始查询"
            />
<input class="btn btn-success  exportexcel" data-excelinfo='{"conid":"js-p-listtwocontrary","page":"twocontrarymanage/exportuserexcel"}' type="button" value="导出Excel" />
<input class="btn btn-warning deleteall" data-deleteinfo='{"channelid":"twocontrarymanage-form","conid":"js-p-listtwocontrary","page":"twocontrarymanage/delete"}'  type="button" value="确认删除" />
</p>
</fieldset>
</form>
<p id="js-p-listtwocontrary"></p>
</div>
</div>
</div>
<?php if(!class_exists('FISPagelet', false)){require_once('D:/wamp/www/web/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("cadrerealistic:widget/twocontrary/twocontrary.js").init('<?php echo smarty_modifier_f_escape_js($_smarty_tpl->tpl_vars['urlparam']->value);?>
');
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>