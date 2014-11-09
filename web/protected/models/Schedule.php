<?php

/**
 * This is the model class for table "{{schedule}}".
 *
 * The followings are the available columns in table '{{schedule}}':
 * @property integer $id
 * @property string $owner
 * @property string $create_time
 * @property string $task_name
 * @property string $task_type
 * @property string $creator
 * @property string $task_date
 */
class Schedule extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Schedule the static model class
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
		return '{{schedule}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('owner, create_time, task_name, task_type, creator, task_date', 'required'),
			array('owner, creator', 'length', 'max'=>20),
			array('task_name', 'length', 'max'=>1000),
			array('task_type, task_date', 'length', 'max'=>50),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, owner, create_time, task_name, task_type, creator, task_date', 'safe', 'on'=>'search'),
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
			'owner' => 'Owner',
			'create_time' => 'Create Time',
			'task_name' => 'Task Name',
			'task_type' => 'Task Type',
			'creator' => 'Creator',
			'task_date' => 'Task Date',
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
		$criteria->compare('owner',$this->owner,true);
		$criteria->compare('create_time',$this->create_time,true);
		$criteria->compare('task_name',$this->task_name,true);
		$criteria->compare('task_type',$this->task_type,true);
		$criteria->compare('creator',$this->creator,true);
		$criteria->compare('task_date',$this->task_date,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}