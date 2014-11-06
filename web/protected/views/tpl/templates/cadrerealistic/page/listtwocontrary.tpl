{%if (count($data)==0)%}
<div class="notification attention png_bg"><a href="#" class="close">
<img src="/web/static/cadrerealistic/images/icons/cross_grey_small_b635c2e.png" title="关闭" alt="可关闭这个提示">
</a>
<div>暂无符合条件的两违问题数据！</div>
</div>
{%else%}
<table class="table-striped">
<thead>
<tr>
<th>
<input class="check-all" type="checkbox" />全选
</th>

<th>
检查时间</th>
<th>
检查单位</th>
<th>
检查人</th>
<th>
被查单位</th>
<th>
责任人</th>
<th>
违章内容</th>
<th>
相关操作</th>
</tr>
</thead>
<tfoot>
<tr>
<td colspan="8">
<div class="bulk-actions align-right">
<div class="pagination" data-conid="js-p-listtwocontrary">
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
              <input type="checkbox" data-id="{%$data[$i]['id']%}"/>
            </td>
<td>
{%$data[$i]['checktime']|f_escape_xml%}
</td>
<td>
{%$data[$i]['inspectionunit']|f_escape_xml%}
</td>
<td>
{%$data[$i]['rummager']|f_escape_xml%}
</td>
<td>
{%$data[$i]['company']|f_escape_xml%}
</td>
<td>
{%$data[$i]['responsibleperson']|f_escape_xml%}
</td>
<td>
{%$data[$i]['Illegalcontent']|f_escape_xml|truncate:30%}
</td>
<td>
<a href="" class="edit"  data-editinfo='{"page":"twocontrarymanage/editecurityprodu","id":{%$data[$i]["id"]|f_escape_xml%}}'  title="两违问题修改">
<img src="/web/static/cadrerealistic/images/icons/pencil_2d05354.png" alt="编辑" />
</a>
<a href="" title="两违问题删除"   data-deleteinfo='{"channelid":"twocontrarymanage-form","page":"twocontrarymanage/delete","id":{%$data[$i]["id"]|f_escape_xml%}}' class="delete">
<img src="/web/static/cadrerealistic/images/icons/cross_bc68ad4.png"  alt="删除" />
</a>
<a href="" title="两违问题详情"  class="detail"  data-detailinfo='{"page":"twocontrarymanage/view","id":{%$data[$i]["id"]|f_escape_xml%}}'>
<img src="/web/static/cadrerealistic/images/icons/detail_4ffc6a5.png" alt="详情" />
</a>
<a href="index.php?r=cadrerealistic/addsaferisk" title="收录为安全风险问题">
<img src="/web/static/cadrerealistic/images/icons/addrisk_e6d1dcd.png" alt="收录为安全风险问题" />
</a>
</td>
</tr>
{%/for%}
</tbody>
</table>
{%/if%}