<?php
/* @var $this DepartmenttypeController */
/* @var $model Departmenttype */

$this->breadcrumbs=array(
	'Departmenttypes'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Departmenttype', 'url'=>array('index')),
	array('label'=>'Create Departmenttype', 'url'=>array('create')),
	array('label'=>'Update Departmenttype', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Departmenttype', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Departmenttype', 'url'=>array('admin')),
);
?>

<h1>View Departmenttype #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
	),
)); ?>
