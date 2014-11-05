<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<?php
/* @var $this RealinvestigationController */
/* @var $model Realinvestigation */

$this->breadcrumbs=array(
	'Realinvestigations'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Realinvestigation', 'url'=>array('index')),
	array('label'=>'Manage Realinvestigation', 'url'=>array('admin')),
);
?>

<h1>Create Realinvestigation</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>