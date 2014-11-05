-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-10-07 12:38:16
-- 服务器版本： 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `safetyinfo_Database`
--

-- --------------------------------------------------------

--
-- 表的结构 `tl_dutyperson`
--

CREATE TABLE IF NOT EXISTS `tl_dutyperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '责任人ID',
  `dutyername` varchar(100) NOT NULL COMMENT '责任人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='责任人信息表' AUTO_INCREMENT=81 ;

--
-- 转存表中的数据 `tl_dutyperson`
--

-- --------------------------------------------------------

--
-- 表的结构 `tl_realinvestigation`
--

CREATE TABLE IF NOT EXISTS `tl_realinvestigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '写实考察ID',
  `dateofentry` date DEFAULT NULL COMMENT '录入日期',
  `timeofentry` time DEFAULT NULL COMMENT '时间',
  `checkperson` varchar(100) DEFAULT NULL COMMENT '检查人',
  `checkmodel` varchar(100) DEFAULT NULL COMMENT '检查方式',
  `company` varchar(100) DEFAULT NULL COMMENT '单位',
  `cadresonduty` varchar(100) DEFAULT NULL COMMENT '值班干部',
  `foundproblem` varchar(500) DEFAULT NULL COMMENT '发现问题',
  `noticeflag` varchar(10) DEFAULT NULL COMMENT '是否下发检查通知书',
  `categorynumber` varchar(100) DEFAULT NULL COMMENT '两违类别/件数',
  `checkcontents` varchar(500) DEFAULT NULL COMMENT '检查内容',
  `improvement` varchar(500) DEFAULT NULL COMMENT '改进意见',
  `evaluationpoints` varchar(50) DEFAULT NULL COMMENT '考核扣分',
  `pointsreasons` varchar(500) DEFAULT NULL COMMENT '扣分原因',
  `assessmentmain` varchar(50) DEFAULT NULL COMMENT '考核主体',
  `comment` varchar(500) DEFAULT NULL COMMENT '评语',
  `rectification` varchar(500) DEFAULT NULL COMMENT '整改情况',
  PRIMARY KEY (`id`),
  KEY `checkperson` (`checkperson`) COMMENT '检查人索引',
  KEY `checkmodel` (`checkmodel`),
  KEY `cadresonduty` (`cadresonduty`) COMMENT '值班干部索引',
  KEY `dateofentry` (`dateofentry`) COMMENT '录入日期索引',
  KEY `categorynumber` (`categorynumber`) COMMENT '两违类别索引'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='写实考察录入表' AUTO_INCREMENT=140 ;

--
-- 转存表中的数据 `tl_realinvestigation`
--
-- --------------------------------------------------------

--
-- 表的结构 `tl_safetyproduct`
--

CREATE TABLE IF NOT EXISTS `tl_safetyproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '安全信息id',
  `serialnumber` varchar(50) DEFAULT NULL COMMENT '序列号',
  `infosources` varchar(500) DEFAULT NULL COMMENT '信息来源',
  `company` varchar(100) DEFAULT NULL COMMENT '单位',
  `theproblem` varchar(500) DEFAULT NULL COMMENT '问题点',
  `storagetime` date DEFAULT NULL COMMENT '入库时间',
  `thesolution` varchar(500) DEFAULT NULL COMMENT '解决方案',
  `dutydepartment` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `dutyperson` varchar(50) DEFAULT NULL COMMENT '责任人',
  `deadline` date DEFAULT NULL COMMENT '完成期限',
  `rectification` varchar(500) DEFAULT NULL COMMENT '整改情况',
  `checkperson` varchar(50) DEFAULT NULL COMMENT '检查人',
  `registertime` date DEFAULT NULL COMMENT '销号时间',
  `comments` varchar(500) DEFAULT NULL COMMENT '备注',
  `currentstatus` varchar(500) DEFAULT NULL COMMENT '问题目前状况',
  PRIMARY KEY (`id`),
  KEY `infosources` (`infosources`(255)),
  KEY `storagetime` (`storagetime`),
  KEY `company` (`company`),
  KEY `dutyperson` (`dutyperson`),
  KEY `dutydepartment` (`dutydepartment`),
  KEY `deadline` (`deadline`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='安全生产管理表' AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `tl_safetyproduct`
--
--
-- 触发器 `tl_safetyproduct`
--
DROP TRIGGER IF EXISTS `safeserialnumber`;
DELIMITER //
CREATE TRIGGER `safeserialnumber` BEFORE INSERT ON `tl_safetyproduct`
 FOR EACH ROW BEGIN 
declare serial_num varchar(50);
declare serial_id int;
set serial_id = (SELECT max(id) FROM `tl_safetyproduct`)+1;
if serial_id<10 then
   set serial_num = concat('00',serial_id);    
END IF;
IF serial_id>=10 && serial_id<100 then
   set serial_num = concat('0',serial_id);          
END IF;
set NEW.serialnumber = concat(year(now()),serial_num);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `tl_safetyrisk`
--

CREATE TABLE IF NOT EXISTS `tl_safetyrisk` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '安全风险ID',
  `serialnumber` varchar(50) DEFAULT NULL COMMENT '编号',
  `riskname` varchar(100) DEFAULT NULL COMMENT '风险名称',
  `riskclass` varchar(100) DEFAULT NULL COMMENT '风险分类',
  `risksystem` varchar(100) DEFAULT NULL COMMENT '风险系统',
  `reasonofrisk` varchar(500) DEFAULT NULL COMMENT '风险原因',
  `consequence` varchar(500) DEFAULT NULL COMMENT '可能后果',
  `measures` varchar(500) DEFAULT NULL COMMENT '可能后果 既有措施及有效性（问题）',
  `distribution` varchar(500) DEFAULT NULL COMMENT '分布情况',
  `furtherproof` varchar(500) DEFAULT NULL COMMENT '进一步防控措施',
  `emergencyhand` varchar(500) DEFAULT NULL COMMENT '应急（预警）处置措施',
  `responsibilitylead` varchar(100) DEFAULT NULL COMMENT '负责领导',
  `dutypartments` varchar(100) DEFAULT NULL COMMENT '责任部门',
  `coordinationpart` varchar(100) DEFAULT NULL COMMENT '配合部门',
  `implementdate` date DEFAULT NULL COMMENT '实施日期',
  `completiondate` date DEFAULT NULL COMMENT '完成日期',
  `notethebus` varchar(500) DEFAULT NULL COMMENT '备注客车',
  `notehighspeedrail` varchar(500) DEFAULT NULL COMMENT '备注高铁',
  PRIMARY KEY (`id`),
  KEY `riskclass` (`riskclass`) COMMENT '风险分类',
  KEY `risksystem` (`risksystem`),
  KEY `responsibilitylead` (`responsibilitylead`),
  KEY `dutypartments` (`dutypartments`),
  KEY `coordinationpart` (`coordinationpart`),
  KEY `implementdate` (`implementdate`),
  KEY `completiondate` (`completiondate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='安全风险表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tl_safetyrisk`
--
-- 触发器 `tl_safetyrisk`
--
DROP TRIGGER IF EXISTS `safetyproserialnumber`;
DELIMITER //
CREATE TRIGGER `safetyproserialnumber` BEFORE INSERT ON `tl_safetyrisk`
 FOR EACH ROW BEGIN 
declare serial_num varchar(50);
declare serial_id int;
set serial_id = (SELECT max(id) FROM `tl_safetyrisk`)+1;
if serial_id<10 then
   set serial_num = concat('00',serial_id);    
END IF;
IF serial_id>=10 && serial_id<100 then
   set serial_num = concat('0',serial_id);          
END IF;
set NEW.serialnumber = concat(year(now()),serial_num);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `tl_test`
--

CREATE TABLE IF NOT EXISTS `tl_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mydate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tl_test`
--
-- --------------------------------------------------------

--
-- 表的结构 `tl_twocontrarymanage`
--

CREATE TABLE IF NOT EXISTS `tl_twocontrarymanage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '两违查询ID',
  `serialnumber` varchar(50) DEFAULT NULL COMMENT '序号',
  `checktime` date DEFAULT NULL COMMENT '检查时间',
  `inspectionunit` varchar(100) DEFAULT NULL COMMENT '检查单位',
  `rummager` varchar(100) DEFAULT NULL COMMENT '检查人',
  `company` varchar(100) DEFAULT NULL COMMENT '被查单位',
  `responsibleperson` varchar(100) DEFAULT NULL COMMENT '责任人',
  `jobname` varchar(100) DEFAULT NULL COMMENT '职名',
  `politicalaffiliation` varchar(100) DEFAULT NULL COMMENT '政治面貌',
  `Illegalcontent` varchar(500) DEFAULT NULL COMMENT '违章内容',
  `processingresults` varchar(500) DEFAULT NULL COMMENT '处理结果',
  `llegalcategory` varchar(100) DEFAULT NULL COMMENT '违章类别',
  `deduction` varchar(100) DEFAULT NULL COMMENT '责任人扣分',
  `productionleader` varchar(100) DEFAULT NULL COMMENT '所在生产班组长',
  `buckleintegral` varchar(100) DEFAULT NULL COMMENT '扣积分情况',
  `teamleaderIntegral` varchar(100) DEFAULT NULL COMMENT '班组长扣积分情况',
  PRIMARY KEY (`id`),
  KEY `checktime` (`checktime`),
  KEY `inspectionunit` (`inspectionunit`),
  KEY `llegalcategory` (`llegalcategory`),
  KEY `company` (`company`) COMMENT '被查单位索引',
  KEY `responsibleperson` (`responsibleperson`),
  KEY `productionleader` (`productionleader`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='两违查询表' AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `tl_twocontrarymanage`
--

--
-- 触发器 `tl_twocontrarymanage`
--
DROP TRIGGER IF EXISTS `updateserialnumber`;
DELIMITER //
CREATE TRIGGER `updateserialnumber` BEFORE INSERT ON `tl_twocontrarymanage`
 FOR EACH ROW BEGIN 
declare serial_num varchar(50);
declare serial_id int;
set serial_id = (SELECT max(id) FROM `tl_twocontrarymanage`)+1;
if serial_id<10 then
   set serial_num = concat('00',serial_id);    
END IF;
IF serial_id>=10 && serial_id<100 then
   set serial_num = concat('0',serial_id);          
END IF;
set NEW.serialnumber = concat(year(now()),serial_num);
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- 表的结构 `tl_userinfo`
--

CREATE TABLE IF NOT EXISTS `tl_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `upassword` varchar(100) NOT NULL COMMENT '用户密码MD5',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tl_userinfo`
--

INSERT INTO `tl_userinfo` (`id`, `username`, `upassword`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
