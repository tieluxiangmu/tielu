<div class="content-box">
<div class="content-box-header">
<h3>联系人列表</h3>
</div>
<div class="content-box-content">
<table class="table-striped">
<thead>
<tr>
<th>姓名</th>
<th>电话</th>
<th>手机号</th>
<th>单位</th>
<th>职位</th>
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
</div>
</div>
