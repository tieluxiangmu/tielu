<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
    <tbody>
     <tr>
      <td class="spantitle">编号</td>
      <td>{%$model['serialnumber']%}</td>
      <td class="spantitle">风险名称</td>
      <td>{%$model['riskname']%}</td>
    </tr>
    <tr>
      <td class="spantitle">风险分类</td>
      <td>{%$model['riskclass']%}</td>
      <td class="spantitle">系统</td>
      <td>{%$model['risksystem']%}</td>
    </tr>
    <tr>
      <td class="spantitle">风险原因（致因）</td>
      <td colspan="3">{%$model['reasonofrisk']%}</td>
    </tr>
    <tr>
      <td class="spantitle">可能后果</td>
      <td colspan="3">{%$model['consequence']%}</td>
    </tr>
    <tr>
      <td class="spantitle">既有措施及有效性（问题）</td>
      <td colspan="3">{%$model['measures']%}</td>
    </tr>
    <tr>
      <td class="spantitle">分布情况 </td>
      <td colspan="3">{%$model['distribution']%}</td>
    </tr>
    <tr>
      <td class="spantitle">进一步防控措施</td>
      <td colspan="3">{%$model['furtherproof']%}</td>
    </tr>
    <tr>
      <td class="spantitle">应急（预警）处置措施 </td>
      <td colspan="3">{%$model['emergencyhand']%}</td>
    </tr>
    <tr>
      <td class="spantitle">负责领导</td>
      <td>{%$model['responsibilitylead']%}</td>
      <td class="spantitle">责任部门</td>
      <td>{%$model['dutypartments']%}</td>
    </tr>  
    <tr>
      <td class="spantitle">配合部门</td>
      <td>{%$model['coordinationpart']%}</td>
      <td class="spantitle">实施日期 </td>
      <td>{%$model['implementdate']%}</td>
    </tr>
    <tr>
      <td class="spantitle">完成日期</td>
      <td colspan="3">{%$model['completiondate']%}</td>
    </tr>
    <tr>
      <td class="spantitle">备注客车</td>
      <td colspan="3">{%$model['notethebus']%}</td>
    </tr>
      <tr>
      <td class="spantitle">备注高铁</td>
      <td colspan="3">{%$model['notehighspeedrail']%}</td>
    </tr>
     <tr>
      <td colspan="4" style="text-align: center !important;"> 
          <input type="button" class="btn btn-primary" id="js-btn-editsafetyrisk" value="关闭"/>
      </td>
    </tr>
    </tbody>
</table>
<script type="text/javascript">
  
  $(function(){
    $('js-btn-editsafetyrisk').on('click', function() {
      var list = top.window.$.dialog.list;
        for(var d in list) {
            list[d].close();
        }
    })
  });
</script>

