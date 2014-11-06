<style type="text/css">
    body{ background: white !important; padding: 5px; }
    
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td class="spantitle" style="width:200px;">序号</td>
<td>{%$model['serialnumber']|f_escape_xml%}</td>
<td class="spantitle">检查时间</td>
<td>{%$model['checktime']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">检查单位</td>
<td>{%$model['inspectionunit']|f_escape_xml%}</td>
<td class="spantitle">检查人</td>
<td>{%$model['rummager']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">被查单位</td>
<td>{%$model['company']|f_escape_xml%}</td>
<td class="spantitle">责任人</td>
<td>{%$model['responsibleperson']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">职名</td>
<td>{%$model['jobname']|f_escape_xml%}</td>
<td class="spantitle">政治面貌</td>
<td>{%$model['politicalaffiliation']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">违章内容</td>
<td colspan="3">{%$model['Illegalcontent']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle">处理结果</td>
<td colspan="3">{%$model['processingresults']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">违章类别</td>
<td>{%$model['llegalcategory']|f_escape_xml%}</td>
<td class="spantitle">责任人扣分</td>
<td>{%$model['deduction']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">所在生产小组长（值班员）</td>
<td>{%$model['productionleader']|f_escape_xml%}</td>
<td class="spantitle">扣积分情况</td>
<td>{%$model['buckleintegral']|f_escape_xml%}</td>
</tr>
<tr>
<td class="spantitle" style="width:200px;">（班组长）扣积分情况</td>
<td colspan="3">{%$model['teamleaderIntegral']|f_escape_xml%}</td>
</tr>
</tbody>
</table>
<div style="text-align:center;margin-bottom:20px">
    <input type="buttoon" data-formtype="cancel" style="width:100px;margin-left:20px;"class="btn" id="js-btn-cancelcardreal" value="关闭窗口"/>
</div>
