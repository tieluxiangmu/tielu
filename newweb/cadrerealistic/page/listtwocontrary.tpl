{%if (count($data)==0)%}
<div class="notification attention png_bg"> 
<a href="#" class="close">
<img src="/static/images/icons/cross_grey_small.png" title="关闭" alt="可关闭这个提示">
</a>
      <div> 暂无符合条件的两违问题数据！ </div>
</div>
{%else%}
       <table class="table-striped">
        <thead>
          <tr>
            <th>
              <input class="check-all" type="checkbox" />
            </th>
            <th>
              序号
            </th>
            <th>
              检查时间
            </th>
            <th>
              检查单位
            </th>
            <th>
              检查人
            </th>
            <th>
              被查单位
            </th>
            <th>
              责任人
            </th>
             <th>
              违章内容
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
                <div class="pagination" data-conid="js-p-listtwocontrary">
                 {%$show_page|escape:none%}
                </div>
                <!-- End .pagination -->
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
             <a>
              {%$data[$i]['serialnumber']%}
              </a>
            </td>
            <td>
               {%$data[$i]['checktime']%}
            </td>
            <td>
               {%$data[$i]['inspectionunit']%}
            </td>
            <td>
                {%$data[$i]['rummager']%}
            </td>
            <td>
                {%$data[$i]['company']%}
            </td>
            <td>
                {%$data[$i]['responsibleperson']%}
            </td>
            <td>
                {%$data[$i]['Illegalcontent']%}
            </td>
            <td>
              <a href="" class="edit"  data-editinfo='{"page":"twocontrarymanage/editecurityprodu","id":{%$data[$i]["id"]%}}'  title="修改两违问题">
                <img src="/static/images/icons/pencil.png" alt="编辑" />
              </a>
              <a href="" title="点击删除"   data-deleteinfo='{"channelid":"twocontrarymanage-form","page":"twocontrarymanage/delete","id":{%$data[$i]["id"]%}}' class="delete">
                <img src="/static/images/icons/cross.png"  alt="删除" />
              </a>
              <a href="" title="两违问题管理详情"  class="detail"  data-detailinfo='{"page":"twocontrarymanage/view","id":{%$data[$i]["id"]%}}'>
                <img src="/static/images/icons/detail.png" alt="详情" />
              </a>
              <a href="index.php?r=cadrerealistic/addsaferisk" title="收录为安全风险问题">
                <img src="/static/images/icons/addrisk.png" alt="收录为安全风险问题" />
              </a>
            </td>
          </tr>
        {%/for%}
        </tbody>
      </table>
{%/if%}