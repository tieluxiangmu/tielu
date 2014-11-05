<?php
/* @var $this RealinvestigationController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Realinvestigations',
);

$this->menu=array(
	array('label'=>'Create Realinvestigation', 'url'=>array('create')),
	array('label'=>'Manage Realinvestigation', 'url'=>array('admin')),
);
?>

<h1>Realinvestigations</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
