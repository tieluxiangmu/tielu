<?php
/* @var $this TwocontrarymanageController */
/* @var $model Twocontrarymanage */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'twocontrarymanage-form',
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
		<?php echo $form->labelEx($model,'checktime'); ?>
		<?php echo $form->textField($model,'checktime'); ?>
		<?php echo $form->error($model,'checktime'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'inspectionunit'); ?>
		<?php echo $form->textField($model,'inspectionunit',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'inspectionunit'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'rummager'); ?>
		<?php echo $form->textField($model,'rummager',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'rummager'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'company'); ?>
		<?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'company'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'responsibleperson'); ?>
		<?php echo $form->textField($model,'responsibleperson',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'responsibleperson'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'jobname'); ?>
		<?php echo $form->textField($model,'jobname',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'jobname'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'politicalaffiliation'); ?>
		<?php echo $form->textField($model,'politicalaffiliation',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'politicalaffiliation'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Illegalcontent'); ?>
		<?php echo $form->textField($model,'Illegalcontent',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'Illegalcontent'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'processingresults'); ?>
		<?php echo $form->textField($model,'processingresults',array('size'=>60,'maxlength'=>500)); ?>
		<?php echo $form->error($model,'processingresults'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'llegalcategory'); ?>
		<?php echo $form->textField($model,'llegalcategory',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'llegalcategory'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'deduction'); ?>
		<?php echo $form->textField($model,'deduction',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'deduction'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'productionleader'); ?>
		<?php echo $form->textField($model,'productionleader',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'productionleader'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'buckleintegral'); ?>
		<?php echo $form->textField($model,'buckleintegral',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'buckleintegral'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'teamleaderIntegral'); ?>
		<?php echo $form->textField($model,'teamleaderIntegral',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'teamleaderIntegral'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->