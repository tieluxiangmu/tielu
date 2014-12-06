<div class="content-box">
  <div class="content-box-header">
    <h3>干部考核筛选条件</h3>
  </div>
  <div class="content-box-content">
    <form>
    <fieldset>
      <p>
        <span class="spantitle">年份</span>
        <select class="chosen-select small-input" id="year-select" style="width:150px">
          <option selected="selected" value="">请选择</option>
          {%for $i = 2014; $i < 2030; $i++%}
          <option value="{%$i%}">{%$i%}</option>
          {%/for%}
        </select>
        <span class="spantitle" style="margin-left: 30px;">月份</span>
        <select class="chosen-select small-input" id="month-select" style="width:150px">
          <option selected="selected" value="">请选择</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
        </select>
        <span class="spantitle" style="margin-left: 30px;">下属</span>
        <select class="chosen-select small-input" id="person-select" style="width:150px">
          <option selected="selected" value="">请选择</option>
          {%for $i = 0; $i < count($data.subordinate); $i++%}
          <option value="{%$data.subordinate[$i]['name']%}">{%$data.subordinate[$i]['name']%}</option>
          {%/for%}
        </select>
        <a class="button btn btn-primary" id="search-btn" style="margin-left:20px">开始查询</a>
      </p>
    </fieldset>
    </form>
  </div>
</div>

<form class="result-wrap">
    
</form>
<a class="button btn btn-success" style="margin-top: 10px;margin-bottom:10px" id="export-excel" href="javascript:;">生成Excel并发送邮件</a>

<table id="examine-result-tpl" cellpadding="0" cellspacing="0" width="1017" style="font-size:12px;display:none">
    <colgroup>
        <col width="72" style="width:72px"/>
        <col width="52" style=";width:52px"/>
        <col width="58" style=";width:59px"/>
        <col width="61" style=";width:61px"/>
        <col width="42" style=";width:43px"/>
        <col width="59" span="2" style=";width:59px"/>
        <col width="261" style=";width:261px"/>
        <col width="239" style=";width:239px"/>
        <col width="55" style=";width:55px"/>
        <col width="59" style=";width:59px"/>
    </colgroup>
    <tbody>
        <tr height="38" style=";height:38px">
            <td rowspan="2" height="76" width="72" style="border-top-style: none;">
                量化标准及完成情况
            </td>
            <td colspan="2" width="111" style="">
                量化检查标准
            </td>
            <td colspan="8" width="835" style="">
                昼查<i class="goal-zhoucha">5</i>次，夜查<i class="goal-yecha">2</i>次，添乘<i class="goal-tiancheng">1</i>遍，检查四五等站<i class="goal-jiacha">3</i>次，发放《安全检查通知书》<i class="goal-tongzhi">4</i>份，发现问题<i class="goal-faxianwenti">8</i>个，查处“两违”<i class="goal-liangwei">3</i>件，抽查重点安全风险<i class="goal-anquan">3</i>个。
            </td>
        </tr>
        <tr height="38" style=";height:38px">
            <td colspan="2" height="38" width="111" style="">
                实际完成情况
            </td>
            <td colspan="8" width="835" style="">
                昼查<input type="text" class="real-zhoucha text-input small-input" style = "width: 15px;" >次，
                夜查<input type="text" class="real-yecha text-input small-input" style = "width: 15px;">次，
                添乘<input type="text" class="real-tiancheng text-input small-input" style="width:15px">遍,
                检查四五等站<input type="text" class="real-jiancha text-input small-input" style="width:15px">次，
                发放《安全检查通知书》<input type="text" class="real-tongzhi text-input small-input" style="width:15px">份，
                发现问题<input type="text" class="real-faxianwenti text-input small-input" style="width:15px">个，
                查处“两违”<input type="text" class="real-liangwei text-input small-input" style="width:15px">件，
                抽查重点安全风险<input type="text" class="real-anquan text-input small-input" style="width:15px">个。
            </td>
        </tr>
        <tr class="list-title">
            <td width="72" style="">
                检查写实情况
            </td>
            <td width="82" style="">
                日期
            </td>
            <td width="59" style="">
                时间
            </td>
            <td width="61" style="">
                检查人
            </td>
            <td width="43" style="">
                检查方式
            </td>
            <td width="59" style="">
                单位
            </td>
            <td width="59" style="">
                值班&nbsp; 干部
            </td>
            <td width="201" style="">
                发现问题
            </td>
            <td width="239" style="">
                整改情况
            </td>
            <td width="85" style="">
                是否下发检查通知书
            </td>
            <td width="59" style="">
                两违类别/件数
            </td>
        </tr>
        <tr>
            <td rowspan="3" width="72" style="vertical-align:middle">
                考核情况（由考核主体填写）
            </td>
            <td colspan="2" width="111" style="vertical-align:middle">
                考核扣分（根据标准每差1次/件/份扣2分）
            </td>
            <td colspan="2" width="104" style="vertical-align:middle">
                <input class="koufen text-input small-input" style="width:100px !important" placeholder="扣分" />
            </td>
            <td colspan="2" width="117" style="vertical-align:middle">
                扣分原因
            </td>
            <td colspan="4" width="613" style="">
                <textarea class="koufenyuanyin text-input textarea" style="height:50px" placeholder="扣分原因"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" width="111" style="vertical-align: middle;">
                考核主体评语
            </td>
            <td colspan="8" width="835" style="">
                <textarea class="kaohezhutipingyu text-input textarea" style="height:80px"></textarea>
            </td>
        </tr>
        <tr height="43">
            <td colspan="10" height="43" width="945" style="vertical-align: middle;">
                考核主体签名： <i class="sign"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时间：<i class="time1">2014年8月31日</i>
            </td>
        </tr>
    </tbody>
</table>
{%script%}
  require("examine.js").init();
{%/script%}