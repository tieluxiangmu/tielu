<?php
/* @var $this SafetyproductController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Safetyproducts',
);

$this->menu=array(
	array('label'=>'Create Safetyproduct', 'url'=>array('create')),
	array('label'=>'Manage Safetyproduct', 'url'=>array('admin')),
);
?>

<h1>Safetyproducts</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
