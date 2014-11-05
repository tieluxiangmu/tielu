<?php
/* @var $this TlTestController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Tl Tests',
);

$this->menu=array(
	array('label'=>'Create TlTest', 'url'=>array('create')),
	array('label'=>'Manage TlTest', 'url'=>array('admin')),
);
?>

<h1>Tl Tests</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
