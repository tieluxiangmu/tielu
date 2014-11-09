<div class="content-box">
    <div class="content-box-header">
        <h3>
            我的日程
        </h3>
        <div class="clear">
        </div>
    </div>
    <div class="content-box-content">
        <div class="tab-content" id="tab2">


<div class="calendar-wrapper">

  <div class="calendar-operation">
      <select name="SY" onchange="calendarApp.change()">
        <option value="2012">2012</option>
        <option value="2013">2013</option>
        <option value="2014" selected>2014</option>
        <option value="2015">2015</option>
        <option value="2016">2016</option>
        <option value="2017">2017</option>
      </select>
      <select name="SM" onchange="calendarApp.change()">
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
      {%if $info.authority == 'zhuguan' or $info.authority == 'shuji'%}
        &nbsp;&nbsp;&nbsp;&nbsp;<a class="btn btn-primary" href="index.php?r=schedule/addSchedule">日程设置</a>
      {%/if%}
  </div>

  <div>
      <div class="wise_calendar_container"  id="calendar">
        <div class="wise_calendar_header">
            <table>
              <tr>
                <td colspan="7">
                  <div class="wise_calendar_oper_container">
                    <div class="wise_calendar_oper_leftbtn"><</div>
                    <div class="wise_calendar_oper_text">2014年11月</div>
                    <div class="wise_calendar_oper_rightbtn">></div>
                  </div>
                </td>
              </tr>
              <tr>
                  <td>一</td>
                  <td>二</td>
                  <td>三</td>
                  <td>四</td>
                  <td>五</td>
                  <td>六</td>
                  <td>日</td>
                </tr>
            </table>
        </div>
        <div class="wise_calendar_body">
            
        </div>
      </div>
  </div>

</div>
<div id="taskList" class="task-list">
<div>
{%require name="schedule:static/css/calendar.css"%}
{%require name="schedule:static/js/calendar.js"%}

{%script%}
var mainLogic = require('schedule:widget/index/index.js');
mainLogic.init();
{%/script%}

    </div>
  </div>
</div>