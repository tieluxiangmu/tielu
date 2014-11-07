<style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#realinvestigation-form.large-input{
    width: 90% !important;
}
#realinvestigation-form  .small-input{
    width: 90% !important;
}
  </style>
<form id="realinvestigation-form" action="index.php?r=realinvestigation/Update&id={%$id|f_escape_path%}" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td>整改情况</td>
<td colspan="3"><textarea name="Realinvestigation[rectification]" id="Realinvestigation_rectification" cols="79" rows="5">{%$model['rectification']|f_escape_xml%}</textarea></td>
</tr>
<tr>
<td>改进意见</td>
<td colspan="3"><textarea  cols="79" rows="5" name="Realinvestigation[improvement]" id="Realinvestigation_improvement">{%$model['improvement']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td>发现问题</td>
<td colspan="3">
<textarea  name="Realinvestigation[foundproblem]" id="Realinvestigation_foundproblem" name="textfield" cols="79" rows="5">{%$model['foundproblem']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td>两违类别/件数</td>
<td colspan="3"><input name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber"  class="text-input small-input" value="{%$model['categorynumber']|f_escape_xml%}"/></td>
</tr>
<tr>
<td>考核扣分</td>
<td colspan="3"><input  class="text-input small-input"  name="Realinvestigation[evaluationpoints]" id="Realinvestigation_evaluationpoints" value="{%$model['evaluationpoints']|f_escape_xml%}" /></td>
</tr>
<tr>
<td>扣分原因</td>
<td colspan="3"><input name="Realinvestigation[pointsreasons]" id="Realinvestigation_pointsreasons" class="text-input small-input" type="text"   value="{%$model['pointsreasons']|f_escape_xml%}"/></td>
</tr>
<tr>
<td>考核主体</td>
<td colspan="3"><input type="text"   value="{%$model['assessmentmain']|f_escape_xml%}" class="text-input small-input"  name="Realinvestigation[assessmentmain]" id="Realinvestigation_assessmentmain" cols="79" rows="5"></input></td>
</tr>
<tr>
<td>评语</td>
<td colspan="3"><textarea   name="Realinvestigation[comment]" id="Realinvestigation_comment"  cols="79" rows="5">{%$model['comment']|f_escape_xml%}</textarea></td>
</tr>
<tr>
<td colspan="4" style="text-align: center !important;"><input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editcardreal" value="确认修改"/>
</td>
</tr>
</tbody>
</table>
</form>
{%script%}
require("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.js").init();
{%/script%}
