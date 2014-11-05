<?php
/* @var $this RealinvestigationController */
/* @var $model Realinvestigation */
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
		<?php echo $form->label($model,'dateofentry'); ?>
		<?php echo $form->textField($model,'dateofentry'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'timeofentry'); ?>
		<?php echo $form->textField($model,'timeofentry'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checkperson'); ?>
		<?php echo $form->textField($model,'checkperson',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checkmodel'); ?>
		<?php echo $form->textField($model,'checkmodel',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'company'); ?>
		<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'cadresonduty'); ?>
		<?php echo $form->textField($model,'cadresonduty',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'foundproblem'); ?>
		<?php echo $form->textField($model,'foundproblem',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'noticeflag'); ?>
		<?php echo $form->textField($model,'noticeflag',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'categorynumber'); ?>
		<?php echo $form->textField($model,'categorynumber',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checkcontents'); ?>
		<?php echo $form->textField($model,'checkcontents',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'improvement'); ?>
		<?php echo $form->textField($model,'improvement',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'evaluationpoints'); ?>
		<?php echo $form->textField($model,'evaluationpoints',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'pointsreasons'); ?>
		<?php echo $form->textField($model,'pointsreasons',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'assessmentmain'); ?>
		<?php echo $form->textField($model,'assessmentmain',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'comment'); ?>
		<?php echo $form->textField($model,'comment',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'rectification'); ?>
		<?php echo $form->textField($model,'rectification',array('size'=>60,'maxlength'=>500)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->