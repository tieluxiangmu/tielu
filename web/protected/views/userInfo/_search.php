<?php
/* @var $this UserInfoController */
/* @var $model UserInfo */
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
		<?php echo $form->label($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'departmenttype'); ?>
		<?php echo $form->textField($model,'departmenttype'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'department'); ?>
		<?php echo $form->textField($model,'department',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'position'); ?>
		<?php echo $form->textField($model,'position',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'mobile'); ?>
		<?php echo $form->textField($model,'mobile',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tel'); ?>
		<?php echo $form->textField($model,'tel',array('size'=>13,'maxlength'=>13)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'photo'); ?>
		<?php echo $form->textField($model,'photo',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'positionType'); ?>
		<?php echo $form->textField($model,'positionType',array('size'=>6,'maxlength'=>6)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'parentDanwei'); ?>
		<?php echo $form->textField($model,'parentDanwei'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'parentLeader'); ?>
		<?php echo $form->textField($model,'parentLeader'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'xiesi'); ?>
		<?php echo $form->textField($model,'xiesi'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'zhoucha'); ?>
		<?php echo $form->textField($model,'zhoucha'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'yecha'); ?>
		<?php echo $form->textField($model,'yecha'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tiancheng'); ?>
		<?php echo $form->textField($model,'tiancheng'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'jiancha'); ?>
		<?php echo $form->textField($model,'jiancha'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'tongzhi'); ?>
		<?php echo $form->textField($model,'tongzhi'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'faxianwenti'); ?>
		<?php echo $form->textField($model,'faxianwenti'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'liangwei'); ?>
		<?php echo $form->textField($model,'liangwei'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'anquan'); ?>
		<?php echo $form->textField($model,'anquan'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->