<?php
/* @var $this TlTestController */
/* @var $model TlTest */

$this->breadcrumbs=array(
	'Tl Tests'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List TlTest', 'url'=>array('index')),
	array('label'=>'Create TlTest', 'url'=>array('create')),
	array('label'=>'Update TlTest', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete TlTest', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage TlTest', 'url'=>array('admin')),
);
?>

<h1>View TlTest #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'mydate',
	),
)); ?>
