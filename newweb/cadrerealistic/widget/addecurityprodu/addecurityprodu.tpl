<div class="content-box">
    <div class="content-box-header">
        <h3>
            安全生产管理
        </h3>
        <ul class="content-box-tabs">
            <li>
                <a href="#tab2" class="current">
                    添加安全生成管理
                </a>
            </li>
        </ul>
        <div class="clear">
        </div>
    </div>
    <div class="content-box-content">
        <div class="tab-content" id="tab2">
            <form data-isneedrefresh="noneed" id="safetyproduct-form" action="index.php?r=Safetyproduct/create" method="post">
                <fieldset>
                    <p>
                        <label>
                            信息来源
                        </label>
                        <select  name="Safetyproduct[infosources]" id="Safetyproduct_infosources" class="small-input">
                            <option value="" selected="selected">请选择信息来源</option>
                            <option value="车务段检查">
                                车务段检查
                            </option>
                            <option value="车间检查">
                                车间检查
                            </option>
                             <option value="班组检查">
                                班组检查
                            </option>
                        </select>
                    </p>
                    <p>
                        <label>
                            单位
                        </label>
                        <input type="hidden" name="Safetyproduct[company]" id="Safetyproduct_company" />
                        <select multiple="multiple"  id="safe-company" class="small-input chosen-select">
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
                        <label class="textarea-lbl">
                            问题点
                        </label>
                        <textarea class="text-input textarea wysiwyg" name="Safetyproduct[theproblem]" id="Safetyproduct_theproblem" cols="79" rows="5"></textarea>
                    </p>
                    <p>
                        <label>
                            入库时间
                        </label>
                        <input class="text-input small-input" onClick="WdatePicker()" type="text" name="Safetyproduct[storagetime]" id="Safetyproduct_storagetime" />
                    </p>
                    <p>
                        <label  class="textarea-lbl">
                            解决方案
                        </label>
                        <textarea class="text-input textarea wysiwyg" name="Safetyproduct[thesolution]" id="Safetyproduct_thesolution" cols="79" rows="5"></textarea>
                    </p>
                    <p>
                        <label>
                            责任部门
                        </label>
                        <input type="hidden" name="Safetyproduct[dutydepartment]" id="Safetyproduct_dutydepartment"/>
                        <select  id="Safepro_duty" class="chosen-select small-input" multiple="multiple">
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
                    </p>
                    <p>
                        <label>
                            责任人
                        </label>
                         <input class="text-input small-input" name="Safetyproduct[dutyperson]" id="Safetyproduct_dutyperson" />
                    </p>
                    <p>
                        <label>
                            完成期限
                        </label>
                        <input class="text-input small-input" name="Safetyproduct[deadline]" id="Safetyproduct_deadline" onClick="WdatePicker()"/>
                    </p>
                    <p>
                        <label>
                            检查人
                        </label>
                        <input class="text-input small-input" name="Safetyproduct[checkperson]" id="Safetyproduct_checkperson" />
                    </p>
                    <p>
                        <span style="display:none;" id="js-span-jumpurl"></span>
                        <input class="btn btn-primary" type="submit" value="收录为安全风险" style="display:none;"
                        id="js-input-addsaferisk" data-formtype="jump" data-jumpurl="addsaferisk"/>
                        <input class="btn btn-inverse" type="submit" value="继续录入两违问题管理" style="display:none;"
                        id="js-input-cotiuetwo" data-formtype="jump"  data-jumpurl="addtwocontrary"/>
                        <input class="btn btn-success" type="submit" id="js-input-submitpro" value="直接保存为安全生产管理" />
                        <input class="btn btn-warning" type="button" id="js-input-procancel" value="取消操作" />
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
require("addecurityprodu.js").init();
{%/script%}