<?php
/* @var $this SafetyproductController */
/* @var $data Safetyproduct */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('serialnumber')); ?>:</b>
	<?php echo CHtml::encode($data->serialnumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('infosources')); ?>:</b>
	<?php echo CHtml::encode($data->infosources); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('company')); ?>:</b>
	<?php echo CHtml::encode($data->company); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('theproblem')); ?>:</b>
	<?php echo CHtml::encode($data->theproblem); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('storagetime')); ?>:</b>
	<?php echo CHtml::encode($data->storagetime); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('thesolution')); ?>:</b>
	<?php echo CHtml::encode($data->thesolution); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('dutydepartment')); ?>:</b>
	<?php echo CHtml::encode($data->dutydepartment); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dutyperson')); ?>:</b>
	<?php echo CHtml::encode($data->dutyperson); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('deadline')); ?>:</b>
	<?php echo CHtml::encode($data->deadline); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rectification')); ?>:</b>
	<?php echo CHtml::encode($data->rectification); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checkperson')); ?>:</b>
	<?php echo CHtml::encode($data->checkperson); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('registertime')); ?>:</b>
	<?php echo CHtml::encode($data->registertime); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comments')); ?>:</b>
	<?php echo CHtml::encode($data->comments); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('currentstatus')); ?>:</b>
	<?php echo CHtml::encode($data->currentstatus); ?>
	<br />

	*/ ?>

</div>