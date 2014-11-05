<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
    <tbody>
      <tr>
        <td>编号</td>
        <td>{%$model['serialnumber']%}</td>
        <td>信息来源</td>
        <td>{%$model['infosources']%}</td>
      </tr>
      <tr>
        <td>单位</td>
        <td>{%$model['company']%}</td>
        <td>入库时间</td>
        <td>{%$model['storagetime']%}</td>
      </tr>
      <tr>
        <td>问题点</td>
        <td colspan="3">{%$model['theproblem']%}</td>
      </tr>
      <tr>
        <td>解决方案</td>
        <td colspan="3">{%$model['thesolution']%}</td>
      </tr>
      <tr>
        <td>责任部门</td>
        <td>{%$model['dutydepartment']%}</td>
        <td>责任人</td>
        <td>{%$model['dutyperson']%}</td>
      </tr>
      <tr>
        <td>完成期限</td>
        <td>{%$model['deadline']%}</td>
        <td>检查人</td>
        <td>{%$model['checkperson']%}</td>
      </tr>
      <tr>
        <td>整改情况</td>
        <td colspan="3">{%$model['rectification']%}</td>
      </tr>
      <tr>
        <td>消号时间</td>
        <td>{%$model['registertime']%}</td>
        <td>问题目前状况</td>
        <td>{%$model['currentstatus']%}</td>
      </tr>
        <tr>
        <td>备注</td>
        <td colspan="3">{%$model['comments']%}</td>
      </tr>
    </tbody>
</table>

