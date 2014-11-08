<div class="content-box">
  <div class="content-box-header">
    <h3>筛选条件</h3>
  </div>
  <div class="content-box-content">
    <form>
    <fieldset>
      <p>
        <span class="spantitle">年份</span>
        <select class="chosen-select" id="year-select">
          <option selected="selected" value="">请选择</option>
          {%for $i = 2014; $i < 2030; $i++%}
          <option value="{%$i%}">{%$i%}</option>
          {%/for%}
        </select>
        <span class="spantitle" style="margin-left: 30px;">月份</span>
        <select class="chosen-select" id="month-select">
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
        <select class="chosen-select" id="person-select">
          <option selected="selected" value="">请选择</option>
          <option value="余戈">余戈</option>
          <option value="蔡泽琪">蔡泽琪</option>
          <option value="李洁">李洁</option>
          <option value="樊鹏">樊鹏</option>
          <option value="刘远平">刘远平</option>
          <option value="潘晓明">潘晓明</option>
          <option value="刘宁">刘宁</option>
          <option value="田兴明">田兴明</option>
          <option value="汤献忠">汤献忠</option>
          <option value="黄成福">黄成福</option>
        </select>
      </p>
      <p>
        <a class="button btn btn-primary" id="search-btn">开始查询</a>
        <a class="button btn btn-success" style="margin-left: 15px;" id="export-excel" href="javascript:;">导出Excel</a>

      </p>
    </fieldset>
    </form>
  </div>
</div>

<table id="examine-result" cellpadding="0" cellspacing="0" width="1017" style="font-size:12px">
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
        <tr height="38" style=";height:38px" class="firstRow">
            <td colspan="11" height="38" width="1017">
                管理人员量化检查写实考核表
            </td>
        </tr>
        <tr height="38" style=";height:38px">
            <td colspan="11" height="38" width="1017">
                &nbsp; 单位（科室）：安全科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 姓名：李洁&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 填报时间：2014年2月&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr height="38" style=";height:38px">
            <td rowspan="2" height="76" width="72" style="border-top-style: none;">
                量化标准及完成情况
            </td>
            <td colspan="2" width="111" style="border-right-width: 1px; border-right-color: black;">
                量化检查标准
            </td>
            <td colspan="8" width="835" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                昼查5次，夜查2次，添乘1遍，检查四五等站3次，发放《安全检查通知书》4份，发现问题8个，查处“两违”3件，抽查重点安全风险3个。
            </td>
        </tr>
        <tr height="38" style=";height:38px">
            <td colspan="2" height="38" width="111" style="border-right-width: 1px; border-right-color: black;">
                实际完成情况
            </td>
            <td colspan="8" width="835" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                昼查7次，夜查1次，添乘1遍，检查四五等站4次，发放《安全检查通知书》5份，发现问题13个，查处“两违”2件，抽查重点安全风险3个。
            </td>
        </tr>
        <tr height="48" style="height:48px">
            <td rowspan="5" height="342" width="72" style="border-bottom-width: 1px; border-bottom-color: black;">
                检查写实情况
            </td>
            <td width="52" style="border-top-style: none;">
                日期
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                时间
            </td>
            <td width="61" style="border-top-style: none; border-left-style: none;">
                检查人
            </td>
            <td width="43" style="border-top-style: none; border-left-style: none;">
                检查方式
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                单位
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                值班&nbsp; 干部
            </td>
            <td width="261" style="border-top-style: none; border-left-style: none;">
                发现问题
            </td>
            <td width="239" style="border-top-style: none; border-left-style: none;">
                整改情况
            </td>
            <td width="55" style="border-top-style: none; border-left-style: none;">
                是否下发检查通知书
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                两违类别/件数
            </td>
        </tr>
        <tr height="77" style=";height:77px">
            <td height="77" width="52" style="border-top-style: none;">
                2月2日
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                12：00&nbsp; —&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 14：00
            </td>
            <td width="61" style="border-top-style: none; border-left-style: none;">
                李XX、王XX
            </td>
            <td width="43" style="border-top-style: none; border-left-style: none;">
                添乘检查
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                XXX站
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                张XX
            </td>
            <td width="261" style="border-top-style: none; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、XXXXXXXXXXXXXXXXXXXX
            </td>
            <td width="239" style="border-top-style: none; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、XXXXXXXXXXXXXXXXXXXX
            </td>
            <td width="55" style="border-top-style: none; border-left-style: none;">
                是
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                C1
            </td>
        </tr>
        <tr height="77" style=";height:77px">
            <td height="77" width="52" style="border-top-style: none;">
                2月2日
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                9：00&nbsp; —&nbsp; &nbsp; 11：00
            </td>
            <td width="61" style="border-top-style: none; border-left-style: none;">
                李XX、张XX
            </td>
            <td width="43" style="border-top-style: none; border-left-style: none;">
                昼查
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                XXX站
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                王XX
            </td>
            <td width="261" style="border-top-style: none; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、XXXXXXXXXXXXXXXXXXXX
            </td>
            <td width="239" style="border-top-style: none; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、XXXXXXXXXXXXXXXXXXXX
            </td>
            <td width="55" style="border-top-style: none; border-left-style: none;">
                是
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                B1
            </td>
        </tr>
        <tr height="70" style=";height:70px">
            <td height="70" width="52" style="border-top-style: none;">
                2月5日
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                23：00&nbsp; —&nbsp; &nbsp; 5：00
            </td>
            <td width="61" style="border-top-style: none; border-left-style: none;">
                李XX、张XX
            </td>
            <td width="43" style="border-top-style: none; border-left-style: none;">
                夜查
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                XXX站
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                王XX
            </td>
            <td width="261" style="border-top-style: none; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、XXXXXXXXXXXXXXXXXXXX
            </td>
            <td width="239" style="border-top-style: none; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、XXXXXXXXXXXXXXXXXXXX
            </td>
            <td width="55" style="border-top-style: none; border-left-style: none;">
                无
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;"></td>
        </tr>
        <tr height="70" style=";height:70px">
            <td height="70" width="52" style="border-top-style: none;">
                2月12日
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                2：00&nbsp; —&nbsp; &nbsp; 3：00
            </td>
            <td width="61" style="border-top-style: none; border-left-style: none;">
                李XX、程XX
            </td>
            <td width="43" style="border-top-style: none; border-left-style: none;">
                夜查
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                XXX站
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;">
                李XX
            </td>
            <td width="261" style="border-top-style: none; border-left-style: none;">
                无
            </td>
            <td width="239" style="border-top-style: none; border-left-style: none;">
                无
            </td>
            <td width="55" style="border-top-style: none; border-left-style: none;">
                无
            </td>
            <td width="59" style="border-top-style: none; border-left-style: none;"></td>
        </tr>
        <tr height="54" style=";height:54px">
            <td rowspan="3" height="192" width="72" style="border-bottom-width: 1px; border-bottom-color: black; border-top-style: none;">
                考核情况（由考核主体填写）
            </td>
            <td colspan="2" width="111" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                考核扣分（根据标准每差1次/件/份扣2分）
            </td>
            <td colspan="2" width="104" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                -4
            </td>
            <td colspan="2" width="117" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                扣分原因
            </td>
            <td colspan="4" width="613" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                夜查差1件扣2分，查处“两违”差1件扣2分。
            </td>
        </tr>
        <tr height="95" style=";height:95px">
            <td colspan="2" height="95" width="111" style="border-left-style: none;">
                考核主体评语
            </td>
            <td colspan="8" width="835" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                1、XXXXXXXXXXXXXXXXXXXX；2、XXXXXXXXXXXXXXXXXXXX。
            </td>
        </tr>
        <tr height="43" style=";height:43px">
            <td colspan="10" height="43" width="945" style="border-right-width: 1px; border-right-color: black; border-left-style: none;">
                考核主体签名： XXXX&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 时间：2014年8月31日
            </td>
        </tr>
    </tbody>
</table>
{%script%}
  require("examine.js").init();
{%/script%}