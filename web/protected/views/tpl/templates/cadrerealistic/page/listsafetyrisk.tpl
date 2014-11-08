{%if (count($data)==0)%}
<div class="notification attention png_bg"><a href="#" class="close">
<img src="/web/static/cadrerealistic/images/icons/cross_grey_small_b635c2e.png" title="关闭" alt="可关闭这个提示">
</a>
<div>暂无符合条件的安全风险管理数据！</div>
</div>
{%else%}
<table class="table-striped">
<thead>
<tr>
<th>
<input class="check-all" type="checkbox" />全选</th>
<th>
编号</th>
<th>
风险名称</th>
<th>
风险分类</th>
<th>
系统</th>
<th>
风险原因(致因)</th>
<th>
可能后果</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" data-conid="js-p-listsafetyrisk">
{%$show_page|escape:none%}
</div>
<div class="clear">
</div>
</td>
</tr>
</tfoot>
<tbody>
{%for $i = 0; $i < count($data); $i++%}
<tr>
<td>
<input type="checkbox" data-id="{%$data[$i]['id']|f_escape_xml%}"/>
</td>
<td>
{%$data[$i]['serialnumber']|f_escape_xml%}
</td>
<td>
<a>
{%$data[$i]['riskname']|f_escape_xml%}
</a>
</td>
<td>
{%$data[$i]['riskclass']|f_escape_xml%}
</td>
<td>
{%$data[$i]['risksystem']|f_escape_xml%}
</td>
<td>
{%$data[$i]['reasonofrisk']|f_escape_xml%}
</td>
<td>
{%$data[$i]['consequence']|f_escape_xml%}
</td>
<td>
<a href="" class="edit"  data-editinfo='{"page":"safetyrisk/editsafetyrisk","id":{%$data[$i]["id"]|f_escape_xml%}}'  title="修改安全风险管理">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="编辑" />
</a>
<a href="" title="点击删除"   data-deleteinfo='{"channelid":"safetyrisk-form","page":"safetyrisk/delete","id":{%$data[$i]["id"]|f_escape_xml%}}' class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_bc68ad4.png"  alt="删除" />
</a>
<a href="" title="安全风险详情"  class="detail"  data-detailinfo='{"page":"safetyrisk/view","id":{%$data[$i]["id"]|f_escape_xml%}}'>
<img src="/web/static/cadrerealistic/images/icons/detail_4ffc6a5.png" alt="详情" />
</a>
</td>
</tr>
{%/for%}
</tbody>
</table>
{%/if%}