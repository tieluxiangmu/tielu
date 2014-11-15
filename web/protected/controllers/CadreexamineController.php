<?php

class CadreexamineController extends CController
{

	public function actionIndex()
	{
        $smarty = Yii::app()->smarty;

        $user = Yii::app()->session['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }

        $data = array();
    	$data['subordinate'] = UserInfo::model()->getSubordinatesWithKaoheByUserName(Yii::app()->session['user']['name']);

        $smarty->_smarty->assign('data',$data);

        $smarty->_smarty->display('cadreexamine/page/index.tpl');
    }

    public function actionselectResult(){

    	$year = $_GET['year'];
		$month = $_GET['month'];
		$name = $_GET['person'];
		$koufen = isset($_GET['koufen']) ? $_GET['koufen'] : '';
		$koufenyuanyin = isset($_POST['koufenyuanyin']) ? $_POST['koufenyuanyin'] : '';
		$kaohezhutipingyu = isset($_POST['kaohezhutipingyu']) ? $_POST['kaohezhutipingyu'] : '';
		$realwork = isset($_GET['realwork']) ? $_GET['realwork'] : '';
		$realwork = explode('|', $realwork);

		$nowMonthData = $year . '-' . $month . '-01';
		$nextMonthDate = strtotime('next month', strtotime($nowMonthData));
		$nextMonthDate = date('Y-m-d', $nextMonthDate);

		$export = isset($_GET['export']) ? $_GET['export'] : '';

        $twoContray = Twocontrarymanage::model();
        $Realinvest = Realinvestigation::model();
        $Safetyrisk = Safetyrisk::model();

    	$sql_zhoucha = "select id from {{realinvestigation}} where checkperson='$name'
    					and checkmodel='昼查' and `dateofentry` >= '$nowMonthData' and `dateofentry` < '$nextMonthDate'";

    	$sql_yecha = "select id from {{realinvestigation}} where checkperson='$name'
    					and checkmodel='夜查' and `dateofentry` >= '$nowMonthData' and `dateofentry` < '$nextMonthDate'";

    	$sql_tiancheng = "select id from {{realinvestigation}} where checkperson='$name'
    					and checkmodel='添乘' and `dateofentry` >= '$nowMonthData' and `dateofentry` < '$nextMonthDate'";

    	$sql_siwu = "select id from {{realinvestigation}} where checkperson='$name'
    					and ischeck45='是' and `dateofentry` >= '$nowMonthData' and `dateofentry` < '$nextMonthDate'";

    	$sql_noticeflag = "select id from {{realinvestigation}} where checkperson='$name'
    					and noticeflag='是' and `dateofentry` >= '$nowMonthData' and `dateofentry` < '$nextMonthDate'";

    					
    	$sql_two = "select id from {{twocontrarymanage}}
    				where inspectionunit='$name' and `checktime` >= '$nowMonthData' and `checktime` < '$nextMonthDate'";


    	$sql_saferisk = "select id from {{safetyrisk}}
    					where create_user='$name' and `create_time` >= '$nowMonthData' and `create_time` < '$nextMonthDate'"; 

        $sql_list = "select * from {{realinvestigation}} where checkperson='$name'
    				and checkmodel in ('昼查', '夜查', '添乘') and `dateofentry` >= '$nowMonthData' and `dateofentry` < '$nextMonthDate'
    				ORDER BY `dateofentry` ASC";


    	$sql_foundproblem = "select sum(`foundproblemcount`) as `foundproblemcount` from {{realinvestigation}}
    						where checkperson='$name'";
		
		
		$sql_userinfo = "select * from {{userinfo}} where name='$name'";

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

		$command = Yii::app()->db->createCommand($sql_foundproblem);  
		$rows = $command->queryAll();
    	$data['stat']['foundproblem'] = intval($rows[0]['foundproblemcount']);

    	$_data = $Realinvest->findAllBySql($sql_two);
    	$data['stat']['two'] = count($_data);

    	$_data = $Realinvest->findAllBySql($sql_saferisk);
    	$data['stat']['saferisk'] = count($_data);

		$command = Yii::app()->db->createCommand($sql_list);  
		$rows = $command->queryAll();
    	$data['list'] = $rows;

		$command = Yii::app()->db->createCommand($sql_userinfo);  
		$rows = $command->queryAll();
    	$data['userinfo'] = $rows[0];

    	$data['time']['year'] = $year;
    	$data['time']['month'] = $month;
    	$data['time']['now'] = date('Y年m月d日');

    	$data['master'] = Yii::app()->session['user']['name'];

    	//计算扣分
    	$score = 0;
    	$reason = array();
    	if($data['userinfo']['zhoucha'] > $data['stat']['zhoucha']) {
    		$_score = $data['userinfo']['zhoucha'] -  $data['stat']['zhoucha'];
    		$reason[] = '昼查目标数：' . $data['userinfo']['zhoucha'] . '， 完成数：' . $data['stat']['zhoucha'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['zhoucha'] -  $data['stat']['zhoucha'];

    	}
    	if($data['userinfo']['yecha'] > $data['stat']['yecha']) {
    		$_score = $data['userinfo']['yecha'] -  $data['stat']['yecha'];
    		$reason[] = '夜查目标数：' . $data['userinfo']['yecha'] . '， 完成数：' . $data['stat']['yecha'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['yecha'] -  $data['stat']['yecha'];
    	}
    	if($data['userinfo']['tiancheng'] > $data['stat']['tiancheng']) {
    		$_score = $data['userinfo']['tiancheng'] -  $data['stat']['tiancheng'];
    		$reason[] = '添乘目标数：' . $data['userinfo']['tiancheng'] . '， 完成数：' . $data['stat']['tiancheng'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['tiancheng'] -  $data['stat']['tiancheng'];
    	}
    	if($data['userinfo']['jiancha'] > $data['stat']['siwu']) {
    		$_score = $data['userinfo']['jiancha'] -  $data['stat']['siwu'];
    		$reason[] = '检查四五等站目标数：' . $data['userinfo']['jiancha'] . '， 完成数：' . $data['stat']['siwu'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['jiancha'] -  $data['stat']['siwu'];
    	}
    	if($data['userinfo']['tongzhi'] > $data['stat']['noticeflag']) {
    		$_score = $data['userinfo']['tongzhi'] -  $data['stat']['noticeflag'];
    		$reason[] = '发放《安全检查通知书》目标数：' . $data['userinfo']['tongzhi'] . '， 完成数：' . $data['stat']['noticeflag'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['tongzhi'] -  $data['stat']['noticeflag'];
    	}
    	if($data['userinfo']['faxianwenti'] > $data['stat']['foundproblem']) {
    		$_score = $data['userinfo']['faxianwenti'] -  $data['stat']['foundproblem'];
    		$reason[] = '发现问题目标数：' . $data['userinfo']['faxianwenti'] . '， 完成数：' . $data['stat']['foundproblem'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['faxianwenti'] -  $data['stat']['foundproblem'];
    	}
    	if($data['userinfo']['liangwei'] > $data['stat']['two']) {
    		$_score = $data['userinfo']['liangwei'] -  $data['stat']['two'];
    		$reason[] = '查处“两违”目标数：' . $data['userinfo']['liangwei'] . '， 完成数：' . $data['stat']['two'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['liangwei'] -  $data['stat']['two'];
    	}
    	if($data['userinfo']['anquan'] > $data['stat']['saferisk']) {
    		$_score = $data['userinfo']['anquan'] -  $data['stat']['saferisk'];
    		$reason[] = '抽查重点安全风险目标数：' . $data['userinfo']['anquan'] . '， 完成数：' . $data['stat']['saferisk'] . '， 扣' . ($_score * 2) . '分';

    		$score += $data['userinfo']['anquan'] -  $data['stat']['saferisk'];
    	}

    	$data['deduct']['score'] = $score * -2;
    	$data['deduct']['reason'] = join('； ', $reason);


    	if(empty($export)) {
	    	echo json_encode($data);
	    	exit();
    	}

        $objPHPExcel = new PHPExcel();
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $objPHPExcel->setActiveSheetIndex(0);

	    $date = round(microtime(true));
	    $fileName = "管理人员量化检查写实考核表_".$data['userinfo']['department']."_".$data['userinfo']['name']."_".$data['time']['now'].".xlsx";

	    $objActSheet = $objPHPExcel->getActiveSheet();

		$objActSheet->mergeCells('A2:K2');
		$objActSheet->setCellValue('A2', '管理人员量化检查写实考核表');

		$objActSheet->mergeCells('A3:K3');
		$objActSheet->setCellValue('A3', '单位（科室）：'.$data['userinfo']['department'].'    姓名：'.$data['userinfo']['name'].'     填报时间：'.$year.'年'.$month.'月');
		
		$objActSheet->mergeCells('A4:A5');
		$objActSheet->setCellValue('A4', '量化标准及完成情况');

		$objActSheet->mergeCells('B4:C4');
		$objActSheet->setCellValue('B4', '量化检查标准');

		$objActSheet->mergeCells('D4:K4');
		$objActSheet->setCellValue('D4', '昼查'.$data['userinfo']['zhoucha'].'次，夜查'.$data['userinfo']['yecha'].'次，添乘'.$data['userinfo']['tiancheng'].'遍，检查四五等站'.$data['userinfo']['jiancha'].'次，发放《安全检查通知书》'.$data['userinfo']['tongzhi'].'份，发现问题'.$data['userinfo']['faxianwenti'].'个，查处“两违”'.$data['userinfo']['liangwei'].'件，抽查重点安全风险'.$data['userinfo']['anquan'].'个。');

		$objActSheet->mergeCells('B5:C5');
		$objActSheet->setCellValue('B5', '实际完成情况');

		$objActSheet->mergeCells('D5:K5');
		$objActSheet->setCellValue('D5', '昼查'.$realwork[0].'次，夜查'.$realwork[1].'次，添乘'.$realwork[2].'遍，检查四五等站'.$realwork[3].'次，发放《安全检查通知书》'.$realwork[4].'份，发现问题'.$realwork[5].'个，查处“两违”'.$realwork[6].'件，抽查重点安全风险'.$realwork[7].'个。');

		$objActSheet->mergeCells('A6:A' . (count($data['list']) + 6));
		$objActSheet->setCellValue('A6', '检查写实情况');

		$objActSheet->setCellValue('B6', '日期');
		$objActSheet->setCellValue('C6', '时间');
		$objActSheet->setCellValue('D6', '检查人');
		$objActSheet->setCellValue('E6', '检查方式');
		$objActSheet->setCellValue('F6', '单位');
		$objActSheet->setCellValue('G6', '值班干部');
		$objActSheet->setCellValue('H6', '发现问题');
		$objActSheet->setCellValue('I6', '整改情况');
		$objActSheet->setCellValue('J6', '是否下发检查通知书');
		$objActSheet->setCellValue('K6', '两违类别/件数');

		foreach($data['list'] as $key => $row){ //行写入
			$objActSheet->setCellValue('B'.(string)($key+7), $row['dateofentry']);
			$objActSheet->setCellValue('C'.(string)($key+7), $row['timeofentry']);
			$objActSheet->setCellValue('D'.(string)($key+7), $row['checkperson']);
			$objActSheet->setCellValue('E'.(string)($key+7), $row['checkmodel']);
			$objActSheet->setCellValue('F'.(string)($key+7), $row['company']);
			$objActSheet->setCellValue('G'.(string)($key+7), $row['cadresonduty']);
			$objActSheet->setCellValue('H'.(string)($key+7), $row['foundproblem']);
			$objActSheet->setCellValue('I'.(string)($key+7), $row['improvement']);
			$objActSheet->setCellValue('J'.(string)($key+7), $row['noticeflag']);
			$objActSheet->setCellValue('K'.(string)($key+7), $row['categorynumber']);
	    }

	    $another_start = count($data['list']) + 7;
		$objActSheet->mergeCells('A'.$another_start.':A'.($another_start+2));
		$objActSheet->setCellValue('A'.$another_start, '考核情况（由考核主体填写）');

		$objActSheet->mergeCells('B'.$another_start.':C'.$another_start);
		$objActSheet->setCellValue('B'.$another_start, '考核扣分（根据标准每差1次/件/份扣2分）');

		$objActSheet->mergeCells('D'.$another_start.':E'.$another_start);
		$objActSheet->setCellValue('D'.$another_start, $koufen);

		$objActSheet->mergeCells('F'.$another_start.':G'.$another_start);
		$objActSheet->setCellValue('F'.$another_start, '扣分原因');

		$objActSheet->mergeCells('H'.$another_start.':K'.$another_start);
		$objActSheet->setCellValue('H'.$another_start, $koufenyuanyin);

		$objActSheet->mergeCells('B'.($another_start+1).':C'.($another_start+1));
		$objActSheet->setCellValue('B'.($another_start+1), '考核主体评语');

		$objActSheet->mergeCells('D'.($another_start+1).':K'.($another_start+1));
		$objActSheet->setCellValue('D'.($another_start+1), $kaohezhutipingyu);

		$objActSheet->mergeCells('B'.($another_start+2).':K'.($another_start+2));
		$objActSheet->setCellValue('B'.($another_start+2), '考核主体签名:'.Yii::app()->session['user']['name'].'             时间：' . date('Y年m月d日'));

	    //$fileName1 = iconv("utf-8", "gb2312", $fileName);
		$fileName1 = round(microtime(true)) . '.xlsx';
        $objWriter->save('attachment/' . $fileName1); //脚本方式运行，保存在当前目录

        //发送邮件
        Yii::import('application.components');
        require_once("EMailer.php");
        $mailer=new EMailer();
        $mailer->IsSMTP();
        $mailer->Host = MAIL_SMTP;
        $mailer->SMTPAuth = true;
        $mailer->Port = 25;
        $mailer->CharSet  = "UTF-8";
        $mailer->Encoding = "base64";
        $mailer->Username = MAIL_NAME;
        $mailer->Password = MAIL_PWD;
        $mailer->From = MAIL_FROM;
        //$mailer->FromName = $_SESSION['name'];
        //$mailer->AddAddress($mailto, $_POST['cadresonduty']);
        $mailer->AddAddress(KAOHE_MAIL_TO, 'Report');
        $mailer->Subject = '管理人员量化检查写实考核表';
        $mailer->Body = '请查收考核报告';
        $mailer->AddAttachment(dirname(__FILE__) . '/../../attachment/' . $fileName1, $fileName);
        $mailer->Send();

        echo '[]';
	}
}

?>