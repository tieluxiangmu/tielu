{%if (count($data)==0)%}
<div class="notification attention png_bg"> 
<a href="#" class="close">
<img src="/static/images/icons/cross_grey_small.png" title="关闭" alt="可关闭这个提示">
</a>
      <div> 暂无符合条件的安全风险管理数据！ </div>
</div>
{%else%}
 <table class="table-striped">
        <thead>
          <tr>
            <th>
              <input class="check-all" type="checkbox" /> 全选
            </th>
            <th>
              编号
            </th>
            <th>
              风险名称
            </th>
            <th>
              风险分类
            </th>
            <th>
              系统
            </th>
            <th>
              风险原因(致因)
            </th>
            <th>
              可能后果
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
                <div class="pagination" data-conid="js-p-listsafetyrisk">
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
              {%$data[$i]['serialnumber']%}
            </td>
            <td>
               {%$data[$i]['riskname']%}
            </td>
            <td>
                {%$data[$i]['riskclass']%}
            </td>
            <td>
               {%$data[$i]['risksystem']%}
            </td>
            <td>
                {%$data[$i]['reasonofrisk']|truncate:15:"..."%}
            </td>
            <td>
                {%$data[$i]['consequence']|truncate:15:"..."%}
            </td>
            <td>
              <a href="" class="edit"  data-editinfo='{"page":"safetyrisk/editsafetyrisk","id":{%$data[$i]["id"]%}}'  title="安全风险修改">
                <img src="/static/images/icons/pencil.png" alt="编辑" />
              </a>
              <a href="" title="安全风险删除"   data-deleteinfo='{"channelid":"safetyrisk-form","page":"safetyrisk/delete","id":{%$data[$i]["id"]%}}' class="delete">
                <img src="/static/images/icons/cross.png"  alt="删除" />
              </a>
              <a href="" title="安全风险详情"  class="detail"  data-detailinfo='{"page":"safetyrisk/view","id":{%$data[$i]["id"]%}}'>
                <img src="/static/images/icons/detail.png" alt="详情" />
              </a>
            </td>
          </tr>
        {%/for%}
        </tbody>
 </table>
{%/if%}