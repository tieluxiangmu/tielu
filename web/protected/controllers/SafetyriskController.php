<?php
/* 安全问题管理controller */
// +----------------------------------------------------------------------+
// | 主要功能增删改查导出Excel                                                         |
// +----------------------------------------------------------------------+
// | createby zhijia 2014-10-05                                                      |
// +----------------------------------------------------------------------+
// | 该表为整个系统最后一道重要的流程，前面录入干部写实到此结束   |
// | 该表有一个序列号的字段为系统自动上生成 由mysql触发器自动触发|
// +----------------------------------------------------------------------+
class SafetyriskController extends Controller
{
	/**
	 * 展示安全风险详情数据
	 * @param integer $id the ID 
	 */
	public function actionView($id)
	{
	        $smarty = Yii::app()->smarty;
	        $smarty->_smarty->assign('model', $this->loadModel($id)); //根据ID获取的MODEL
	        $smarty->_smarty->display('cadrerealistic/page/safetyriskdetail.tpl');
	}
	/**
	 * 录入一个新的安全生产管理数据 
	 * 如果录入成功 返回json数据
	 */
	public function actionCreate()
	{
	        $model=new Safetyrisk;
	        $res = array('success' => false, 'message' => '请传入要录入的安全风险管理数据！');
	        if (isset($_POST['Safetyrisk'])) {
	            $model->attributes = $_POST['Safetyrisk'];
	            if ($model->save()) {
	                $res['success'] = true;
	                $res['message'] = '安全风险管理数据录入成功！';
	            } else {
	                $res['message'] = '安全风险管理数据录入失败，请重试！';
	            }
	        }
	        header('Content-type:json/application;charset=utf-8');
	        echo json_encode($res);
	}
	   /*编辑安全生产管理页面*/
	    public function actionEditsafetyrisk() {
	            $smarty = Yii::app()->smarty;
	            $smarty->_smarty->assign('id', $_REQUEST['id']);
	            $smarty->_smarty->assign('model', $this->loadModel($_REQUEST['id'])); //分页HTML
	            $smarty->_smarty->display('cadrerealistic/page/editsafetyrisk.tpl');
	    }
	/**
	 *更新安全生产管理数据
	 * @param integer $id 利用整型的ID进行更新
	 */
	public function actionUpdate($id)
	{
		$model = $this->loadModel($id);
	            $res = array(
	                'success' => false,
	                'message' => '请传入要修改的安全风险数据！'
	            );
	            if (isset($_POST['Safetyrisk'])) {
	                $model->attributes = $_POST['Safetyrisk'];
	                if ($model->save()) {
	                    $res['success'] = true;
	                    $res['message'] = "安全风险数据修改成功！";
	                } else {
	                    $res['message'] = "安全风险数据修改失败！";
	                }
	            }
	            header("Content-type:json/application;charset=utf-8");
	            echo json_encode($res);
	}
	/**
	 * 删除安全风险数据
	 * @param integer $id or string ids
	 */
	public function actionDelete()
	{
		 $res = array(
	                'success' => false,
	                'message' => '请传入要删除的安全风险编号！'
	            );
	        if ($_REQUEST['datas']) {
	            header("Content-type:json/application;charset=utf-8");
	            $count = Safetyrisk::model()->deleteAll('id in(' . $_POST['datas'] . ')'); //删除id in ids的数据
	            if ($count > 0) {
	                $res['success'] = true;
	                $res['message'] = '安全风险数据删除成功';
	                echo json_encode($res);
	            } else {
	                $res['success'] = true;
	                $res['message'] = '删除安全风险数据失败！';
	                echo json_encode($res);
	            }
	        } else {
	            echo json_encode($res);
	        }
	}

	/**
	 * 安全风险管理首页Controller
	 */
	public function actionIndex()
	{
	        $smarty = Yii::app()->smarty;
	        $urlparam = "";
	        foreach ($_REQUEST as $key => $value) {
	            if ($key == "r") {
	                continue;
	            };
	            $urlparam.= "&" . $key . "=" . $value;
	        }
	        $smarty->_smarty->assign('urlparam', $urlparam);
	        $smarty->_smarty->display('cadrerealistic/page/saferisk.tpl');
	}
	    /**
	     * 安全风险管理 集成分页 by zhijia
	     */
	 public function actionListysafetyrisk() {
	        header("charset=utf-8");
	        if ($_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
	            //ajax传递的数据 我们给予返回 否则返回真正的数据页面带回参数再去加载
	            $safetyrisk = Safetyrisk::model();
	            $sql = "select * from tl_safetyrisk where  1=1 ";
                $level2=!empty(Yii::app()->session['user']['level2'])?Yii::app()->session['user']['level2']:'';
                $level3=!empty(Yii::app()->session['user']['level3'])?Yii::app()->session['user']['level3']:'';
                if(!empty($level2) && !empty($level3)){
                    $sql.=" and `level2`='{$level2}' and `level3`='{$level3}'";
                }
	            if (isset($_REQUEST['simplementdate'])) {
	                $sql.= " and implementdate>='" . $_REQUEST['simplementdate'] . "'";
	            }
	            if (isset($_REQUEST['eimplementdate'])) {
	                $sql.= " and implementdate<='" . $_REQUEST['eimplementdate'] . "'";
	            }
	            if (isset($_REQUEST['scompletiondate'])) {
	                $sql.= " and completiondate>='" . $_REQUEST['scompletiondate'] . "'";
	            }
	            if (isset($_REQUEST['ecompletiondate'])) {
	                $sql.= " and completiondate<='" . $_REQUEST['ecompletiondate'] . "'";
	            }
	            if (isset($_REQUEST['riskclass'])) {
	                $sql.= " and  riskclass='" . $_REQUEST['riskclass'] . "'";
	            }
	            if (isset($_REQUEST['risksystem'])) {
	                $sql.= " and  risksystem='" . $_REQUEST['risksystem'] . "'";
	            }
	            if (isset($_REQUEST['responsibilitylead'])) {
	                $sql.= " and  responsibilitylead in ('" . $_REQUEST['responsibilitylead'] . "')";
	            }
	            if (isset($_REQUEST['dutyperson'])) {
	                $sql.= " and  dutyperson='" . $_REQUEST['dutyperson'] . "'";
	            }
	            if (isset($_REQUEST['dutypartments'])) {
	                $sql.= " and  dutypartments='" . $_REQUEST['dutypartments'] . "'";
	            }
	        	 if (isset($_REQUEST['coordinationpart'])) {
	                $sql.= " and  coordinationpart='" . $_REQUEST['coordinationpart'] . "'";
	            }
	            $pagesize = 20;
	            $pageparam = !empty($_GET["page"]) ? $_GET["page"] : 1;
	            $sql.= "  order by id desc";
	            //每一页显示的记录条数
	            $count = count($safetyrisk->findAllBySql($sql));
	            $sql.= "  limit ".($pageparam-1)*$pagesize.", $pagesize";
	            $data =  $safetyrisk->findAllBySql($sql);
	            $result = array();
	            foreach ($data as $d) {
	            	$result[] = $d->attributes;
	            }
	            //获取总页数
	            $page = new Page($count, $pagesize);
	            $show_page = $page->fpage();
	            $smarty = Yii::app()->smarty;
	            $smarty->_smarty->assign('show_page', $show_page); //分页HTML
	            $smarty->_smarty->assign('data', $result); //数据展现
	            $smarty->_smarty->display('cadrerealistic/page/listsafetyrisk.tpl');
	        } else {
	            $urlparam = "";
	            foreach ($_REQUEST as $key => $value) {
	                if ($key == "r") {
	                    continue;
	                };
	                $urlparam.= "&" . $key . "=" . $value;
	            }
	            //$this->redirect('index.php?r=safetyrisk/index' . $urlparam);
	        }
	    }
	    /*根据用户的选择导出excel*/
	    public function actionExportuserexcel() {
	        //$criteria->addInCondition('id', array(1,2,3,4,5)); //代表where id IN (1,23,4,5,);
	        $criteria = new CDbCriteria;
	        $criteria->order = 'id DESC' ;//排序条件    
	        $criteria->addCondition("id in (" . $_REQUEST['ids'] . ")");
	        $columns = 'serialnumber,riskname,riskclass,risksystem,reasonofrisk,consequence,measures,distribution,furtherproof,emergencyhand,responsibilitylead,dutypartments,coordinationpart,implementdate,completiondate,notethebus,notehighspeedrail';
	        $criteria->select = $columns; //制定列与header的顺序
	        $headers = array(
			'编号',
			'风险名称',
			'风险分类',
			'系统',
			'风险原因（致因）',
			'可能后果',
			'既有措施及有效性（问题）',
			'分布情况',
			'进一步防控措施',
			'应急（预警）处置措施',
			'负责领导',
			'责任部门',
			'配合部门',
			'实施日期',
			'完成日期',
			'备注客车',
			'备注高铁'
	        );
	        $model = Safetyrisk::model()->findAll($criteria);
	        $excel = new Excelhlep('安全风险管理表EXCEL数据-', $headers, $columns, $model);
	        $excel->exportExcel();
	    }
	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Safetyrisk the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Safetyrisk::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
}
