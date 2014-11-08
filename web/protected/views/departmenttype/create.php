<?php
/* @var $this DepartmenttypeController */
/* @var $model Departmenttype */

$this->breadcrumbs=array(
	'Departmenttypes'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Departmenttype', 'url'=>array('index')),
	array('label'=>'Manage Departmenttype', 'url'=>array('admin')),
);
?>

<h1>Create Departmenttype</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>