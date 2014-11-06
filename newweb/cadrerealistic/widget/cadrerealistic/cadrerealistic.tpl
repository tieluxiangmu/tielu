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
            <span class="spantitle">选择日期 </span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="js-input-sdateofentry"/>
            <span class="spantitle">到</span>
            <input class="Wdate text-input small-input" onclick="WdatePicker()" type="text" id="js-input-edateofentry"/>
          </p>
          <p>
            <span class="spantitle">检&nbsp;&nbsp;查&nbsp;&nbsp;人 </span>
            <select class="chosen-select" id="checkperson">
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
            <span class="spantitle">检查方式 </span>
            <select class="chosen-select" id="checkmodel">
              <option selected="selected" value="">请选择</option>
              <option value="添乘">
              添乘</option>
              <option value="昼查">
              昼查</option>
              <option value="夜查">
              夜查</option>
            </select>
          </p>
          <p>
            <span class="spantitle">值班干部 </span>
            <select class="chosen-select" id="adresonduty">
              <option selected="selected" value="">请选择</option>
              <option value="钟世能">钟世能</option>
              <option value="代高勇">代高勇</option>
              <option value="张建辉">张建辉</option>
              <option value="文桂明">文桂明</option>
              <option value="苏国勇">苏国勇</option>
              <option value="杨柳">杨柳</option>
              <option value="张正国">张正国</option>
              <option value="谢强">谢强</option>
              <option value="罗尤宽">罗尤宽</option>
              <option value="黄毅">黄毅</option>
            </select>
            <span class="spantitle">两违类别 </span>
            <select class="chosen-select" id="categorynumber">
              <option selected="selected" value="">请选择</option>
              <option value="A">
              A </option>
              <option value="B">
              B </option>
              <option value="B">
              C </option>
            </select>
          </p>
          <p class="btn-con">
            <input class="button btn btn-primary" id="submitseacrh-btn" type="button" value="确认查询"/>
            <input class="btn btn-success exportexcel" data-excelinfo='{"conid":"js-p-listcadrerealistic","page":"realinvestigation/exportuserexcel"}' type="button" value="导出excel"/>
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
            <label>
            时间 </label>
            <input class="text-input small-input Wdate" type="text" name="Realinvestigation[timeofentry]" id="Realinvestigation_timeofentry" onfocus="WdatePicker({dateFmt:'H:mm:ss'})"/>
          </p>
          <p>
            <label>
            检查人 </label>
            <select name="Realinvestigation[checkperson]" id="Realinvestigation_checkperson" class="small-input">
              <option selected="selected" value="">请选择检查人</option>
              <option value="余戈">余戈</option>
              <option value="蔡泽琪">蔡泽琪</option>
              <option value="李洁">李洁</option>
              <option value="樊鹏">樊鹏</option>
              <option value="樊鹏">樊鹏</option>
              <option value="潘晓明">潘晓明</option>
              <option value="刘宁">刘宁</option>
              <option value="田兴明">田兴明</option>
              <option value="汤献忠">汤献忠</option>
              <option value="汤献忠">汤献忠</option>
            </select>
          </p>
          <p>
            <label>
            检查方式 </label>
            <select name="Realinvestigation[checkmodel]" id="Realinvestigation_checkmodel" class="small-input">
              <option value="" selected="selected">请选择检查方式</option>
              <option value="添乘">添乘</option>
              <option value="夜查">夜查</option>
              <option value="昼查">昼查</option>
            </select>
          </p>
          <p>
            <label>
            单位 </label>
            <select name="Realinvestigation[company]" id="Realinvestigation_company" class="small-input">
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
            值班干部 </label>
            <select name="Realinvestigation[cadresonduty]" id="Realinvestigation_cadresonduty" class="small-input">
              <option value="" selected="selected">请选择值班干部</option>
              <option value="钟世能">钟世能</option>
              <option value="代高勇">代高勇</option>
              <option value="张建辉">张建辉</option>
              <option value="文桂明">文桂明</option>
              <option value="苏国勇">苏国勇</option>
              <option value="杨柳">杨柳</option>
              <option value="张正国">张正国</option>
              <option value="谢强">谢强</option>
              <option value="罗尤宽">罗尤宽</option>
              <option value="黄毅">黄毅</option>
            </select>
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
            <label>
            两违类别/件数 </label>
            <select class="small-input" name="Realinvestigation[categorynumber]" id="Realinvestigation_categorynumber">
              <option selected="selected" value="">请选择两违类别/件数</option>
              <option value="A1">A1</option>
              <option value="B2">B2</option>
            </select>
          </p>
          <p>
            <label>
            检查内容 </label>
            <textarea class="text-input textarea wysiwyg" name="Realinvestigation[checkcontents]" id="Realinvestigation_checkcontents" cols="79" rows="5"></textarea>
          </p>
          <p>
            <label>
            改进意见 </label>
            <textarea class="text-input textarea" name="Realinvestigation[improvement]" id="Realinvestigation_improvement" cols="79" rows="10"></textarea>
          </p>
          <p>
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