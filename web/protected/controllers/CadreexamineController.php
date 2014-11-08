<?php

class CadreexamineController extends CController
{
	public function actionIndex()
	{
        $smarty = Yii::app()->smarty;
        
        $data = array();

        $smarty->_smarty->assign('data',$data);

        $smarty->_smarty->display('cadreexamine/page/index.tpl');
    }
}

?>