<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td>编号</td>
<td>{%$model['serialnumber']|f_escape_xml%}</td>
<td>风险名称</td>
<td>{%$model['riskname']|f_escape_xml%}</td>
</tr>
<tr>
<td>风险分类</td>
<td>{%$model['riskclass']|f_escape_xml%}</td>
<td>系统</td>
<td>{%$model['risksystem']|f_escape_xml%}</td>
</tr>
<tr>
<td>风险原因（致因）</td>
<td colspan="3">{%$model['reasonofrisk']|f_escape_xml%}</td>
</tr>
<tr>
<td>可能后果</td>
<td colspan="3">{%$model['consequence']|f_escape_xml%}</td>
</tr>
<tr>
<td>既有措施及有效性（问题）</td>
<td colspan="3">{%$model['measures']|f_escape_xml%}</td>
</tr>
<tr>
<td>分布情况</td>
<td colspan="3">{%$model['distribution']|f_escape_xml%}</td>
</tr>
<tr>
<td>进一步防控措施</td>
<td colspan="3">{%$model['furtherproof']|f_escape_xml%}</td>
</tr>
<tr>
<td>应急（预警）处置措施</td>
<td colspan="3">{%$model['emergencyhand']|f_escape_xml%}</td>
</tr>
<tr>
<td>负责领导</td>
<td>{%$model['responsibilitylead']|f_escape_xml%}</td>
<td>责任部门</td>
<td>{%$model['dutypartments']|f_escape_xml%}</td>
</tr><tr>
<td>配合部门</td>
<td>{%$model['coordinationpart']|f_escape_xml%}</td>
<td>实施日期</td>
<td>{%$model['implementdate']|f_escape_xml%}</td>
</tr>
<tr>
<td>完成日期</td>
<td colspan="3">{%$model['completiondate']|f_escape_xml%}</td>
</tr>
<tr>
<td>备注客车</td>
<td colspan="3">{%$model['notethebus']|f_escape_xml%}</td>
</tr>
<tr>
<td>备注高铁</td>
<td colspan="3">{%$model['notehighspeedrail']|f_escape_xml%}</td>
</tr>
</tbody>
</table>
