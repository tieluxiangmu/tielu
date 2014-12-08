<?php
/* 干部写实controller */
// +----------------------------------------------------------------------+
// | 主要功能增删改查导出Excel                                                       |
// +----------------------------------------------------------------------+
// | createby zhijia 2014-10-03                                                       |
// +----------------------------------------------------------------------+
// | 对原有的yii生成的controller进行了多处改进已更好的提供用体      |
// | 部分数据并未进行严格的处理 因为是内部系统 足够相信前端的数据|
// +----------------------------------------------------------------------+
class RealinvestigationController extends Controller {
    /**
     *展示具体详情
     * @param integer $id the ID
     */
    public function actionView($id) {
        $smarty = Yii::app()->smarty;
        $smarty->_smarty->assign('model', $this->loadModel($id)); //根据ID获取的MODEL
        $smarty->_smarty->display('cadrerealistic/page/cadrerealisticdetail.tpl');
    }
    /*编辑干部写实问页面*/
    public function actionEditcadrerealistic() {
        $smarty = Yii::app()->smarty;
        $smarty->_smarty->assign('id', $_REQUEST['id']);
        $smarty->_smarty->assign('model', $this->loadModel($_REQUEST['id'])); //分页HTML
        $smarty->_smarty->display('cadrerealistic/page/editcadrerealistic.tpl');
    }
    /*集成显示 修改 详情的主宰页面*/
    public function actionIndex() { 
        $user = $_SESSION['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }
        $smarty = Yii::app()->smarty;
        $urlparam = "";
        foreach ($_REQUEST as $key => $value) {
            if ($key == "r") {
                continue;
            };
            $urlparam.= "&" . $key . "=" . $value;
        }
        $smarty->_smarty->assign('urlparam', $urlparam);
        $smarty->_smarty->display('cadrerealistic/page/realinvestigation.tpl');
    }
    /**
     * 录入干部展现 集成分页 by zhijia
     */
    public function actionRealinvestigationman() {
        header("charset=utf-8");
        if ($_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
            //ajax传递的数据 我们给予返回 否则返回真正的数据页面带回参数再去加载
            $realinvestigation = Realinvestigation::model();
            $level2=!empty($_SESSION['user']['level2'])?$_SESSION['user']['level2']:'';
            $level3=!empty($_SESSION['user']['level3'])?$_SESSION['user']['level3']:'';
            $sql = "select * from {{realinvestigation}} where  1=1";
            if($level2) {
                $sql.=" and `level2`='{$level2}'";
            }
            if($level3) {
                $sql.=" and `level3`='{$level3}'";
            }
            if (isset($_REQUEST['sdateofentry'])) {
                $sql.= " and dateofentry>='" . $_REQUEST['sdateofentry'] . "'";
            }
            if (isset($_REQUEST['edateofentry'])) {
                $sql.= " and  dateofentry<='" . $_REQUEST['edateofentry'] . "'";
            }
            if (isset($_REQUEST['checkperson'])) {
                $sql.= " and  checkperson='" . $_REQUEST['checkperson'] . "'";
            }
            if (isset($_REQUEST['checkmodel'])) {
                $sql.= " and  checkmodel='" . $_REQUEST['checkmodel'] . "'";
            }
            if (isset($_REQUEST['adresonduty'])) {
                $sql.= " and  cadresonduty='" . $_REQUEST['adresonduty'] . "'";
            }
            if (isset($_REQUEST['categorynumber'])) {
                $sql.= " and  categorynumber='" . $_REQUEST['categorynumber'] . "'";
            }
            $pagesize = 20;
            $pageparam = !empty($_GET["page"]) ? $_GET["page"] : 1;
            $sql.= "  order by id desc";
            //每一页显示的记录条数
            $count = count($realinvestigation->findAllBySql($sql));
            $sql.= "  limit ".($pageparam-1)*$pagesize.", $pagesize";
            $data = $realinvestigation->findAllBySql($sql);
            //获取总页数
            $page = new Page($count, $pagesize);
            $show_page = $page->fpage();
            $smarty = Yii::app()->smarty;
            $smarty->_smarty->assign('show_page', $show_page); //分页HTML
            $smarty->_smarty->assign('data', $data); //数据展现
            $smarty->_smarty->display('cadrerealistic/page/listcadrerealistic.tpl');
        } else {
            $urlparam = "";
            foreach ($_REQUEST as $key => $value) {
                if ($key == "r") {
                    continue;
                };
                $urlparam.= "&" . $key . "=" . $value;
            }
            $this->redirect('index.php?r=realinvestigation/index' . $urlparam);
        }
    }
    /**
     * 录入干部写实 同步录入 by zhijia
     * 此步骤为干部整站录入的第一个入口 所以并未采用ajax ajax主要是控制流程使用
     */
    public function actionCreate() {
        $model = new Realinvestigation();
        $res = array(
            'success' => false,
            'message' => '请传入要录入的干部写实数据！'
        );
        if (isset($_POST['Realinvestigation'])) {
            $model->attributes = $_POST['Realinvestigation'];
            $model->attributes = array('level2'=>$_SESSION['user']['level2']);
            $model->attributes = array('level3'=>$_SESSION['user']['level3']);
            $model->attributes = array('commit'=>$_SESSION['user']['name']);
            if ($model->save()) {
                $res['success'] = true;
                $res['message'] = "干部写实数据录入成功！";
                //发送邮件
                $inserInfo=$_POST['Realinvestigation'];
                if($inserInfo['noticeflag']=='是'){
                    $this->actionsendEmail($inserInfo);
                }
                if ($GLOBALS['isHavedword']) {
                     $res['message'] = $res['message'].'<br/>'.$GLOBALS['isHavedword'];
                }
            } else {
                $res['message'] = "干部写实数据录入失败，请重试！";
            }
        }
        header("Content-type:json/application;charset=utf-8");
        echo json_encode($res);
    }
    /**
     *修改干部写实
     *传入修改的ID
     */
    public function actionUpdate($id) {
        $model = $this->loadModel($id);
        $res = array(
            'success' => false,
            'message' => '请传入要修改的干部写实数据！'
        );
        if (isset($_POST['Realinvestigation'])) {
            $model->attributes = $_POST['Realinvestigation'];
            if ($model->save()) {
                $res['success'] = true;
                $res['message'] = "干部写实数据修改成功！";
            } else {
                $res['message'] = "干部写实数据修改失败！";
            }
        }
        header("Content-type:json/application;charset=utf-8");
        echo json_encode($res);
    }
    /**
     * 删除用户选中的数据
     * @param string 要删除的id列表
     */
    public function actionDelete() {
          $res = array(
                'success' => false,
                'message' => '请传入要删除干部写实考核的编号！'
            );
        if ($_REQUEST['datas']) {
            header("Content-type:json/application;charset=utf-8");
            //echo json_encode($data);
            $count = Realinvestigation::model()->deleteAll('id in(' . $_POST['datas'] . ')'); //删除id in ids的数据
            if ($count > 0) {
                $res['success'] = true;
                $res['message'] = '干部写实数据删除成功';
                echo json_encode($res);
            } else {
                $res['success'] = true;
                $res['message'] = '删除干部写实数据失败！';
                echo json_encode($res);
            }
        } else {
            echo json_encode($res);
        }
    }
    /*根据用户的选择导出excel*/
    public function actionExportuserexcel() {
        //$criteria->addInCondition('id', array(1,2,3,4,5)); //代表where id IN (1,23,4,5,);
        $criteria = new CDbCriteria;
         $criteria->order = 'id DESC' ;//排序条件    
        $criteria->addCondition("id in (" . $_REQUEST['ids'] . ")");
        //$criteria->params[':ids'] = $_REQUEST['ids'];
        $columns = 'dateofentry,timeofentry,checkperson,checkmodel,company,cadresonduty,foundproblem,noticeflag,categorynumber,checkcontents,improvement,evaluationpoints,pointsreasons,assessmentmain,comment,rectification';
        $criteria->select = $columns; //制定列与header的顺序
        $headers = array(
            '日期',
            '时间',
            '检查人',
            '检查方式',
            '单位',
            '值班干部',
            '发现问题',
            '是否下发检查通知书',
            '两违类别/件数',
            '检查内容',
            '改进意见',
            '考核扣分',
            '扣分原因',
            '考核主体',
            '评语',
            '整改情况'
        );
        $model = Realinvestigation::model()->findAll($criteria);
        $excel = new Excelhlep('干部写实管理表EXCEL数据-', $headers, $columns, $model);
        $excel->exportExcel();
    }
    /**
     * 通过ID找到对应的MODEL
     * @param 整型的ID
     * @throws CHttpException
     */
    public function loadModel($id) {
        $model = Realinvestigation::model()->findByPk($id);
        if ($model === null) {
            throw new CHttpException(404, 'The requested page does not exist.');
        }
        return $model;
    }
    /**
     *   发送检查通知书邮件
     */
    public function actionsendEmail($values){
           //创建word文档
            Yii::import('application.components');
            require_once("PHPWord.php");
            $PHPWord = new PHPWord();
            $deparmentName = $_SESSION['user']['department'];
            $id = Department::model()->getIdByName($deparmentName);
            $document = $PHPWord->loadTemplate(WEB_BASE.'/docfile/template/template_'.$id.'.docx');//$_SESSION['user']['derpartment']
            
            if (isset($document)) {
                    $document->setValue('company',$values['company']);
                    $document->setValue('Realinvestigation',$values['cadresonduty']);
                    $document->setValue('checkcontents',$values['checkcontents']);
                    $document->setValue('checktime',$values['dateofentry'].' '.$values['Realinvestigation']);
                    $document->setValue('foundproblem',$values['foundproblem']);
                    $document->setValue('improvement',$values['improvement']);
                    $document->setValue('username',$_SESSION['user']['name']);
                    $document->setValue('checkdate',$values['dateofentry']);
                    $filename='/docfile/'.time().'.docx';
                    $document->save(WEB_BASE.$filename);
                    //保存成功开始发送邮件
                    if(!empty($document)){
                            //查询接收邮件用户邮箱
                            $name=$values['cadresonduty'];
                            $sql="select * from {{userinfo}} where name='{$name}'";
                            $command = Yii::app()->db->createCommand($sql);
                            $rows = $command->queryAll();
                            $mailto = $rows[0]['email'];
                            if (!empty($mailto)) {
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
                            $mailer->FromName =$_SESSION['derpartment']['name'];
                            $mailer->AddAddress($mailto, $_POST['cadresonduty']);
                            $mailer->Subject = MAIL_SUBJECT;
                            $mailer->Body = MAIL_BODY;
                            $mailer->AddAttachment(WEB_BASE.str_replace('\\','/',$filename),'安全检查通知书_'.date('Y-m-d',time()).'.doc');
                            $mailer->Send();
                            //更新附件路径
                            $sql="select * from {{realinvestigation}} order by id desc limit 1";
                            $result=Yii::app()->db->createCommand($sql);
                            $result=$result->queryAll();
                            $id=$result[0]['id'];
                            //插件path
                            $sqlfile = WEB_BASE.$filename;
                            $sql="update {{realinvestigation}} set `filepath`='{$sqlfile}' where `id`='{$id}'";
                            $result=Yii::app()->db->createCommand($sql);
                            $result->execute();
                        }else{
                             $GLOBALS['isHavedword'] = "检查人【".$name."无邮箱，请联系管理员添加。";
                        }
                    }
            }else{
                $department = $_SESSION['user']['department'];
                $GLOBALS['isHavedword'] ="暂无".$department."通知书模板，请联系管理员添加。";
            }
    }
}