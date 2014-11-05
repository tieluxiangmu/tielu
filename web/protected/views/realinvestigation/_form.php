<?php
/* @var $this RealinvestigationController */
/* @var $model Realinvestigation */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'realinvestigation-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'dateofentry'); ?>
		<?php echo $form->textField($model,'dateofentry'); ?>
		<?php echo $form->error($model,'dateofentry'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'timeofentry'); ?>
		<?php echo $form->textField($model,'timeofentry'); ?>
		<?php echo $form->error($model,'timeofentry'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'checkperson'); ?>
		<?php echo $form->textField($model,'checkperson',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'checkperson'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'checkmodel'); ?>
		<?php echo $form->textField($model,'checkmodel',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'checkmodel'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'company'); ?>
		<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'company'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'cadresonduty'); ?>
		<?php echo $form->textField($model,'cadresonduty',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'cadresonduty'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'foundproblem'); ?>
		<?php echo $form->textField($model,'foundproblem',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'foundproblem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'noticeflag'); ?>
		<?php echo $form->textField($model,'noticeflag',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'noticeflag'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'categorynumber'); ?>
		<?php echo $form->textField($model,'categorynumber',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'categorynumber'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'checkcontents'); ?>
		<?php echo $form->textField($model,'checkcontents',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'checkcontents'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'improvement'); ?>
		<?php echo $form->textField($model,'improvement',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'improvement'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'evaluationpoints'); ?>
		<?php echo $form->textField($model,'evaluationpoints',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'evaluationpoints'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pointsreasons'); ?>
		<?php echo $form->textField($model,'pointsreasons',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'pointsreasons'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'assessmentmain'); ?>
		<?php echo $form->textField($model,'assessmentmain',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'assessmentmain'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'comment'); ?>
		<?php echo $form->textField($model,'comment',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'comment'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'rectification'); ?>
		<?php echo $form->textField($model,'rectification',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'rectification'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->