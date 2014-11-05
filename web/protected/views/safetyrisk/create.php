<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<?php
/* @var $this SafetyriskController */
/* @var $model Safetyrisk */

$this->breadcrumbs=array(
	'Safetyrisks'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Safetyrisk', 'url'=>array('index')),
	array('label'=>'Manage Safetyrisk', 'url'=>array('admin')),
);
?>

<h1>Create Safetyrisk</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>