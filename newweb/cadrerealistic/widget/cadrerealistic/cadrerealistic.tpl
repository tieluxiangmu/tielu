<div class="content-box">
  <div class="content-box-header">
    <h3>
    干部写实管理 </h3>
    <ul class="content-box-tabs">
      <li>
      <a href="#tab1" class="default-tab current">
      管理干部写实 </a>
      </li>
      <li>
      <a href="#tab2">
      添加干部写实 </a>
      </li>
    </ul>
    <div class="clear">
    </div>
  </div>
  <div class="content-box-content">
    <div class="tab-content default-tab" id="tab1">
      <form class="search">
        <fieldset>
          <p>
            <span class="spantitle" style="padding-left:12px">日　期</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="js-input-sdateofentry"/>
            <span class="spantitle">到</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="js-input-edateofentry"/>
          </p>
          <p>
            <span class="spantitle" style="padding-left:12px">检查人</span>
            <input class="text-input small-input" type="text"  id="checkperson" />
            <span class="spantitle">检查方式 </span>
            <select class="chosen-select" id="checkmodel">
              <option selected="selected" value=""></option>
              <option value="添乘">添乘</option>
              <option value="昼查">昼查</option>
              <option value="夜查">夜查</option>
              <option value="检查四五等站">检查四五等站</option>
            </select>
          </p>
          <p>
            <span class="spantitle">值班干部 </span>
            <input class="text-input small-input" type="text"  id="adresonduty" />
          </p>
          <p class="btn-con">
            <input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="开始查询"/>
            <input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listcadrerealistic","page":"realinvestigation/exportuserexcel"}' type="button" value="导出Excel"/>
            <input class="btn btn-warning deleteall" data-deleteinfo='{"channelid":"realinvestigation-form","conid":"js-p-listcadrerealistic","page":"realinvestigation/delete"}' type="button" value="确认删除"/>
          </p>
        </fieldset>
      </form>
      <p id="js-p-listcadrerealistic">
      </p>
    </div>
    <div class="tab-content" id="tab2" style="display:none;">
      <form data-isneedrefresh="need" id="realinvestigation-form" action="index.php?r=realinvestigation/create" method="post">
        <fieldset>
          <p>
            <label>
            日期 </label>
            <input class="text-input small-input" onclick="WdatePicker()" type="text" name="Realinvestigation[dateofentry]" id="Realinvestigation_dateofentry"/>
          </p>
          <p>
            <label>时间 </label>
            <input class="text-input small-input Wdate" type="text" name="Realinvestigation_stime"  id="Realinvestigation_stime" onfocus="WdatePicker({dateFmt:'H:mm'})"/>
            <span style="margin:0 1px;">到</span>
            <input class="text-input small-input Wdate" type="text" name="Realinvestigation_etime" id="Realinvestigation_etime" onfocus="WdatePicker({dateFmt:'H:mm'})"/>
            <input  type="hidden" name="Realinvestigation[timeofentry]" id="Realinvestigation_timeofentry" />
          </p>
          <p>
            <label>检查人 </label>
            <input class="text-input small-input Wdate" type="text" name="Realinvestigation[checkperson]" id="Realinvestigation_checkperson" />
          </p>
          <p>
            <label>检查方式 </label>
            <select name="Realinvestigation[checkmodel]" id="Realinvestigation_checkmodel" class="small-input">
              <option value="" selected="selected"></option>
              <option value="添乘">添乘</option>
              <option value="昼查">昼查</option>
              <option value="夜查">夜查</option>
              <option value="检查四五等站">检查四五等站</option>
            </select>
          </p>
          <p>
            <label>是否检查四五等站 </label>
            <input value="是" type="radio" name="Realinvestigation[ischeck45]"/>
            是 <input value="否" type="radio" name="Realinvestigation[ischeck45]"/>
            否
          </p>
          <p>
            <label>单位 </label>
            <input type="hidden" name="Realinvestigation[company]" id="Realinvestigation_company"/>
            <select  id="Real_company" class="chosen-select small-input" multiple="multiple">
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
            <span class="addChose" data-choseid="Real_company_chosen">
              列表中没有要输入的单位？<img src="/static/images/icons/addnoresult.png" class="addchosen" />
            </span>
          </p>
          <p>
            <label>值班干部 </label>
            <input class="text-input small-input" type="text" name="Realinvestigation[cadresonduty]" id="Realinvestigation_cadresonduty"/>
          </p>
          <p>
            <label>
            发现问题 </label>
            <textarea class="text-input textarea" name="Realinvestigation[foundproblem]" id="Realinvestigation_foundproblem" cols="79" rows="5"></textarea>
          </p>
          <p>
            <label>
            是否下发检查通知书 </label>
            <input value="是" type="radio" name="Realinvestigation[noticeflag]"/>
            是 <input value="否" type="radio" name="Realinvestigation[noticeflag]"/>
            否
          </p>
          <p>
            <label> 两违类别 </label>
            <select class="small-input" name="Realinvestigation[category]" id="Realinvestigation_category">
              <option selected="selected" value=""></option>
              <option value="A">
              A </option>
              <option value="B">
              B </option>
              <option value="B">
              C </option>
            </select>
              <span> 件数 </span>
             <input class="text-input small-input" type="number"  name="Realinvestigation[number]" id="Realinvestigation_number" min="0"/>
              <input  type="hidden"  name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber"/>
          </p>
          <p>
            <label>检查问题数 </label>
            <input class="text-input small-input" type="number"  name="Realinvestigation[checkcount]" id="Realinvestigation_checkcount" min="0"/>
          </p>
          <p>
            <label>检查内容 </label>
            <textarea class="text-input textarea wysiwyg" name="Realinvestigation[checkcontents]" id="Realinvestigation_checkcontents" cols="79" rows="5"></textarea>
          </p>
          <p>
            <label>
            改进意见 </label>
            <textarea class="text-input textarea" name="Realinvestigation[improvement]" id="Realinvestigation_improvement" cols="79" rows="10"></textarea>
          </p>
          <p class="btn-container">
            <input class="btn btn-primary" data-formtype="add" type="submit" value="直接保存为干部写实" id="js-btn-cardreal"/>
            <select class="btnsleetct" name="dropdown" class="small-input" id="js-select-cadrerealistic">
              <option value="0">
              继续录入两违问题管理 </option>
              <option value="1">
              继续录入安全生产管理 </option>
              <option value="2">
              两者都是 </option>
            </select>
            <input class="btn btn-success" id="js-input-cadcontinue" type="submit" data-formtype="jump" value="继续"/>
            <input class="btn btn-warning" type="button" id="js-input-cadrealcancel" value="取消操作"/>
          </p>
        </fieldset>
        <div class="clear">
        </div>
        <!-- End .clear -->
      </form>
    </div>
  </div>
</div>
{%script%}
require("cadrerealistic.js").init('{%$urlparam%}');
{%/script%}