<style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#safetyproduct-form  .small-input{
    width: 90% !important;
}
  </style>
<form id="safetyproduct-form" action="index.php?r=safetyproduct/Update&id={%$id|f_escape_path%}" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td>整改情况</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[rectification]" id="Safetyproduct_rectification" cols="79" rows="5">{%$model['rectification']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td>检查人</td>
<td><input  class="text-input small-input" name="Safetyproduct[checkperson]" id="Safetyproduct_checkperson"  value="{%$model['checkperson']|f_escape_xml%}" />
</td>
<td>销号时间</td>
<td><input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyproduct[registertime]" id="Safetyproduct_registertime"  value="{%$model['registertime']|f_escape_xml%}" /></td>
</tr>
<tr>
<td>备注</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[comments]" id="Safetyproduct_comments" cols="79" rows="5">{%$model['comments']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td>问题目前状况</td>
<td colspan="3">
<select class="text-input small-input chosen-select" name="Safetyproduct[currentstatus]" id="Safetyproduct_currentstatus">
<option selected="selected" value="">请选择</option>
<option value="已整改">已整改</option>
<option value="整改中">整改中</option>
<option value="未整改">未整改</option>
</select>
</td>
</tr>
<tr>
<td>解决方案</td>
<td colspan="3">
<textarea class="text-input textarea" name="Safetyproduct[thesolution]" id="Safetyproduct_thesolution" cols="79" rows="5">{%$model['thesolution']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td colspan="4" style="text-align: center !important;"><input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editecurityprodu" value="确认修改"/>
</td>
</tr>
</tbody>
</table>
</form>
{%script%}
$('#Safetyproduct_currentstatus').find("option[value='{%$model['currentstatus']|f_escape_js%}']").attr("selected", "selected");
require("cadrerealistic:widget/editecurityprodu/editecurityprodu.js").init();
{%/script%}
