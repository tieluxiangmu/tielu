<?php

/**
 * This is the model class for table "{{twocontrarymanage}}".
 *
 * The followings are the available columns in table '{{twocontrarymanage}}':
 * @property integer $id
 * @property string $serialnumber
 * @property string $checktime
 * @property string $inspectionunit
 * @property string $rummager
 * @property string $company
 * @property string $responsibleperson
 * @property string $jobname
 * @property string $politicalaffiliation
 * @property string $Illegalcontent
 * @property string $processingresults
 * @property string $llegalcategory
 * @property string $deduction
 * @property string $productionleader
 * @property string $buckleintegral
 * @property string $teamleaderIntegral
 * @property integer $level2
 * @property integer $level3
 * @property string $commit
 */
class Twocontrarymanage extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Twocontrarymanage the static model class
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
		return '{{twocontrarymanage}}';
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
			array('teamleader', 'length', 'max'=>100),
			
			array('serialnumber', 'length', 'max'=>50),
			array('inspectionunit, rummager, company, responsibleperson, jobname, politicalaffiliation, llegalcategory, deduction, productionleader, buckleintegral, teamleaderIntegral', 'length', 'max'=>100),
			array('Illegalcontent, processingresults', 'length', 'max'=>500),
			array('checktime', 'safe'),

			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, serialnumber, checktime, inspectionunit, rummager, company, responsibleperson, jobname, politicalaffiliation, Illegalcontent, processingresults, llegalcategory, deduction, productionleader, buckleintegral,teamleader, teamleaderIntegral,level2, level3, commit', 'safe', 'on'=>'search'),
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
			'serialnumber' => '序号',
			'checktime' => '检查时间',
			'inspectionunit' => '检查单位',
			'rummager' => '检查人',
			'company' => '被查单位',
			'responsibleperson' => '责任人',
			'jobname' => '职名',
			'politicalaffiliation' => '政治面貌',
			'Illegalcontent' => '违章内容',
			'processingresults' => '处理结果',
			'llegalcategory' => '违章类别',
			'deduction' => '责任人扣分',
			'productionleader' => '所在生产小组长（值班员）',
			'buckleintegral' => '扣积分情况',
			'teamleader' => '（班组长)',

			'teamleaderIntegral' => '（班组长）扣积分情况',
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
		$criteria->compare('checktime',$this->checktime,true);
		$criteria->compare('inspectionunit',$this->inspectionunit,true);
		$criteria->compare('rummager',$this->rummager,true);
		$criteria->compare('company',$this->company,true);
		$criteria->compare('responsibleperson',$this->responsibleperson,true);
		$criteria->compare('jobname',$this->jobname,true);
		$criteria->compare('politicalaffiliation',$this->politicalaffiliation,true);
		$criteria->compare('Illegalcontent',$this->Illegalcontent,true);
		$criteria->compare('processingresults',$this->processingresults,true);
		$criteria->compare('llegalcategory',$this->llegalcategory,true);
		$criteria->compare('deduction',$this->deduction,true);
		$criteria->compare('productionleader',$this->productionleader,true);
		$criteria->compare('buckleintegral',$this->buckleintegral,true);
		$criteria->compare('teamleaderIntegral',$this->teamleaderIntegral,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}