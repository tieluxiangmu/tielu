<?php
/* @var $this TwocontrarymanageController */
/* @var $data Twocontrarymanage */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('serialnumber')); ?>:</b>
	<?php echo CHtml::encode($data->serialnumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checktime')); ?>:</b>
	<?php echo CHtml::encode($data->checktime); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('inspectionunit')); ?>:</b>
	<?php echo CHtml::encode($data->inspectionunit); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('rummager')); ?>:</b>
	<?php echo CHtml::encode($data->rummager); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('company')); ?>:</b>
	<?php echo CHtml::encode($data->company); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('responsibleperson')); ?>:</b>
	<?php echo CHtml::encode($data->responsibleperson); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('jobname')); ?>:</b>
	<?php echo CHtml::encode($data->jobname); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('politicalaffiliation')); ?>:</b>
	<?php echo CHtml::encode($data->politicalaffiliation); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('Illegalcontent')); ?>:</b>
	<?php echo CHtml::encode($data->Illegalcontent); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('processingresults')); ?>:</b>
	<?php echo CHtml::encode($data->processingresults); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('llegalcategory')); ?>:</b>
	<?php echo CHtml::encode($data->llegalcategory); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('deduction')); ?>:</b>
	<?php echo CHtml::encode($data->deduction); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('productionleader')); ?>:</b>
	<?php echo CHtml::encode($data->productionleader); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('buckleintegral')); ?>:</b>
	<?php echo CHtml::encode($data->buckleintegral); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('teamleaderIntegral')); ?>:</b>
	<?php echo CHtml::encode($data->teamleaderIntegral); ?>
	<br />

	*/ ?>

</div>