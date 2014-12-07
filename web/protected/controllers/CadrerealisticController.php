<?php

/**
 * SiteController 默认的全站controller 
 * 本站全站采用了前端架构经典设计思想 所以controller相对精简很对
 * other controller全部做为api提供 做扩展
 * create by zhijia 2014-08-25
 */
class CadrerealisticController extends CController
{
	/*=======================单独的录入入口集合============================*/
	/*两违问题录入页面*/
	public function actionAddtwocontrary()
	{
		$smarty = Yii::app()->smarty;
		$user = $_SESSION['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }
		$smarty->_smarty->display('cadrerealistic/page/addtwocontrary.tpl');
	}
	/*安全生产管理录入页面*/
	public function actionAddecurityprodu()
	{
		$smarty = Yii::app()->smarty;
		$user = $_SESSION['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }
		$smarty->_smarty->display('cadrerealistic/page/addecurityprodu.tpl');
	}
	/* 该controller是干部写实的最后一个step 尤为重要
	*安全生产管理表录入页面
	*/
	public function actionAddsaferisk()
	{
		$smarty = Yii::app()->smarty;
		$user = $_SESSION['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }
        $leaders = UserInfo::model()->getAllSegmentLeaders();
        $smarty->_smarty->assign('leaders', $leaders);
		$smarty->_smarty->display('cadrerealistic/page/addsaferisk.tpl');
	}
	/*=======================================================*/
}