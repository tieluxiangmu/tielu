<div class="content-box">
  <div class="content-box-header">
    <h3>筛选条件</h3>
  </div>
  <div class="content-box-content">
        <form>
        <fieldset>
        <p>
        <span class="spantitle">选择日期</span>
        <input class="Wdate text-input small-input" id ="start_time" onclick="WdatePicker()" type="text" id="js-input-sdateofentry">
        <span class="spantitle">到</span>
        <input class="Wdate text-input small-input" id ="end_time" onclick="WdatePicker()" type="text" id="js-input-edateofentry">
        </p>

       <p class="btn-con">
       <span>请点击右边按钮导出数据</span>
        <a class="btn btn-success export" href="javascript:;">导出excel</a>
      </p>
      </fieldset>
      </form>
  </div>
</div>
{%script%}
require("export.js").init();
{%/script%}
