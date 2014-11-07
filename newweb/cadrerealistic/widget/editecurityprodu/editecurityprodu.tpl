  <style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#safetyproduct-form  .small-input{
    width: 90% !important;
}
  </style>
  <form id="safetyproduct-form" action="index.php?r=safetyproduct/Update&id={%$id%}" method="post" data-isneedrefresh="need">
        <table class="table table-bordered">
              <tbody>
                 <tr>
                  <td>整改情况</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyproduct[rectification]" id="Safetyproduct_rectification" cols="79" rows="5">{%$model['rectification']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>检查人</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Safetyproduct[checkperson]" id="Safetyproduct_checkperson">
                        <option selected="selected" value="">请选择</option>
                        <option value="余戈">余戈</option>
                        <option value="蔡泽琪">蔡泽琪</option>
                        <option value="李洁">李洁</option>
                        <option value="樊鹏">樊鹏</option>
                        <option value="刘远平">刘远平</option>
                        <option value="潘晓明">潘晓明</option>
                        <option value="刘宁">刘宁</option>
                        <option value="田兴明">田兴明</option>
                        <option value="汤献忠">汤献忠</option>
                        <option value="黄成福">黄成福</option>
                    </select>
                  </td>
                  <td>销号时间</td>
                  <td><input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyproduct[registertime]" id="Safetyproduct_registertime"  value="{%$model['registertime']%}" /></td>
                </tr>
                <tr>
                  <td>备注</td>
                  <td colspan="3">
                     <textarea class="text-input textarea" name="Safetyproduct[comments]" id="Safetyproduct_comments" cols="79" rows="5">{%$model['comments']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>问题目前状况</td>
                  <td colspan="3">
                     <select class="text-input small-input chosen-select" name="Safetyproduct[currentstatus]" id="Safetyproduct_currentstatus">
                        <option selected="selected" value="">请选择</option>
                        <option value="已整改">已整改</option>
                        <option value="整改中">整改中</option>
                        <option value="未整改">未整改</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>解决方案</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyproduct[thesolution]" id="Safetyproduct_thesolution" cols="79" rows="5">{%$model['thesolution']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" style="text-align: center !important;"> 
                          <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editecurityprodu" value="确认修改"/>
                  </td>
                </tr>
              </tbody>
        </table>
</form>
{%script%}
$('#Safetyproduct_checkperson').find("option[value='{%$model['checkperson']%}']").attr("selected", "selected");
$('#Safetyproduct_currentstatus').find("option[value='{%$model['currentstatus']%}']").attr("selected", "selected");
require("editecurityprodu.js").init();
{%/script%}

