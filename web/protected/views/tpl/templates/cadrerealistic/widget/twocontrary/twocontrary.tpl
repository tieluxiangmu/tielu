<style type="text/css">
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
{%script%}
require("cadrerealistic:widget/twocontrary/twocontrary.js").init('{%$urlparam|f_escape_js%}');
{%/script%}