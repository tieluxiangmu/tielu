<?php
/* @var $this DepartmenttypeController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Departmenttypes',
);

$this->menu=array(
	array('label'=>'Create Departmenttype', 'url'=>array('create')),
	array('label'=>'Manage Departmenttype', 'url'=>array('admin')),
);
?>

<h1>Departmenttypes</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
