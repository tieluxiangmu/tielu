<?php
/* 两违管理controller */
// +----------------------------------------------------------------------+
// | 主要功能增删改查导出Excel                                                         |
// +----------------------------------------------------------------------+
// | createby zhijia 2014-10-03                                                        |
// +----------------------------------------------------------------------+
// | 对原有的yii生成的controller进行了多处改进已更好的提供用体      |
// | 该表有一个序列号的字段为系统自动上生成 由mysql触发器自动触发|
// +----------------------------------------------------------------------+
class TwocontrarymanageController extends Controller
{
	    public function actionTest($id)
	    {
	        $model=$this->loadModel($id);

	        if(isset($_POST['Twocontrarymanage']))
	        {
	            $model->attributes=$_POST['Twocontrarymanage'];
	            if($model->save())
	                $this->redirect(array('view','id'=>$model->id));
	        }

	        $this->render('update',array(
	            'model'=>$model,
	        ));
	    }
	/**
	 * 展示两违数据的详情
	 * @param integer $id 传递一个整型的ID
	 */
	public function actionView($id)
	{
	        $smarty = Yii::app()->smarty;
	        $smarty->_smarty->assign('model', $this->loadModel($id)); //根据ID获取的MODEL
	        $smarty->_smarty->display('cadrerealistic/page/twocontrarydetail.tpl');
	}

	/**
	 *增加一个两违章类别
	 * 此步骤为第三部 承载着第一部的全部.
	 */
	public function actionCreate()
	{
	        $model = new Twocontrarymanage();
	        $res = array(
	            'success' => false,
	            'message' => '请传入要录入的两违管理数据！'
	        );
	        if (isset($_POST['Twocontrarymanage'])) {
	            $model->attributes = $_POST['Twocontrarymanage'];
	            if ($model->save()) {
	                $res['success'] = true;
	                $res['message'] = "两违管理数据录入成功！";
	            } else {
	                $res['message'] = "两违管理数据录入失败，请重试！";
	            }
	        }
	        header("Content-type:json/application;charset=utf-8");
	        echo json_encode($res);
	}
	   /*编辑两违问题管理页面*/
	    public function actionEditecurityprodu() {
	            $smarty = Yii::app()->smarty;
	            $smarty->_smarty->assign('id', $_REQUEST['id']);
	            $smarty->_smarty->assign('model', $this->loadModel($_REQUEST['id'])); //分页HTML
	            $smarty->_smarty->display('cadrerealistic/page/editwocontrary.tpl');
	    }
	/**
	 * 更新两违问题
	 * @param integer $id 传递整型的ID找到数据并修改
	 */
	public function actionUpdate($id)
	{
	            $model = $this->loadModel($id);
	            $res = array(
	                'success' => false,
	                'message' => '请传入要修改的两违问题管理数据！'
	            );
	            if (isset($_POST['Twocontrarymanage'])) {
	                $model->attributes = $_POST['Twocontrarymanage'];
	                if ($model->save()) {
	                    $res['success'] = true;
	                    $res['message'] = "两违问题数据修改成功！";
	                } else {
	                    $res['message'] = "两违问题数据修改失败！";
	                }
	            }
	            header("Content-type:json/application;charset=utf-8");
	            echo json_encode($res);
	}

	/**
	 * 利用model删除两违问题 可传入多个ID.
	 * @param integer $id or string ids
	 */
	public function actionDelete()
	{
	           $res = array(
	                'success' => false,
	                'message' => '请传入要删除的两违问题编号！'
	            );
	        header("Content-type:json/application;charset=utf-8");
	        if ($_REQUEST['datas']) {
	            $count = Twocontrarymanage::model()->deleteAll('id in(' . $_POST['datas'] . ')'); //删除id in ids的数据
	            if ($count > 0) {
	                $res['success'] = true;
	                $res['message'] = '两违问题数据删除成功';
	                echo json_encode($res);
	            } else {
	                $res['success'] = true;
	                $res['message'] = '两违问题删除数据失败！';
	                echo json_encode($res);
	            }
	        } else {
	            echo json_encode($res);
	        }
	}

	/**
	 *两违关系首页管理视图
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
	        $smarty->_smarty->display('cadrerealistic/page/twocontrary.tpl');
	}
	    /**
	     * 两违问题管理 集成分页 by zhijia
	     */
	    public function actionListtwocontrary() {
	        header("charset=utf-8");
	        if ($_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
	            //ajax传递的数据 我们给予返回 否则返回真正的数据页面带回参数再去加载
	            $twocontion = Twocontrarymanage::model();
	            $sql = "select * from {{twocontrarymanage}} where  1=1 ";
	             if (isset($_REQUEST['schecktime'])) {
	                $sql.= " and checktime>='" . $_REQUEST['schecktime'] . "'";
	            }
	            if (isset($_REQUEST['echecktime'])) {
	                $sql.= " and checktime<='" . $_REQUEST['echecktime'] . "'";
	            }
	            if (isset($_REQUEST['inspectionunit'])) {
	                $sql.= " and  inspectionunit='" . $_REQUEST['inspectionunit'] . "'";
	            }
	            if (isset($_REQUEST['rummager'])) {
	                $sql.= " and  rummager='" . $_REQUEST['rummager'] . "'";
	            }
	            if (isset($_REQUEST['company'])) {
	                $sql.= " and  company='" . $_REQUEST['company'] . "'";
	            }
	            if (isset($_REQUEST['responsibleperson'])) {
	                $sql.= " and  responsibleperson='" . $_REQUEST['responsibleperson'] . "'";
	            }
	            if (isset($_REQUEST['llegalcategory'])) {
	                $sql.= " and  llegalcategory='" . $_REQUEST['llegalcategory'] . "'";
	            }
	            if (isset($_REQUEST['productionleader'])) {
	                $sql.= " and  productionleader='" . $_REQUEST['productionleader'] . "'";
	            }
	            $pagesize = 20;
	            $pageparam = !empty($_GET["page"]) ? $_GET["page"] : 1;
	            $sql.= "  order by id desc";
	            //每一页显示的记录条数
	            $count = count( $twocontion->findAllBySql($sql));
	            $sql.= "  limit ".($pageparam-1)*$pagesize.", $pagesize";
	            $data =  $twocontion->findAllBySql($sql);
	            //获取总页数
	            $page = new Page($count, $pagesize);
	            $show_page = $page->fpage();
	            $smarty = Yii::app()->smarty;
	            $smarty->_smarty->assign('show_page', $show_page); //分页HTML
	            $smarty->_smarty->assign('data', $data); //数据展现
	            $smarty->_smarty->display('cadrerealistic/page/listtwocontrary.tpl');
	        } else {
	            $urlparam = "";
	            foreach ($_REQUEST as $key => $value) {
	                if ($key == "r") {
	                    continue;
	                };
	                $urlparam.= "&" . $key . "=" . $value;
	            }
	            $this->redirect('index.php?r=twocontrarymanage/index' . $urlparam);
	        }
	    }
	        /*根据用户的选择导出excel*/
	    public function actionExportuserexcel() {
	        //$criteria->addInCondition('id', array(1,2,3,4,5)); //代表where id IN (1,23,4,5,);
	        $criteria = new CDbCriteria;
	        $criteria->order = 'id DESC' ;//排序条件    
	        $criteria->addCondition("id in (" . $_REQUEST['ids'] . ")");
	        $columns = 'serialnumber,checktime,inspectionunit,rummager,company,responsibleperson,jobname,politicalaffiliation,Illegalcontent,processingresults,llegalcategory,deduction,productionleader,buckleintegral,teamleaderIntegral';
	        $criteria->select = $columns; //制定列与header的顺序
	        $headers = array(
		'序号',
		'检查时间',
		'检查单位',
		'检查人',
		'被查单位',
		'责任人',
		'职名',
		'政治面貌',
		'违章内容',
		'处理结果',
		'违章类别',
		'责任人扣分',
		'所在生产小组长（值班员）',
		'扣积分情况',
		'（班组长）扣积分情况'
	        );
	        $model = Twocontrarymanage::model()->findAll($criteria);
	        $excel = new Excelhlep('两违管理表EXCEL数据-', $headers, $columns, $model);
	        $excel->exportExcel();
	    }

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Twocontrarymanage the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Twocontrarymanage::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}
}
