<?php

class ContactController extends CController
{
	public function actionContact() {
		$this->render('contact');
	}	

	public function actionIndex()
	{
		$contactmodel=Userinfo::model();
        $contactinfo=$contactmodel->findAllBySql("select * from {{userinfo}} where name != 'admin' ");
        $smarty = Yii::app()->smarty;
        $user = $_SESSION['user'];
        if(!$user) {
        	$this->redirect('index.php');
        }
        $smarty->_smarty->assign('data',$contactinfo);
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