<?php
define('YII_DEBUG', true); //调试时打开
error_reporting(E_ALL && ~E_WARNING); // warning的错误不报
// 引入yii框架底层
require_once(dirname(__FILE__).'/../framework/yii.php');
//引入公共常量
require_once(dirname(__FILE__).'/protected/commands/constants.php');
// 引入config 全局run
$config=dirname(__FILE__).'/protected/config/main.php';
$web_path=dirname(__FILE__);
Yii::createWebApplication($config)->run();