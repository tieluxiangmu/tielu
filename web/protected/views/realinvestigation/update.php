<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
/* @var $this RealinvestigationController */
/* @var $model Realinvestigation */

$this->breadcrumbs=array(
	'Realinvestigations'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Realinvestigation', 'url'=>array('index')),
	array('label'=>'Create Realinvestigation', 'url'=>array('create')),
	array('label'=>'View Realinvestigation', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Realinvestigation', 'url'=>array('admin')),
);
?>

<h1>Update Realinvestigation <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>