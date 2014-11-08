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
			<td>{%$data[$i]['name']%}</td>
			<td>{%$data[$i]['tel']%}</td>
			<td>{%$data[$i]['mobile']%}</td>
			<td>{%$data[$i]['department']%}</td>
			<td>{%$data[$i]['position']%}</td>
			<td>{%$data[$i]['email']%}</td>
		</tr>
	{%/for%}
	</tbody>
</table>
