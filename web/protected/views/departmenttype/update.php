<?php
/* @var $this DepartmenttypeController */
/* @var $model Departmenttype */

$this->breadcrumbs=array(
	'Departmenttypes'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Departmenttype', 'url'=>array('index')),
	array('label'=>'Create Departmenttype', 'url'=>array('create')),
	array('label'=>'View Departmenttype', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Departmenttype', 'url'=>array('admin')),
);
?>

<h1>Update Departmenttype <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>