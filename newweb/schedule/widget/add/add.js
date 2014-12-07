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
		
		getTask(date, null, null);
	});

	$('#taskList').on('click', 'a.js-delete', function (e) {
		var id;
		var me = this;
		e.preventDefault();
		id = $(me).attr('data-schedule-id');
		deleteTask(id, function (data) {
			ui.notifyDialog(data.message);
			data.success && $(me).closest('tr').remove();
		});
	});

	listener.on('add-form', 'success', function (event, info) {
		$('[name=target]').val($('[name=owner]').val());
        getTask();
        clearForm();
    });

	$('[name=SY]').on('change', showList);
	$('[name=SM]').on('change', showList);
	$('[name=target]').on('change', showList);
}

function showList() {
	
	getTask();
}

function clearForm() {
	$('[name=task_date], [name=task_name], [name=task_type]').val('');
}

function getTask(date) {
	var taskDate, config;
	var owner = $('[name=target]').val().trim();
	var year = $('[name=SY]').val() || new Date().getFullYear();
	var month = $('[name=SM]').val() || new Date().getMonth() + 1;
	month = month < 10 ? '0'+month:month;
	taskDate = 'task_date=' + year + '-' + month + (date ? ('-' + (date<10?'0'+date:date)) : '');
	owner = owner ? ('owner=' + owner) : '';

	config = {
		url: '/web/index.php?r=schedule/getTask',
		method: 'post',
		data: taskDate + '&' + owner,
		dataType: 'json',
		success: showTasks
	};
	
	$('[name=owner]').val($('[name=target]').val());
	$.ajax(config);
}

function deleteTask(id, callback) {
	var config = {
		url: '/web/index.php?r=schedule/del',
		data: 'id=' + id,
		method: 'post',
		dataType: 'json',
		success: callback
	};
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
			'<td class="task-close"><a class="task-close js-delete" data-schedule-id="' + task.id + '">x</a></td>' +
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