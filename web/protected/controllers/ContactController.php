<?php

class ContactController extends Controller
{
	public function actionIndex()
	{
		$contactmodel=new contact();
        $contactinfo=$contactmodel->findBySql("SELECT * FROM `tl_contact` ",array());
        $smarty = Yii::app()->smarty;
        $smarty->_smarty->assign('contactinfo',$contactinfo);
        $smarty->_smarty->display('contact/page/view.tpl');
    }

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}