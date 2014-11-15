<?php

class UserInfoController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	public function actionGetSubordinatesByUser() {
		$username = Yii::app()->session['user']['name'];
		var_dump(Yii::app()->session['user']);
		echo CJSON::encode(UserInfo::model()->getSubordinatesByUserId($username));
	}
	public function actionSuggest() {
		$name = $_REQUEST['q'];
		$res = array();

		$users = UserInfo::model() ->getUsersByName($name);
		foreach($users as $user) {
			$res[] = $user->attributes;
		}

		echo CJSON::encode($res);

	}
	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	/*public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
*/
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


	private function uploadPhoto() {
		$file = $_FILES['photo'];
		$filename = WEB_BASE."/attachment/" . $file['name'];
		$fname = "/attachment/" . $file['name'];
        if (($file["type"] == "image/gif")
			|| ($file["type"] == "image/jpeg")
			|| ($file["type"] == "image/png")){
			  if ($file["error"] > 0){
			  }else if (file_exists($filename)){
			  }else{
			      move_uploaded_file($file["tmp_name"], $filename);
			  }
		}
		$_POST['UserInfo']['photo'] = $fname;

	}
	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new UserInfo;
		$smarty = Yii::app()->smarty;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['UserInfo']))
		{
			
            $this->uploadPhoto();
			$model->attributes=$_POST['UserInfo'];
			if($model->save()) {
       			echo '<script type="text/javascript">parent.window.location = "index.php?r=admin/index";</script>';
			}else {
				$this->redirect(Yii::app()->request->urlReferrer);
			}
	    	return ;
			
			//$this->redirect(array('view','id'=>$model->id));
		}
		/*$departmentTypes = Department::model()->getDepartmentTypes();*/


		$departmentId = intval($_REQUEST['departmentid']);

		$department = Department::model()->find('id=:departmentid', array(
			'departmentid' => $departmentId,
		))->attributes;

	    $parentDepartment = Department::model()->find('id=:departmentid', array(
			'departmentid' => $department['parentId'],
		))->attributes;

		$departmentType = Departmenttype::model()->find('name=:name', array(
			'name' => $department['typeid'],
		))->attributes;

		$smarty->_smarty->assign('departmentType', $departmentType);
		$smarty->_smarty->assign('department', $department);
		$smarty->_smarty->assign('parentDepartment', $parentDepartment);

	    $smarty->_smarty->display('cadrerealistic/page/adduser.tpl');
	}
	public function actionLogout() {
			Yii::app()->session['user'] = null;
			$this->redirect('index.php?r=site/login');


	}
	public function actionLogin() {
		$password = $_REQUEST['password'];
		$name = $_REQUEST['name'];

		$user = UserInfo::model() -> find('name=:name and password = :password ',
			array(
				'name' => $name,
				'password' => $password,
			)
		)->attributes;

		if($user) {
			$department = Department::model() -> find('name=:department',array(
				'department' => $user['department']
			))->attributes;
			$sql = "select * from tl_role where departmenttype = '".$department['typeid']."'";
			$role = Role::model()->findBySql($sql)->attributes;
			

			$level = $role['name'];
			if($level == 'level2') {
				$user['level2'] = $department['id'];
			}else if($level == 'level3') {
				$user['level3'] = $department['id'];
				$user['level2'] = Department::model() -> find('id=:department', array(
					'department' => $department['parentId'],
				))->attributes['id'];
			}

			Yii::app()->session['user'] = $user;
			echo json_encode(array(
				'success' => true,
			));
		}else {
			echo json_encode(array(
				'success' => false,
				'msg' => '账号，密码错误',
			));
		}


	}
	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);
		$smarty = Yii::app()->smarty;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['UserInfo']))
		{
			$this->uploadPhoto();
			$model->attributes=$_POST['UserInfo'];
			if($model->save()) {
				$this->redirect("index.php");
			}
		}

		$smarty->_smarty->assign('model', $model);
	    $smarty->_smarty->display('cadrerealistic/page/edituser.tpl');
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
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('UserInfo');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new UserInfo('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['UserInfo']))
			$model->attributes=$_GET['UserInfo'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return UserInfo the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=UserInfo::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param UserInfo $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='user-info-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
