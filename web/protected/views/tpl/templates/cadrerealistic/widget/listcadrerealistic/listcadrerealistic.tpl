<table>
<thead>
<tr>
<th>
<input class="check-all" type="checkbox" />
</th>
<th>
日期</th>
<th>
检查方式</th>
<th>
单位</th>
<th>
值班干部</th>
<th>
发现问题</th>
<th>
两违类别/件数</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" id="js-div-realpagination">
{%$show_page|escape:none%}
</div>
</div>
</td>
</tr>
</tfoot>
<tbody>
{%for $i = 0; $i < count($data); $i++%}
<tr>
<td>
<input type="checkbox" />
</td>
<td>
{%$data[$i]['dateofentry']|f_escape_xml%}
</td>
<td>
<a>
{%$data[$i]['checkmodel']|f_escape_xml%}
</a>
</td>
<td>
{%$data[$i]['company']|f_escape_xml%}
</td>
<td>
{%$data[$i]['cadresonduty']|f_escape_xml%}
</td>
<td>
{%$data[$i]['foundproblem']|f_escape_xml%}
</td>
<td>
{%$data[$i]['categorynumber']|f_escape_xml%}
</td>
<td>
<a class="edit"  data-realid="{%$data[$i]['id']|f_escape_xml%}" href="#" title="点击进行编辑">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="点击进行编辑" />
</a>
<a href="#" title="点击删除"   data-realid="{%$data[$i]['id']|f_escape_xml%}" class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_d2ec591.png"  alt="点击删除" />
</a>
<a href="#" title="点击查看详细信息"    class="detail"  data-realid="{%$data[$i]['id']|f_escape_xml%}">
<img src="/web/static/cadrerealistic/images/icons/detail_4ffc6a5.png" alt="点击查看详细信息" />
</a>
</td>
</tr>
{%$data[i]|f_escape_xml%}
{%/for%}
</tbody>
</table>