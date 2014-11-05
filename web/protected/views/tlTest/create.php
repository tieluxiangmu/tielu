<?php
/* @var $this TlTestController */
/* @var $model TlTest */

$this->breadcrumbs=array(
	'Tl Tests'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List TlTest', 'url'=>array('index')),
	array('label'=>'Manage TlTest', 'url'=>array('admin')),
);
?>

<h1>Create TlTest</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>