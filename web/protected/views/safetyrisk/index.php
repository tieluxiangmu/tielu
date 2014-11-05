<?php
/* @var $this SafetyriskController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Safetyrisks',
);

$this->menu=array(
	array('label'=>'Create Safetyrisk', 'url'=>array('create')),
	array('label'=>'Manage Safetyrisk', 'url'=>array('admin')),
);
?>

<h1>Safetyrisks</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
