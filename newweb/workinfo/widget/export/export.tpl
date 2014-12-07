<div class="content-box">
  <div class="content-box-header">
    <h3>工作情况汇总筛选条件</h3>
  </div>
  <div class="content-box-content">
        <form>
        <fieldset>
        <p>
        <span class="spantitle">年份</span>
        <select class="chosen-select small-input" id="year-select" style="width:150px">
          <option selected="selected" value="">请选择</option>
          {%for $i = 2014; $i < 2030; $i++%}
          <option value="{%$i%}">{%$i%}</option>
          {%/for%}
        </select>
        <span class="spantitle">月份</span>
         <select class="chosen-select small-input" id="month-select" style="width:150px">
          <option selected="selected" value="">请选择</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
          <option value="6">6</option>
          <option value="7">7</option>
          <option value="8">8</option>
          <option value="9">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
          <option value="12">12</option>
        </select>
        </p>
       {%if $smarty.session.user.isViewSummary%}
       <p class="btn-con">
       <span>请点击右边按钮导出数据</span>
      
        <a class="btn btn-success export" href="javascript:;">导出excel</a>
      
      </p>
       {%/if%}
      </fieldset>
      </form>
  </div>
</div>
{%script%}
require("export.js").init();
{%/script%}
