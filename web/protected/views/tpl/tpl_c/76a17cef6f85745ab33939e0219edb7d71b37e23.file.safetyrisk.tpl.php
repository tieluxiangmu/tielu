<?php /* Smarty version Smarty-3.1.13, created on 2014-09-23 17:04:37
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/safetyrisk/safetyrisk.tpl" */ ?>
<?php /*%%SmartyHeaderCode:107562525954218913d6e7c1-81179327%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '76a17cef6f85745ab33939e0219edb7d71b37e23' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/safetyrisk/safetyrisk.tpl',
      1 => 1411484669,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '107562525954218913d6e7c1-81179327',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54218913d97967_91228402',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54218913d97967_91228402')) {function content_54218913d97967_91228402($_smarty_tpl) {?>
<div class="content-box">
<div class="content-box-header">
<h3>安全生产管理表</h3>
<ul class="content-box-tabs">
<li><a href="#tab2" class="current" >添加安全生成管理</a></li>
</ul>
<div class="clear"></div>
</div>
<div class="content-box-content">
<div class="tab-content" id="tab2">
<form action="#" method="post">
<fieldset>
<p>
<label>信息来源</label>
<input class="text-input small-input" type="text" id="small-input" name="small-input" />
</p>
<p>
<label>单位</label>
<select name="dropdown" class="small-input">
<option value="option1">单位A</option>
<option value="option2">单位B</option>
</select>
</p>
<p>
<label>问题点</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>入库时间</label>
<input class="text-input small-input" type="text" id="small-input" name="small-input" />
</p>
<p>
<label>解决方案</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>责任部门</label>
<select name="dropdown" class="small-input">
<option value="option1">单位A</option>
<option value="option2">单位B</option>
</select>
</p>
<p>
<label>负责人</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>完成期限</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>检查人</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<input class="btn btn-primary js-action" data-leftconid = "js-li-realistic"   data-bigpipeid="index-widget-securityissues"  data-fn = "_redirectEvent" data-from="index-widget-safetyrisk" type="button" value="收录为安全风险" />
<input class="btn btn-success" type="button" value="确定" />
<input class="btn btn-warning" type="button" value="取消操作" />
</p>
</fieldset>
<div class="clear"></div>
</form>
</div>
</div>
</div>

<?php if(!class_exists('FISPagelet', false)){require_once('/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/extensions/smarty/plugins/lib/FISPagelet.class.php');}ob_start();?>
require("index:widget/safetyrisk/safetyrisk.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>