<?php

class ContactController extends Controller
{
	public function actionIndex()
	{
		$contactmodel=new Contact();
        //查询联系人 需要根据字段修改
//        $contactinfo=$contactmodel->findBySql("SELECT * FROM `tl_contact` ",array());
        $smarty = Yii::app()->smarty;
//        $smarty->_smarty->assign('data',$contactinfo);
        $smarty->_smarty->assign('data',array(
                                                'username'=>'张三',
                                                'tel'=>'12312312',
                                                'other'=>'asdasd');
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