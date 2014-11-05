<?php
/* @var $this SafetyproductController */
/* @var $model Safetyproduct */

$this->breadcrumbs=array(
	'Safetyproducts'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Safetyproduct', 'url'=>array('index')),
	array('label'=>'Create Safetyproduct', 'url'=>array('create')),
	array('label'=>'Update Safetyproduct', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Safetyproduct', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Safetyproduct', 'url'=>array('admin')),
);
?>

<h1>View Safetyproduct #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'serialnumber',
		'infosources',
		'company',
		'theproblem',
		'storagetime',
		'thesolution',
		'dutydepartment',
		'dutyperson',
		'deadline',
		'rectification',
		'checkperson',
		'registertime',
		'comments',
		'currentstatus',
	),
)); ?>
