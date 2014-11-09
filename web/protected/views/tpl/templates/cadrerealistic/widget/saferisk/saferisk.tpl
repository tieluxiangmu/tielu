<style type="text/css">
  #ecurityprodu .small-input{
    width: 40% !important;
  }
</style>
<div class="content-box">
<div class="content-box-header">
<h3>
安全风险管理</h3>
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
<strong>实施日期</strong>
</span>
<input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="simplementdate" />
<span>到</span>
<input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="eimplementdate" />
</p>
<p>
<span>
<strong>完成日期</strong>
</span>
<input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="scompletiondate" />
<span>到</span>
<input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="ecompletiondate" />
</p>
<p>
<span>
<strong>风险分类</strong>
</span>
<select class="small-input chosen-select" id="riskclass" style="width:120px">
<option selected="selected" value=""></option>
<option value="风险分类1">
风险分类1</option>
</select>
<span style="margin-left:44px">
<strong>系统</strong>
</span>
<select class="small-input chosen-select" id="risksystem" style="width:120px">
<option selected="selected" value=""></option>
<option value="系统1">
系统1</option>
</select>
</p>
<p>
<span>
<strong>负责领导</strong>
</span>
<select class="small-input chosen-select" id="responsibilitylead" style="width:120px">
<option selected="selected" value=""></option>
<option value="负责领导1">
负责领导1</option>
</select>
<span style="margin-left:20px">
<strong>责任部门</strong>
</span>
<select class="small-input chosen-select" id="dutypartments" style="width:120px">
<option selected="selected" value=""></option>
<option value="责任部门1">
责任部门1</option>
</select>
</p>
<p >
<span>
<strong>配合部门</strong>
</span>
<select class="small-input chosen-select" id="coordinationpart">
<option selected="selected" value=""></option>
<option value="配合部门1">
配合部门1</option>
</select>
<div>
<input class="button btn btn-primary" type="button"  id="submitseacrh-btn" value="开始查询"/>
<input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listsafetyrisk","page":"safetyrisk/exportuserexcel"}' type="button" value="导出Excel"/>
<input class="btn btn-warning  deleteall" data-deleteinfo='{"channelid":"safetyrisk-form","conid":"js-p-listsafetyrisk","page":"safetyrisk/delete"}' type="button" value="确认删除" />
</div>
</p>
</fieldset>
</form>
<p id="js-p-listsafetyrisk"></p>
</table>
</div>
</div>
</div>
{%script%}
require("cadrerealistic:widget/saferisk/saferisk.js").init('{%$urlparam|f_escape_js%}');
{%/script%}