<div class="content-box">
<div class="content-box-header">
<h3>
两违管理表</h3>
<ul class="content-box-tabs">
<li>
<a href="#tab2" class="current">
添加两违问题</a>
</li>
</ul>
<div class="clear">
</div>
</div>
<div class="content-box-content">
<div class="tab-content" id="tab2">
<form data-isneedrefresh="noneed"  id="twocontrarymanage-form" action="index.php?r=twocontrarymanage/create" method="post">
<fieldset>
<p>
<label for="Twocontrarymanage[checktime]">
检查时间</label>
<input class="text-input small-input" onClick="WdatePicker()" type="text"
                        name="Twocontrarymanage[checktime]" id="Twocontrarymanage_checktime" />
</p>
<p>
<label>
检查单位</label>
<select name="Twocontrarymanage[inspectionunit]" id="Twocontrarymanage_inspectionunit"  class="small-input">
<option value="路局">路局</option>
<option value="车务段">车务段</option>
<option value="车间">车间</option>
<option value="班组">班组</option>
<option value="小组">小组</option>
</select>
</p>
<p>
<label>
检查人</label>
<input class="text-input small-input" type="text"  name="Twocontrarymanage[rummager]" id="Twocontrarymanage_rummager" />
</p>
<p>
<label>
被查单位</label>
<select name="Twocontrarymanage[company]" id="Twocontrarymanage_company" class="chosen-select small-input" multiple="multiple">
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
</p>
<p>
<label>
责任人</label>
<input class="text-input small-input" type="text"  nname="Twocontrarymanage[responsibleperson]" id="Twocontrarymanage_responsibleperson" />
</p>
<p>
<label>
职名</label>
<input class="text-input small-input" type="text"  name="Twocontrarymanage[jobname]" id="Twocontrarymanage_jobname" />
</p>
<p>
<label>
政治面貌</label><select name="Twocontrarymanage[politicalaffiliation]" id="Twocontrarymanage_politicalaffiliation" class="small-input">
<option selected="selected" value="">请选择</option>
<option value="荣昌">党员</option>
<option value="峰高铺">群众</option>
</select>
</p>
<p>
<label>
违章内容</label>
<textarea class="text-input textarea wysiwyg" name="Twocontrarymanage[Illegalcontent]" id="Twocontrarymanage_Illegalcontent" cols="79" rows="5"></textarea>
</p>
<p>
<label>
处理结果</label>
<input type="number" type="text" class="text-input textarea wysiwyg" name="Twocontrarymanage[processingresults]" id="Twocontrarymanage_processingresults">
</p>
<p>
<label>
违章类别</label>
<select name="Twocontrarymanage[llegalcategory]" id="Twocontrarymanage_llegalcategory" class="small-input">
<option value="">请选择违章类别</option>
<option value="A">A</option>
<option value="B">B</option>
<option value="C">C</option>
</select>
</p>
<p>
<label>
责任人扣分</label>
<input class="text-input small-input"  name="Twocontrarymanage[deduction]" id="Twocontrarymanage_deduction" type="number" min="0"/>
</p>
<p>
<label>
所在生产小组长（值班员）</label>
<input class="text-input small-input"  name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"/>
</p>
<p>
<label>
扣积分情况</label>
<input class="text-input small-input" name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" type="number"/>
</p>
<p>
<label>
（班组长）扣积分情况</label>
<input class="text-input small-input" name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" type="number"/>
</p>
<p>
<input class="btn btn-primary" id="js-input-addsaferisk" type="submit"
                        value="收录为安全风险" data-formtype="jump"/>
<input class="btn btn-success" type="submit"  id="js-input-addtwocontrary" value="直接收录为两违问题" />
<input class="btn btn-warning" id="js-input-twocancel" type="button" value="取消操作" />
</p>
</fieldset>
<div class="clear">
</div>
</form>
</div>
</div>
</div>
{%script%}
require("cadrerealistic:widget/addtwocontrary/addtwocontrary.js").init();
{%/script%}