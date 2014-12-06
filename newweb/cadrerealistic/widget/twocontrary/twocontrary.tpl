<style type="text/css">
  #ecurityprodu .small-input{
    width: 40% !important;
  }
</style>
<div class="content-box">
  <div class="content-box-header">
    <h3>
      两违章问题管理
    </h3>
    <ul class="content-box-tabs">
      <li>
        <a href="#tab1" class="default-tab current">
          两违问题管理
        </a>
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
            <span>
              检查时间
            </span>
            <input class="text-input small-input" onClick="WdatePicker()" type="text" id="schecktime" />
            <span>到</span>
            <input class="text-input small-input" onClick="WdatePicker()" type="text" id="echecktime" />
          </p>
          <p>
          <span>
              检查单位
            </span>
            <select class="chosen-select"  id="inspectionunit">
                <option value=""></option>
                <option value="路局">路局</option>
                <option value="车务段">车务段</option>
                <option value="车间">车间</option>
                <option value="班组">班组</option>
                <option value="小组">小组</option>
            </select>
          <span>
              检查人
            </span>
            <input class="text-input small-input" type="text" id="rummager"/>
          </p>
          <p>
           <span>被查单位</span>
            <select class="chosen-select" id="company" multiple="multiple">
              <option value=""></option>
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
              <option value="碑木镇站">碑木镇站</option>
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
            <span>责任人</span>
              <input class="text-input small-input" type="text" id="responsibleperson"/>
            </p>
           <p>
           <span>违章类别</span>
            <select class="chosen-select" id="llegalcategory">
              <option value=""></option>
              <option value="A">A</option>
              <option value="B">B</option>
              <option value="C">C</option>
            </select>
          <span>所在生产小组长</span>
           <input class="text-input small-input" type="text" id="productionleader"/>
            </p>
            <p class="btn-con">
           <input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="开始查询"
            />
            <input class="btn btn-success  exportexcel" data-excelinfo='{"conid":"js-p-listtwocontrary","page":"twocontrarymanage/exportuserexcel"}' type="button" value="导出Excel" />
            <input class="btn btn-warning deleteall" data-deleteinfo='{"channelid":"twocontrarymanage-form","conid":"js-p-listtwocontrary","page":"twocontrarymanage/delete"}'  type="button" value="确认删除" />
          </p>
        </fieldset>
      </form>
      <p id="js-p-listtwocontrary"></p>
      </div>
    </div>
  </div>
{%script%}
require("twocontrary.js").init('{%$urlparam%}');
{%/script%}