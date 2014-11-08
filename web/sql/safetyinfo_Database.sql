-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-11-08 04:13:02
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
-- 表的结构 `tl_department`
--

CREATE TABLE IF NOT EXISTS `tl_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门表ID',
  `department` text NOT NULL COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位名列表' AUTO_INCREMENT=1 ;

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

INSERT INTO `tl_dutyperson` (`id`, `dutyername`) VALUES
(8, '测试修改一个数据'),
(15, 'CCCCCC'),
(16, 'VVVVVV'),
(17, 'BBBBBBB'),
(20, 'KKKKK'),
(21, 'JJJJJ'),
(22, 'HHHHH'),
(23, 'GGGG'),
(25, '小红'),
(26, '小李'),
(27, '不过'),
(28, '1aaa'),
(29, '袁敏无'),
(32, '李振宇'),
(33, '李宁'),
(36, '李双江'),
(37, '李4'),
(38, '李5'),
(39, '李6'),
(40, '李7'),
(41, '李8'),
(42, '李9'),
(43, '李10'),
(45, '李12'),
(62, '李三丰'),
(63, '李敏镐'),
(64, '张卫健'),
(75, '李民航'),
(76, '张新宇'),
(77, '袁新宇'),
(78, '张宇行'),
(79, '袁思维'),
(80, '袁思少');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='写实考察录入表' AUTO_INCREMENT=135 ;

--
-- 转存表中的数据 `tl_realinvestigation`
--

INSERT INTO `tl_realinvestigation` (`id`, `dateofentry`, `timeofentry`, `checkperson`, `checkmodel`, `company`, `cadresonduty`, `foundproblem`, `noticeflag`, `categorynumber`, `checkcontents`, `improvement`, `evaluationpoints`, `pointsreasons`, `assessmentmain`, `comment`, `rectification`) VALUES
(62, '2014-10-30', '23:32:49', '李洁', '添乘', '大足', '代高勇', 'xxxxx', '是', 'q2', 'adfds', 'dfdf', '', '', '', '', ''),
(63, '2014-10-30', '23:32:49', '李洁', '添乘', '大足', '代高勇', 'df', '是', 'df', 'adfds', 'dfdf', NULL, NULL, NULL, NULL, NULL),
(64, '2014-10-02', '23:33:59', '樊鹏', '昼查', '长河碥', '张建辉', '问题', '是', 'CR', 'E', 'W', NULL, NULL, NULL, NULL, NULL),
(65, '2014-10-23', '23:35:00', '蔡泽琪', '夜查', '双石桥', '张建辉', '终于可以了', '否', 'FFF', 'sd', 'sd', '', '', '', '', ''),
(66, '2014-10-03', '01:19:30', '蔡泽琪', '昼查', '大足', '张建辉', 'gcg', '是', 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL),
(71, '2014-10-03', '02:02:53', '李洁', '昼查', '荣昌', '钟世能', 'gg', '是', 'dd', 'dd', 'd', NULL, NULL, NULL, NULL, NULL),
(72, '2014-10-03', '02:10:33', '李洁', '昼查', '大足', '代高勇', '发现问题', '是', 'E6', 'NEIRONG', '意见', NULL, NULL, NULL, NULL, NULL),
(74, '2014-10-03', '02:18:00', '李洁', '添乘', '长河碥', '代高勇', 'SSDSD', '否', 'sww', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL),
(75, '2014-10-03', '02:22:01', '李洁', '夜查', '荣昌', '代高勇', 'hhh', '是', 'hh', 'mn', 'kjj', NULL, NULL, NULL, NULL, NULL),
(79, '2014-10-17', '10:08:00', '李洁', '夜查', '荣昌', '张建辉', '发现问题', '是', 'F5', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL),
(80, '2014-10-03', '10:14:15', '樊鹏', '添乘', '大足', '代高勇', 's', '是', 'D2', 'S', 'W', NULL, NULL, NULL, NULL, NULL),
(81, '2014-10-03', '10:17:45', '李洁', '添乘', '荣昌', '文桂明', '对对', '是', 'D', 'D', 'D', NULL, NULL, NULL, NULL, NULL),
(82, '2014-10-03', '10:27:55', '李洁', '添乘', '荣昌', '文桂明', 's', '是', 'sdsd', 's', 's', NULL, NULL, NULL, NULL, NULL),
(83, '2014-10-08', '10:30:00', '蔡泽琪', '添乘', '荣昌', '文桂明', 'gg', '是', 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL),
(84, '2014-10-08', '10:29:00', '李洁', '昼查', '荣昌', '张建辉', 's', '是', 'ss', 'sss', 'ss', NULL, NULL, NULL, NULL, NULL),
(88, '2014-10-03', '10:43:43', '蔡泽琪', '昼查', '荣昌', '文桂明', 'hh', '是', 'h', 'h', 'h', NULL, NULL, NULL, NULL, NULL),
(90, '2014-10-24', '10:56:00', '樊鹏', '添乘', '长河碥', '张建辉', 'ff', '是', 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL),
(92, '2014-10-16', '11:00:00', '李洁', '昼查', '荣昌', '代高勇', 's', '是', 'sdsd', 's', 's', NULL, NULL, NULL, NULL, NULL),
(93, '2014-10-08', '11:06:30', '李洁', '添乘', '长河碥', '苏国勇', 'ss', '是', 'sss', 's', 's', NULL, NULL, NULL, NULL, NULL),
(101, '2014-10-10', '11:49:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'ss', 'ss', 'ddd', '', '', '', '', ''),
(102, '2014-10-03', '11:51:00', '蔡泽琪', '夜查', '大足', '代高勇', '发现了一点问题', '是', 'F5', 's', 's', '5', '得说明一下', '政委省政府', '我的评语', '整改的不错'),
(105, '2014-10-02', '14:22:30', '蔡泽琪', '添乘', '荣昌', '代高勇', 'dfgfg', '是', 'fff', 'h', 'h', '考核扣分', '扣分原因', '主体', '评语', '整体情况'),
(107, '2014-10-03', '18:43:39', '蔡泽琪', '添乘', '大足', '张建辉', '发现问题', '是', 'A', '内容', '意见', '10', '测试扣分', '考核主体测试', '评语', '测试整改'),
(109, '2014-10-03', '23:50:41', '李洁', '添乘', '荣昌', '张建辉', '测试', '是', 'F4', '检查内同', '改进意见', '1', '1', '1', '1', '整改的不错'),
(111, '2014-10-04', '22:21:43', '蔡泽琪', '昼查', '荣昌', '钟世能', '发现了', '是', 'M5', '444', '444', 'EEE', 'EE', 'EEE', 'EE', 'EEE'),
(112, '2014-10-04', '22:30:24', '李洁', '添乘', '荣昌', '钟世能', 'ff', '否', 'pp', 'y7', 'jjj', '1', '2', '2', '2', '2'),
(113, '2014-10-04', '22:31:00', '李洁', '添乘', '荣昌', '张建辉', 'dd', '否', 'dd', 'ddd', 'ddd', NULL, NULL, NULL, NULL, NULL),
(114, '2014-10-04', '22:33:55', '李洁', '添乘', '荣昌', '代高勇', 'e', '否', 'e', 'e', 'e', NULL, NULL, NULL, NULL, NULL),
(115, '2014-10-04', '22:37:58', '李洁', '昼查', '大足', '代高勇', 'dd', '是', 'hh', 'dd', 'dd', NULL, NULL, NULL, NULL, NULL),
(116, '2014-10-04', '22:45:47', '蔡泽琪', '添乘', '荣昌', '代高勇', 'hh', '否', 'h', 'hhh', 'j', NULL, NULL, NULL, NULL, NULL),
(117, '2014-10-16', '22:50:38', '蔡泽琪', '添乘', '荣昌', '张建辉', 'dd', '是', 'dd', 'dd', 'dd', NULL, NULL, NULL, NULL, NULL),
(118, '2014-10-04', '22:54:34', '樊鹏', '添乘', '荣昌', '文桂明', 'ss', '否', 's', 's', 's', NULL, NULL, NULL, NULL, NULL),
(119, '2014-10-29', '23:21:30', '余戈', '夜查', '荣昌', '代高勇', 'hh', '是', 'g6', 'gt', 'gy', NULL, NULL, NULL, NULL, NULL),
(120, '2014-10-05', '19:52:23', '余戈', '昼查', '荣昌', '代高勇', 's', '否', 'e4', 'e', 'e', NULL, NULL, NULL, NULL, NULL),
(121, '2014-10-05', '19:53:15', '蔡泽琪', '添乘', '长河碥', '张建辉', 'ss', '否', 'ee', 'ee', 'ee', NULL, NULL, NULL, NULL, NULL),
(122, '2014-10-05', '20:40:34', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '否', 'A1', '检查内通过', '一键', NULL, NULL, NULL, NULL, NULL),
(123, '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL),
(124, '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL),
(125, '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL),
(126, '2014-10-04', '20:49:30', '蔡泽琪', '添乘', '荣昌', '代高勇', 'ww', '是', 'B2', 'w', 'w', NULL, NULL, NULL, NULL, NULL),
(127, '2014-10-05', '20:51:59', '蔡泽琪', '昼查', '长河碥', '代高勇', 'hh', '是', 'B2', 'neirong', 'yijian', NULL, NULL, NULL, NULL, NULL),
(128, '2014-10-05', '20:51:59', '蔡泽琪', '昼查', '长河碥', '代高勇', 'hh', '是', 'B2', 'neirong', 'yijian', NULL, NULL, NULL, NULL, NULL),
(130, '2014-10-05', '21:07:43', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '是', 'B2', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL),
(131, '2014-10-05', '21:07:43', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '是', 'B2', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL),
(132, '2014-10-05', '21:47:21', '余戈', '添乘', '荣昌', '代高勇', '发现了部分问题', '是', 'A1', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL),
(133, '2014-11-06', '16:18:00', '袁志佳', '昼查', '南海公司', '张文星', '发现问题', '是', 'A3', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL),
(134, '2014-11-11', '17:25:30', '测试', '夜查', '技信科', '问问', '说说', '是', '是', '是', '是', NULL, NULL, NULL, NULL, NULL);

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

INSERT INTO `tl_safetyproduct` (`id`, `serialnumber`, `infosources`, `company`, `theproblem`, `storagetime`, `thesolution`, `dutydepartment`, `dutyperson`, `deadline`, `rectification`, `checkperson`, `registertime`, `comments`, `currentstatus`) VALUES
(55, '2014055', '信息来源1', '单位A', '问题点', '2014-10-05', '解决方案', '责任部门1', '责任人1', '2014-10-05', '整改情况', '检查人', '2014-10-16', '备注', '问题目前'),
(57, '2014057', '信息来源1', '单位A', 'rr', '2014-10-22', 'rr', '责任部门1', '责任人1', '2014-10-05', NULL, '检查人1', NULL, NULL, NULL),
(58, '2014058', '信息来源1', '荣昌', '发现了部分问题', '2014-10-05', '解决方案', '责任部门1', '责任人1', '2014-10-05', NULL, '检查人1', NULL, NULL, NULL),
(59, '2014059', '信息来源1', '双石桥', 'wenti', '2014-10-24', '多得多', '责任部门1', '责任人1', '2014-10-05', NULL, '检查人1', NULL, NULL, NULL),
(60, '2014060', '信息来源1', '大足', 'hh', '2014-10-23', '的', '责任部门1', '责任人1', '2014-10-16', '', '', NULL, '', '目前问题状况'),
(62, '2014062', '信息来源1', '峰高铺', '发现问题', '2014-10-23', '解决方案', '责任部门1', '责任人1', '2014-10-30', '整改情况', '刘宁', '2014-10-01', 'sss', '事实上');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='安全风险表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `tl_safetyrisk`
--

INSERT INTO `tl_safetyrisk` (`id`, `serialnumber`, `riskname`, `riskclass`, `risksystem`, `reasonofrisk`, `consequence`, `measures`, `distribution`, `furtherproof`, `emergencyhand`, `responsibilitylead`, `dutypartments`, `coordinationpart`, `implementdate`, `completiondate`, `notethebus`, `notehighspeedrail`) VALUES
(5, '2014005', '志佳测试', '风险分类1', '系统1', '风险原因导致的', '可能的后果', '既有措施', '分布情况', '进一步防控', '应急', '责任领导1', '责任部门1', '配合部门1', '2014-10-05', NULL, '备注客车的数据', '备注高铁的数据'),
(6, '2014006', '2014-10-08', '风险分类1', '系统1', '2', 'yyyu', '2', '2', '2', '2', '余戈', '系统1', '余戈', '0000-00-00', '0000-00-00', '2', '2'),
(7, '2014007', 'gbtr', '风险分类1', '系统1', 'tbg', 'gbr', 'tgrt', 'fv', 'fv', 'fer', '责任领导1', '责任部门1', '配合部门1', '2014-10-03', NULL, 'rfr', 'fvf'),
(8, '2014008', '风险名称', '风险分类1', '系统1', '风险原因', '可能后果', '有效性', '分布情况', '进一步防控', '措施', '责任领导1', '责任部门1', '配合部门1', '2014-10-16', NULL, '备注客车', '备注高铁');

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

INSERT INTO `tl_test` (`id`, `name`, `mydate`) VALUES
(1, 'zhijiayuan', '2014-08-25'),
(2, 'xiaohui', '2014-08-29');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='两违查询表' AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `tl_twocontrarymanage`
--

INSERT INTO `tl_twocontrarymanage` (`id`, `serialnumber`, `checktime`, `inspectionunit`, `rummager`, `company`, `responsibleperson`, `jobname`, `politicalaffiliation`, `Illegalcontent`, `processingresults`, `llegalcategory`, `deduction`, `productionleader`, `buckleintegral`, `teamleaderIntegral`) VALUES
(22, '2014022', '2014-10-17', '荣昌', '检查人1', '被查单位1', '责任人1', '', '', '苟富贵', '对方答复', '', '', '', '', ''),
(23, '2014023', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '2014024', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '2014026', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, '2014028', '0000-00-00', '荣昌', '', '', '', '', '', 'wwttt', 'www', '类别1', 'ww', '组长1', 'ww', 'www'),
(30, '2014030', '2014-10-04', '大足', '检查人1', '被查单位1', '', '', '', 'a', 'b', '类别1', 'c', '组长1', 'd', 'e'),
(38, '2014038', '2014-10-04', '荣昌', '检查人1', '被查单位1', '责任人1', '恩恩', '恩恩', '鹅鹅鹅饿饿', '1212', '1212', '1212', '1212', '1212', '1212'),
(39, '2014039', '2014-10-16', '荣昌', '检查人1', '被查单位1', '责任人1', '恩恩', '恩恩', '鹅鹅鹅饿饿', 'ttt', '2323sss', 'sssssss', 'sss', 'ss', '222'),
(42, '2014042', '2014-10-04', '长河碥', '检查人1', '被查单位1', '责任人1', '111', '11', '11', '1111', '1111', '11', '组长', '12', '11'),
(43, '2014043', '2014-10-04', '大足', '检查人1', '被查单位1', '责任人1', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(44, '2014044', '2014-10-04', '大足', '检查人1', '被查单位1', '责任人1', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y'),
(45, '2014045', '2014-10-07', '检查单位', '检查人A', '被查单位', '责任人A', '职名', '政治面貌', '违章内容', '处理结果', '类别1', '责任人扣分', '组长1', '扣积分情况', '班组长扣积分情况'),
(46, '2014046', '2014-10-11', '荣昌', '余戈', '大足', '责任人1', 'ww', 'ww', 'faxianwen', 'ww', 'A1', 'ww', 'ww', 'w', 'w'),
(47, '2014047', '2014-10-04', '荣昌', '李洁', '长河碥', '责任人1', 'x s', 'sxs', 'kkk', 's', 'B2', 'xz', 'sxd', 've', 'cdce'),
(48, '2014048', '2014-10-07', '荣昌', '樊鹏', '大足', '责任人1', '测试', '党员', '发现问题', '处理结果', 'B2', '12', '张五', '扣积分情况', '班组长扣分');

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
