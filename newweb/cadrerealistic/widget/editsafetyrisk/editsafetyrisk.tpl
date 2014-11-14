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
                        <select id="safe_risk"  name="Safetyrisk[riskname]" class="chosen-select  small-input" multiple="multiple">
                            <option value="防止错办" >防止错办</option>
                            <option value="调车安全">调车安全</option>
                            <option value="汛期防洪工作">汛期防洪工作</option>
                            <option value="防溜逸，破坏列车进路" >防溜逸，破坏列车进路</option>
                            <option value="安检查危及反恐防暴漏洞" >安检查危及反恐防暴漏洞</option>
                            <option value="大量旅客滞留" >大量旅客滞留</option>
                            <option value="旅客被开水烫伤">旅客被开水烫伤</option>
                            <option value="高温天气的劳动人身安全" >高温天气的劳动人身安全</option>
                            <option value="装卸附属作业不彻底风险" >装卸附属作业不彻底风险</option>
                            <option value="危险货物匿报、谎报和夹带运输带来的安全隐患" >危险货物匿报、谎报和夹带运输带来的安全隐患</option>
                             <option value="货车超偏载治理不到位">货车超偏载治理不到位</option>
                        </select>
                    </p>    
                  </td>
                </tr>
                <tr>
                  <td>风险分类</td>
                  <td>           
                      <select class="text-input small-input chosen-select" nname="Safetyrisk[riskclass]" id="Safetyrisk_riskclass" multiple="multiple">
                        <option value="管理" >管理</option>
                        <option value="设备" >设备</option>
                        <option value="作业" >作业</option>
                        <option value="环境" >环境</option>
                    </select>
                  </td>
                  <td>系统</td>
                  <td>
                    <select class="text-input small-input chosen-select" name="Safetyrisk[risksystem]" id="Safetyrisk_risksystem" >
                       <option value="行车">行车</option>
                       <option value="客运">客运</option>
                        <option value="货运">货运</option>
                        <option value="货装">货装</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td>风险原因（致因）</td>
                  <td colspan="3">
                     <textarea class="text-input textarea"name="Safetyrisk[reasonofrisk]" id="Safetyrisk_reasonofrisk" cols="79" height="200px">{%$model['reasonofrisk']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>可能后果</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[consequence]" id="Safetyrisk_consequence" cols="79" height="100px">{%$model['consequence']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>既有措施及有效性（问题）</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[measures]" id="Safetyrisk_measures" cols="79" height="100px">{%$model['measures']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>分布情况</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[distribution]" id="Safetyrisk_distribution" cols="79" height="100px">{%$model['distribution']%}</textarea>
                  </td>
                </tr>
                 <tr>
                  <td>进一步防控措施</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[furtherproof]" id="Safetyrisk_furtherproof"  cols="79" height="200px">{%$model['furtherproof']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>应急（预警）处置措施</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[emergencyhand]" id="Safetyrisk_emergencyhand"  cols="79" height="200px">{%$model['emergencyhand']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>负责领导</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Safetyrisk[responsibilitylead]" id="Safetyrisk_responsibilitylead" multiple="multiple" >
                        <option value="余戈">余戈</option>
                    </select>
                  </td>
                  <td>责任部门</td>
                  <td>
                    <select class="text-input small-input chosen-select" name="Safetyrisk[dutypartments]" id="Safetyrisk_dutypartments" >
                          <option value="安全科">安全科</option>
                          <option value="技信科">技信科</option>
                          <option value="货管部">货管部</option>
                          <option value="客营科">客营科</option>
                          <option value="劳人科">劳人科</option>
                          <option value="财计科">财计科</option>
                          <option value="保卫科">保卫科</option>
                          <option value="职教科">职教科</option>
                          <option value="办公室">办公室</option>
                          <option value="党工室">党工室</option>
                          <option value="装卸车间">装卸车间</option>
                          <option value="乘务车间">乘务车间</option>  
                    </select>
                  </td>
                </tr>
                 <tr>
                  <td>配合部门</td>
                  <td>           
                      <select class="text-input small-input chosen-select" name="Safetyrisk[coordinationpart]" id="Safetyrisk_coordinationpart" >
                        <option value="安全科">安全科</option>
                        <option value="技信科">技信科</option>
                        <option value="货管部">货管部</option>
                        <option value="客营科">客营科</option>
                        <option value="劳人科">劳人科</option>
                        <option value="财计科">财计科</option>
                        <option value="保卫科">保卫科</option>
                        <option value="职教科">职教科</option>
                        <option value="办公室">办公室</option>
                        <option value="党工室">党工室</option>
                        <option value="装卸车间">装卸车间</option>
                        <option value="乘务车间">乘务车间</option>  
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
                  <textarea class="text-input textarea" name="Safetyrisk[notethebus]" id="Safetyrisk_notethebus"  cols="79" height="100px">{%$model['notethebus']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td>备注高铁</td>
                  <td colspan="3">
                  <textarea class="text-input textarea" name="Safetyrisk[notehighspeedrail]" id="Safetyrisk_notehighspeedrail"  cols="79" height="100px">{%$model['notehighspeedrail']%}</textarea>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" style="text-align: center !important;"> 
                          <input type="submit" data-formtype="update" class="btn btn-primary" id="js-btn-cancelcardreal" value="撤销修改"/>
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

