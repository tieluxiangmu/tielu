<?php

/**
 * This is the model class for table "{{realinvestigation}}".
 *
 * The followings are the available columns in table '{{realinvestigation}}':
 * @property integer $id
 * @property string $dateofentry
 * @property string $timeofentry
 * @property string $checkperson
 * @property string $checkmodel
 * @property string $company
 * @property string $cadresonduty
 * @property string $foundproblem
 * @property string $noticeflag
 * @property string $categorynumber
 * @property string $checkcontents
 * @property string $improvement
 * @property string $evaluationpoints
 * @property string $pointsreasons
 * @property string $assessmentmain
 * @property string $comment
 * @property string $rectification
 * @property string $filepath
 * @property integer $level2
 * @property integer $level3
 * @property string $commit
 */
class Realinvestigation extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Realinvestigation the static model class
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
		return '{{realinvestigation}}';
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
			array('checkperson, checkmodel, company, cadresonduty, categorynumber', 'length', 'max'=>100),
			array('foundproblem, checkcontents, improvement, pointsreasons, comment, rectification', 'length', 'max'=>500),
			array('noticeflag', 'length', 'max'=>10),
			array('evaluationpoints, assessmentmain', 'length', 'max'=>50),
			array('filepath', 'length', 'max'=>255),
			array('commit', 'length', 'max'=>33),
			array('dateofentry, timeofentry', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, dateofentry, timeofentry, checkperson, checkmodel, company, cadresonduty, foundproblem, noticeflag, categorynumber, checkcontents, improvement, evaluationpoints, pointsreasons, assessmentmain, comment, rectification, filepath, level2, level3, commit', 'safe', 'on'=>'search'),
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
			'dateofentry' => 'Dateofentry',
			'timeofentry' => 'Timeofentry',
			'checkperson' => 'Checkperson',
			'checkmodel' => 'Checkmodel',
			'company' => 'Company',
			'cadresonduty' => 'Cadresonduty',
			'foundproblem' => 'Foundproblem',
			'noticeflag' => 'Noticeflag',
			'categorynumber' => 'Categorynumber',
			'checkcontents' => 'Checkcontents',
			'improvement' => 'Improvement',
			'evaluationpoints' => 'Evaluationpoints',
			'pointsreasons' => 'Pointsreasons',
			'assessmentmain' => 'Assessmentmain',
			'comment' => 'Comment',
			'rectification' => 'Rectification',
			'filepath' => 'Filepath',
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
		$criteria->compare('dateofentry',$this->dateofentry,true);
		$criteria->compare('timeofentry',$this->timeofentry,true);
		$criteria->compare('checkperson',$this->checkperson,true);
		$criteria->compare('checkmodel',$this->checkmodel,true);
		$criteria->compare('company',$this->company,true);
		$criteria->compare('cadresonduty',$this->cadresonduty,true);
		$criteria->compare('foundproblem',$this->foundproblem,true);
		$criteria->compare('noticeflag',$this->noticeflag,true);
		$criteria->compare('categorynumber',$this->categorynumber,true);
		$criteria->compare('checkcontents',$this->checkcontents,true);
		$criteria->compare('improvement',$this->improvement,true);
		$criteria->compare('evaluationpoints',$this->evaluationpoints,true);
		$criteria->compare('pointsreasons',$this->pointsreasons,true);
		$criteria->compare('assessmentmain',$this->assessmentmain,true);
		$criteria->compare('comment',$this->comment,true);
		$criteria->compare('rectification',$this->rectification,true);
		$criteria->compare('filepath',$this->filepath,true);
		$criteria->compare('level2',$this->level2);
		$criteria->compare('level3',$this->level3);
		$criteria->compare('commit',$this->commit,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}