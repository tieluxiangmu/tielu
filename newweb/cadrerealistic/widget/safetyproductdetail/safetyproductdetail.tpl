<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
    <tbody>
      <tr>
        <td class="spantitle">编号</td>
        <td>{%$model['serialnumber']%}</td>
        <td class="spantitle">信息来源</td>
        <td>{%$model['infosources']%}</td>
      </tr>
      <tr>
        <td class="spantitle">单位</td>
        <td>{%$model['company']%}</td>
        <td class="spantitle">入库时间</td>
        <td>{%$model['storagetime']%}</td>
      </tr>
      <tr>
        <td class="spantitle">问题点</td>
        <td colspan="3">{%$model['theproblem']%}</td>
      </tr>
      <tr>
        <td class="spantitle">解决方案</td>
        <td colspan="3">{%$model['thesolution']%}</td>
      </tr>
      <tr>
        <td class="spantitle">责任部门</td>
        <td>{%$model['dutydepartment']%}</td>
        <td class="spantitle">责任人</td>
        <td>{%$model['dutyperson']%}</td>
      </tr>
      <tr>
        <td class="spantitle">完成期限</td>
        <td>{%$model['deadline']%}</td>
        <td class="spantitle">检查人</td>
        <td>{%$model['checkperson']%}</td>
      </tr>
      <tr>
        <td class="spantitle">整改情况</td>
        <td colspan="3">{%$model['rectification']%}</td>
      </tr>
      <tr>
        <td class="spantitle">消号时间</td>
        <td>{%$model['registertime']%}</td>
        <td class="spantitle">问题目前状况</td>
        <td>{%$model['currentstatus']%}</td>
      </tr>
        <tr>
        <td class="spantitle">备注</td>
        <td colspan="3">{%$model['comments']%}</td>
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

