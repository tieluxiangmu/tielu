'use strict';

var $selectedDate;

function bindEvent() {
	$('#calendar td.op-calendar-new-relative > a').on('click', function (e) {
		e.preventDefault();
	});

	$('#calendar').on('click', 'td.op-calendar-new-relative', function (e) {
		var date = $(this).find('.op-calendar-new-daynumber').html().trim();

		$selectedDate && $selectedDate.removeClass('selected-date');
		$selectedDate = $(this).addClass('selected-date');

		getTask(date);
	});

	$('[name=SY]').on('change', selectDate);
	$('[name=SM]').on('change', selectDate);
}

function selectDate() {
	var year = $('[name=SY]').val();
	var month = $('[name=SM]').val();
	getTask(null, month, year);
}

function getTask(date, month, year) {
	var taskDate, config;
	year = year || new Date().getFullYear();
	month = month || new Date().getMonth() + 1;
	taskDate = year + '-' + month + (date ? ('-' + date) : '');
	config = {
		url: 'index.php?r=schedule/getTask',
		data: 'task_date=' + taskDate,
		dataType: 'json',
		success: showTasks
	};
	$('[name=SY]').val(year);
	$('[name=SM]').val(month);
	$.ajax(config);
}

$.fn.isHTML = function (html) {
	return this.html().trim() === html;
};

function  showTasks(res) {
	var html = ['<table class="task-list-table">'];
	var dates = [];
	res.forEach(function (task, index) {
		var d = new Date(task.task_date).getDate();
		var str = '<tr>' +
			'<td class="task-title">任务' + (index + 1) + ': </td>' +
			'<td class="task-date">' + task.task_date + '</td>' +
			'<td class=task-name"">' + task.task_name + '</td>' +
			'<td class="task-type">' + task.task_type + '</td>' +
			'</tr>';
		html.push(str);
		dates.push(d);
	});
	html.push('</table>');
	$('#taskList').html(res.length ? html.join('') : '无日程');
	$('div.wise_calendar_body table td div.op-calendar-new-daynumber').each(function () {
		var $this = $(this);
		var d = parseInt($this.html().trim());
		if (d <= 7 && $this.closest('tr').index() === 5) {
			return;
		}
		if (d >= 25 && $this.closest('tr').index() === 0) {
			return;
		}
		(dates.indexOf(d) !== -1) && $this.closest('td').addClass('has-schedule-date');
	});
}

function init() {
	getTask();
	bindEvent();
}

exports.init = init;