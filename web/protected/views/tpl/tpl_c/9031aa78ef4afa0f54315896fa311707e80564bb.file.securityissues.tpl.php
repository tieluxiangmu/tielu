<?php /* Smarty version Smarty-3.1.13, created on 2014-09-23 17:04:43
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/securityissues/securityissues.tpl" */ ?>
<?php /*%%SmartyHeaderCode:113402229954204659f06f77-16815813%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9031aa78ef4afa0f54315896fa311707e80564bb' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/securityissues/securityissues.tpl',
      1 => 1411484669,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '113402229954204659f06f77-16815813',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5420465a007e85_60611408',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5420465a007e85_60611408')) {function content_5420465a007e85_60611408($_smarty_tpl) {?>
<div class="content-box">
<div class="content-box-header">
<h3>安全风险管理表</h3>
<ul class="content-box-tabs">
<li><a href="#tab2" class="current" >添加安全风险管理</a></li>
</ul>
<div class="clear"></div>
</div>
<div class="content-box-content">
<div class="tab-content" id="tab2">
<form action="#" method="post">
<fieldset>
<p>
<label>风险名称</label>
<input class="text-input small-input" type="text" id="small-input" name="small-input" />
</p>
<p>
<label>风险分类系统</label>
<select name="dropdown" class="small-input">
<option value="option1">风险A</option>
<option value="option2">风险B</option>
</select>
</p>
<p>
<label>可能后果</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>既有措施及有效性（问题）</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>进一步防控措施</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>应急（预警）处置措施</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>负责领导</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>责任部门</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>配合部门</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>实施日期</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>备注客车</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>备注高铁</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<input class="btn btn-primary" type="button" value="收录为安全风险" />
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
require("index:widget/securityissues/securityissues.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>