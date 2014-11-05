<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<?php
/* @var $this SafetyproductController */
/* @var $model Safetyproduct */

$this->breadcrumbs=array(
	'Safetyproducts'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Safetyproduct', 'url'=>array('index')),
	array('label'=>'Manage Safetyproduct', 'url'=>array('admin')),
);
?>

<h1>Create Safetyproduct</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>