<style type="text/css">
  
</style>
<div class="content-box">
  <div class="content-box-header">
    <h3>
      安全风险管理
    </h3>
    <ul class="content-box-tabs">
      <li>
        <a href="#tab1" class="default-tab current">
          管理安全风险
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
              <strong>实施日期</strong>
            </span>
            <input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="simplementdate" />
            <span>到</span>
            <input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="eimplementdate" />
          </p>
          <p>
            <span>
              <strong>完成日期</strong>
            </span>
            <input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="scompletiondate" />
            <span>到</span>
            <input class="text-input small-input" style="width:150px !important;height:10px" onClick="WdatePicker()" type="text" id="ecompletiondate" />
          </p>
           <p>
            <span>
              <strong>风险分类</strong>
            </span>
            <select class="small-input chosen-select" id="riskclass" multiple="multiple">
              <option value="管理">管理</option>
              <option value="设备">设备</option>
              <option value="作业">作业</option>
              <option value="环境">环境</option>
            </select>
            <span style="margin-left:44px">
              <strong>系统</strong>
            </span>
            <select class="small-input chosen-select" id="risksystem" style="width:120px">
                 <option value="行车">行车</option>
                  <option value="客运">客运</option>
                  <option value="货运">货运</option>
                  <option value="货装">货装</option>
            </select>
          </p>
           <p>
            <span>
              <strong>负责领导</strong>
            </span>
            <select class="small-input chosen-select" id="responsibilitylead" style="width:120px" multiple="true">
              <option value=""></option>

              {%foreach from=$leaders item=leader%}
                <option value="{%$leader.name%}">{%$leader.name%}</option>
              {%/foreach%}
              
            </select>
            <span style="margin-left:20px">
              <strong>责任部门</strong>
            </span>
            <select class="small-input chosen-select" id="dutypartments" style="width:120px" multiple="multiple">
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
            <p >
            <span>
              <strong>配合部门</strong>
            </span>
            <select class="small-input chosen-select" id="coordinationpart"  multiple="multiple">
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
           <div>
             <input class="button btn btn-primary" type="button"  id="submitseacrh-btn" value="开始查询"/>
              <input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listsafetyrisk","page":"safetyrisk/exportuserexcel"}' type="button" value="导出Excel"/>
              <input class="btn btn-warning  deleteall" data-deleteinfo='{"channelid":"safetyrisk-form","conid":"js-p-listsafetyrisk","page":"safetyrisk/delete"}' type="button" value="确认删除" />
           </div>
          </p>
        </fieldset>
      </form>
      <p id="js-p-listsafetyrisk"></p>
      </table>
      </div>
    </div>
  </div>
{%script%}
require("saferisk.js").init('{%$urlparam%}');
{%/script%}