<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
    <tbody>
     <tr>
    <td class="spantitle">序号</td>
    <td>{%$model['serialnumber']%}</td>
    <td class="spantitle">检查时间</td>
    <td>{%$model['checktime']%}</td>
  </tr>
  <tr>
    <td class="spantitle">检查单位</td>
    <td>{%$model['inspectionunit']%}</td>
    <td class="spantitle">检查人</td>
    <td>{%$model['rummager']%}</td>
  </tr>
  <tr>
    <td class="spantitle">被查单位</td>
    <td>{%$model['company']%}</td>
    <td class="spantitle">责任人</td>
    <td>{%$model['responsibleperson']%}</td>
  </tr>
  <tr>
    <td class="spantitle">职名</td>
    <td>{%$model['jobname']%}</td>
    <td class="spantitle">政治面貌</td>
    <td>{%$model['politicalaffiliation']%}</td>
  </tr>
  <tr>
    <td class="spantitle">违章内容</td>
    <td colspan="3">{%$model['Illegalcontent']%}</td>
  </tr>
  <tr>
    <td class="spantitle">处理结果</td>
    <td colspan="3">{%$model['processingresults']%}</td>
  </tr>
  <tr>
    <td class="spantitle">违章类别</td>
    <td>{%$model['llegalcategory']%}</td>
    <td class="spantitle">责任人扣分 </td>
    <td>{%$model['deduction']%}</td>
  </tr>
  <tr>
    <td class="spantitle">所在生产小组长（值班员）</td>
    <td>{%$model['productionleader']%}</td>
    <td class="spantitle">扣积分情况 </td>
    <td>{%$model['buckleintegral']%}</td>
  </tr>
    <tr>
    <td class="spantitle">班组长</td>
    <td>{%$model['teamleader']%}</td>
    <td class="spantitle">扣积分情况</td>
    <td>{%$model['teamleaderIntegral']%}</td>
  </tr>
    </tbody>
</table>

