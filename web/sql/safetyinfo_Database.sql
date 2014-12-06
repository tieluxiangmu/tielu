-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 12 月 06 日 11:15
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `safetyinfo_database`
--

-- --------------------------------------------------------

--
-- 表的结构 `tl_department`
--

CREATE TABLE IF NOT EXISTS `tl_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门表ID',
  `name` varchar(50) NOT NULL COMMENT '部门名',
  `typeid` varchar(30) NOT NULL COMMENT '部门类型',
  `parentId` int(11) DEFAULT NULL COMMENT '父部门，id',
  `type` int(1) DEFAULT NULL COMMENT '如果是1，表示虚拟的类型，',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='单位名列表' AUTO_INCREMENT=74 ;

--
-- 转存表中的数据 `tl_department`
--

INSERT INTO `tl_department` (`id`, `name`, `typeid`, `parentId`, `type`) VALUES
(1, '车务段领导', '车务段领导', 0, 1),
(2, '车务段科室', '车务段科室', 1, 1),
(3, '安全科', '车务段科室', 2, NULL),
(4, '技信科', '车务段科室', 2, NULL),
(5, '货管部', '车务段科室', 2, NULL),
(6, '客营科', '车务段科室', 2, NULL),
(7, '劳人科', '车务段科室', 2, NULL),
(8, '财计科', '车务段科室', 2, NULL),
(9, '保卫科', '车务段科室', 2, NULL),
(10, '职教科', '车务段科室', 2, NULL),
(11, '办公室', '车务段科室', 2, NULL),
(12, '党工室', '车务段科室', 2, NULL),
(13, '装卸车间', '车务段科室', 2, NULL),
(14, '乘务车间', '车务段科室', 2, NULL),
(15, '物流营销部', '车务段科室', 2, NULL),
(16, '行政办公室', '车务段科室', 2, NULL),
(17, '铁运部', '车务段科室', 2, NULL),
(18, '南海公司', '车务段科室', 2, NULL),
(19, '宏盛公司', '车务段科室', 2, NULL),
(20, '腾能公司', '车务段科室', 2, NULL),
(21, '隆昌协管站', '协管站', 29, NULL),
(22, '大足协管站', '协管站', 29, NULL),
(23, '永川协管站', '协管站', 29, NULL),
(24, '江津协管站', '协管站', 29, NULL),
(25, '綦江协管站', '协管站', 29, NULL),
(26, '赶水协管站', '协管站', 29, NULL),
(27, '万盛协管站', '协管站', 29, NULL),
(28, '南川协管站', '协管站', 29, NULL),
(29, '协管站', '协管站', 1, 1),
(31, '碑木镇站', '班组', 21, NULL),
(32, '双凤驿站', '班组', 21, NULL),
(33, '迎祥街站', '班组', 21, NULL),
(34, '石燕桥站', '班组', 21, NULL),
(35, '李市镇站', '班组', 21, NULL),
(36, '安富镇站', '班组', 21, NULL),
(37, '班组', '班组', 3, 1),
(40, '广顺场站', '班组', 22, NULL),
(41, '荣昌站', '班组', 22, NULL),
(42, '峰高铺站', '班组', 22, NULL),
(43, '长河碥站', '班组', 22, NULL),
(44, '双石桥站', '班组', 22, NULL),
(45, '栏杆滩站', '班组', 23, NULL),
(46, '临江场站', '班组', 23, NULL),
(47, '柏林站', '班组', 23, NULL),
(48, '茨坝站', '班组', 23, NULL),
(49, '朱杨溪站', '班组', 23, NULL),
(50, '平等站', '班组', 24, NULL),
(51, '金刚沱站', '班组', 24, NULL),
(52, '油溪站', '班组', 24, NULL),
(53, '古家沱站', '班组', 24, NULL),
(54, '黄磏站', '班组', 24, NULL),
(55, '小岚垭站', '班组', 25, NULL),
(56, '七龙星站', '班组', 25, NULL),
(57, '民福寺站', '班组', 25, NULL),
(58, '夏坝站', '班组', 25, NULL),
(59, '广兴站', '班组', 25, NULL),
(60, '綦江北站', '班组', 25, NULL),
(61, '转关口站', '班组', 25, NULL),
(62, '东升坝站', '班组', 26, NULL),
(63, '两河口站', '班组', 26, NULL),
(64, '镇紫街站', '班组', 26, NULL),
(65, '岔滩站', '班组', 26, NULL),
(66, '石门坎站', '班组', 26, NULL),
(67, '万盛西站', '班组', 27, NULL),
(68, '干坝子站', '班组', 27, NULL),
(69, '谷口河站', '班组', 27, NULL),
(70, '三江站', '班组', 27, NULL),
(71, '南川东站', '班组', 28, NULL),
(72, '水江站', '班组', 28, NULL),
(73, '鸭江站', '班组', 28, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tl_departmenttype`
--

CREATE TABLE IF NOT EXISTS `tl_departmenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tl_departmenttype`
--

INSERT INTO `tl_departmenttype` (`id`, `name`) VALUES
(1, '车务段领导'),
(2, '车务段科室'),
(3, '协管站'),
(4, '班组');

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
  `filepath` varchar(255) DEFAULT NULL,
  `level2` int(3) DEFAULT NULL,
  `level3` int(3) DEFAULT NULL,
  `commit` varchar(33) DEFAULT NULL,
  `foundproblemcount` tinyint(4) DEFAULT NULL,
  `ischeck45` text,
  `checkcount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `checkperson` (`checkperson`) COMMENT '检查人索引',
  KEY `checkmodel` (`checkmodel`),
  KEY `cadresonduty` (`cadresonduty`) COMMENT '值班干部索引',
  KEY `dateofentry` (`dateofentry`) COMMENT '录入日期索引',
  KEY `categorynumber` (`categorynumber`) COMMENT '两违类别索引'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='写实考察录入表' AUTO_INCREMENT=236 ;

--
-- 转存表中的数据 `tl_realinvestigation`
--

INSERT INTO `tl_realinvestigation` (`id`, `dateofentry`, `timeofentry`, `checkperson`, `checkmodel`, `company`, `cadresonduty`, `foundproblem`, `noticeflag`, `categorynumber`, `checkcontents`, `improvement`, `evaluationpoints`, `pointsreasons`, `assessmentmain`, `comment`, `rectification`, `filepath`, `level2`, `level3`, `commit`, `foundproblemcount`, `ischeck45`, `checkcount`) VALUES
(62, '2014-10-30', '23:32:49', '李洁', '添乘', '大足', '代高勇', 'xxxxx', '是', 'q2', 'adfds', 'dfdf', '', '', '', '', '', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2014-10-30', '23:32:49', '李洁', '添乘', '大足', '代高勇', 'df', '是', 'df', 'adfds', 'dfdf', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2014-10-02', '23:33:59', '樊鹏', '昼查', '长河碥', '张建辉', '问题', '是', 'CR', 'E', 'W', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2014-10-23', '23:35:00', '蔡泽琪', '夜查', '双石桥', '张建辉', '终于可以了', '否', 'FFF', 'sd', 'sd', '', '', '', '', '', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2014-10-03', '01:19:30', '蔡泽琪', '昼查', '大足', '张建辉', 'gcg', '是', 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2014-10-03', '02:02:53', '李洁', '昼查', '荣昌', '钟世能', 'gg', '是', 'dd', 'dd', 'd', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2014-10-03', '02:10:33', '李洁', '昼查', '大足', '代高勇', '发现问题', '是', 'E6', 'NEIRONG', '意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2014-10-03', '02:18:00', '李洁', '添乘', '长河碥', '代高勇', 'SSDSD', '否', 'sww', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2014-10-03', '02:22:01', '李洁', '夜查', '荣昌', '代高勇', 'hhh', '是', 'hh', 'mn', 'kjj', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2014-10-17', '10:08:00', '李洁', '夜查', '荣昌', '张建辉', '发现问题', '是', 'F5', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2014-10-03', '10:14:15', '樊鹏', '添乘', '大足', '代高勇', 's', '是', 'D2', 'S', 'W', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2014-10-03', '10:17:45', '李洁', '添乘', '荣昌', '文桂明', '对对', '是', 'D', 'D', 'D', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2014-10-03', '10:27:55', '李洁', '添乘', '荣昌', '文桂明', 's', '是', 'sdsd', 's', 's', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2014-10-08', '10:30:00', '蔡泽琪', '添乘', '荣昌', '文桂明', 'gg', '是', 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2014-10-08', '10:29:00', '李洁', '昼查', '荣昌', '张建辉', 's', '是', 'ss', 'sss', 'ss', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2014-10-03', '10:43:43', '蔡泽琪', '昼查', '荣昌', '文桂明', 'hh', '是', 'h', 'h', 'h', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2014-10-24', '10:56:00', '樊鹏', '添乘', '长河碥', '张建辉', 'ff', '是', 'f', 'f', 'f', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2014-10-16', '11:00:00', '李洁', '昼查', '荣昌', '代高勇', 's', '是', 'sdsd', 's', 's', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2014-10-08', '11:06:30', '李洁', '添乘', '长河碥', '苏国勇', 'ss', '是', 'sss', 's', 's', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2014-10-10', '11:49:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'ss', 'ss', 'ddd', '', '', '', '', '', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2014-10-03', '11:51:00', '蔡泽琪', '夜查', '大足', '代高勇', '发现了一点问题', '是', 'F5', 's', 's', '5', '得说明一下', '政委省政府', '我的评语', '整改的不错', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2014-10-02', '14:22:30', '蔡泽琪', '添乘', '荣昌', '代高勇', 'dfgfg', '是', 'fff', 'h', 'h', '考核扣分', '扣分原因', '主体', '评语', '整体情况', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2014-10-03', '18:43:39', '蔡泽琪', '添乘', '大足', '张建辉', '发现问题', '是', 'A', '内容', '意见', '10', '测试扣分', '考核主体测试', '评语', '测试整改', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2014-10-03', '23:50:41', '李洁', '添乘', '荣昌', '张建辉', '测试', '是', 'F4', '检查内同', '改进意见', '1', '1', '1', '1', '整改的不错', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2014-10-04', '22:21:43', '蔡泽琪', '昼查', '荣昌', '钟世能', '发现了', '是', 'M5', '444', '444', 'EEE', 'EE', 'EEE', 'EE', 'EEE', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2014-10-04', '22:30:24', '李洁', '添乘', '荣昌', '钟世能', 'ff', '否', 'pp', 'y7', 'jjj', '1', '2', '2', '2', '2', '168', NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2014-10-04', '22:31:00', '李洁', '添乘', '荣昌', '张建辉', 'dd', '否', 'dd', 'ddd', 'ddd', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2014-10-04', '22:33:55', '李洁', '添乘', '荣昌', '代高勇', 'e', '否', 'e', 'e', 'e', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2014-10-04', '22:37:58', '李洁', '昼查', '大足', '代高勇', 'dd', '是', 'hh', 'dd', 'dd', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2014-10-04', '22:45:47', '蔡泽琪', '添乘', '荣昌', '代高勇', 'hh', '否', 'h', 'hhh', 'j', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2014-10-16', '22:50:38', '蔡泽琪', '添乘', '荣昌', '张建辉', 'dd', '是', 'dd', 'dd', 'dd', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2014-10-04', '22:54:34', '樊鹏', '添乘', '荣昌', '文桂明', 'ss', '否', 's', 's', 's', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2014-10-29', '23:21:30', '余戈', '夜查', '荣昌', '代高勇', 'hh', '是', 'g6', 'gt', 'gy', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2014-10-05', '19:52:23', '余戈', '昼查', '荣昌', '代高勇', 's', '否', 'e4', 'e', 'e', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2014-10-05', '19:53:15', '蔡泽琪', '添乘', '长河碥', '张建辉', 'ss', '否', 'ee', 'ee', 'ee', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2014-10-05', '20:40:34', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '否', 'A1', '检查内通过', '一键', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2014-10-04', '20:49:30', '蔡泽琪', '添乘', '荣昌', '代高勇', 'ww', '是', 'B2', 'w', 'w', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2014-10-05', '20:51:59', '蔡泽琪', '昼查', '长河碥', '代高勇', 'hh', '是', 'B2', 'neirong', 'yijian', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2014-10-05', '20:51:59', '蔡泽琪', '昼查', '长河碥', '代高勇', 'hh', '是', 'B2', 'neirong', 'yijian', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2014-10-05', '21:07:43', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '是', 'B2', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2014-10-05', '21:07:43', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '是', 'B2', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2014-10-05', '21:47:21', '余戈', '添乘', '荣昌', '代高勇', '发现了部分问题', '是', 'A1', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2014-11-06', '16:18:00', '袁志佳', '昼查', '南海公司', '张文星', '发现问题', '是', 'A3', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2014-11-11', '17:25:30', '测试', '夜查', '技信科', '问问', '说说', '是', '是', '是', '是', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, '168', NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, '管增全', NULL, NULL, NULL),
(177, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415506560.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415506645.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415506661.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519147.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519185.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519306.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519337.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519394.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519517.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519572.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', NULL, NULL, NULL, NULL, NULL, './docfile/1415519647.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2014-10-29', '15:54:30', 'asdasd', '昼查', '物流营销部', 'zhangsan', 'asdasd', '是', 'adas', 'asda', 'asdasd', NULL, NULL, NULL, NULL, NULL, './docfile/1415519766.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2014-10-29', '15:54:30', 'asdasd', '昼查', '物流营销部', 'zhangsan', 'asdasd', '是', 'adas', 'asda', 'asdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2014-10-29', '15:54:30', 'asdasd', '昼查', '物流营销部', 'zhangsan', 'asdasd', '是', 'adas', 'asda', 'asdasd', NULL, NULL, NULL, NULL, NULL, './docfile/1415519943.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415526821.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527027.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527066.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527113.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527218.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527244.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527312.doc', NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527338.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', NULL, NULL, NULL, NULL, NULL, './docfile/1415527358.docx', NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2014-10-27', '11:30:00', '岳玲', '添乘', '财计科', 'dd', 'dasd', '是', 'A1', 'dasd', 'wewe', NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, '叶培跃', NULL, NULL, NULL),
(212, '2014-10-27', '11:30:00', '岳玲', '添乘', '财计科', 'dd', 'dasd', '是', 'A1', 'dasd', 'wewe', NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, '叶培跃', NULL, NULL, NULL),
(213, '2014-11-04', '12:30:00', 'ads', '昼查', '安全科', 'das', 'sda', '否', 'A2', 'ds', 'asdfa', NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, '叶培跃', NULL, NULL, NULL),
(214, '2014-11-04', '14:30:00', 'fg', '添乘', '', 'dd', '国防观', '否', 'B3', 'ddf', '分隔符', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(215, '2014-12-15', '16:00:00', 'za', '夜查', '技信科', 'd', 'asdf', '否', 'B1', 'dsd', 'sdwe', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(216, '2014-12-02', '15:00:00', 's', '昼查', '安全科,段领导', 'ssd', 'we', '', 'B1', 'ds', 'dasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(217, '2014-11-30', '16:00:00', 'w', '昼查', '客营科', 'e', 'ds', '是', 'B2', 'ds', 'dsadf', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(218, '2014-12-17', '16:00:00', '1', '夜查', '技信科', 'hhh', '11', '是', 'B11', '1', '1111', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(219, '2014-12-09', '15:30:00', 's', '昼查', '货管部', '2', 'ds', '', 'B2', 'd', 'sad', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(220, '2014-12-16', '16:30:00', 's', '添乘', '段领导', 's', 'dsd', '是', 'B1', 'dsdfs', 'asd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(221, '2014-12-08', '17:30:00', '2', '昼查', '技信科', 'wd', 'das', '', 'B1', 'sad', 'sad', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(222, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(223, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(224, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(225, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(226, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(227, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(228, '2014-12-09', '17:00:00', 'w', '添乘', '行政办公室', '2', 'sd', '', 'B1', 'sadfasfda', 'asfdasd', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(229, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(230, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(231, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(232, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(233, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(234, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL),
(235, '2014-12-10', '16:00:00', 's', '昼查', '段领导', 'ads', 'asd', '是', 'B1', 'asf', 'asdfas', NULL, NULL, NULL, NULL, NULL, NULL, 28, 72, '谭茂斌', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tl_role`
--

CREATE TABLE IF NOT EXISTS `tl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '权限名称，',
  `departmenttype` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT '部门类型ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tl_role`
--

INSERT INTO `tl_role` (`id`, `name`, `departmenttype`) VALUES
(1, '超级管理员', '0'),
(2, 'level1', '车务段领导'),
(3, 'level1', '车务段科室'),
(4, 'level2', '协管站'),
(5, 'level3', '班组');

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
  `commit` varchar(33) NOT NULL,
  `level2` int(3) NOT NULL,
  `level3` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infosources` (`infosources`(255)),
  KEY `storagetime` (`storagetime`),
  KEY `company` (`company`),
  KEY `dutyperson` (`dutyperson`),
  KEY `dutydepartment` (`dutydepartment`),
  KEY `deadline` (`deadline`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='安全生产管理表' AUTO_INCREMENT=69 ;

--
-- 转存表中的数据 `tl_safetyproduct`
--

INSERT INTO `tl_safetyproduct` (`id`, `serialnumber`, `infosources`, `company`, `theproblem`, `storagetime`, `thesolution`, `dutydepartment`, `dutyperson`, `deadline`, `rectification`, `checkperson`, `registertime`, `comments`, `currentstatus`, `commit`, `level2`, `level3`) VALUES
(55, '2014055', '信息来源1', '单位A', '问题点,问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点问题点', '2014-10-05', '解决方案', '责任部门1', '责任人1', '2014-10-05', '整改情况', '检查人', '2014-10-16', '备注', '已整改', '', 28, 72),
(57, '2014057', '信息来源1', '单位A', 'rr', '2014-10-22', 'rr', '责任部门1', '责任人1', '2014-10-05', NULL, '检查人1', NULL, NULL, NULL, '', 0, 0),
(58, '2014058', '信息来源1', '荣昌', '发现了部分问题', '2014-10-05', '解决方案', '责任部门1', '责任人1', '2014-10-05', NULL, '检查人1', NULL, NULL, NULL, '', 0, 0),
(59, '2014059', '信息来源1', '双石桥', 'wenti', '2014-10-24', '多得多', '责任部门1', '责任人1', '2014-10-05', NULL, '检查人1', NULL, NULL, NULL, '', 0, 0),
(60, '2014060', '信息来源1', '大足', 'hh', '2014-10-23', '的', '责任部门1', '责任人1', '2014-10-16', '', '', NULL, '', '目前问题状况', '', 0, 0),
(62, '2014062', '信息来源1', '峰高铺', '发现问题', '2014-10-23', '解决方案', '责任部门1', '责任人1', '2014-10-30', '整改情况', '刘宁', '2014-10-01', 'sss', '事实上', '', 0, 0),
(63, '2014063', '车务段检查', '段领导', 'we', '2014-12-02', 'dsa', '安全科', 'd', '2014-12-16', NULL, 'asd', NULL, NULL, NULL, '', 0, 0),
(64, '2014064', '车务段检查', '段领导', 'we', '2014-12-02', 'dsa', '安全科', 'd', '2014-12-16', NULL, 'asd', NULL, NULL, NULL, '', 0, 0),
(65, '2014065', '车间检查', '技信科,客营科', 'we', '2014-12-02', 'dasd', '技信科,客营科', 'sad', '2014-12-23', NULL, 'dsaasd', NULL, NULL, NULL, '', 0, 0),
(66, '2014066', '车间检查', '技信科,客营科', 'we', '2014-12-02', 'dasd', '技信科,客营科', 'sad', '2014-12-23', NULL, 'dsaasd', NULL, NULL, NULL, '', 0, 0),
(67, '2014067', '车间检查', '技信科,客营科', 'we', '2014-12-02', 'dasd', '技信科,客营科', 'sad', '2014-12-23', NULL, 'dsaasd', NULL, NULL, NULL, '谭茂斌', 28, 72),
(68, '2014068', '车间检查', '技信科,客营科', 'we', '2014-12-02', 'dasd', '技信科,客营科', 'sad', '2014-12-23', NULL, 'dsaasd', NULL, NULL, NULL, '谭茂斌', 28, 72);

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
  `create_time` datetime NOT NULL,
  `create_user` varchar(100) DEFAULT NULL,
  `commit` varchar(33) NOT NULL,
  `level2` int(3) NOT NULL,
  `level3` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `riskclass` (`riskclass`) COMMENT '风险分类',
  KEY `risksystem` (`risksystem`),
  KEY `responsibilitylead` (`responsibilitylead`),
  KEY `dutypartments` (`dutypartments`),
  KEY `coordinationpart` (`coordinationpart`),
  KEY `implementdate` (`implementdate`),
  KEY `completiondate` (`completiondate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='安全风险表' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tl_safetyrisk`
--

INSERT INTO `tl_safetyrisk` (`id`, `serialnumber`, `riskname`, `riskclass`, `risksystem`, `reasonofrisk`, `consequence`, `measures`, `distribution`, `furtherproof`, `emergencyhand`, `responsibilitylead`, `dutypartments`, `coordinationpart`, `implementdate`, `completiondate`, `notethebus`, `notehighspeedrail`, `create_time`, `create_user`, `commit`, `level2`, `level3`) VALUES
(5, '2014005', '志佳测试', '风险分类1', '系统1', '风险原因导致的', '可能的后果', '既有措施', '分布情况', '进一步防控', '应急', '责任领导1', '责任部门1', '配合部门1', '2014-10-05', NULL, '备注客车的数据', '备注高铁的数据', '0000-00-00 00:00:00', NULL, '', 0, 0),
(6, '2014006', '调车安全|汛期防洪工作', '风险分类1', '客运', '2', 'yyyu', '2', '2', '2', '2', '余戈|潘晓明', '客营科', '客营科', '2014-12-22', '2014-12-21', '2', '2', '0000-00-00 00:00:00', NULL, '', 28, 72),
(7, '2014007', '防溜逸，破坏列车进路|汛期防洪工作', '风险分类1', '行车', 'tbg', 'gbr', 'tgrt', 'fv', 'fv', 'fer', '刘远平', '安全科', '安全科', '2014-10-03', '0000-00-00', 'rfr', 'fvf', '0000-00-00 00:00:00', NULL, '', 0, 0),
(8, '2014008', '调车安全|汛期防洪工作', '风险分类1', '行车', '风险原因', '可能后果', '有效性', 'dasd', '进一步防控', '措施', '潘晓明|刘远平', '安全科', '安全科', '2014-10-16', '0000-00-00', '备注客车', '备注高铁', '0000-00-00 00:00:00', NULL, '', 0, 0),
(9, '2014009', '调车安全,汛期防洪工作', '设备,作业', '货运', 'sdaf', 'asdf', 'asdf', '管内各货运办理站,管内各调车作业站', 'asdf', 'asdf', '责任领导1', '货管部,劳人科', '货管部,客营科', '2014-12-17', NULL, 'asdfas', 'asdfasdf', '0000-00-00 00:00:00', NULL, '谭茂斌', 28, 72),
(10, '2014010', '', '', '行车', 'sadf', 'asdfasdfasd', 'asfdasdfwqe', '', 'sadfa', 'sdfasdf', '责任领导1', '', '', '2014-12-10', NULL, 'dafds', 'werqewr', '0000-00-00 00:00:00', NULL, '谭茂斌', 28, 72),
(11, '2014011', NULL, NULL, '行车', 'dafsd', 'dasfasd', 'asdfasfd', NULL, 'asdf', 'asdf', '责任领导1', NULL, NULL, '2014-12-24', NULL, 'asfd', 'asdfasdf', '0000-00-00 00:00:00', NULL, '谭茂斌', 28, 72),
(12, '2014012', '调车安全', '作业', '客运', 'sadf', 'sadfasd', 'csdfq', '管内各客运办理站', 'dsfa', 'dfasfd', '责任领导1', '安全科', '技信科', '2014-12-01', NULL, 'safd', 'sadfsadf', '0000-00-00 00:00:00', NULL, '谭茂斌', 28, 72),
(13, '2014013', '调车安全', '作业', '客运', 'sadf', 'sadfasd', 'csdfq', '管内各客运办理站|管内各调车作业站', 'dsfa', 'dfasfd', '责任领导1', '安全科', '技信科', '2014-12-01', NULL, 'safd', 'sadfsadf', '0000-00-00 00:00:00', NULL, '谭茂斌', 28, 72),
(14, '2014014', '调车安全|大量旅客滞留', '作业', '客运', 'sadf', 'sadfasd', 'csdfq', '管内各客运办理站|管内各调车作业站', 'dsfa', 'dfasfd', '责任领导1', '安全科', '技信科', '2014-12-01', NULL, 'safd', 'sadfsadf', '0000-00-00 00:00:00', NULL, '谭茂斌', 28, 72);

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
-- 表的结构 `tl_schedule`
--

CREATE TABLE IF NOT EXISTS `tl_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(20) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `task_name` varchar(1000) NOT NULL,
  `task_type` varchar(50) NOT NULL,
  `creator` varchar(20) NOT NULL,
  `task_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `tl_schedule`
--

INSERT INTO `tl_schedule` (`id`, `owner`, `create_time`, `task_name`, `task_type`, `creator`, `task_date`) VALUES
(2, '袁志佳', '2014-11-08 23:06:19', 'test', '夜查', 'me', '2014-11-19'),
(3, '张三', '2014-11-08 23:21:01', 'fsdfsd', '值班', 'me', '2014-11-04'),
(4, '袁志佳', '2014-11-08 23:21:51', 'sfdfsdf', '值班', 'me', '2014-11-26'),
(5, '袁志佳', '2014-11-08 23:26:05', 'sfdfsdf', '值班', 'me', '2014-11-26'),
(6, '李四', '2014-11-08 23:26:14', 'fsfsdf', '值班', 'me', '2014-11-27'),
(11, '袁志佳', '2014-11-08 23:32:21', 'fsdfsdfs', '值班', 'me', '2014-11-26'),
(12, 'me', '2014-11-08 23:51:16', 'test', '值班', 'me', '2014-11-20'),
(13, 'Array', '2014-11-15 06:39:45', '千瓦', '值班', 'Array', '2014-11-04'),
(14, 'Array', '2014-11-15 06:40:20', '大都是', '添乘', 'Array', '2014-11-11'),
(15, '徐顺雄', '2014-11-15 07:23:04', '大声的', '值班', '王家兵', '2014-11-10'),
(16, '谭茂斌', '2014-12-06 10:49:37', '值班情况汇总', '值班', '谭茂斌', '2014-12-09');

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
  `teamleader` varchar(100) DEFAULT NULL,
  `commit` varchar(33) NOT NULL,
  `level2` int(3) NOT NULL,
  `level3` int(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `checktime` (`checktime`),
  KEY `inspectionunit` (`inspectionunit`),
  KEY `llegalcategory` (`llegalcategory`),
  KEY `company` (`company`) COMMENT '被查单位索引',
  KEY `responsibleperson` (`responsibleperson`),
  KEY `productionleader` (`productionleader`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='两违查询表' AUTO_INCREMENT=72 ;

--
-- 转存表中的数据 `tl_twocontrarymanage`
--

INSERT INTO `tl_twocontrarymanage` (`id`, `serialnumber`, `checktime`, `inspectionunit`, `rummager`, `company`, `responsibleperson`, `jobname`, `politicalaffiliation`, `Illegalcontent`, `processingresults`, `llegalcategory`, `deduction`, `productionleader`, `buckleintegral`, `teamleaderIntegral`, `teamleader`, `commit`, `level2`, `level3`) VALUES
(22, '2014022', '2014-10-17', '荣昌', '检查人1', '被查单位1', '责任人1', '', '', '苟富贵,苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵苟富贵', '对方答复', '', '', '', '', '', NULL, '', 28, 72),
(23, '2014023', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0),
(24, '2014024', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0),
(26, '2014026', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '', 0, 0),
(28, '2014028', '0000-00-00', '荣昌', '', '', '', '', '', 'wwttt', 'www', '类别1', 'ww', '组长1', 'ww', 'www', NULL, '', 0, 0),
(30, '2014030', '2014-10-04', '大足', '检查人1', '被查单位1', '', '', '', 'a', 'b', '类别1', 'c', '组长1', 'd', 'e', NULL, '', 0, 0),
(38, '2014038', '2014-10-04', '荣昌', '检查人1', '被查单位1', '责任人1', '恩恩', '恩恩', '鹅鹅鹅饿饿', '1212', '1212', '1212', '1212', '1212', '1212', NULL, '', 0, 0),
(39, '2014039', '2014-10-16', '荣昌', '检查人1', '被查单位1', '责任人1', '恩恩', '恩恩', '鹅鹅鹅饿饿', 'ttt', '2323sss', 'sssssss', 'sss', 'ss', '222', NULL, '', 0, 0),
(42, '2014042', '2014-10-04', '长河碥', '检查人1', '被查单位1', '责任人1', '111', '11', '11', '1111', '1111', '11', '组长', '12', '11', NULL, '', 0, 0),
(43, '2014043', '2014-10-04', '大足', '检查人1', '被查单位1', '责任人1', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', NULL, '', 0, 0),
(44, '2014044', '2014-10-04', '大足', '检查人1', '被查单位1', '责任人1', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', NULL, '', 0, 0),
(45, '2014045', '2014-10-07', '检查单位', '检查人A', '被查单位', '责任人A', '职名', '政治面貌', '违章内容', '处理结果', '类别1', '责任人扣分', '组长1', '扣积分情况', '班组长扣积分情况', NULL, '', 0, 0),
(46, '2014046', '2014-10-11', '荣昌', '余戈', '大足', '责任人1', 'ww', 'ww', 'faxianwen', 'ww', 'A1', 'ww', 'ww', 'w', 'w', NULL, '', 0, 0),
(47, '2014047', '2014-10-04', '荣昌', '李洁', '长河碥', '责任人1', 'x s', 'sxs', 'kkk', 's', 'B2', 'xz', 'sxd', 've', 'cdce', NULL, '', 0, 0),
(48, '2014048', '2014-10-07', '荣昌', '樊鹏', '大足', '责任人1', '测试', '党员', '发现问题', '处理结果', 'B2', '12', '张五', '扣积分情况', '班组长扣分', NULL, '', 0, 0),
(49, '2014049', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(50, '2014050', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(51, '2014051', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(52, '2014052', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(53, '2014053', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(54, '2014054', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(55, '2014055', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(56, '2014056', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(57, '2014057', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(58, '2014058', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(59, '2014059', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(60, '2014060', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(61, '2014061', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(62, '2014062', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(63, '2014063', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(64, '2014064', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(65, '2014065', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(66, '2014066', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(67, '2014067', '2014-12-09', '车务段', '2是的', '保卫科', NULL, '撒旦', '峰高铺', '大师傅的', '都是', 'B', '1', '为', '2', '1', NULL, '', 0, 0),
(68, '2014068', '2014-12-09', '车务段', 'd', '安全科', NULL, 'dsa', '荣昌', 'dfa', 'asd', 'B', '4', 'asd', '2', '3', NULL, '谭茂斌', 28, 72),
(69, '2014069', '2014-12-09', '车务段', 'd', '安全科', NULL, 'dsa', '荣昌', 'dfa', 'asd', 'B', '4', 'asd', '2', '3', NULL, '谭茂斌', 28, 72),
(70, '2014070', '2014-12-09', '车务段', 'd', '安全科', NULL, 'dsa', '荣昌', 'dfa', 'asd', 'B', '4', 'asd', '2', '3', NULL, '谭茂斌', 28, 72),
(71, '2014071', '2014-12-09', '车务段', 'd', '货管部', NULL, 'dsa', '荣昌', 'dfa', 'asd', 'B', '4', 'asd', '2', '3', NULL, '谭茂斌', 28, 72);

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
  `name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '用户密码MD5',
  `departmenttype` varchar(20) NOT NULL COMMENT '部门类型',
  `department` varchar(30) NOT NULL COMMENT '部门',
  `position` varchar(50) DEFAULT NULL COMMENT '职位',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `tel` varchar(13) DEFAULT NULL COMMENT '办公电话',
  `photo` varchar(200) DEFAULT NULL,
  `positionType` varchar(20) DEFAULT NULL COMMENT '职位类型',
  `parentDanwei` varchar(30) DEFAULT NULL COMMENT '上级单位',
  `parentLeader` varchar(30) DEFAULT NULL COMMENT '上级领导',
  `xiesi` int(1) DEFAULT NULL COMMENT '是否有写实任务',
  `zhoucha` int(11) DEFAULT NULL COMMENT '指昼查次数要求',
  `yecha` int(11) DEFAULT NULL COMMENT '指夜查次数要求',
  `tiancheng` int(11) DEFAULT NULL COMMENT '指添乘次数要求',
  `jiancha` int(11) DEFAULT NULL COMMENT '指检查四五等站次数要求',
  `tongzhi` int(11) DEFAULT NULL COMMENT '指安全通知书发放次数要求',
  `faxianwenti` int(11) DEFAULT NULL COMMENT '指发现问题次数要求',
  `liangwei` int(11) DEFAULT NULL COMMENT '指两违查处次数要求',
  `anquan` int(11) DEFAULT NULL COMMENT '指安全风险次数要求',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `goal` int(4) DEFAULT NULL COMMENT '目标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=207 ;

--
-- 转存表中的数据 `tl_userinfo`
--

INSERT INTO `tl_userinfo` (`id`, `name`, `password`, `departmenttype`, `department`, `position`, `mobile`, `tel`, `photo`, `positionType`, `parentDanwei`, `parentLeader`, `xiesi`, `zhoucha`, `yecha`, `tiancheng`, `jiancha`, `tongzhi`, `faxianwenti`, `liangwei`, `anquan`, `email`, `goal`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(2, '蔡泽琪', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '党委书记', '13610111011', '23456', 'D:\\wamp\\www\\web/attachment/', '书记', 'NULL', 'NULL', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453422@qq.com', 2),
(3, '余戈', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '段长', '13610111011', '23456', 'default.jpg', '主管', 'NULL', 'NULL', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453423@qq.com', 2),
(4, '刘远平', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '副段长', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453424@qq.com', 2),
(5, '潘晓明', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '副段长', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453425@qq.com', 2),
(6, '刘宁', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '副段长', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453426@qq.com', 2),
(7, '樊鹏', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '副段长', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453427@qq.com', 2),
(8, '田兴明', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '副段长', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453428@qq.com', 2),
(9, '黄成福', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '工会主席', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453429@qq.com', 2),
(10, '汤献忠', '827ccb0eea8a706c4c34a16891f84e7b', '车务段领导', '车务段领导', '党委副书记、纪委书记', '13610111011', '23456', 'default.jpg', '职员', 'NULL', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453430@qq.com', 2),
(11, '范庆', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '党工室', '主任', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453431@qq.com', 2),
(12, '唐静', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '党工室', '党委助理员、纪检员', '13610111011', '23456', 'default.jpg', '职员', '党工室', '范庆', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453432@qq.com', 2),
(13, '刘丽华', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '党工室', '党委主任干事、工会指导员', '13610111011', '23456', 'default.jpg', '职员', '党工室', '范庆', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453433@qq.com', 2),
(14, '罗文光', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '主任', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453434@qq.com', 2),
(15, '曾红', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '副主任', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453435@qq.com', 2),
(16, '李震森', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '行政监察兼路风监察', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453436@qq.com', 2),
(17, '姚代明', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453437@qq.com', 2),
(18, '黄显琼', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453438@qq.com', 2),
(19, '冯萍', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '助理馆员', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453439@qq.com', 2),
(20, '王果', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453440@qq.com', 2),
(21, '陈其学', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '干事', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453441@qq.com', 2),
(22, '肖婧媛', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '行政办公室', '干事', '13610111011', '23456', 'default.jpg', '职员', '行政办公室', '罗文光', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453442@qq.com', 2),
(23, '王家兵', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '保卫科', '科长', '13610111011', '23422', '/attachment/03.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453443@qq.com', 2),
(24, '徐顺雄', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '保卫科', '协理', '13610111011', '23456', 'default.jpg', '职员', '保卫科', '王家兵', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453444@qq.com', 2),
(25, '郭鹏飞', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '保卫科', '干事', '13610111011', '23456', 'default.jpg', '职员', '保卫科', '王家兵', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453445@qq.com', 2),
(26, '杜莹', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '科长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453446@qq.com', 2),
(27, '冯勇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '副科长、党委助理员', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453447@qq.com', 2),
(28, '岳玲', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '经济师', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453448@qq.com', 2),
(29, '曹萍', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '经济师', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453449@qq.com', 2),
(30, '马玲', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '经济师', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453450@qq.com', 2),
(31, '刘振宇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '助理经济师', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453451@qq.com', 2),
(32, '万一江', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453452@qq.com', 2),
(33, '李灿', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '劳人科', '技术员', '13610111011', '23456', 'default.jpg', '职员', '劳人科', '杜莹', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453453@qq.com', 2),
(34, '赵源源', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '科长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453454@qq.com', 2),
(35, '付孝周', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '副科长', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453455@qq.com', 2),
(36, '刘玉风', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '副科长', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453456@qq.com', 2),
(37, '范秋红', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '会计师', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453457@qq.com', 2),
(38, '封玲', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '会计师', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453458@qq.com', 2),
(39, '姚俊', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '会计师', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453459@qq.com', 2),
(40, '代淑梅', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '助理会计师', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453460@qq.com', 2),
(41, '谭芝莉', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '会计员', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453461@qq.com', 2),
(42, '李晓春', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '统计员', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453462@qq.com', 2),
(43, '陈灿', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '财计科', '统计员', '13610111011', '23456', 'default.jpg', '职员', '财计科', '赵源源', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453463@qq.com', 2),
(44, '李洁', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '科长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453464@qq.com', 2),
(45, '江竺键', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '副科长', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453465@qq.com', 2),
(46, '罗长华', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453466@qq.com', 2),
(47, '张跃', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453467@qq.com', 2),
(48, '吴正亮', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453468@qq.com', 2),
(49, '程勇1', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '技术员', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453469@qq.com', 2),
(50, '程勇2', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '技术员', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453470@qq.com', 2),
(51, '唐勇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '安全科', '技术员', '13610111011', '23456', 'default.jpg', '职员', '安全科', '李洁', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453471@qq.com', 2),
(52, '姜广全', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '科长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453472@qq.com', 2),
(53, '林海云', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '副科长', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453473@qq.com', 2),
(54, '刘友建', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453474@qq.com', 2),
(55, '黄鹏', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453475@qq.com', 2),
(56, '刁义', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453476@qq.com', 2),
(57, '关朋', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453477@qq.com', 2),
(58, '龙海', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453478@qq.com', 2),
(59, '伍安山', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453479@qq.com', 2),
(60, '何兵', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '技信科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '技信科', '姜广全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453480@qq.com', 2),
(61, '胡剑', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '职教科', '科长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453481@qq.com', 2),
(62, '王基群', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '职教科', '工程师', '13610111011', '23456', 'default.jpg', '职员', '职教科', '胡剑', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453482@qq.com', 2),
(63, '王燕', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '职教科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '职教科', '胡剑', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453483@qq.com', 2),
(64, '邱雁南', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '职教科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '职教科', '胡剑', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453484@qq.com', 2),
(65, '丁勇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '货管部', '部长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453485@qq.com', 2),
(66, '王勇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '货管部', '解聘部长职务', '13610111011', '23456', 'default.jpg', '职员', '货管部', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453486@qq.com', 2),
(67, '刘杰', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '货管部', '工程师', '13610111011', '23456', 'default.jpg', '职员', '货管部', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453487@qq.com', 2),
(68, '张娅', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '货管部', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '货管部', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453488@qq.com', 2),
(69, '徐光宗', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '货管部', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '货管部', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453489@qq.com', 2),
(70, '刘晟嘉', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '货管部', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '货管部', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453490@qq.com', 2),
(71, '鞠克英', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '客营科', '科长', '13610111011', '23456', 'default.jpg', '职员', '客营科', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453491@qq.com', 2),
(72, '赵雅玲', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '客营科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '客营科', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453492@qq.com', 2),
(73, '王海燕', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '客营科', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '客营科', '丁勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453493@qq.com', 2),
(74, '张凯', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '部长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453494@qq.com', 2),
(75, '唐志建', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '副部长', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453495@qq.com', 2),
(76, '徐美琼', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '副部长', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453496@qq.com', 2),
(77, '郑重生', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '副部长', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453497@qq.com', 2),
(78, '杨永界', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453498@qq.com', 2),
(79, '赵娅英', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453499@qq.com', 2),
(80, '唐小雁', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '助理经济师', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453500@qq.com', 2),
(81, '田原', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '物流营销部', '助理经济师', '13610111011', '23456', 'default.jpg', '职员', '物流营销部', '张凯', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453501@qq.com', 2),
(82, '朱占红', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '党支部书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453502@qq.com', 2),
(83, '李建军', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '主任', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453503@qq.com', 2),
(84, '崔健', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '副主任', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453504@qq.com', 2),
(85, '王敏', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '副主任', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453505@qq.com', 2),
(86, '姚洪刚', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '副主任', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453506@qq.com', 2),
(87, '王鸿杰', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453507@qq.com', 2),
(88, '田秀川', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453508@qq.com', 2),
(89, '黄林虎', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '工程师', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453509@qq.com', 2),
(90, '向曙红', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '助理经济师', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453510@qq.com', 2),
(91, '李顺梅', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453511@qq.com', 2),
(92, '陈军', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453512@qq.com', 2),
(93, '李正华', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '从事工程初级专技工作', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453513@qq.com', 2),
(94, '张伟', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '装卸车间', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '装卸车间', '朱占红', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453514@qq.com', 2),
(95, '高康君', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453515@qq.com', 2),
(96, '叶培跃', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '党总支书记', '13610111011', '234567', '/attachment/03.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453516@qq.com', 2),
(97, '王联欢', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453517@qq.com', 2),
(98, '伍洋', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453518@qq.com', 2),
(99, '管增全', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '助理工程师（负责货运）', '13610111011', '23456', 'default.jpg', '职员', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453519@qq.com', 2),
(100, '罗强', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '助理工程师（负责客运）', '13610111011', '23456', 'default.jpg', '职员', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453520@qq.com', 2),
(102, '黄俊', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '隆昌协管站', '技术员', '13610111011', '23456', 'default.jpg', '职员', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453522@qq.com', 2),
(103, '张建辉', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '大足协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453523@qq.com', 2),
(104, '文桂明', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '大足协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453524@qq.com', 2),
(105, '苏国勇', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '大足协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453525@qq.com', 2),
(106, '石晓强', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '大足协管站', '副站长兼广顺场站站长', '13610111011', '23456', 'default.jpg', '职员', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453526@qq.com', 2),
(107, '钟世能', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '大足协管站', '副站长兼荣昌站站长', '13610111011', '23456', 'default.jpg', '职员', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453527@qq.com', 2),
(108, '杨柳', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '大足协管站', '技术员', '13610111011', '23456', 'default.jpg', '职员', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453528@qq.com', 2),
(109, '罗尤宽', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453529@qq.com', 2),
(110, '黄毅', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453530@qq.com', 2),
(111, '邓春雨', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453531@qq.com', 2),
(112, '李毅', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '技术员', '13610111011', '23456', 'default.jpg', '职员', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453532@qq.com', 2),
(113, '刁莉', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453533@qq.com', 2),
(114, '李琦', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453534@qq.com', 2),
(115, '雷永田', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '技术员兼栏杆滩站站长', '13610111011', '23456', 'default.jpg', '职员', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453535@qq.com', 2),
(116, '江勇', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '永川协管站', '助理工程师兼朱杨溪站站长', '13610111011', '23456', 'default.jpg', '职员', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453536@qq.com', 2),
(117, '王权', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453537@qq.com', 2),
(118, '蒲倩', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453538@qq.com', 2),
(119, '张博', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453539@qq.com', 2),
(120, '刘明懿 ', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '副站长兼白沙站站长', '13610111011', '23456', 'default.jpg', '职员', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453540@qq.com', 2),
(121, '陈兵', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453541@qq.com', 2),
(122, '王志', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '技术员兼黄谦站长', '13610111011', '23456', 'default.jpg', '职员', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453542@qq.com', 2),
(123, '邹晏华', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '江津协管站', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453543@qq.com', 2),
(124, '陈钢', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '綦江协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453544@qq.com', 2),
(125, '吕良勇', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '綦江协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453545@qq.com', 2),
(126, '杨锡玉', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '綦江协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453546@qq.com', 2),
(127, '周克谊', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '綦江协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453547@qq.com', 2),
(128, '赵勇刚', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '綦江协管站', '副站长兼小南垭站长', '13610111011', '23456', 'default.jpg', '职员', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453548@qq.com', 2),
(129, '周宇', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '綦江协管站', '技术员', '13610111011', '23456', 'default.jpg', '职员', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453549@qq.com', 2),
(130, '贺继东', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453550@qq.com', 2),
(131, '张洪枚', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453551@qq.com', 2),
(132, '刘烈斌', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453552@qq.com', 2),
(133, '蒋世宾', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '副站长兼运转主任', '13610111011', '23456', 'default.jpg', '职员', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453553@qq.com', 2),
(134, '冉磊', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453554@qq.com', 2),
(135, '周兴', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '技术员', '13610111011', '23456', 'default.jpg', '职员', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453555@qq.com', 2),
(136, '周文义', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '赶水协管站', '助理工程师', '13610111011', '23456', 'default.jpg', '职员', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453556@qq.com', 2),
(137, '谭自力', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453557@qq.com', 2),
(138, '蒋世荣', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453558@qq.com', 2),
(139, '周世强', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453559@qq.com', 2),
(140, '汪富红', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '副站长', '13610111011', '23456', 'default.jpg', '职员', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453560@qq.com', 2),
(141, '胡波', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '副站长兼三江站站长', '13610111011', '23456', 'default.jpg', '职员', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453561@qq.com', 2),
(142, '蔡波', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '技术员（货运负责人）', '13610111011', '23456', 'default.jpg', '职员', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453562@qq.com', 2),
(143, '唐洛陵', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '技术员兼三江站技术员', '13610111011', '23456', 'default.jpg', '职员', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453563@qq.com', 2),
(144, '童德里', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '万盛协管站', '主任干事', '13610111011', '23456', 'default.jpg', '职员', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453564@qq.com', 2),
(145, '胡柯', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '南川协管站', '站长', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453565@qq.com', 2),
(146, '张正友', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '南川协管站', '党总支书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453566@qq.com', 2),
(147, '黄刚', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '南川协管站', '技术员', '13610111011', '23456', 'default.jpg', '职员', '南川协管站', '张正友', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453567@qq.com', 2),
(148, '王涛', '827ccb0eea8a706c4c34a16891f84e7b', '协管站', '南川协管站', '技术员兼南川东站站长', '13610111011', '23456', 'default.jpg', '职员', '南川协管站', '张正友', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453568@qq.com', 2),
(149, '刘学峰', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '乘务车间', '主任', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453569@qq.com', 2),
(150, '郑祖全', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '乘务车间', '党支部书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453570@qq.com', 2),
(151, '李明忠', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '乘务车间', '副主任', '13610111011', '23456', 'default.jpg', '职员', '乘务车间', '郑祖全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453571@qq.com', 2),
(152, '朱治祥', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '乘务车间', '副主任', '13610111011', '23456', 'default.jpg', '职员', '乘务车间', '郑祖全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453572@qq.com', 2),
(153, '杨勇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '南海公司', '党总支书记', '13610111011', '23456', 'default.jpg', '主管', '南海公司', '郑祖全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453573@qq.com', 2),
(154, '莫世荣', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '南海公司', '助理会计师', '13610111011', '23456', 'default.jpg', '职员', '南海公司', '郑祖全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453574@qq.com', 2),
(155, '唐超', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '南海公司', '出纳员', '13610111011', '23456', 'default.jpg', '职员', '南海公司', '郑祖全', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453575@qq.com', 2),
(156, '袁荣', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '经理', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453576@qq.com', 2),
(157, '蒋梅梅', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '党支部书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453577@qq.com', 2),
(158, '赵云楷', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '副经理', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453578@qq.com', 2),
(159, '李凤玲', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '副经理', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453579@qq.com', 2),
(160, '陈慧玲', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '副经理', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453580@qq.com', 2),
(161, '李卫东', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '财务主任', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453581@qq.com', 2),
(162, '周静', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '助理会计师', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453582@qq.com', 2),
(163, '苏承雨', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '出纳员', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453583@qq.com', 2),
(164, '王明大', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '业务员', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453584@qq.com', 2),
(165, '任海鹏', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '业务员', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453585@qq.com', 2),
(166, '陈萌', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '铁运部', '业务员', '13610111011', '23456', 'default.jpg', '职员', '铁运部', '蒋梅梅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453586@qq.com', 2),
(167, '卢庆洪', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '宏盛公司', '经理', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453587@qq.com', 2),
(168, '陶桂芬', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '宏盛公司', '财务主任', '13610111011', '23456', 'default.jpg', '职员', '宏盛公司', '卢庆洪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453588@qq.com', 2),
(169, '兰敏', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '宏盛公司', '出纳员', '13610111011', '23456', 'default.jpg', '职员', '宏盛公司', '卢庆洪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453589@qq.com', 2),
(170, '罗勇', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '腾能公司', '经理', '13610111011', '23456', 'default.jpg', '主管', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453590@qq.com', 2),
(171, '李萍', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '腾能公司', '党支部书记', '13610111011', '23456', 'default.jpg', '书记', '车务段领导', '蔡泽琪', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453591@qq.com', 2),
(172, '余光敏', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '腾能公司', '副经理', '13610111011', '23456', 'default.jpg', '职员', '腾能公司', '李萍', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453592@qq.com', 2),
(173, '赖书中', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '腾能公司', '副经理', '13610111011', '23456', 'default.jpg', '职员', '腾能公司', '李萍', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453593@qq.com', 2),
(174, '吴郁荪', '827ccb0eea8a706c4c34a16891f84e7b', '车务段科室', '腾能公司', '助理会计师', '13610111011', '23456', 'default.jpg', '职员', '腾能公司', '李萍', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453594@qq.com', 2),
(175, '胡建', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '椑木镇站', '椑木镇站长', '13610111011', '23456', 'default.jpg', '主管', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453595@qq.com', 2),
(176, '李万强', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '双凤驿站', '双凤驿站长', '13610111011', '23456', 'default.jpg', '主管', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453596@qq.com', 2),
(177, '陈勇', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '迎祥街站', '迎祥街站长', '13610111011', '23456', 'default.jpg', '主管', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453597@qq.com', 2),
(178, '刘作成', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '石燕桥站', '石燕桥站长', '13610111011', '23456', 'default.jpg', '主管', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453598@qq.com', 2),
(179, '陈生伟', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '李市镇站', '李市镇站长', '13610111011', '23456', 'default.jpg', '主管', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453599@qq.com', 2),
(180, '王光明', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '安富镇站', '安富镇站长', '13610111011', '23456', 'default.jpg', '主管', '隆昌协管站', '叶培跃', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453600@qq.com', 2),
(181, '汤厚能', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '广顺场站', '广顺场站长', '13610111011', '23456', 'default.jpg', '主管', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453601@qq.com', 2),
(182, '代高勇', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '峰高铺站', '峰高铺站长', '13610111011', '23456', 'default.jpg', '主管', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453602@qq.com', 2),
(183, '张正国', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '长河碥站', '长河碥站长', '13610111011', '23456', 'default.jpg', '主管', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453603@qq.com', 2),
(184, '谢强', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '双石桥站', '双石桥站长', '13610111011', '23456', 'default.jpg', '主管', '大足协管站', '文桂明', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453604@qq.com', 2),
(185, '苏家明', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '临江场站', '临江场站长', '13610111011', '23456', 'default.jpg', '主管', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453605@qq.com', 2),
(186, '李俊', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '柏林站', '柏林站长', '13610111011', '23456', 'default.jpg', '主管', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453606@qq.com', 2),
(187, '张涛', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '茨坝站', '茨坝站长', '13610111011', '23456', 'default.jpg', '主管', '永川协管站', '黄毅', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453607@qq.com', 2),
(188, '陈举志', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '平等站', '平等站长', '13610111011', '23456', 'default.jpg', '主管', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453608@qq.com', 2),
(189, '柯家祥', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '金刚沱站', '金刚沱站长', '13610111011', '23456', 'default.jpg', '主管', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453609@qq.com', 2),
(190, '罗庆波', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '油溪站', '油溪站长', '13610111011', '23456', 'default.jpg', '主管', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453610@qq.com', 2),
(191, '刘维超', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '古家沱站', '古家沱站长', '13610111011', '23456', 'default.jpg', '主管', '江津协管站', '蒲倩', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453611@qq.com', 2),
(192, '叶大伟', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '七龙星站', '七龙星站长', '13610111011', '23456', 'default.jpg', '主管', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453612@qq.com', 2),
(193, '周建', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '民福寺站', '民福寺站长', '13610111011', '23456', 'default.jpg', '主管', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453613@qq.com', 2),
(194, '王文利', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '夏坝站', '夏坝站长', '13610111011', '23456', 'default.jpg', '主管', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453614@qq.com', 2),
(195, '万朝建', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '广兴站站', '广兴站站长', '13610111011', '23456', 'default.jpg', '主管', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453615@qq.com', 2),
(196, '李光彬', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '綦江北站', '綦江北站站长', '13610111011', '23456', 'default.jpg', '主管', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453616@qq.com', 2),
(197, '肖廷伟', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '转关口站', '转关口站长', '13610111011', '23456', 'default.jpg', '主管', '綦江协管站', '吕良勇', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453617@qq.com', 2),
(198, '王开荣', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '东升坝站', '东升坝站长', '13610111011', '23456', 'default.jpg', '主管', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453618@qq.com', 2),
(199, '叶含其', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '两河口站', '两河口站长', '13610111011', '23456', 'default.jpg', '主管', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453619@qq.com', 2),
(200, '王成', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '镇紫街站', '镇紫街站长', '13610111011', '23456', 'default.jpg', '主管', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453620@qq.com', 2),
(201, '杜军', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '岔滩站', '岔滩站长', '13610111011', '23456', 'default.jpg', '主管', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453621@qq.com', 2),
(202, '郭禄军', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '石门坎站', '石门坎站长', '13610111011', '23456', 'default.jpg', '主管', '赶水协管站', '张洪枚', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453622@qq.com', 2),
(203, '汪启荣', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '干坝子站', '干坝子站长', '13610111011', '23456', 'default.jpg', '主管', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453623@qq.com', 2),
(204, '谢伟', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '谷口河站', '谷口河站长', '13610111011', '23456', 'default.jpg', '主管', '万盛协管站', '蒋世荣', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453624@qq.com', 2),
(205, '谭茂斌', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '水江站', '水江站长', '13610111011', '234567', '/attachment/02濂界殑.jpg', '主管', '南川协管站', '张正友', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453625@qq.com', 2),
(206, '张元明', '827ccb0eea8a706c4c34a16891f84e7b', '班组', '鸭江站', '鸭江站长', '13610111011', '23456', 'default.jpg', '主管', '南川协管站', '张正友', 1, 3, 3, 3, 3, 2, 3, 3, 3, '5453626@qq.com', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
