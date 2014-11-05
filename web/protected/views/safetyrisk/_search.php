<?php
/* @var $this SafetyriskController */
/* @var $model Safetyrisk */
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
		<?php echo $form->label($model,'riskname'); ?>
		<?php echo $form->textField($model,'riskname',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'riskclass'); ?>
		<?php echo $form->textField($model,'riskclass',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'risksystem'); ?>
		<?php echo $form->textField($model,'risksystem',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'reasonofrisk'); ?>
		<?php echo $form->textField($model,'reasonofrisk',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'consequence'); ?>
		<?php echo $form->textField($model,'consequence',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'measures'); ?>
		<?php echo $form->textField($model,'measures',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'distribution'); ?>
		<?php echo $form->textField($model,'distribution',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'furtherproof'); ?>
		<?php echo $form->textField($model,'furtherproof',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'emergencyhand'); ?>
		<?php echo $form->textField($model,'emergencyhand',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'responsibilitylead'); ?>
		<?php echo $form->textField($model,'responsibilitylead',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'dutypartments'); ?>
		<?php echo $form->textField($model,'dutypartments',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'coordinationpart'); ?>
		<?php echo $form->textField($model,'coordinationpart',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'implementdate'); ?>
		<?php echo $form->textField($model,'implementdate'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'completiondate'); ?>
		<?php echo $form->textField($model,'completiondate'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'notethebus'); ?>
		<?php echo $form->textField($model,'notethebus',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'notehighspeedrail'); ?>
		<?php echo $form->textField($model,'notehighspeedrail',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->