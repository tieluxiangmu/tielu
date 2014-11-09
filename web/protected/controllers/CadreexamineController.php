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

    public function actionselectResult(){

    	$start_time = strtotime($_GET['start_time']);
		$end_time = strtotime($_GET['end_time']);
		$name = isset($_GET['name']) ? $_GET['name'] : '李洁';

        $twoContray = Twocontrarymanage::model();
        $Realinvest = Realinvestigation::model();
        $Safetyrisk = Safetyrisk::model();

    	$sql_zhoucha = "select id from {{realinvestigation}} where checkperson='$name'
    					and checkmodel='昼查'";

    	$sql_yecha = "select id from {{realinvestigation}} where checkperson='$name'
    					and checkmodel='夜查'";

    	$sql_tiancheng = "select id from {{realinvestigation}} where checkperson='$name'
    					and checkmodel='添乘'";

    	$sql_siwu = "select id from {{realinvestigation}} where checkperson='$name'
    					and ischeck45='是'";

    	$sql_noticeflag = "select id from {{realinvestigation}} where checkperson='$name'
    					and noticeflag='是'";

    	$sql_foundproblem = "select id from {{realinvestigation}} where checkperson='$name'
    					and foundproblem='是'";

    					
    	$sql_two = "select id from {{twocontrarymanage}} where inspectionunit='$name'";


    	$sql_saferisk = "select id from {{safetyrisk}} where riskname='$name'"; 
        
        $sql_list = "select id from {{realinvestigation}} where checkperson='$name'
    				and checkmodel in ('昼查', '夜查', '添乘')";
    	echo $sql_list;
    	
    	$data = array();

    	$data['stat'] = array();

    	$_data = $Realinvest->findAllBySql($sql_zhoucha);
    	$data['stat']['zhoucha'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_yecha);
    	$data['stat']['yecha'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_tiancheng);
    	$data['stat']['tiancheng'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_siwu);
    	$data['stat']['siwu'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_noticeflag);
    	$data['stat']['noticeflag'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_foundproblem);
    	$data['stat']['foundproblem'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_two);
    	$data['stat']['two'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_saferisk);
    	$data['stat']['saferisk'] = count($_data);

    	print_r($data);
    	exit();

        $objPHPExcel = new PHPExcel();
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $objPHPExcel->setActiveSheetIndex(0);
   		$fileName = "工作情况汇总样例";
	    //$date = date("Y_m_d",time());
	    $date = microtime(true);
	    $fileName .= "_{$date}.xls";

	    $objActSheet = $objPHPExcel->getActiveSheet();

		$objActSheet->mergeCells('A2:I2');
		$objActSheet->setCellValue('A2', '重庆车务段2014年7月管理人员考核情况汇总表');

		$objActSheet->mergeCells('A3:A4');
		$objActSheet->setCellValue('A3', '序号');
		
		$objActSheet->mergeCells('B3:B4');
		$objActSheet->setCellValue('B3', '单位/部门');
		
		$objActSheet->mergeCells('C3:C4');
		$objActSheet->setCellValue('C3', '姓名');
		
		$objActSheet->mergeCells('D3:D4');
		$objActSheet->setCellValue('D3', '职务');
		
		$objActSheet->mergeCells('E3:F3');
		$objActSheet->setCellValue('E3', '月度动态考核扣分及原因');
		$objActSheet->setCellValue('E4', '综合部分');
		$objActSheet->setCellValue('F4', '安全生产责任制部分');

		$objActSheet->mergeCells('G3:G4');
		$objActSheet->setCellValue('G3', '车间及自评考核分');
		
		$objActSheet->mergeCells('H3:H4');
		$objActSheet->setCellValue('H3', '段最终考核得分');
		
		$objActSheet->mergeCells('I3:I4');
		$objActSheet->setCellValue('I3', '考核奖惩情况');

		foreach($res as $r){
			$objActSheet->setCellValue('I3', '考核奖惩情况');
		}

		 foreach($res as $r){ //行写入
	        $span = ord("A");
	        $column  = 5;
	        foreach($r as $value){// 列写入
	            $j = chr($span);

	            $objActSheet->setCellValue($j.$column, $value);
	            $span++;
	        }
	        $column++;
	    }

	    $fileName = iconv("utf-8", "gb2312", $fileName);
	    //重命名表
	    $objPHPExcel->getActiveSheet()->setTitle('Simple');
	    //设置活动单指数到第一个表,所以Excel打开这是第一个表

	    //将输出重定向到一个客户端web浏览器(Excel2007)
       // if(!empty($_GET['start_time'])){
         //    ob_end_clean();
	        // ob_start();
	        header('Content-Type : application/vnd.ms-excel');
	        header("Content-Type: application/force-download");
	        header('Content-Disposition:attachment;filename="'.$fileName);
	        //header('Content-Disposition:attachment;filename=test.xls');
	        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
	        $objWriter->save('php://output');
        // }else{
        //   $objWriter->save($fileName); //脚本方式运行，保存在当前目录
        // }
	}
}

?>