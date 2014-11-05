<?php
/* @var $this TwocontrarymanageController */
/* @var $model Twocontrarymanage */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id'); ?>
		<?php echo $form->textField($model,'id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'serialnumber'); ?>
		<?php echo $form->textField($model,'serialnumber',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checktime'); ?>
		<?php echo $form->textField($model,'checktime'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'inspectionunit'); ?>
		<?php echo $form->textField($model,'inspectionunit',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'rummager'); ?>
		<?php echo $form->textField($model,'rummager',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'company'); ?>
		<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'responsibleperson'); ?>
		<?php echo $form->textField($model,'responsibleperson',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'jobname'); ?>
		<?php echo $form->textField($model,'jobname',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'politicalaffiliation'); ?>
		<?php echo $form->textField($model,'politicalaffiliation',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'Illegalcontent'); ?>
		<?php echo $form->textField($model,'Illegalcontent',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'processingresults'); ?>
		<?php echo $form->textField($model,'processingresults',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'llegalcategory'); ?>
		<?php echo $form->textField($model,'llegalcategory',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'deduction'); ?>
		<?php echo $form->textField($model,'deduction',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'productionleader'); ?>
		<?php echo $form->textField($model,'productionleader',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'buckleintegral'); ?>
		<?php echo $form->textField($model,'buckleintegral',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'teamleaderIntegral'); ?>
		<?php echo $form->textField($model,'teamleaderIntegral',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->