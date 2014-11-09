<?php

/**
 * This is the model class for table "{{userinfo}}".
 *
 * The followings are the available columns in table '{{userinfo}}':
 * @property integer $id
 * @property string $name
 * @property string $password
 * @property integer $departmenttype
 * @property string $department
 * @property string $position
 * @property string $mobile
 * @property string $tel
 * @property string $photo
 * @property string $positionType
 * @property integer $parentDanwei
 * @property integer $parentLeader
 * @property integer $xiesi
 * @property integer $zhoucha
 * @property integer $yecha
 * @property integer $tiancheng
 * @property integer $jiancha
 * @property integer $tongzhi
 * @property integer $faxianwenti
 * @property integer $liangwei
 * @property integer $anquan
 * @property string $email
 */
class Userinfo extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Userinfo the static model class
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
		return '{{userinfo}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, password, departmenttype, department, position', 'required'),
			array('departmenttype, parentDanwei, parentLeader, xiesi, zhoucha, yecha, tiancheng, jiancha, tongzhi, faxianwenti, liangwei, anquan', 'numerical', 'integerOnly'=>true),
			array('name, department, email', 'length', 'max'=>30),
			array('password', 'length', 'max'=>100),
			array('position', 'length', 'max'=>50),
			array('mobile', 'length', 'max'=>11),
			array('tel', 'length', 'max'=>13),
			array('photo', 'length', 'max'=>200),
			array('positionType', 'length', 'max'=>6),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, password, departmenttype, department, position, mobile, tel, photo, positionType, parentDanwei, parentLeader, xiesi, zhoucha, yecha, tiancheng, jiancha, tongzhi, faxianwenti, liangwei, anquan, email', 'safe', 'on'=>'search'),
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
			'name' => '姓名',
			'password' => '密码',
			'departmenttype' => '单位类型',
			'department' => '单位名称',
			'position' => '职务名称',
			'mobile' => '电话',
			'tel' => '办公电话',
			'photo' => '照片',
			'positionType' => '职务类型',
			'parentDanwei' => '上级单位',
			'parentLeader' => '上级领导',
			'xiesi' => '是否有写实任务',
			'zhoucha' => '昼查',
			'yecha' => '夜查',
			'tiancheng' => '添乘',
			'jiancha' => '检查四五等站',
			'tongzhi' => '安全通知书发放',
			'faxianwenti' => '发现问题',
			'liangwei' => '两违查处',
			'anquan' => '安全风险',
			'email' => '邮箱',
		);
	}

	/*
	 *	获取$userid 对应的所有下属
	 *
	 */
	public function getSubordinatesByUserId($userid) {

	}

	public function getUsersByName($name) {
		var_dump($name);
		$users = $this->findAll('name like "%:name%"', array(
			'name' => $name,
		))->attributes;
		return CJSON::encode($users);
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('departmenttype',$this->departmenttype);
		$criteria->compare('department',$this->department,true);
		$criteria->compare('position',$this->position,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('tel',$this->tel,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('positionType',$this->positionType,true);
		$criteria->compare('parentDanwei',$this->parentDanwei);
		$criteria->compare('parentLeader',$this->parentLeader);
		$criteria->compare('xiesi',$this->xiesi);
		$criteria->compare('zhoucha',$this->zhoucha);
		$criteria->compare('yecha',$this->yecha);
		$criteria->compare('tiancheng',$this->tiancheng);
		$criteria->compare('jiancha',$this->jiancha);
		$criteria->compare('tongzhi',$this->tongzhi);
		$criteria->compare('faxianwenti',$this->faxianwenti);
		$criteria->compare('liangwei',$this->liangwei);
		$criteria->compare('anquan',$this->anquan);
		$criteria->compare('email',$this->email,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}