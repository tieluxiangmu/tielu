<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
<tbody>
<tr>
<td  class="spantitle">
日期</td>
<td>
{%$model['dateofentry']|f_escape_xml%}
</td>
<td  class="spantitle">
时间</td>
<td>
{%$model['timeofentry']|f_escape_xml%}
</td >
<td  class="spantitle">
检查人</td>
<td  class="spantitle">
{%$model['checkperson']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
检查方式</td>
<td>
{%$model['checkmodel']|f_escape_xml%}
</td>
<td  class="spantitle">
单位</td>
<td >
{%$model['company']|f_escape_xml%}
</td>
<td  class="spantitle">
值班干部</td>
<td>
{%$model['cadresonduty']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
发现问题</td>
<td colspan="5">
{%$model['foundproblem']|f_escape_xml%}
</td>
</tr>
<tr>
<td colspan="2"  class="spantitle">
是否下发检查通知书</td>
<td>
{%$model['noticeflag']|f_escape_xml%}
</td>
<td colspan="2"  class="spantitle">
两违类别/件数</td>
<td>
{%$model['categorynumber']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
检查内容</td>
<td colspan="5">
{%$model['checkcontents']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
改进意见</td>
<td colspan="5">
{%$model['improvement']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
考核扣分</td>
<td  class="spantitle">
{%$model['evaluationpoints']|f_escape_xml%}
</td>
<td  class="spantitle">
扣分原因</td>
<td colspan="3">
{%$model['pointsreasons']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
考核主体</td>
<td colspan="5">
{%$model['assessmentmain']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
评语</td>
<td colspan="5">
{%$model['comment']|f_escape_xml%}
</td>
</tr>
<tr>
<td  class="spantitle">
整改情况</td>
<td colspan="5">
{%$model['rectification']|f_escape_xml%}
</td>
</tr>
</tbody>
</table>
<div style="text-align:center;margin-bottom:20px">
<input type="buttoon" data-formtype="cancel" style="width:100px;margin-left:20px;"class="btn" id="js-btn-cancelcardreal" value="关闭窗口"/>
</div>
{%script%}
require("cadrerealistic:widget/cadrerealisticdetail/cadrerealisticdetail.js").init();
{%/script%}
