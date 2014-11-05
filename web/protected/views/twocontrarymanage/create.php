<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<?php
/* @var $this TwocontrarymanageController */
/* @var $model Twocontrarymanage */

$this->breadcrumbs=array(
	'Twocontrarymanages'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Twocontrarymanage', 'url'=>array('index')),
	array('label'=>'Manage Twocontrarymanage', 'url'=>array('admin')),
);
?>

<h1>Create Twocontrarymanage</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>