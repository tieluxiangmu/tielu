<?php
/* @var $this TwocontrarymanageController */
/* @var $model Twocontrarymanage */

$this->breadcrumbs=array(
	'Twocontrarymanages'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Twocontrarymanage', 'url'=>array('index')),
	array('label'=>'Create Twocontrarymanage', 'url'=>array('create')),
	array('label'=>'View Twocontrarymanage', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Twocontrarymanage', 'url'=>array('admin')),
);
?>

<h1>Update Twocontrarymanage <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>