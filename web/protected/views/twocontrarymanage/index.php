<?php
/* @var $this TwocontrarymanageController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Twocontrarymanages',
);

$this->menu=array(
	array('label'=>'Create Twocontrarymanage', 'url'=>array('create')),
	array('label'=>'Manage Twocontrarymanage', 'url'=>array('admin')),
);
?>

<h1>Twocontrarymanages</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
