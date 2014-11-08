<?php
/* @var $this UserInfoController */
/* @var $data UserInfo */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('name')); ?>:</b>
	<?php echo CHtml::encode($data->name); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('password')); ?>:</b>
	<?php echo CHtml::encode($data->password); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('departmenttype')); ?>:</b>
	<?php echo CHtml::encode($data->departmenttype); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('department')); ?>:</b>
	<?php echo CHtml::encode($data->department); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('position')); ?>:</b>
	<?php echo CHtml::encode($data->position); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mobile')); ?>:</b>
	<?php echo CHtml::encode($data->mobile); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('tel')); ?>:</b>
	<?php echo CHtml::encode($data->tel); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('photo')); ?>:</b>
	<?php echo CHtml::encode($data->photo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('positionType')); ?>:</b>
	<?php echo CHtml::encode($data->positionType); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('parentDanwei')); ?>:</b>
	<?php echo CHtml::encode($data->parentDanwei); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('parentLeader')); ?>:</b>
	<?php echo CHtml::encode($data->parentLeader); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('xiesi')); ?>:</b>
	<?php echo CHtml::encode($data->xiesi); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('zhoucha')); ?>:</b>
	<?php echo CHtml::encode($data->zhoucha); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('yecha')); ?>:</b>
	<?php echo CHtml::encode($data->yecha); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tiancheng')); ?>:</b>
	<?php echo CHtml::encode($data->tiancheng); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('jiancha')); ?>:</b>
	<?php echo CHtml::encode($data->jiancha); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('tongzhi')); ?>:</b>
	<?php echo CHtml::encode($data->tongzhi); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('faxianwenti')); ?>:</b>
	<?php echo CHtml::encode($data->faxianwenti); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('liangwei')); ?>:</b>
	<?php echo CHtml::encode($data->liangwei); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('anquan')); ?>:</b>
	<?php echo CHtml::encode($data->anquan); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('email')); ?>:</b>
	<?php echo CHtml::encode($data->email); ?>
	<br />

	*/ ?>

</div>