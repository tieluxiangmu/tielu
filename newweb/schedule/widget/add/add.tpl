<div class="content-box">
    <div class="content-box-header">
        <h3>
            日程设置
        </h3>
        <div class="clear">
        </div>
    </div>
    <div class="content-box-content">
        <div class="tab-content" id="tab2">

{%if $info.authority == 'zhuguan' or $info.authority == 'shuji'%}

	<div class="calendar-wrapper">

	  <div class="calendar-operation">
	  	  <span style="line-height:30px">日期</span>
	      <select name="SY" class="chosen-select small-input" style="width:100px" onchange="calendarApp.change()">
	        <option value="2012">2012</option>
	        <option value="2013">2013</option>
	        <option value="2014" selected>2014</option>
	        <option value="2015">2015</option>
	        <option value="2016">2016</option>
	        <option value="2017">2017</option>
	      </select>
	      <select name="SM" class="chosen-select small-input" style="width:100px" onchange="calendarApp.change()">
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

	      <span>&nbsp;&nbsp;&nbsp;&nbsp;设置对象</span>
		  <select name="target" class="chosen-select small-input" style="width:100px">
		  	{%foreach from=$info.subordinate item=subordinate%}
		  		<option value="{%$subordinate.name%}">{%$subordinate.name%}</option>
		  	{%/foreach%}
		  </select>

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
	<div class="task-list">
		<h3>日程列表</h3>
		<div id="taskList">
		</div>
	</div>

	<div id="addTask" class="add-task">

		<div class="content-box-content">
			<form data-isneedrefresh="need"  id="add-form" action="index.php?r=schedule/add" method="post">
				<fieldset>
					<!-- <legend><strong>添加日程</strong></legend>-->
					<p style="display:none;">
						<label for="owner">
							日程对象
						</label>
						<select name="owner">
						  	{%foreach from=$info.subordinate item=subordinate%}
						  		<option value="{%$subordinate.name%}">{%$subordinate.name%}</option>
						  	{%/foreach%}
						</select>
					</p>
					<p>
                        <label for="task_date">
                            日期
                        </label>
                        <input class="text-input small-input" onClick="WdatePicker()" type="text"
                        name="task_date"/>
                    </p>
                    <p>
						<label for="task_name">
							日程名称
						</label>
						<input class="text-input small-input" type="text"
                        name="task_name"/>
                        <select name="task_type">
							<option value="值班">值班</option>
							<option value="昼查">昼查</option>
							<option value="夜查">夜查</option>
							<option value="添乘">添乘</option>
						</select>					
					</p>
                    <p>
                    	<input class="btn btn-primary" type="submit"
                        value="添加日程" data-formtype="getList"/>
                    </p>
				</fieldset>
			</form>
		</div>
	</div>

	{%require name="schedule:static/css/calendar.css"%}
	{%require name="schedule:static/js/calendar.js"%}

	{%script%}
	var mainLogic = require('schedule:widget/add/add.js');
	mainLogic.init();
	{%/script%}

{%else%}
	<div>你没有权限!</div>
{%/if%}




		</div>
	</div>
</div>
