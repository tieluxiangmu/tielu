<style type="text/css">
  #ecurityprodu .small-input{
    width: 40% !important;
  }
</style>
<div class="content-box">
<div class="content-box-header">
<h3>
安全生产管理表</h3>
<ul class="content-box-tabs">
<li>
<a href="#tab1" class="default-tab current">
管理安全生产</a>
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
<span>入库时间</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sstoragetime" name="small-input"/>
<span>到</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="estoragetime" name="small-input"/>
</p>
<p>
<span>完成期限</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sdeadline" name="small-input"/>
<span>到</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="edeadline" name="small-input"/>
</p>
<p>
<span>销号时间</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sregistertime" name="small-input"/>
<span>到</span>
<input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="eregistertime" name="small-input"/>
</p>
<p>
<span>信息来源</span>
<select class="small-input chosen-select" id="infosources">
<option value="">请选择</option>
<option value="信息来源1">信息来源1</option>
</select>
<span>单位</span>
<select class="small-input chosen-select" id="company">
<option value="">请选择</option>
<option value="单位1">单位1</option>
</select>
</p>
<p>
<span>责任部门</span>
<select class="chosen-select" id="dutydepartment" multiple="true">
<option value="责任部门1">责任部门1</option>
<option value="责任部门2">责任部门2</option>
</select>
<span>责任人</span>
<select class="chosen-select" id="dutyperson">
<option value="">请选择</option>
<option value="责任人1">责任人1</option>
</select>
</p>
<p>
<span>检查人</span>
<select class="small-input chosen-select" id="checkperson">
<option value="">请选择</option>
<option value="问题1">问题1</option>
</select>
<span>目前问题状况</span>
<select class="chosen-select" id="currentstatus">
<option value="">请选择</option>
<option value="责任人1">责任人1</option>
</select>
</p>
<p class="btn-con">
<input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="确认查询"/>
<input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listecurityprodu","page":"safetyproduct/exportuserexcel"}' type="button" value="导出excel"/>
<input class="btn btn-warning deleteall" data-deleteinfo='{"channelid":"safetyproduct-form","conid":"js-p-listecurityprodu","page":"safetyproduct/delete"}' type="button" value="确认删除"/>
</p>
</fieldset>
</form>
<p id="js-p-listecurityprodu"></p>
</div>
</div>
</div>
</div>
{%script%}
require("cadrerealistic:widget/ecurityprodu/ecurityprodu.js").init('{%$urlparam|f_escape_js%}');
{%/script%}