  <style type="text/css">
  body{
    background: white !important;
    padding: 5px;
  }
#safetyrisk-form  .small-input{
    width: 90% !important;
}
  </style>
  <form id="safetyrisk-form" action="index.php?r=safetyrisk/Update&id={%$id%}" method="post" data-isneedrefresh="need">
        <table class="table table-bordered">
              <tbody>
                <tr>
                  <td>完成日期</td>
                  <td><input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyrisk[completiondate]" id="Safetyrisk_completiondate"   value="{%$model['completiondate']%}" /></td>
                  <td>风险名称</td>
                  <td>     
                  <input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyrisk[riskname]" id="Safetyrisk_riskname"  value="{%$model['riskname']%}" />
                  </td>
                </tr>
                <tr>
                  <td>风险分类</td>
                  <td>           
                      <select class="text-input small-input chosen-select" nname="Safetyrisk[riskclass]" id="Safetyrisk_riskclass" >
                        <option selected="selected" value="">请选择</option>
                        <option value="余戈">余戈</option>
                    </select>
                  </td>
                  <td>系统</td>
                  <td>
                    <select class="text-input small-input chosen-select" name="Safetyrisk[risksystem]" id="Safetyrisk_risksystem" >
                        <option selected="selected" value="">请选择</option>
                        <option value="系统1">系统</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>风险原因（致因）</td>
                  <td colspan="3">
                     <textarea class="text-input textarea"name="Safetyrisk[reasonofrisk]" id="Safetyrisk_reasonofrisk" cols="79" rows="5">{%$model['reasonofrisk']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>可能后果</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[consequence]" id="Safetyrisk_consequence" cols="79" rows="5">{%$model['consequence']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>既有措施及有效性（问题）</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[measures]" id="Safetyrisk_measures" cols="79" rows="5">{%$model['measures']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>分布情况</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[distribution]" id="Safetyrisk_distribution" cols="79" rows="5">{%$model['distribution']%}</textarea>
                  </td>
                </tr>
                 <tr>
                  <td>进一步防控措施</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[furtherproof]" id="Safetyrisk_furtherproof"  cols="79" rows="5">{%$model['furtherproof']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>应急（预警）处置措施</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[emergencyhand]" id="Safetyrisk_emergencyhand"  cols="79" rows="5">{%$model['emergencyhand']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>负责领导</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Safetyrisk[responsibilitylead]" id="Safetyrisk_responsibilitylead" >
                        <option selected="selected" value="">请选择</option>
                        <option value="余戈">余戈</option>
                    </select>
                  </td>
                  <td>责任部门</td>
                  <td>
                    <select class="text-input small-input chosen-select" name="Safetyrisk[dutypartments]" id="Safetyrisk_dutypartments" >
                        <option selected="selected" value="">请选择</option>
                        <option value="系统1">系统</option>
                    </select>
                  </td>
                </tr>
                 <tr>
                  <td>配合部门</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Safetyrisk[coordinationpart]" id="Safetyrisk_coordinationpart" >
                        <option selected="selected" value="">请选择</option>
                        <option value="余戈">余戈</option>
                    </select>
                  </td>
                  <td>实施日期</td>
                  <td>
                  <input  class="text-input small-input" onclick="WdatePicker()" type="text" name="Safetyrisk[implementdate]" id="Safetyrisk_implementdate"   value="{%$model['implementdate']%}" />
                  </td>
                </tr>
                <tr>
                  <td>备注客车</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[notethebus]" id="Safetyrisk_notethebus"  cols="79" rows="5">{%$model['notethebus']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>备注高铁</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[notehighspeedrail]" id="Safetyrisk_notehighspeedrail"  cols="79" rows="5">{%$model['notehighspeedrail']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" style="text-align: center !important;"> 
                   <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-editsafetyrisk" value="确认修改"/>
                  </td>
                </tr>
              </tbody>
        </table>
</form>
{%script%}
$('#Safetyrisk_dutypartments').find("option[value='{%$model['dutypartments']%}']").attr("selected", "selected");
$('#Safetyrisk_riskclass').find("option[value='{%$model['riskclass']%}']").attr("selected", "selected");
$('#Safetyrisk_risksystem').find("option[value='{%$model['risksystem']%}']").attr("selected", "selected");
$('#Safetyrisk_responsibilitylead').find("option[value='{%$model['responsibilitylead']%}']").attr("selected", "selected");
$('#Safetyrisk_coordinationpart').find("option[value='{%$model['coordinationpart']%}']").attr("selected", "selected");
require("editsafetyrisk.js").init();
{%/script%}

