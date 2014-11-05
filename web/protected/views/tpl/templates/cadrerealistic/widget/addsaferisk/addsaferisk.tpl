<div class="content-box">
<div class="content-box-header">
<h3>
安全风险管理表</h3>
<ul class="content-box-tabs">
<li>
<a href="#tab2" class="current">
添加安全风险管理</a>
</li>
</ul>
<div class="clear">
</div>
</div>
<div class="content-box-content">
<div class="tab-content" id="tab2">
<form data-isneedrefresh="noneed"  id="safetyrisk-form" action="index.php?r=safetyrisk/create" method="post">
<fieldset>
<p>
<label>
风险名称</label>
<input class="text-input small-input" type="text" name="Safetyrisk[riskname]" id="Safetyrisk_riskname"/>
</p>
<p>
<label>
风险分类</label>
<select name="Safetyrisk[riskclass]" id="Safetyrisk_riskclass" class="small-input">
<option value="" selected="selected">请选择风险分类</option>
<option value="风险分类1">
风险分类1</option>
</select>
</p>
<p>
<label>
系统</label>
<select  name="Safetyrisk[risksystem]" id="Safetyrisk_risksystem" class="small-input">
<option value="" selected="selected">请选择系统</option>
<option value="系统1">
系统1</option>
</select>
</p>
<p>
<label>
风险原因（致因）</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[reasonofrisk]" id="Safetyrisk_reasonofrisk" cols="79" rows="5"></textarea>
</p>
<p>
<label>
可能后果</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[consequence]" id="Safetyrisk_consequence" cols="79" rows="5"></textarea>
</p>
<p>
<label>
既有措施及有效性（问题）</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[measures]" id="Safetyrisk_measures" cols="79" rows="5"></textarea>
</p>
<p>
<label>
分布情况</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[distribution]" id="Safetyrisk_distribution" cols="79" rows="5"></textarea>
</p>
<p>
<label>
进一步防控措施</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[furtherproof]" id="Safetyrisk_furtherproof" cols="79" rows="5"></textarea>
</p>
<p>
<label>
应急（预警）处置措施</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[emergencyhand]" id="Safetyrisk_emergencyhand" cols="79" rows="5"></textarea>
</p>
<p>
<label>
负责领导</label>
<select name="Safetyrisk[responsibilitylead]" id="Safetyrisk_responsibilitylead" class="small-input">
<option value="" selected="selected">请选择负责领导</option>
<option value="责任领导1">
责任领导1</option>
</select>
</p>
<p>
<label>
责任部门</label>
<select name="Safetyrisk[dutypartments]" id="Safetyrisk_dutypartments" class="small-input">
<option value="" selected="selected">请选择责任部门</option>
<option value="责任部门1">
责任部门1</option>
</select>
</p>
<p>
<label>
配合部门</label>
<select name="Safetyrisk[coordinationpart]" id="Safetyrisk_coordinationpart" class="small-input">
<option value="" selected="selected">请选择配合部门</option>
<option value="配合部门1">
配合部门1</option>
</select>
</p>
<p>
<label>
实施日期</label>
<input class="text-input small-input"  name="Safetyrisk[implementdate]" id="Safetyrisk_implementdate"   onClick="WdatePicker()"/>
</p>
<p>
<label>
备注客车</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[notethebus]" id="Safetyrisk_notethebus" cols="79" rows="5"></textarea>
</p>
<p>
<label>
备注高铁</label>
<textarea class="text-input textarea wysiwyg"  name="Safetyrisk[notehighspeedrail]" id="Safetyrisk_notehighspeedrail" cols="79" rows="5"></textarea>
</p>
<p>
<input class="btn btn-success" type="submit" id="js-input-submitsaferisk" value="确定保存" />
<input class="btn btn-warning" type="button" id="js-input-cancelsaferisk" value="取消操作" />
</p>
</fieldset>
<div class="clear">
</div>
</form>
</div>
</div>
</div>
{%script%}
require("cadrerealistic:widget/addsaferisk/addsaferisk.js").init();
{%/script%}