<?php
/* @var $this SafetyproductController */
/* @var $model Safetyproduct */
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
		<?php echo $form->label($model,'infosources'); ?>
		<?php echo $form->textField($model,'infosources',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'company'); ?>
		<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'theproblem'); ?>
		<?php echo $form->textField($model,'theproblem',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'storagetime'); ?>
		<?php echo $form->textField($model,'storagetime'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'thesolution'); ?>
		<?php echo $form->textField($model,'thesolution',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dutydepartment'); ?>
		<?php echo $form->textField($model,'dutydepartment',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dutyperson'); ?>
		<?php echo $form->textField($model,'dutyperson',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'deadline'); ?>
		<?php echo $form->textField($model,'deadline'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'rectification'); ?>
		<?php echo $form->textField($model,'rectification',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checkperson'); ?>
		<?php echo $form->textField($model,'checkperson',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'registertime'); ?>
		<?php echo $form->textField($model,'registertime'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'comments'); ?>
		<?php echo $form->textField($model,'comments',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'currentstatus'); ?>
		<?php echo $form->textField($model,'currentstatus',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->