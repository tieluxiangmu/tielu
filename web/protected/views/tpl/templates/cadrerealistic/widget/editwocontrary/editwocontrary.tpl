<style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#twocontrarymanage-form  .small-input{
    width: 90% !important;
}
td{
    width:120px;
}
  </style>
<form id="twocontrarymanage-form" action="/web/index.php?r=twocontrarymanage/update&id={%$id|f_escape_path%}" method="post" data-isneedrefresh="need">
<table class="table table-bordered">
<tbody>
<tr>
<td class="spantitle">违章内容</td>
<td colspan="3">
<textarea class="text-input textarea" name="Twocontrarymanage[Illegalcontent]" id="Twocontrarymanage_Illegalcontent" cols="79" rows="5">{%$model['Illegalcontent']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td class="spantitle">处理结果</td>
<td colspan="3">
<textarea class="text-input textarea" name="Twocontrarymanage[processingresults]" id="Twocontrarymanage_processingresults" cols="79" rows="5">{%$model['processingresults']|f_escape_xml%}</textarea>
</td>
</tr>
<tr>
<td class="spantitle">违章类别</td>
<td><select class="text-input small-input chosen-select" name="Twocontrarymanage[llegalcategory]" id="Twocontrarymanage_llegalcategory">
<option selected="selected" value=""></option>
<option value="类别1">类别1</option>
</select>
</td>
<td class="spantitle">责任人扣分</td>
<td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[deduction]" id="Twocontrarymanage_deduction" value="{%$model['deduction']|f_escape_xml%}" /></td>
</tr>
<tr>
<td class="spantitle">所在生产小组长（值班员）</td>
<td>
    <select class="text-input small-input " name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"
<option selected="selected" value=""></option>

<option value="组长1">组长1</option>
</select>
</td>
<td class="spantitle">扣积分情况</td>
<td><input  class="text-input small-input"  type="text" name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" value="{%$model['buckleintegral']|f_escape_xml%}" /></td>
</tr>
<tr>
    <td class="spantitle">班组长</td>
    <td>
    <select class="text-input small-input " name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"
<option selected="selected" value=""></option>

<option value="组长1">班组长1</option>
</select>
</td>
<td class="spantitle">扣积分情况</td>
<td colspan="3">
<textarea class="text-input textarea" name="Twocontrarymanage[teamleaderIntegral]" id="Twocontrarymanage_teamleaderIntegral" cols="79" rows="5">{%$model['teamleaderIntegral']|f_escape_xml%}</textarea>
</td>
</tr>

</tbody>
</table>
<div style="text-align:center">
    <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editwocontrary" value="确认修改"/>
    <input type="submit" data-formtype="update" class="btn" id="js-btn-cancelwocontrary" value="撤消修改"/>
</div>
</form>
{%script%}
$('#Twocontrarymanage_llegalcategory').find("option[value='{%$model['llegalcategory']|f_escape_js%}']").attr("selected", "selected");
$('#Twocontrarymanage_productionleader').find("option[value='{%$model['productionleader']|f_escape_js%}']").attr("selected", "selected");
require("cadrerealistic:widget/editwocontrary/editwocontrary.js").init();
{%/script%}
