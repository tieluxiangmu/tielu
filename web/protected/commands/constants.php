<?php
/**
 * Created by PhpStorm.
 * User: chunzhi
 * Date: 14-11-8
 * Time: 下午5:24
 */
//数据库配置常量
define('NAME','root');//数据库用户名
define('PASSWORD','ncwcbc');//数据库密码
define('DATABASE','safetyinfo_Database');//库名
define('CHARSET','utf8');//字符集
define('TABLEPREFIX','tl_');//数据表前缀

//邮箱配置数据常量  录入信息时选择发送通知       自动发送邮件到选中用户邮箱中去
define('MAIL_SMTP','smtp.163.com');//smtp服务器 163邮箱:smtp.163.com qq邮箱:smtp.qq.com
define('MAIL_NAME','chongqingtielu');//邮箱用户名
define('MAIL_PWD','123456789.');//邮箱密码
define('MAIL_FROM','chongqingtielu@163.com');//发件人地址
define('MAIL_BODY','这里填写邮件主题内容通知模版，附件会自动生成并添加');//邮件主体内容
define('MAIL_SUBJECT','安全检查通知书');//邮件主题
