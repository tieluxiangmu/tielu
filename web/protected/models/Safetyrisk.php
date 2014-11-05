<?php

/**
 * This is the model class for table "{{safetyrisk}}".
 *
 * The followings are the available columns in table '{{safetyrisk}}':
 * @property integer $id
 * @property string $serialnumber
 * @property string $riskname
 * @property string $riskclass
 * @property string $risksystem
 * @property string $reasonofrisk
 * @property string $consequence
 * @property string $measures
 * @property string $distribution
 * @property string $furtherproof
 * @property string $emergencyhand
 * @property string $responsibilitylead
 * @property string $dutypartments
 * @property string $coordinationpart
 * @property string $implementdate
 * @property string $completiondate
 * @property string $notethebus
 * @property string $notehighspeedrail
 */
class Safetyrisk extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Safetyrisk the static model class
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
		return '{{safetyrisk}}';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('serialnumber', 'length', 'max'=>50),
			array('riskname, riskclass, risksystem, responsibilitylead, dutypartments, coordinationpart', 'length', 'max'=>100),
			array('reasonofrisk, consequence, measures, distribution, furtherproof, emergencyhand, notethebus, notehighspeedrail', 'length', 'max'=>500),
			array('implementdate, completiondate', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, serialnumber, riskname, riskclass, risksystem, reasonofrisk, consequence, measures, distribution, furtherproof, emergencyhand, responsibilitylead, dutypartments, coordinationpart, implementdate, completiondate, notethebus, notehighspeedrail', 'safe', 'on'=>'search'),
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
			'serialnumber' => '系统编号',
			'riskname' => '风险名称',
			'riskclass' => '风险分类',
			'risksystem' => '系统',
			'reasonofrisk' => '风险原因（致因）',
			'consequence' => '可能后果',
			'measures' => '既有措施及有效性（问题）',
			'distribution' => '分布情况',
			'furtherproof' => '进一步防控措施',
			'emergencyhand' => '应急（预警）处置措施',
			'responsibilitylead' => '负责领导',
			'dutypartments' => '责任部门',
			'coordinationpart' => '配合部门',
			'implementdate' => '实施日期',
			'completiondate' => '完成日期',
			'notethebus' => '备注客车',
			'notehighspeedrail' => '备注高铁',
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
		$criteria->compare('riskname',$this->riskname,true);
		$criteria->compare('riskclass',$this->riskclass,true);
		$criteria->compare('risksystem',$this->risksystem,true);
		$criteria->compare('reasonofrisk',$this->reasonofrisk,true);
		$criteria->compare('consequence',$this->consequence,true);
		$criteria->compare('measures',$this->measures,true);
		$criteria->compare('distribution',$this->distribution,true);
		$criteria->compare('furtherproof',$this->furtherproof,true);
		$criteria->compare('emergencyhand',$this->emergencyhand,true);
		$criteria->compare('responsibilitylead',$this->responsibilitylead,true);
		$criteria->compare('dutypartments',$this->dutypartments,true);
		$criteria->compare('coordinationpart',$this->coordinationpart,true);
		$criteria->compare('implementdate',$this->implementdate,true);
		$criteria->compare('completiondate',$this->completiondate,true);
		$criteria->compare('notethebus',$this->notethebus,true);
		$criteria->compare('notehighspeedrail',$this->notehighspeedrail,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}