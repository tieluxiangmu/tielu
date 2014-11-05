<div class="content-box">
    <div class="content-box-header">
        <h3>
            安全生产管理表
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
                            <option value="信息来源1">
                                信息来源1
                            </option>
                        </select>
                    </p>
                    <p>
                        <label>
                            单位
                        </label>
                        <select name="Safetyproduct[company]" id="Safetyproduct_company" class="small-input">
                            <option value="" selected="selected">请选择单位</option>
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
                        <label>
                            解决方案
                        </label>
                        <textarea class="text-input textarea wysiwyg" name="Safetyproduct[thesolution]" id="Safetyproduct_thesolution" cols="79" rows="5"></textarea>
                    </p>
                    <p>
                        <label>
                            责任部门
                        </label>
                        <select name="Safetyproduct[dutydepartment]" id="Safetyproduct_dutydepartment" class="small-input">
                            <option value="" selected="selected">请选择责任部门</option>
                            <option value="责任部门1">
                                责任部门1
                            </option>
                        </select>
                    </p>
                    <p>
                        <label>
                            责任人
                        </label>
                          <select name="Safetyproduct[dutyperson]" id="Safetyproduct_dutyperson" class="small-input">
                            <option value="" selected="selected">请选择责任人</option>
                            <option value="责任人1">
                                责任人1
                            </option>
                        </select>
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
                         <select name="Safetyproduct[checkperson]" id="Safetyproduct_checkperson" class="small-input">
                            <option value="" selected="selected">请选择检查人</option>
                            <option value="检查人1">
                                检查人1
                            </option>
                        </select>
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