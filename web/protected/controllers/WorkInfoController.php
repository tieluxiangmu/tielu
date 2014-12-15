<?php
class WorkInfoController extends CController
{
    public function actionWorkInfo()
    {
        $this->render('workInfo');
    }
    public function actionListtwocontrary()
    {
        $smarty = Yii::app()->smarty;
        $urlparam = '';
        foreach ($_REQUEST as $key => $value) {
            if ($key == 'r') {
                continue;
            }
            $urlparam .= '&' . $key . '=' . $value;
        }
        $user = $_SESSION['user'];
        if (!$user) {
            $this->redirect('index.php?r=site/login');
        }
        $smarty->_smarty->assign('urlparam', $urlparam);
        $smarty->_smarty->display('workinfo/page/index.tpl');
    }
    public function actionselectResult()
    {
        $userInfo = Userinfo::model();
        $sql = 'select department,name,position,goal from tl_userinfo where name!=\'admin\';';
        $data = $userInfo->findAllBySql($sql);
        $res = array();
        // $start_time = strtotime($_GET['start_time']);
        // $end_time = strtotime($_GET['end_time']);
        $year = $_GET['year'];
        $month = $_GET['month'];
        $nowMonthData = $year . '-' . $month . '-01';
        $nextMonthDate = strtotime('next month', strtotime($nowMonthData));
        $nextMonthDate = date('Y-m-d', $nextMonthDate);
        $start_time = $nowMonthData;
        $end_time = $nextMonthDate;
        for ($i = 0; $i < count($data); $i++) {
            $name = $data[$i]['name'];
            $info = array('id' => $i + 1, 'name' => $name, 'department' => $data[$i]['department'], 'position' => $data[$i]['position'], 'goal' => $data[$i]['goal']);
            $res[] = $info;
        }
        $twoContray = Twocontrarymanage::model();
        for ($i = 0; $i < count($res); $i++) {
            $sql = '';
            $sql = 'select id from {{twocontrarymanage}} where rummager =\'' . $res[$i]['name'] . '\' and checktime >=' . $start_time . '  and checktime <' . $end_time;
            $data = $twoContray->findAllBySql($sql);
            $diff = $res[$i]['goal'] - count($data);
            if ($diff > 0) {
                $res[$i]['goal'] = '查处两违问题数量差('.$diff.'件)，扣'.(string)(2*intval($diff));
                $res[$i]['diff'] = '';
                $res[$i]['chejian'] = 100 - $diff;
                $res[$i]['final'] = $res[$i]['chejian'];
                $res[$i]['punish'] = 0 - $diff * 20;
            } else {
                $res[$i]['goal'] = '';
                $res[$i]['diff'] = '';
                $res[$i]['chejian'] = 100;
                $res[$i]['final'] = 100;
                $res[$i]['punish'] = 0;
            }
        }
        // echo "xuxu";
        // var_dump($res);
        $objPHPExcel = new PHPExcel();
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        $objPHPExcel->setActiveSheetIndex(0);
        $fileName = '工作情况汇总样例';
        //$date = date("Y_m_d",time());
        $date = microtime(true);
        $fileName .= "_{$date}.xls";
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->mergeCells('A2:I2');
        $objActSheet->setCellValue('A2', '重庆车务段' . $year . '年' . $month . '月管理人员考核情况汇总表');
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
        foreach ($res as $r) {
            $objActSheet->setCellValue('I3', '考核奖惩情况');
        }
        foreach ($res as $key => $r) {
            //行写入
            $span = ord('A');
            foreach ($r as $value) {
                // 列写入
                $j = chr($span);
                $objActSheet->setCellValue($j . ($key + 5), $value);
                $span++;
            }
        }
        $fileName = iconv('utf-8', 'gb2312', $fileName);
        //重命名表
        $objPHPExcel->getActiveSheet()->setTitle('Simple');
        //设置活动单指数到第一个表,所以Excel打开这是第一个表
        //将输出重定向到一个客户端web浏览器(Excel2007)
        // if(!empty($_GET['start_time'])){
        //    ob_end_clean();
        // ob_start();
        header('Content-Type : application/vnd.ms-excel');
        header('Content-Type: application/force-download');
        header('Content-Disposition:attachment;filename="' . $fileName);
        //header('Content-Disposition:attachment;filename=test.xls');
        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save('php://output');
    }
}