<style type="text/css">
  
</style>
<div class="content-box">
  <div class="content-box-header">
    <h3>
    问题库管理 </h3>
    <ul class="content-box-tabs">
      <li>
      <a href="#tab1" class="default-tab current">
      管理问题库 </a>
      </li>
    </ul>
    <div class="clear">
    </div>
  </div>
  <div class="content-box-content">
    <div class="tab-content default-tab" id="tab1">
      <form class="search" id="ecurityprodu">
        <fieldset>
          <p>
            <span class="spantitle" style="padding-left:12px">入库时间 </span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sstoragetime" name="small-input"/>
            <span class="spantitle" style="padding-left:12px">到</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="estoragetime" name="small-input"/>
          </p>
          <p>
            <span class="spantitle" style="padding-left:12px">完成期限</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sdeadline" name="small-input"/>
            <span class="spantitle" style="padding-left:12px">到</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="edeadline" name="small-input"/>
          </p>
          <p>
            <span class="spantitle" style="padding-left:12px">销号时间</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="sregistertime" name="small-input"/>
            <span class="spantitle" style="padding-left:12px">到</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="eregistertime" name="small-input"/>
          </p>
          <p>
            <span class="spantitle" style="padding-left:12px">信息来源 </span>
            <select class="small-input chosen-select" id="infosources">
              <option value=""></option>
              <option value="车务段检查">车务段检查 </option>
             <option value="车间检查">车间检查 </option>
             <option value="班组检查">班组检查 </option>
            </select>
            <span class="spantitle" style="padding-left:12px">单位 </span>
            <select class="small-input chosen-select" multiple="multiple" id="company">
                            <option value="段领导">段领导</option>
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
                            <option value="物流营销部">物流营销部</option>
                            <option value="行政办公室">行政办公室</option>
                            <option value="铁运部">铁运部</option>
                            <option value="南海公司">南海公司</option>
                            <option value="宏盛公司">宏盛公司</option>
                            <option value="腾能公司">腾能公司</option>
                            <option value="隆昌协管站">隆昌协管站</option>
                            <option value="大足协管站">大足协管站</option>
                            <option value="永川协管站">永川协管站</option>
                            <option value="江津协管站">江津协管站</option>
                            <option value="綦江协管站">綦江协管站</option>
                            <option value="赶水协管站">赶水协管站</option>
                            <option value="万盛协管站">万盛协管站</option>
                            <option value="南川协管站">南川协管站</option>
                            <option value="椑木镇站">椑木镇站</option>
                            <option value="双凤驿站">双凤驿站</option>
                            <option value="迎祥街站">迎祥街站</option>
                            <option value="石燕桥站">石燕桥站</option>
                            <option value="李市镇站">李市镇站</option>
                            <option value="安富镇站">安富镇站</option>
                            <option value="广顺场站">广顺场站</option>
                            <option value="荣昌站">荣昌站</option>
                            <option value="峰高铺站">峰高铺站</option>
                            <option value="长河碥站">长河碥站</option>
                            <option value="双石桥站">双石桥站</option>
                            <option value="栏杆滩站">栏杆滩站</option>
                            <option value="临江场站">临江场站</option>
                            <option value="柏林站">柏林站</option>
                            <option value="茨坝站">茨坝站</option>
                            <option value="朱杨溪站">朱杨溪站</option>
                            <option value="平等站">平等站</option>
                            <option value="金刚沱站">金刚沱站</option>
                            <option value="油溪站">油溪站</option>
                            <option value="古家沱站">古家沱站</option>
                            <option value="黄磏站">黄磏站</option>
                            <option value="小岚垭站">小岚垭站</option>
                            <option value="七龙星站">七龙星站</option>
                            <option value="民福寺站">民福寺站</option>
                            <option value="夏坝站">夏坝站</option>
                            <option value="广兴站">广兴站</option>
                            <option value="綦江北站">綦江北站</option>
                            <option value="转关口站">转关口站</option>
                            <option value="东升坝站">东升坝站</option>
                            <option value="两河口站">两河口站</option>
                            <option value="镇紫街站">镇紫街站</option>
                            <option value="岔滩站">岔滩站</option>
                            <option value="石门坎站">石门坎站</option>
                            <option value="万盛西站">万盛西站</option>
                            <option value="干坝子站">干坝子站</option>
                            <option value="谷口河站">谷口河站</option>
                            <option value="三江站">三江站</option>
                            <option value="南川东站">南川东站</option>
                            <option value="水江站">水江站</option>
                            <option value="鸭江站">鸭江站</option>
            </select>
          </p>
           <p>
            <span class="spantitle" style="padding-left:12px">责任部门 </span>
            <select class="chosen-select" id="dutydepartment" multiple="true">
                            <option value="安全科">安全科</option>
                            <option value="技信科">技信科</option>
                            <option value="货管部">货管部</option>
                            <option value="客营科">客营科</option>
                            <option value="劳人科">劳人科</option>
                            <option value="财计科">财计科</option>
                            <option value="保卫科">保卫科</option>
                            <option value="职教科">职教科</option>
                            <option value="办公室">办公室</option>
                            <option value="装卸车间">装卸车间</option>
                            <option value="乘务车间">乘务车间</option>
            </select>
            <span class="spantitle" style="padding-left:12px">责任人 </span>
             <input class="text-input small-input"  id="dutyperson" />
          </p>
          <p>
            <span class="spantitle" style="padding-left:12px">检查人 </span>
            <input class="text-input small-input"  id="checkperson" />
           <span class="spantitle" style="padding-left:12px">目前问题状况 </span>
            <select class="small-input chosen-select" id="currentstatus">
              <option value=""></option>
              <option value="已整改">已整改 </option>
              <option value="整改中">整改中 </option>
              <option value="未整改">未整改 </option>
            </select>

                 <span class="btn-con">
             <input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="开始查询"/>
            <input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listecurityprodu","page":"safetyproduct/exportuserexcel"}' type="button" value="导出Excel"/>
            <input class="btn btn-warning deleteall" data-deleteinfo='{"channelid":"safetyproduct-form","conid":"js-p-listecurityprodu","page":"safetyproduct/delete"}' type="button" value="确认删除"/>
          </span>
          </p>
     
        </fieldset>
      </form>
      <p id="js-p-listecurityprodu"></p>
      </div>
    </div>
  </div>
</div>
{%script%}
require("ecurityprodu.js").init('{%$urlparam%}');
{%/script%}