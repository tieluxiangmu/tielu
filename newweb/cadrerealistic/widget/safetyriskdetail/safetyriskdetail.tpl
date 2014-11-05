<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
    <tbody>
     <tr>
      <td>编号</td>
      <td>{%$model['serialnumber']%}</td>
      <td>风险名称</td>
      <td>{%$model['riskname']%}</td>
    </tr>
    <tr>
      <td>风险分类</td>
      <td>{%$model['riskclass']%}</td>
      <td>系统</td>
      <td>{%$model['risksystem']%}</td>
    </tr>
    <tr>
      <td>风险原因（致因）</td>
      <td colspan="3">{%$model['reasonofrisk']%}</td>
    </tr>
    <tr>
      <td>可能后果</td>
      <td colspan="3">{%$model['consequence']%}</td>
    </tr>
    <tr>
      <td>既有措施及有效性（问题）</td>
      <td colspan="3">{%$model['measures']%}</td>
    </tr>
    <tr>
      <td>分布情况 </td>
      <td colspan="3">{%$model['distribution']%}</td>
    </tr>
    <tr>
      <td>进一步防控措施</td>
      <td colspan="3">{%$model['furtherproof']%}</td>
    </tr>
    <tr>
      <td>应急（预警）处置措施 </td>
      <td colspan="3">{%$model['emergencyhand']%}</td>
    </tr>
    <tr>
      <td>负责领导</td>
      <td>{%$model['responsibilitylead']%}</td>
      <td>责任部门</td>
      <td>{%$model['dutypartments']%}</td>
    </tr>  
    <tr>
      <td>配合部门</td>
      <td>{%$model['coordinationpart']%}</td>
      <td>实施日期 </td>
      <td>{%$model['implementdate']%}</td>
    </tr>
    <tr>
      <td>完成日期</td>
      <td colspan="3">{%$model['completiondate']%}</td>
    </tr>
    <tr>
      <td>备注客车</td>
      <td colspan="3">{%$model['notethebus']%}</td>
    </tr>
      <tr>
      <td>备注高铁</td>
      <td colspan="3">{%$model['notehighspeedrail']%}</td>
    </tr>
    </tbody>
</table>

