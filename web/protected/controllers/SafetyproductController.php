<?php
/* 安全生产controller */
// +----------------------------------------------------------------------+
// | 主要功能增删改查导出Excel                                                         |
// +----------------------------------------------------------------------+
// | createby zhijia 2014-10-05                                                      |
// +----------------------------------------------------------------------+
// | 对原有的yii生成的controller进行了多处改进已更好的提供用体      |
// | 该表有一个序列号的字段为系统自动上生成 由mysql触发器自动触发|
// +----------------------------------------------------------------------+
class SafetyproductController extends Controller
{
    /**
     *展示安全生产详情页
     * @param integer $id 供loadModel使用
     */
    public function actionView($id)
    {
        $smarty = Yii::app()->smarty;
        $smarty->_smarty->assign('model', $this->loadModel($id)); //根据ID获取的MODEL
        $smarty->_smarty->display('cadrerealistic/page/safetyproductdetail.tpl');
    }
    /**
     * 录入一个安全生产的问题
     * 数据录入成功 返回json给前端
     */
    public function actionCreate()
    {
        $model = new Safetyproduct;
        $res = array('success' => false, 'message' => '请传入要录入的安全生产数据！');
        if (isset($_POST['Safetyproduct'])) {
            $model->attributes = $_POST['Safetyproduct'];
            $model->attributes = array('level2'=>$_SESSION['user']['level2']);
            $model->attributes = array('level3'=>$_SESSION['user']['level3']);
            $model->attributes = array('commit'=>$_SESSION['user']['name']);
            if ($model->save()) {
                $res['success'] = true;
                $res['message'] = '安全生产数据录入成功！';
            } else {
                $res['message'] = '安全生产数据录入失败，请重试！';
            }
        }
        header('Content-type:json/application;charset=utf-8');
        echo json_encode($res);
    }
   /*编辑安全生产管理页面*/
    public function actionEditecurityprodu() {
            $smarty = Yii::app()->smarty;
            $smarty->_smarty->assign('id', $_REQUEST['id']);
            $smarty->_smarty->assign('model', $this->loadModel($_REQUEST['id'])); //分页HTML
            $smarty->_smarty->display('cadrerealistic/page/editecurityprodu.tpl');
    }
    /**
     *修改安全生产管理数据.
     * @param integer $id the ID 整型的ID需要传递
     */
    public function actionUpdate($id)
    {
            $model = $this->loadModel($id);
            $res = array(
                'success' => false,
                'message' => '请传入要修改的安全生产管理数据！'
            );
            if (isset($_POST['Safetyproduct'])) {
                $model->attributes = $_POST['Safetyproduct'];
                if ($model->save()) {
                    $res['success'] = true;
                    $res['message'] = "安全生产数据修改成功！";
                } else {
                    $res['message'] = "安全生产数据修改失败！";
                }
            }
            header("Content-type:json/application;charset=utf-8");
            echo json_encode($res);
    }
    /**
     * 删除一个安全生产管理
     * @param 传一个整数的ID给loadmodel
     */
    public function actionDelete()
    {
           $res = array(
                'success' => false,
                'message' => '请传入要删除的安全生产管理编号！'
            );
        if ($_REQUEST['datas']) {
            header("Content-type:json/application;charset=utf-8");
            $count = Safetyproduct::model()->deleteAll('id in(' . $_POST['datas'] . ')'); //删除id in ids的数据
            if ($count > 0) {
                $res['success'] = true;
                $res['message'] = '安全生产数据删除成功';
                echo json_encode($res);
            } else {
                $res['success'] = true;
                $res['message'] = '删除安全生产数据失败！';
                echo json_encode($res);
            }
        } else {
            echo json_encode($res);
        }
    }
    /**
     * 安全生产管理首页
     * 用于ajax页面刷新过来的时候 把参数带回
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
        $user = $_SESSION['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }
        $smarty->_smarty->assign('urlparam', $urlparam);
        $smarty->_smarty->display('cadrerealistic/page/ecurityprodu.tpl');
    }
    /**
     * 安全生产管理 集成分页 by zhijia
     */
    public function actionListsafetyproduct() {
        header("charset=utf-8");
        if ($_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            //ajax传递的数据 我们给予返回 否则返回真正的数据页面带回参数再去加载
            $safetyproduction = Safetyproduct::model();
            $level2=!empty($_SESSION['user']['level2'])?$_SESSION['user']['level2']:'';
            $level3=!empty($_SESSION['user']['level3'])?$_SESSION['user']['level3']:'';
            $sql = "select * from {{safetyproduct}} where  1=1 ";

            if($level2) {
                $sql.=" and `level2`='{$level2}'";
            }
            if($level3) {
                $sql.=" and `level3`='{$level3}'";
            }
            if (isset($_REQUEST['sstoragetime'])) {
                $sql.= " and storagetime>='" . $_REQUEST['sstoragetime'] . "'";
            }
            if (isset($_REQUEST['estoragetime'])) {
                $sql.= " and storagetime<='" . $_REQUEST['estoragetime'] . "'";
            }
            if (isset($_REQUEST['sdeadline'])) {
                $sql.= " and deadline>='" . $_REQUEST['sdeadline'] . "'";
            }
            if (isset($_REQUEST['edeadline'])) {
                $sql.= " and deadline<='" . $_REQUEST['edeadline'] . "'";
            }
            if (isset($_REQUEST['sregistertime'])) {
                $sql.= " and registertime>='" . $_REQUEST['sregistertime'] . "'";
            }
            if (isset($_REQUEST['eregistertime'])) {
                $sql.= " and registertime<='" . $_REQUEST['eregistertime'] . "'";
            }
            if (isset($_REQUEST['infosources'])) {
                $sql.= " and  infosources='" . $_REQUEST['infosources'] . "'";
            }
            if (isset($_REQUEST['company'])) {
                //$sql.= " and  company='" . $_REQUEST['company'] . "'";
                 $str = $this->getSqlStr($_REQUEST['company'], 'company');
                    $sql.= " and ".$str;
            }
            if (isset($_REQUEST['dutydepartment'])) {
                //$sql.= " and  dutydepartment in ('" . $_REQUEST['dutydepartment'] . "')";
                $str = $this->getSqlStr($_REQUEST['dutydepartment'], 'dutydepartment');
                $sql.= " and ".$str;
            }
            if (isset($_REQUEST['dutyperson'])) {
                $sql.= " and  dutyperson='" . $_REQUEST['dutyperson'] . "'";
            }
            if (isset($_REQUEST['checkperson'])) {
                $sql.= " and  checkperson='" . $_REQUEST['checkperson'] . "'";
            }
            if (isset($_REQUEST['currentstatus'])) {
                $sql.= " and  currentstatus='" . $_REQUEST['currentstatus'] . "'";
            }
            // $sql.= "   order by id desc  {$page->limit}";
            // $data = $safetyproduction->findAllBySql($sql);
            $pagesize = 20;
            $pageparam = !empty($_GET["page"]) ? $_GET["page"] : 1;
            $sql.= "  order by id desc";
            //每一页显示的记录条数
            $count = count($safetyproduction ->findAllBySql($sql));
            $sql.= "  limit ".($pageparam-1)*$pagesize.", $pagesize";
            $data = $safetyproduction ->findAllBySql($sql);
            //获取总页数
            $page = new Page($count, $pagesize);
            $show_page = $page->fpage();
            $smarty = Yii::app()->smarty;
            $smarty->_smarty->assign('show_page', $show_page); //分页HTML
            $smarty->_smarty->assign('data', $data); //数据展现
            $smarty->_smarty->display('cadrerealistic/page/listsafetyproduct.tpl');
        } else {
            $urlparam = "";
            foreach ($_REQUEST as $key => $value) {
                if ($key == "r") {
                    continue;
                };
                $urlparam.= "&" . $key . "=" . $value;
            }
            $this->redirect('index.php?r=safetyproduct/index' . $urlparam);
        }
    }
    private function getSqlStr($value, $name) {
        $arr = explode(",",$value);
        $str = array();
       
        foreach($arr as $n) {
            $str[] = "find_in_set('".$n."',$name)";
        }
        $str = implode(' or ', $str);
        return "(".$str.")";
    }
        /*根据用户的选择导出excel*/
    public function actionExportuserexcel() {
        //$criteria->addInCondition('id', array(1,2,3,4,5)); //代表where id IN (1,23,4,5,);
        $criteria = new CDbCriteria;
        $criteria->order = 'id DESC' ;//排序条件    
        $criteria->addCondition("id in (" . $_REQUEST['ids'] . ")");
        $columns = 'serialnumber,infosources,company,theproblem,storagetime,thesolution,dutydepartment,dutyperson,deadline,rectification,checkperson,registertime,comments,currentstatus';
        $criteria->select = $columns; //制定列与header的顺序
        $headers = array(
                '编号',
                '信息来源',
                '单位',
                '问题点',
                '入库时间',
                '解决方案',
                '责任部门',
                '责任人',
                '完成期限',
                '整改情况',
                '检查人',
                '销号时间',
                '备注',
                '问题目前状况'
        );
        $model = Safetyproduct::model()->findAll($criteria);
        $excel = new Excelhlep('安全生产管理表EXCEL数据-', $headers, $columns, $model);
        $excel->exportExcel();
    }
    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer $id the ID of the model to be loaded
     * @return Safetyproduct the loaded model
     * @throws CHttpException
     */
    public function loadModel($id)
    {
        $model = Safetyproduct::model()->findByPk($id);
        if ($model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $model;
    }
}