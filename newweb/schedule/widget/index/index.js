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
		url: '/web/index.php?r=schedule/getTask',
		data: 'task_date=' + taskDate,
		dataType: 'json',
		success: showTasks
	};
	$('[name=SY]').val(year);
	$('[name=SM]').val(month);
	$.ajax(config);
}

function  showTasks(res) {
	var html = ['<table class="task-list-table">'];
	res.forEach(function (task, index) {
		var str = '<tr>' +
			'<td class="task-title">任务' + (index + 1) + ': </td>' +
			'<td class="task-date">' + task.task_date + '</td>' +
			'<td class=task-name"">' + task.task_name + '</td>' +
			'<td class="task-type">' + task.task_type + '</td>' +
			'</tr>';
		html.push(str);
	});
	html.push('</table>');
	$('#taskList').html(res.length ? html.join('') : '无日程');
}

function init() {
	getTask();
	bindEvent();
}

exports.init = init;