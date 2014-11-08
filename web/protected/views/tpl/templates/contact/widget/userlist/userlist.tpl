<table class="table-striped">
<thead>
<tr>
<th>姓名</th>
<th>电话</th>
<th>手机号</th>
<th>单位名称</th>
<th>职位名称</th>
<th>邮箱</th>
</tr>
</thead>
<tbody>
{%for $i = 0; $i < count($data); $i++%}
<tr>
<td>{%$data[$i]['name']|f_escape_xml%}</td>
<td>{%$data[$i]['tel']|f_escape_xml%}</td>
<td>{%$data[$i]['mobile']|f_escape_xml%}</td>
<td>{%$data[$i]['department']|f_escape_xml%}</td>
<td>{%$data[$i]['position']|f_escape_xml%}</td>
<td>{%$data[$i]['email']|f_escape_xml%}</td>
</tr>
{%/for%}
</tbody>
</table>
