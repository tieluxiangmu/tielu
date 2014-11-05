<?php
/* @var $this TlTestController */
/* @var $model TlTest */

$this->breadcrumbs=array(
	'Tl Tests'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List TlTest', 'url'=>array('index')),
	array('label'=>'Create TlTest', 'url'=>array('create')),
	array('label'=>'View TlTest', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage TlTest', 'url'=>array('admin')),
);
?>

<h1>Update TlTest <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>