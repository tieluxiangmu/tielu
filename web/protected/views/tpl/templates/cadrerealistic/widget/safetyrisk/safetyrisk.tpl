{%block name="content"%}
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
{%/block%}
{%script%}
require("cadrerealistic:widget/safetyrisk/safetyrisk.js").init();
{%/script%}