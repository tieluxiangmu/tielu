<?php

/**
 * This is the model class for table "{{right}}".
 *
 * The followings are the available columns in table '{{right}}':
 * @property integer $id
 * @property string $tablename
 * @property string $role
 */
class Right extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Right the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return '{{right}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('tablename, role', 'required'),
			array('tablename, role', 'length', 'max'=>20),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, tablename, role', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'tablename' => 'Tablename',
			'role' => 'Role',
		);
	}


	/*
	 *	用户是否对表格具有更新权限
	 *	$user ,用户的信息
	 *  $tablename 用户要操作的表格名称 ，如果是否有权限更新两违表  twocontrary
	 */
	public function isUserHasModifiedRightWithTable($user, $tablename) {
		$departmentType = $user['departmenttype'];
		$role = Role::model() -> find('departmenttype=:departmenttype', array(
			'departmenttype' => $departmenttype,
		));
		$roleId = $role->attributes['id'];

		$right = $this->find('role=:roleId and tablename = :$tablename');
		if($right) {
			return true;
		}
		return false;
	}


	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('tablename',$this->tablename,true);
		$criteria->compare('role',$this->role,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}