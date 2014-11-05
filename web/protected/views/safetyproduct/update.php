<?php
/* @var $this SafetyproductController */
/* @var $model Safetyproduct */

$this->breadcrumbs=array(
	'Safetyproducts'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Safetyproduct', 'url'=>array('index')),
	array('label'=>'Create Safetyproduct', 'url'=>array('create')),
	array('label'=>'View Safetyproduct', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Safetyproduct', 'url'=>array('admin')),
);
?>

<h1>Update Safetyproduct <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>