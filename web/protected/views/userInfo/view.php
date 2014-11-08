<?php
/* @var $this UserInfoController */
/* @var $model UserInfo */

$this->breadcrumbs=array(
	'User Infos'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List UserInfo', 'url'=>array('index')),
	array('label'=>'Create UserInfo', 'url'=>array('create')),
	array('label'=>'Update UserInfo', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete UserInfo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage UserInfo', 'url'=>array('admin')),
);
?>

<h1>View UserInfo #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'password',
		'departmenttype',
		'department',
		'position',
		'mobile',
		'tel',
		'photo',
		'positionType',
		'parentDanwei',
		'parentLeader',
		'xiesi',
		'zhoucha',
		'yecha',
		'tiancheng',
		'jiancha',
		'tongzhi',
		'faxianwenti',
		'liangwei',
		'anquan',
		'email',
	),
)); ?>
