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
<td class="spantitle">整改情况</td>
<td colspan="3"><textarea name="Realinvestigation[rectification]" id="Realinvestigation_rectification" style="width:350px" cols="79" rows="5">{%$model['rectification']|f_escape_xml%}</textarea></td>
</tr>
<tr>
<td class="spantitle">改进意见</td>
<td colspan="3"><textarea  cols="79" rows="5" name="Realinvestigation[improvement]" style="width:350px" id="Realinvestigation_improvement">{%$model['improvement']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td class="spantitle">发现问题</td>
<td colspan="3">
<textarea  name="Realinvestigation[foundproblem]" style="width:350px" id="Realinvestigation_foundproblem" name="textfield" cols="79" rows="5">{%$model['foundproblem']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td class="spantitle">两违类别/件数</td>
<td colspan="3"><input style="width:350px" name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber"  class="text-input small-input" value="{%$model['categorynumber']|f_escape_xml%}"/></td>
</tr>
</tbody>
</table>
<div style="text-align:center;margin-bottom:20px">
<input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editcardreal" value="确认修改"/>
<input type="buttoon" data-formtype="cancel" style="width:100px;margin-left:20px;"class="btn" id="js-btn-cancelcardreal" value="撤消修改"/>
</div>
</form>
{%script%}
require("cadrerealistic:widget/editcadrerealistic/editcadrerealistic.js").init();
{%/script%}
