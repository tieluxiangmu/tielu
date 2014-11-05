<style type="text/css">
    body{ background: white !important; padding: 5px; }
</style>
<table class="table table-bordered table-striped">
    <tbody>
        <tr>
            <td>
                日期
            </td>
            <td>
                {%$model['dateofentry']%}
            </td>
            <td>
                时间
            </td>
            <td>
               {%$model['timeofentry']%}
            </td>
            <td>
                检查人
            </td>
            <td>
                {%$model['checkperson']%}
            </td>
        </tr>
        <tr>
            <td>
                检查方式
            </td>
            <td>
                 {%$model['checkmodel']%}
            </td>
            <td>
                单位
            </td>
            <td>
                 {%$model['company']%}
            </td>
            <td>
                值班干部
            </td>
            <td>
                {%$model['cadresonduty']%}
            </td>
        </tr>
        <tr>
            <td>
                发现问题
            </td>
            <td colspan="5">
                 {%$model['foundproblem']%}
            </td>
        </tr>
        <tr>
            <td colspan="2">
                是否下发检查通知书
            </td>
            <td>
                  {%$model['noticeflag']%}
            </td>
            <td colspan="2">
                两违类别/件数
            </td>
            <td>
                 {%$model['categorynumber']%}
            </td>
        </tr>
        <tr>
            <td>
                检查内容
            </td>
            <td colspan="5">
                  {%$model['checkcontents']%}
            </td>
        </tr>
        <tr>
            <td>
                改进意见
            </td>
            <td colspan="5">
                 {%$model['improvement']%}
            </td>
        </tr>
        <tr>
            <td>
                考核扣分
            </td>
            <td>
             {%$model['evaluationpoints']%}
            </td>
            <td>
                扣分原因
            </td>
            <td colspan="3">
                 {%$model['pointsreasons']%}
            </td>
        </tr>
        <tr>
            <td>
                考核主体
            </td>
            <td colspan="5">
                {%$model['assessmentmain']%}
            </td>
        </tr>
        <tr>
            <td>
                评语
            </td>
            <td colspan="5">
                {%$model['comment']%}
            </td>
        </tr>
        <tr>
            <td>
                整改情况
            </td>
            <td colspan="5">
                {%$model['rectification']%}
            </td>
        </tr>
    </tbody>
</table>
{%script%}
require("cadrerealisticdetail.js").init();
{%/script%}

