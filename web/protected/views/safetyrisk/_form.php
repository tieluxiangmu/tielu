<?php
/* @var $this SafetyriskController */
/* @var $model Safetyrisk */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'safetyrisk-form',
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
		<?php echo $form->labelEx($model,'riskname'); ?>
		<?php echo $form->textField($model,'riskname',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'riskname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'riskclass'); ?>
		<?php echo $form->textField($model,'riskclass',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'riskclass'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'risksystem'); ?>
		<?php echo $form->textField($model,'risksystem',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'risksystem'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'reasonofrisk'); ?>
		<?php echo $form->textField($model,'reasonofrisk',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'reasonofrisk'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'consequence'); ?>
		<?php echo $form->textField($model,'consequence',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'consequence'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'measures'); ?>
		<?php echo $form->textField($model,'measures',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'measures'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'distribution'); ?>
		<?php echo $form->textField($model,'distribution',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'distribution'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'furtherproof'); ?>
		<?php echo $form->textField($model,'furtherproof',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'furtherproof'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'emergencyhand'); ?>
		<?php echo $form->textField($model,'emergencyhand',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'emergencyhand'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'responsibilitylead'); ?>
		<?php echo $form->textField($model,'responsibilitylead',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'responsibilitylead'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'dutypartments'); ?>
		<?php echo $form->textField($model,'dutypartments',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'dutypartments'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'coordinationpart'); ?>
		<?php echo $form->textField($model,'coordinationpart',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'coordinationpart'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'implementdate'); ?>
		<?php echo $form->textField($model,'implementdate'); ?>
		<?php echo $form->error($model,'implementdate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'completiondate'); ?>
		<?php echo $form->textField($model,'completiondate'); ?>
		<?php echo $form->error($model,'completiondate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'notethebus'); ?>
		<?php echo $form->textField($model,'notethebus',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'notethebus'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'notehighspeedrail'); ?>
		<?php echo $form->textField($model,'notehighspeedrail',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'notehighspeedrail'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->