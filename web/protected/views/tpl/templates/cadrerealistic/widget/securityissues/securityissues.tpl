{%block name="content"%}
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
{%/block%}
{%script%}
require("cadrerealistic:widget/securityissues/securityissues.js").init();
{%/script%}