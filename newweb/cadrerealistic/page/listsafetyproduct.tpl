{%if (count($data)==0)%}
<div class="notification attention png_bg"> 
<a href="#" class="close">
<img src="/static/images/icons/cross_grey_small.png" title="关闭" alt="可关闭这个提示">
</a>
      <div> 暂无符合条件的安全生产管理数据！ </div>
</div>
{%else%}
 <table class="table-striped">
        <thead>
          <tr>
          <th>
            <input class="check-all" type="checkbox"/>
          </th>
          <th>
             编号
          </th>
          <th>
             信息来源
          </th>
          <th>
             单位
          </th>
          <th>
             问题点
          </th>
          <th>
             责任部门
          </th>
          <th>
             责任人
          </th>
          <th>
             完成期限
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
                  <div class="pagination" data-conid="js-p-listecurityprodu">
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
              {%$data[$i]['serialnumber']%}
            </td>
            <td>
              <a>
               {%$data[$i]['infosources']%}
              </a>
            </td>
            <td>
                {%$data[$i]['company']%}
            </td>
            <td>
               {%$data[$i]['theproblem']%}
            </td>
            <td>
                {%$data[$i]['dutydepartment']%}
            </td>
            <td>
                {%$data[$i]['dutyperson']%}
            </td>
            <td>
                {%$data[$i]['deadline']%}
            </td>
            <td>
              <a href="" class="edit"  data-editinfo='{"page":"safetyproduct/editecurityprodu","id":{%$data[$i]["id"]%}}'  title="修改安全生产管理">
                <img src="/static/images/icons/pencil.png" alt="编辑" />
              </a>
              <a href="" title="点击删除"   data-deleteinfo='{"channelid":"safetyproduct-form","page":"safetyproduct/delete","id":{%$data[$i]["id"]%}}' class="delete">
                <img src="/static/images/icons/cross.png"  alt="删除" />
              </a>
              <a href="" title="安全生产管理详情"  class="detail"  data-detailinfo='{"page":"safetyproduct/view","id":{%$data[$i]["id"]%}}'>
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