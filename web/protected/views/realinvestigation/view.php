<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<?php
/* @var $this RealinvestigationController */
/* @var $model Realinvestigation */

$this->breadcrumbs=array(
	'Realinvestigations'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Realinvestigation', 'url'=>array('index')),
	array('label'=>'Create Realinvestigation', 'url'=>array('create')),
	array('label'=>'Update Realinvestigation', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Realinvestigation', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Realinvestigation', 'url'=>array('admin')),
);
?>

<h1>View Realinvestigation #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'dateofentry',
		'timeofentry',
		'checkperson',
		'checkmodel',
		'company',
		'cadresonduty',
		'foundproblem',
		'noticeflag',
		'categorynumber',
		'checkcontents',
		'improvement',
		'evaluationpoints',
		'pointsreasons',
		'assessmentmain',
		'comment',
		'rectification',
	),
)); ?>
