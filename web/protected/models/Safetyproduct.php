<?php

/**
 * This is the model class for table "{{safetyproduct}}".
 *
 * The followings are the available columns in table '{{safetyproduct}}':
 * @property integer $id
 * @property string $serialnumber
 * @property string $infosources
 * @property string $company
 * @property string $theproblem
 * @property string $storagetime
 * @property string $thesolution
 * @property string $dutydepartment
 * @property string $dutyperson
 * @property string $deadline
 * @property string $rectification
 * @property string $checkperson
 * @property string $registertime
 * @property string $comments
 * @property string $currentstatus
 * @property integer $level2
 * @property integer $level3
 * @property string $commit
 */
class Safetyproduct extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Safetyproduct the static model class
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
		return '{{safetyproduct}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('level2, level3', 'numerical', 'integerOnly'=>true),
			array('commit', 'length', 'max'=>33),
			array('serialnumber, dutyperson, checkperson', 'length', 'max'=>50),
			array('infosources, theproblem, thesolution, rectification, comments, currentstatus', 'length', 'max'=>500),
			array('company, dutydepartment', 'length', 'max'=>100),
			array('storagetime, deadline, registertime', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, serialnumber, infosources, company, theproblem, storagetime, thesolution, dutydepartment, dutyperson, deadline, rectification, checkperson, registertime, comments, currentstatus,level2, level3, commit', 'safe', 'on'=>'search'),
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
			'serialnumber' => '序列号',
			'infosources' => '信息来源',
			'company' => '单位',
			'theproblem' => '问题点',
			'storagetime' => '入库时间',
			'thesolution' => '解决方案',
			'dutydepartment' => '责任部门',
			'dutyperson' => '责任人',
			'deadline' => '完成期限',
			'rectification' => '整改情况',
			'checkperson' => '检查人',
			'registertime' => '销号时间',
			'comments' => '备注',
			'currentstatus' => '问题目前状况',
			'level2' => 'Level2',
			'level3' => 'Level3',
			'commit' => 'Commit',
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
		$criteria->compare('serialnumber',$this->serialnumber,true);
		$criteria->compare('infosources',$this->infosources,true);
		$criteria->compare('company',$this->company,true);
		$criteria->compare('theproblem',$this->theproblem,true);
		$criteria->compare('storagetime',$this->storagetime,true);
		$criteria->compare('thesolution',$this->thesolution,true);
		$criteria->compare('dutydepartment',$this->dutydepartment,true);
		$criteria->compare('dutyperson',$this->dutyperson,true);
		$criteria->compare('deadline',$this->deadline,true);
		$criteria->compare('rectification',$this->rectification,true);
		$criteria->compare('checkperson',$this->checkperson,true);
		$criteria->compare('registertime',$this->registertime,true);
		$criteria->compare('comments',$this->comments,true);
		$criteria->compare('currentstatus',$this->currentstatus,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}