<?php
/* @var $this RealinvestigationController */
/* @var $data Realinvestigation */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('dateofentry')); ?>:</b>
	<?php echo CHtml::encode($data->dateofentry); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('timeofentry')); ?>:</b>
	<?php echo CHtml::encode($data->timeofentry); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checkperson')); ?>:</b>
	<?php echo CHtml::encode($data->checkperson); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checkmodel')); ?>:</b>
	<?php echo CHtml::encode($data->checkmodel); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('company')); ?>:</b>
	<?php echo CHtml::encode($data->company); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cadresonduty')); ?>:</b>
	<?php echo CHtml::encode($data->cadresonduty); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('foundproblem')); ?>:</b>
	<?php echo CHtml::encode($data->foundproblem); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('noticeflag')); ?>:</b>
	<?php echo CHtml::encode($data->noticeflag); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('categorynumber')); ?>:</b>
	<?php echo CHtml::encode($data->categorynumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checkcontents')); ?>:</b>
	<?php echo CHtml::encode($data->checkcontents); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('improvement')); ?>:</b>
	<?php echo CHtml::encode($data->improvement); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('evaluationpoints')); ?>:</b>
	<?php echo CHtml::encode($data->evaluationpoints); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('pointsreasons')); ?>:</b>
	<?php echo CHtml::encode($data->pointsreasons); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('assessmentmain')); ?>:</b>
	<?php echo CHtml::encode($data->assessmentmain); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('comment')); ?>:</b>
	<?php echo CHtml::encode($data->comment); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rectification')); ?>:</b>
	<?php echo CHtml::encode($data->rectification); ?>
	<br />

	*/ ?>

</div>