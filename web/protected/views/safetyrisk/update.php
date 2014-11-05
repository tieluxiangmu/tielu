<?php
/* @var $this SafetyriskController */
/* @var $model Safetyrisk */

$this->breadcrumbs=array(
	'Safetyrisks'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Safetyrisk', 'url'=>array('index')),
	array('label'=>'Create Safetyrisk', 'url'=>array('create')),
	array('label'=>'View Safetyrisk', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Safetyrisk', 'url'=>array('admin')),
);
?>

<h1>Update Safetyrisk <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>