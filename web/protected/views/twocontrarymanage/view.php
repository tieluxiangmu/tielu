<?php
/* @var $this TwocontrarymanageController */
/* @var $model Twocontrarymanage */

$this->breadcrumbs=array(
	'Twocontrarymanages'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Twocontrarymanage', 'url'=>array('index')),
	array('label'=>'Create Twocontrarymanage', 'url'=>array('create')),
	array('label'=>'Update Twocontrarymanage', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Twocontrarymanage', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Twocontrarymanage', 'url'=>array('admin')),
);
?>

<h1>View Twocontrarymanage #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'serialnumber',
		'checktime',
		'inspectionunit',
		'rummager',
		'company',
		'responsibleperson',
		'jobname',
		'politicalaffiliation',
		'Illegalcontent',
		'processingresults',
		'llegalcategory',
		'deduction',
		'productionleader',
		'buckleintegral',
		'teamleaderIntegral',
	),
)); ?>
