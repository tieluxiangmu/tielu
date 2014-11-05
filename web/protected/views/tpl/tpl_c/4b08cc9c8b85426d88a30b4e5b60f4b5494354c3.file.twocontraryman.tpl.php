<?php /* Smarty version Smarty-3.1.13, created on 2014-09-23 17:03:31
         compiled from "/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/twocontraryman/twocontraryman.tpl" */ ?>
<?php /*%%SmartyHeaderCode:170156902254202f042d5dd4-97977808%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4b08cc9c8b85426d88a30b4e5b60f4b5494354c3' => 
    array (
      0 => '/Applications/XAMPP/xamppfiles/htdocs/newweb/protected/views/tpl/templates/index/widget/twocontraryman/twocontraryman.tpl',
      1 => 1411484509,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '170156902254202f042d5dd4-97977808',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_54202f0430d586_63207978',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54202f0430d586_63207978')) {function content_54202f0430d586_63207978($_smarty_tpl) {?>
<div class="content-box">
<div class="content-box-header">
<h3>两违管理表</h3>
<ul class="content-box-tabs">
<li><a href="#tab2" class="current" >添加两违问题</a></li>
</ul>
<div class="clear"></div>
</div>
<div class="content-box-content">
<div class="tab-content" id="tab2">
<form action="#" method="post">
<fieldset>
<p>
<label>检查时间</label>
<input class="text-input small-input" type="text" id="small-input" name="small-input" />
</p>
<p>
<label>检查单位</label>
<select name="dropdown" class="small-input">
<option value="option1">a火车站</option>
<option value="option2">b火车站</option>
</select>
</p>
<p>
<label>检查人</label>
<select name="dropdown" class="small-input">
<option value="option1">张三</option>
<option value="option2">李四</option>
</select>
</p>
<p>
<label>被查单位</label>
<select name="dropdown" class="small-input">
<option value="option1">a火车站</option>
<option value="option2">b火车站</option>
</select>
</p>
<p>
<label>责任人</label>
<select name="dropdown" class="small-input">
<option value="option1">张三</option>
<option value="option2">李四</option>
</select>
</p>
<p>
<label>职名</label>
<input class="text-input small-input" type="text" id="small-input" name="small-input" />
</p>
<p>
<label>政治面貌</label>
<input class="text-input small-input" type="text" id="small-input" name="small-input" />
</p>
<p>
<label>违章内容</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>处理结果</label>
<textarea class="text-input textarea wysiwyg" id="textarea" name="textfield" cols="79" rows="5"></textarea>
</p>
<p>
<label>违章类别</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>责任人扣分</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>所在生产小组长（值班员）</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>扣积分情况</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<label>（班组长）扣积分情况</label>
<input class="text-input small-input" type="number" id="small-input" name="small-input" />
</p>
<p>
<input class="btn btn-primary js-action" data-leftconid = "js-li-realistic"   data-bigpipeid="index-widget-securityissues"  data-fn = "_redirectEvent" data-from="index-widget-twocontraryman" type="button" value="收录为安全风险" />
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
require("index:widget/twocontraryman/twocontraryman.js").init();
<?php $script = ob_get_clean();if($script!==false){if(class_exists('FISPagelet', false)){if(FISPagelet::$cp) {if (!in_array(FISPagelet::$cp, FISPagelet::$arrEmbeded)){FISPagelet::addScript($script);FISPagelet::$arrEmbeded[] = FISPagelet::$cp;}} else {FISPagelet::addScript($script);}}}FISPagelet::$cp = null;?><?php }} ?>