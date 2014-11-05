<?php
/* @var $this SafetyriskController */
/* @var $data Safetyrisk */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('serialnumber')); ?>:</b>
	<?php echo CHtml::encode($data->serialnumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('riskname')); ?>:</b>
	<?php echo CHtml::encode($data->riskname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('riskclass')); ?>:</b>
	<?php echo CHtml::encode($data->riskclass); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('risksystem')); ?>:</b>
	<?php echo CHtml::encode($data->risksystem); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('reasonofrisk')); ?>:</b>
	<?php echo CHtml::encode($data->reasonofrisk); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('consequence')); ?>:</b>
	<?php echo CHtml::encode($data->consequence); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('measures')); ?>:</b>
	<?php echo CHtml::encode($data->measures); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('distribution')); ?>:</b>
	<?php echo CHtml::encode($data->distribution); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('furtherproof')); ?>:</b>
	<?php echo CHtml::encode($data->furtherproof); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('emergencyhand')); ?>:</b>
	<?php echo CHtml::encode($data->emergencyhand); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('responsibilitylead')); ?>:</b>
	<?php echo CHtml::encode($data->responsibilitylead); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dutypartments')); ?>:</b>
	<?php echo CHtml::encode($data->dutypartments); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('coordinationpart')); ?>:</b>
	<?php echo CHtml::encode($data->coordinationpart); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('implementdate')); ?>:</b>
	<?php echo CHtml::encode($data->implementdate); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('completiondate')); ?>:</b>
	<?php echo CHtml::encode($data->completiondate); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('notethebus')); ?>:</b>
	<?php echo CHtml::encode($data->notethebus); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('notehighspeedrail')); ?>:</b>
	<?php echo CHtml::encode($data->notehighspeedrail); ?>
	<br />

	*/ ?>

</div>