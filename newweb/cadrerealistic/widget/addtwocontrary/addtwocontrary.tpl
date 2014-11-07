<div class="content-box">
    <div class="content-box-header">
        <h3>
            两违管理表
        </h3>
        <ul class="content-box-tabs">
            <li>
                <a href="#tab2" class="current">
                    添加两违问题
                </a>
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
                            检查时间
                        </label>
                        <input class="text-input small-input" onClick="WdatePicker()" type="text"
                        name="Twocontrarymanage[checktime]" id="Twocontrarymanage_checktime" />
                    </p>
                    <p>
                        <label>
                            检查单位
                        </label>
                        <select name="Twocontrarymanage[inspectionunit]" id="Twocontrarymanage_inspectionunit"  class="small-input">
                            <option value="路局">路局</option>
                            <option value="车务段">车务段</option>
                            <option value="车间">车间</option>
                            <option value="班组">班组</option>
                        </select>
                    </p>
                    <p>
                        <label>
                            检查人
                        </label>
                        <input class="text-input small-input" type="text"  name="Twocontrarymanage[rummager]" id="Twocontrarymanage_rummager" />
                    </p>
                    <p>
                        <label>
                            被查单位
                        </label>
                        <select name="Twocontrarymanage[company]" id="Twocontrarymanage_company" class="small-input">
                            <option selected="selected" value="">请选择被查单位</option>
                            <option value="荣昌">荣昌</option>
                            <option value="峰高铺">峰高铺</option>
                            <option value="大足">大足</option>
                            <option value="长河碥">长河碥</option>
                            <option value="双石桥">双石桥</option>
                            <option value="永川">永川</option>
                        </select>
                    </p>
                    <p>
                        <label>
                            责任人
                        </label>
                        <select class="small-input" name="Twocontrarymanage[responsibleperson]" id="Twocontrarymanage_responsibleperson">
                         <option selected="selected" value="">请选择责任人</option>
                            <option value="责任人1">
                                责任人1
                            </option>
                        </select>
                    </p>
                    <p>
                        <label>
                            职名
                        </label>
                        <input class="text-input small-input" type="text"  name="Twocontrarymanage[jobname]" id="Twocontrarymanage_jobname" />
                    </p>
                    <p>
                        <label>
                            政治面貌
                        </label>
                        <input class="text-input small-input" type="text" name="Twocontrarymanage[politicalaffiliation]" id="Twocontrarymanage_politicalaffiliation"/>
                    </p>
                    <p>
                        <label>
                            违章内容
                        </label>
                        <textarea class="text-input textarea wysiwyg" name="Twocontrarymanage[Illegalcontent]" id="Twocontrarymanage_Illegalcontent" cols="79" rows="5"></textarea>
                    </p>
                    <p>
                        <label>
                            处理结果
                        </label>
                        <textarea class="text-input textarea wysiwyg" name="Twocontrarymanage[processingresults]" id="Twocontrarymanage_processingresults" cols="79" rows="5"></textarea>
                    </p>
                    <p>
                        <label>
                            违章类别
                        </label>
                        <select name="Twocontrarymanage[llegalcategory]" id="Twocontrarymanage_llegalcategory" class="small-input">
                            <option value="">请选择违章类别</option>
                            <option value="A1">A1</option>
                            <option value="B2">B2</option>
                        </select>
                    </p>
                    <p>
                        <label>
                            责任人扣分
                        </label>
                        <input class="text-input small-input"  name="Twocontrarymanage[deduction]" id="Twocontrarymanage_deduction" />
                    </p>
                    <p>
                        <label>
                            所在生产小组长（值班员）
                        </label>
                        <input class="text-input small-input"  name="Twocontrarymanage[productionleader]" id="Twocontrarymanage_productionleader"/>
                    </p>
                    <p>
                        <label>
                            扣积分情况
                        </label>
                         <textarea class="text-input textarea"  name="Twocontrarymanage[buckleintegral]" id="Twocontrarymanage_buckleintegral" cols="79" rows="5"></textarea>
                    </p>
                    <p>
                        <label>
                            （班组长）扣积分情况
                        </label>
                         <textarea class="text-input textarea"  name="Twocontrarymanage[teamleaderIntegral]" id="Twocontrarymanage_teamleaderIntegral" cols="79" rows="5"></textarea>
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
                <!-- End .clear -->
            </form>
        </div>
    </div>
</div>
{%script%}
require("addtwocontrary.js").init();
{%/script%}