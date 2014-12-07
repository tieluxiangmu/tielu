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
	
	getTask();
}

function getTask(date) {
	var taskDate, config;
	var year = $('[name=SY]').val() || new Date().getFullYear();
	var month = $('[name=SM]').val() || new Date().getMonth() + 1;
	month = month < 10 ? '0'+month:month;
	taskDate = year + '-' + month + (date ? ('-' + (date<10?'0'+date:date)) : '');
	config = {
		url: 'index.php?r=schedule/getTask',
		data: 'task_date=' + taskDate,
		dataType: 'json',
		success: showTasks
	};
	/*$('[name=SY]').val(year);
	$('[name=SM]').val(month);*/
	$.ajax(config);
}

$.fn.isHTML = function (html) {
	return this.html().trim() === html;
};

function  showTasks(res) {
	var html = ['<table class="task-list-table">'];
	var dates = [];
	res.forEach(function (task, index) {
		var str = '<tr>' +
			'<td class="task-title">任务' + (index + 1) + ': </td>' +
			'<td class="task-date">' + task.task_date + '</td>' +
			'<td class=task-name"">' + task.task_name + '</td>' +
			'<td class="task-type">' + task.task_type + '</td>' +
			'</tr>';
		html.push(str);
		$('div.wise_calendar_body table td[data-date="'+task.task_date+'"]').addClass('has-schedule-date');
	});
	html.push('</table>');
	$('#taskList').html(res.length ? html.join('') : '无日程');
	
}

function init() {
	$('select[name=SM]').val((new Date).getMonth()+1);
	getTask();
	bindEvent();
}

exports.init = init;