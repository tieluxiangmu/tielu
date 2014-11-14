<?php

/**
 * SiteController 默认的全站controller 
 * 本站全站采用了前端架构经典设计思想 所以controller相对精简很对
 * other controller全部做为api提供 做扩展
 * create by zhijia 2014-08-25
 */
class SiteController extends CController
{
	/**
	 * 首页action render view
	 */
	public function actionIndex()
	{
		$smarty = Yii::app()->smarty;
		//$smarty->_smarty->assign('domin','127.0.0.1'); 
		if(!Yii::app()->session['user']) {
			$this->redirect('index.php?r=site/login');
		}
		$smarty->_smarty->display('index/page/index.tpl');
	}
	//登陆页action render view
	public function actionLogin()
	{
		$smarty = Yii::app()->smarty;
		$smarty->_smarty->display('index/page/login.tpl');
	}
	//登陆失败提示页面
	public function actionLoginerror()
	{
		$smarty = Yii::app()->smarty;
		$smarty->_smarty->display('home/page/loginerror.tpl');
	}
}