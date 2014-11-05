<?php
/* @var $this SafetyproductController */
/* @var $model Safetyproduct */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'safetyproduct-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'serialnumber'); ?>
		<?php echo $form->textField($model,'serialnumber',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'serialnumber'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'infosources'); ?>
		<?php echo $form->textField($model,'infosources',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'infosources'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'company'); ?>
		<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'company'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'theproblem'); ?>
		<?php echo $form->textField($model,'theproblem',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'theproblem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'storagetime'); ?>
		<?php echo $form->textField($model,'storagetime'); ?>
		<?php echo $form->error($model,'storagetime'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'thesolution'); ?>
		<?php echo $form->textField($model,'thesolution',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'thesolution'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dutydepartment'); ?>
		<?php echo $form->textField($model,'dutydepartment',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'dutydepartment'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dutyperson'); ?>
		<?php echo $form->textField($model,'dutyperson',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'dutyperson'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'deadline'); ?>
		<?php echo $form->textField($model,'deadline'); ?>
		<?php echo $form->error($model,'deadline'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'rectification'); ?>
		<?php echo $form->textField($model,'rectification',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'rectification'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'checkperson'); ?>
		<?php echo $form->textField($model,'checkperson',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'checkperson'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'registertime'); ?>
		<?php echo $form->textField($model,'registertime'); ?>
		<?php echo $form->error($model,'registertime'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'comments'); ?>
		<?php echo $form->textField($model,'comments',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'comments'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'currentstatus'); ?>
		<?php echo $form->textField($model,'currentstatus',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'currentstatus'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->