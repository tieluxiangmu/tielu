<?php

class ScheduleController extends Controller
{
	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$info = array(
			'authority' => $this->getAuthority(),
			'user' => $this->getName()
		);
		$user = $_SESSION['user'];
		if(!$user) {
			$this->redirect('index.php?r=site/login');
		}
		$smarty = Yii::app()->smarty;

		$smarty->_smarty->assign('info', $info);
		$smarty->_smarty->display('schedule/page/index.tpl');
	}

	/**
	 *
	 */
	public function actionAddSchedule()
	{
		$user = $_SESSION['user'];
        if(!$user) {
            $this->redirect('index.php?r=site/login');
        }
		$info = array(
			'authority' => $this->getAuthority(),
			'subordinate' => $this->getSubordinate(),
			'user' => $this->getName()
		);

		$smarty = Yii::app()->smarty;
		$smarty->_smarty->assign('info', $info);
		$smarty->_smarty->display('schedule/page/add.tpl');
	}

	public function actionAdd() {
		$owner = $_POST['owner'];
		$taskDate = $_POST['task_date'];
		$taskName = $_POST['task_name'];
		$taskType = $_POST['task_type'];
		$creator = $this->getName();
		//$taskDate = date("Y-M-D", $taskDate);

		$sql = 'insert into tl_schedule '.'(creator, owner, task_date, task_name, task_type)'.' values('.'"'.$creator.'",'.'"'.$owner.'",'.'"'.$taskDate.'",'.'"'.$taskName.'",'.'"'.$taskType.'"'.')';
		$command = Yii::app()->db->createCommand($sql);  
		$rst = $command->execute();
		$rst = array(
			'success' => $rst ? true : false,
			'message' => $rst ? '添加成功' : '添加失败，请稍后重试'
		);
		echo CJSON::encode($rst);
	}

	public function actionDel() {
		$id = $_POST['id'];
		$sql = 'delete from tl_schedule where id = '.$id;
		$command = Yii::app()->db->createCommand($sql);  
		$rst = $command->execute();
		$rst = array(
			'success' => $rst ? true : false,
			'message' => $rst ? '删除成功' : '删除失败，请稍后重试'
		);
		echo CJSON::encode($rst);
	}

	/**
	 * 获取某一天的任务列表
	 */
	public function actionGetTask() {
		$owner = $this->getName();
		$date = $_REQUEST['task_date'];
		$sql = 'select * from tl_schedule where owner = "'.$owner.'" and task_date like"'.$date.'%"';
		$rest = Schedule::model() -> findAllBySql($sql);
		echo CJSON::encode($rest);
	}

	public function getName() {
		return $_SESSION['user']['name'];
	}

	public function getAuthority() {//TODO
		;
		return $_SESSION['user']['positionType'];
	}

	public function getSubordinate() {
		
		$subordinate = UserInfo::model()->getSubordinatesWithCalendarByUserName($_SESSION['user']['name']);
		return $subordinate;
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Schedule;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Schedule']))
		{
			$model->attributes=$_POST['Schedule'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['Schedule']))
		{
			$model->attributes=$_POST['Schedule'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Schedule('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Schedule']))
			$model->attributes=$_GET['Schedule'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return Schedule the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=Schedule::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param Schedule $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='schedule-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
