<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td>编号</td>
<td>{%$model['serialnumber']|f_escape_xml%}</td>
<td>信息来源</td>
<td>{%$model['infosources']|f_escape_xml%}</td>
</tr>
<tr>
<td>单位</td>
<td>{%$model['company']|f_escape_xml%}</td>
<td>入库时间</td>
<td>{%$model['storagetime']|f_escape_xml%}</td>
</tr>
<tr>
<td>问题点</td>
<td colspan="3">{%$model['theproblem']|f_escape_xml%}</td>
</tr>
<tr>
<td>解决方案</td>
<td colspan="3">{%$model['thesolution']|f_escape_xml%}</td>
</tr>
<tr>
<td>责任部门</td>
<td>{%$model['dutydepartment']|f_escape_xml%}</td>
<td>责任人</td>
<td>{%$model['dutyperson']|f_escape_xml%}</td>
</tr>
<tr>
<td>完成期限</td>
<td>{%$model['deadline']|f_escape_xml%}</td>
<td>检查人</td>
<td>{%$model['checkperson']|f_escape_xml%}</td>
</tr>
<tr>
<td>整改情况</td>
<td colspan="3">{%$model['rectification']|f_escape_xml%}</td>
</tr>
<tr>
<td>消号时间</td>
<td>{%$model['registertime']|f_escape_xml%}</td>
<td>问题目前状况</td>
<td>{%$model['currentstatus']|f_escape_xml%}</td>
</tr>
<tr>
<td>备注</td>
<td colspan="3">{%$model['comments']|f_escape_xml%}</td>
</tr>
</tbody>
</table>
