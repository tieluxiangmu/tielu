<?php
/* @var $this UserInfoController */
/* @var $model UserInfo */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-info-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'departmenttype'); ?>
		<?php echo $form->textField($model,'departmenttype'); ?>
		<?php echo $form->error($model,'departmenttype'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'department'); ?>
		<?php echo $form->textField($model,'department',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'department'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'position'); ?>
		<?php echo $form->textField($model,'position',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'position'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'mobile'); ?>
		<?php echo $form->textField($model,'mobile',array('size'=>11,'maxlength'=>11)); ?>
		<?php echo $form->error($model,'mobile'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tel'); ?>
		<?php echo $form->textField($model,'tel',array('size'=>13,'maxlength'=>13)); ?>
		<?php echo $form->error($model,'tel'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'photo'); ?>
		<?php echo $form->textField($model,'photo',array('size'=>60,'maxlength'=>200)); ?>
		<?php echo $form->error($model,'photo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'positionType'); ?>
		<?php echo $form->textField($model,'positionType',array('size'=>6,'maxlength'=>6)); ?>
		<?php echo $form->error($model,'positionType'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'parentDanwei'); ?>
		<?php echo $form->textField($model,'parentDanwei'); ?>
		<?php echo $form->error($model,'parentDanwei'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'parentLeader'); ?>
		<?php echo $form->textField($model,'parentLeader'); ?>
		<?php echo $form->error($model,'parentLeader'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'xiesi'); ?>
		<?php echo $form->textField($model,'xiesi'); ?>
		<?php echo $form->error($model,'xiesi'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'zhoucha'); ?>
		<?php echo $form->textField($model,'zhoucha'); ?>
		<?php echo $form->error($model,'zhoucha'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'yecha'); ?>
		<?php echo $form->textField($model,'yecha'); ?>
		<?php echo $form->error($model,'yecha'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tiancheng'); ?>
		<?php echo $form->textField($model,'tiancheng'); ?>
		<?php echo $form->error($model,'tiancheng'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'jiancha'); ?>
		<?php echo $form->textField($model,'jiancha'); ?>
		<?php echo $form->error($model,'jiancha'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'tongzhi'); ?>
		<?php echo $form->textField($model,'tongzhi'); ?>
		<?php echo $form->error($model,'tongzhi'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'faxianwenti'); ?>
		<?php echo $form->textField($model,'faxianwenti'); ?>
		<?php echo $form->error($model,'faxianwenti'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'liangwei'); ?>
		<?php echo $form->textField($model,'liangwei'); ?>
		<?php echo $form->error($model,'liangwei'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'anquan'); ?>
		<?php echo $form->textField($model,'anquan'); ?>
		<?php echo $form->error($model,'anquan'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->