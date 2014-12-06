<?php
/**
 * excel导出数据帮助类，以组件形式存在于componnets文件中
 */
class Excelhlep {
	private $excelName; //导出Excel的表名
	private $excelHeaders; //导出Excel的表头
	private $excelColumns;//导出Excel的列名
	private $exportContent; //导出EXCEL的model
	public function __construct($excelName,$excelHeaders,$excelColumns, $exportContent){

		$this->excelName = $excelName;
		$this->excelHeaders = $excelHeaders;
		$this->excelColumns = $excelColumns;
		$this->exportContent = $exportContent;

	}
	public  function exportExcel(){

        $objectPHPExcel = new PHPExcel();
        $objectPHPExcel->setActiveSheetIndex(0);
        //$objectPHPExcel->getActiveSheet()->getStyle('H5')->getFill()->getStartColor()->setARGB('00ff99cc'); 
        $AZ = array("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z");
        $exceldata =$this->exportContent;
        $excelheaders = $this->excelHeaders;
        $excelcolumns = explode(",",$this->excelColumns);

        foreach ($excelheaders as $key => $value) {

            $objectPHPExcel->getActiveSheet()->setCellValue($AZ[$key].(string)1, $value);
            //$objPHPExcel->getActiveSheet()->getStyleByColumnAndRow($AZ[$key], 1)->getFont()->setBold(true);
        }
        $tag = 0;
        for ($k = 0; $k < count($exceldata); $k++){
            if (isset($exceldata[$k]['currentstatus'])) {
                        if($exceldata[$k]['currentstatus'] === "已整改" ){
                            $tag = 1;
                        }else if ($exceldata[$k]['currentstatus'] === "整改中" ){
                            $tag = 2;
                        }else if ($exceldata[$k]['currentstatus'] === "未整改"){
                            $tag = 3;
                        } 
            }
	foreach ($excelcolumns as $excelkey => $excelvalue) {
		$objectPHPExcel->getActiveSheet()->setCellValue($AZ[$excelkey].($k+2), $exceldata[$k][$excelvalue]);
		if($tag === 1){
			$objFillA5 = $objectPHPExcel->getActiveSheet()->getStyle($AZ[$excelkey].($k+2))->getFill();
			$objFillA5->setFillType(PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('#00FF00'); 
		}else if($tag === 2){
			$objFillA5 = $objectPHPExcel->getActiveSheet()->getStyle($AZ[$excelkey].($k+2))->getFill();
			$objFillA5->setFillType(PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('#FFFF00'); 
		}else if($tag === 3){
			$objFillA5 = $objectPHPExcel->getActiveSheet()->getStyle($AZ[$excelkey].($k+2))->getFill();
			$objFillA5->setFillType(PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('#FF0000'); 
		}	
	}
        }
        ob_end_clean();
        ob_start();
        header('Content-Type : application/vnd.ms-excel');
        header("Content-Type: application/force-download");
        header('Content-Disposition:attachment;filename="'.$this->excelName.date("Y年m月d日 Hms",time()+8*3600).'.xls"');
        $objWriter = PHPExcel_IOFactory::createWriter($objectPHPExcel, 'Excel5');
        $objWriter->save('php://output');
	}
}