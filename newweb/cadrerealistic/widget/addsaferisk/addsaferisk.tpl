<div class="content-box">
    <div class="content-box-header">
        <h3>
            安全风险管理表
        </h3>
        <ul class="content-box-tabs">
            <li>
                <a href="#tab2" class="current">
                    添加安全风险管理
                </a>
            </li>
        </ul>
        <div class="clear">
        </div>
    </div>
    <div class="content-box-content">
        <div class="tab-content" id="tab2">
            <form data-isneedrefresh="noneed"  id="safetyrisk-form" action="index.php?r=safetyrisk/create" method="post">
                <fieldset>
                    <p>
                        <label>
                            风险名称
                        </label>
                        <select  data-sep="|" name="Safetyrisk[riskname]" id="Safetyrisk_riskname"  class="chosen-select  small-input" multiple="multiple">
                            <option value="防止错办">防止错办</option>
                            <option value="调车安全">调车安全</option>
                            <option value="作业">汛期防洪工作</option>
                            <option value="防溜逸，破坏列车进路">防溜逸，破坏列车进路</option>
                            <option value="安检查危及反恐防暴漏洞">安检查危及反恐防暴漏洞</option>
                            <option value="大量旅客滞留">大量旅客滞留</option>
                            <option value="旅客被开水烫伤">旅客被开水烫伤</option>
                            <option value="高温天气的劳动人身安全">高温天气的劳动人身安全</option>
                            <option value="装卸附属作业不彻底风险">装卸附属作业不彻底风险</option>
                            <option value="危险货物匿报、谎报和夹带运输带来的安全隐患">危险货物匿报、谎报和夹带运输带来的安全隐患</option>
                             <option value="货车超偏载治理不到位">货车超偏载治理不到位</option>
                        </select>
                        <span class="addChose" data-choseid="Safetyrisk_riskname_chosen">
                            <img width="29px" height="29px" src="/web/static/libs/icons/addnoresult.png" class="addchosen" title="没有要添加的风险名称？点我添加"/>
                        </span>
                    </p>
                    <p>
                        <label>
                            风险分类
                        </label>
                        <select name="Safetyrisk[riskclass]" id="Safetyrisk_riskclass" class="chosen-select small-input" multiple="multiple">
                            <option value="管理">管理</option>
                            <option value="设备">设备</option>
                            <option value="作业">作业</option>
                             <option value="环境">环境</option>
                        </select>
                        <span class="addChose" data-choseid="Safetyrisk_riskclass_chosen">
                            <img width="29px" height="29px" src="/web/static/libs/icons/addnoresult.png" class="addchosen" title="没有要添加的风险分类？点我添加"/>
                        </span>
                    </p>
                    <p>
                        <label>
                            系统
                        </label>
                        <select  name="Safetyrisk[risksystem]" id="Safetyrisk_risksystem" class="small-input chosen_select">
                            <option value=""></option>
                            <option value="行车">行车</option>
                            <option value="客运">客运</option>
                            <option value="货运">货运</option>
                            <option value="货装">货装</option>
                        </select>
                    </p>
                     <p>
                        <label class="textarea-lbl">
                            风险原因（致因）
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[reasonofrisk]" id="Safetyrisk_reasonofrisk" cols="79" style="height:200px"></textarea>
                    </p>
                    <p>
                        <label class="textarea-lbl">
                            可能后果
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[consequence]" id="Safetyrisk_consequence" cols="79" style="height:200px"></textarea>
                    </p>
                    <p>
                        <label class="textarea-lbl">
                            既有措施及有效性（问题）
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[measures]" id="Safetyrisk_measures" cols="79" style="height:200px"></textarea>
                    </p>
                     <p>
                        <label>
                            分布情况
                        </label>
                        <select name="Safetyrisk[distribution]" id="Safetyrisk_distribution"   class="chosen-select small-input" multiple="multiple">
                            <option value="管内各站">管内各站</option>
                            <option value="管内各客运办理站">管内各客运办理站</option>
                            <option value="管内各货运办理站">管内各货运办理站</option>
                            <option value="管内各调车作业站">管内各调车作业站</option>
                            <option value="车辆停留的车站到发线、专用线">车辆停留的车站到发线、专用线</option>
                            <option value="“车站、专用线（专用铁路）、地方铁路装车及卸车作业”">“车站、专用线（专用铁路）、地方铁路装车及卸车作业”</option>
                        </select>
                        <span class="addChose" data-choseid="Safetyrisk_distribution_chosen">
                            <img width="29px" height="29px" src="/web/static/libs/icons/addnoresult.png" class="addchosen" title="没有要添加的分布情况？点我添加"/>
                        </span>
                    </p>
                    <p>
                        <label class="textarea-lbl">
                            进一步防控措施
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[furtherproof]" id="Safetyrisk_furtherproof" cols="79" style="height:200px"></textarea>
                    </p>
                    <p>
                        <label class="textarea-lbl">
                            应急（预警）处置措施
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[emergencyhand]" id="Safetyrisk_emergencyhand" cols="79" style="height:200px"></textarea>
                    </p>
                    <p>
                        <label>
                            负责领导
                        </label>
                        <select name="Safetyrisk[responsibilitylead]" id="Safetyrisk_responsibilitylead" class="small-input chosen-select" multiple="multiple">
                            {%foreach from=$leaders item=leader%}
                                <option value="{%$leader.name%}">{%$leader.name%}</option>
                            {%/foreach%}
                        </select>
                        <span class="addChose" data-choseid="Safetyrisk_responsibilitylead_chosen">
                            <img width="29px" height="29px" src="/web/static/libs/icons/addnoresult.png" class="addchosen" title="没有要添加的负责领导？点我添加"/>
                        </span>
                    </p>
                    <p>
                        <label>
                            责任部门
                        </label>
                           <select name="Safetyrisk[dutypartments]" id="Safetyrisk_dutypartments"  class="small-input chosen-select" multiple="multiple">
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
                        </select>
                    </p>
                    <p>
                        <label>
                            配合部门
                        </label>
                        <select name="Safetyrisk[coordinationpart]" id="Safetyrisk_coordinationpart"  class="small-input chosen-select" multiple="multiple">
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
                        </select>
                    </p>
                    <p>
                        <label>
                            实施日期
                        </label>
                        <input class="text-input small-input"  name="Safetyrisk[implementdate]" id="Safetyrisk_implementdate"   onClick="WdatePicker()"/>
                    </p>
                    <p>
                        <label class="textarea-lbl">
                            备注客车
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[notethebus]" id="Safetyrisk_notethebus" cols="79" style="height:200px"></textarea>
                    </p>
                    <p>
                        <label class="textarea-lbl">
                            备注高铁
                        </label>
                        <textarea class="text-input textarea wysiwyg"  name="Safetyrisk[notehighspeedrail]" id="Safetyrisk_notehighspeedrail" cols="79" style="height:200px"></textarea>
                    </p>
                    <p>
                        <input class="btn btn-success" type="submit" id="js-input-submitsaferisk" value="确定保存" />
                        <input class="btn btn-warning" type="button" id="js-input-cancelsaferisk" value="取消操作" />
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
require("addsaferisk.js").init();
{%/script%}