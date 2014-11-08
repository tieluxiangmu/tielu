{%if (count($data)==0)%}
<div class="notification attention png_bg"> 
<a href="#" class="close">
<img src="/static/images/icons/cross_grey_small.png" title="关闭" alt="可关闭这个提示">
</a>
      <div> 暂无符合条件的干部写实数据！ </div>
</div>
{%else%}
 <table class="table-striped">
        <thead>
          <tr>
            <th>
              <input class="check-all" type="checkbox" />
            </th>
            <th>
              日期
            </th>
            <th>
              检查方式
            </th>
            <th>
              单位
            </th>
            <th>
              值班干部
            </th>
            <th>
              发现问题
            </th>
            <th>
              两违类别/件数
            </th>
            <th>
              相关操作
            </th>
          </tr>
        </thead>
        <tfoot>
          <tr>
            <td colspan="8">
              <div class="bulk-actions align-right">
                  <div class="pagination" data-conid="js-p-listcadrerealistic">
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
              <input type="checkbox" data-id="{%$data[$i]['id']%}"/>
            </td>
            <td>
              {%$data[$i]['dateofentry']%}
            </td>
            <td>
              <a>
               {%$data[$i]['checkmodel']%}
              </a>
            </td>
            <td>
                {%$data[$i]['company']%}
            </td>
            <td>
               {%$data[$i]['cadresonduty']%}
            </td>
            <td>
                {%$data[$i]['foundproblem']%}
            </td>
            <td>
                {%$data[$i]['categorynumber']%}
            </td>
            <td>
              <a href="" class="edit"  data-editinfo='{"page":"realinvestigation/editcadrerealistic","id":{%$data[$i]["id"]%}}'  title="修改干部写实管理">
                <img src="/static/images/icons/pencil.png" alt="编辑" />
              </a>
              <a href="" title="点击删除"   data-deleteinfo='{"channelid":"realinvestigation-form","page":"realinvestigation/delete","id":{%$data[$i]["id"]%}}' class="delete">
                <img src="/static/images/icons/cross.png"  alt="删除" />
              </a>
              <a href="" title="干部写实管理详情"  class="detail"  data-detailinfo='{"page":"realinvestigation/view","id":{%$data[$i]["id"]%}}'>
                <img src="/static/images/icons/detail.png" alt="详情" />
              </a>
            </td>
        {%/for%}
        </tbody>
</table>
<script type="text/javascript">
        // 表格自动按照隔行添加样式
        //$('tbody tr:even').addClass("alt-row");
</script>
{%/if%}