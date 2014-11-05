{%block name="content"%}
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
{%/block%}
{%script%}
require("cadrerealistic:widget/addtwocontraryman/addtwocontraryman.js").init();
{%/script%}