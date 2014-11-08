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
			array('departmenttype', 'numerical', 'integerOnly'=>true),
			array('name, department', 'length', 'max'=>30),
			array('password', 'length', 'max'=>100),
			array('position', 'length', 'max'=>50),
			array('mobile', 'length', 'max'=>11),
			array('tel', 'length', 'max'=>13),
			array('photo', 'length', 'max'=>200),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, password, departmenttype, department, position, mobile, tel, photo', 'safe', 'on'=>'search'),
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
			'name' => 'Name',
			'password' => 'Password',
			'departmenttype' => 'Departmenttype',
			'department' => 'Department',
			'position' => 'Position',
			'mobile' => 'Mobile',
			'tel' => 'Tel',
			'photo' => 'Photo',
		);
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

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}