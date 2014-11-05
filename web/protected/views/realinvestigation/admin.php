<?php
/* @var $this RealinvestigationController */
/* @var $model Realinvestigation */

$this->breadcrumbs=array(
	'Realinvestigations'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Realinvestigation', 'url'=>array('index')),
	array('label'=>'Create Realinvestigation', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#realinvestigation-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Realinvestigations</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'realinvestigation-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'dateofentry',
		'timeofentry',
		'checkperson',
		'checkmodel',
		'company',
		/*
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
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
