/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50520
Source Host           : 127.0.0.1:3306
Source Database       : safetyinfo_database

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-11-09 18:25:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tl_department
-- ----------------------------
DROP TABLE IF EXISTS `tl_department`;
CREATE TABLE `tl_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门表ID',
  `name` varchar(50) NOT NULL COMMENT '部门名',
  `typeid` int(11) NOT NULL COMMENT '部门类型编号',
  `parentId` int(11) DEFAULT NULL COMMENT '父部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位名列表';

-- ----------------------------
-- Records of tl_department
-- ----------------------------

-- ----------------------------
-- Table structure for tl_departmenttype
-- ----------------------------
DROP TABLE IF EXISTS `tl_departmenttype`;
CREATE TABLE `tl_departmenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tl_departmenttype
-- ----------------------------
INSERT INTO `tl_departmenttype` VALUES ('1', '车务段领导');
INSERT INTO `tl_departmenttype` VALUES ('2', '车务段科室');
INSERT INTO `tl_departmenttype` VALUES ('3', '协管站');
INSERT INTO `tl_departmenttype` VALUES ('4', '班组');

-- ----------------------------
-- Table structure for tl_dutyperson
-- ----------------------------
DROP TABLE IF EXISTS `tl_dutyperson`;
CREATE TABLE `tl_dutyperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '责任人ID',
  `dutyername` varchar(100) NOT NULL COMMENT '责任人名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='责任人信息表';

-- ----------------------------
-- Records of tl_dutyperson
-- ----------------------------
INSERT INTO `tl_dutyperson` VALUES ('8', '测试修改一个数据');
INSERT INTO `tl_dutyperson` VALUES ('15', 'CCCCCC');
INSERT INTO `tl_dutyperson` VALUES ('16', 'VVVVVV');
INSERT INTO `tl_dutyperson` VALUES ('17', 'BBBBBBB');
INSERT INTO `tl_dutyperson` VALUES ('20', 'KKKKK');
INSERT INTO `tl_dutyperson` VALUES ('21', 'JJJJJ');
INSERT INTO `tl_dutyperson` VALUES ('22', 'HHHHH');
INSERT INTO `tl_dutyperson` VALUES ('23', 'GGGG');
INSERT INTO `tl_dutyperson` VALUES ('25', '小红');
INSERT INTO `tl_dutyperson` VALUES ('26', '小李');
INSERT INTO `tl_dutyperson` VALUES ('27', '不过');
INSERT INTO `tl_dutyperson` VALUES ('28', '1aaa');
INSERT INTO `tl_dutyperson` VALUES ('29', '袁敏无');
INSERT INTO `tl_dutyperson` VALUES ('32', '李振宇');
INSERT INTO `tl_dutyperson` VALUES ('33', '李宁');
INSERT INTO `tl_dutyperson` VALUES ('36', '李双江');
INSERT INTO `tl_dutyperson` VALUES ('37', '李4');
INSERT INTO `tl_dutyperson` VALUES ('38', '李5');
INSERT INTO `tl_dutyperson` VALUES ('39', '李6');
INSERT INTO `tl_dutyperson` VALUES ('40', '李7');
INSERT INTO `tl_dutyperson` VALUES ('41', '李8');
INSERT INTO `tl_dutyperson` VALUES ('42', '李9');
INSERT INTO `tl_dutyperson` VALUES ('43', '李10');
INSERT INTO `tl_dutyperson` VALUES ('45', '李12');
INSERT INTO `tl_dutyperson` VALUES ('62', '李三丰');
INSERT INTO `tl_dutyperson` VALUES ('63', '李敏镐');
INSERT INTO `tl_dutyperson` VALUES ('64', '张卫健');
INSERT INTO `tl_dutyperson` VALUES ('75', '李民航');
INSERT INTO `tl_dutyperson` VALUES ('76', '张新宇');
INSERT INTO `tl_dutyperson` VALUES ('77', '袁新宇');
INSERT INTO `tl_dutyperson` VALUES ('78', '张宇行');
INSERT INTO `tl_dutyperson` VALUES ('79', '袁思维');
INSERT INTO `tl_dutyperson` VALUES ('80', '袁思少');

-- ----------------------------
-- Table structure for tl_realinvestigation
-- ----------------------------
DROP TABLE IF EXISTS `tl_realinvestigation`;
CREATE TABLE `tl_realinvestigation` (
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
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 COMMENT='写实考察录入表';

-- ----------------------------
-- Records of tl_realinvestigation
-- ----------------------------
INSERT INTO `tl_realinvestigation` VALUES ('62', '2014-10-30', '23:32:49', '李洁', '添乘', '大足', '代高勇', 'xxxxx', '是', 'q2', 'adfds', 'dfdf', '', '', '', '', '', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('63', '2014-10-30', '23:32:49', '李洁', '添乘', '大足', '代高勇', 'df', '是', 'df', 'adfds', 'dfdf', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('64', '2014-10-02', '23:33:59', '樊鹏', '昼查', '长河碥', '张建辉', '问题', '是', 'CR', 'E', 'W', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('65', '2014-10-23', '23:35:00', '蔡泽琪', '夜查', '双石桥', '张建辉', '终于可以了', '否', 'FFF', 'sd', 'sd', '', '', '', '', '', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('66', '2014-10-03', '01:19:30', '蔡泽琪', '昼查', '大足', '张建辉', 'gcg', '是', 'f', 'f', 'f', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('71', '2014-10-03', '02:02:53', '李洁', '昼查', '荣昌', '钟世能', 'gg', '是', 'dd', 'dd', 'd', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('72', '2014-10-03', '02:10:33', '李洁', '昼查', '大足', '代高勇', '发现问题', '是', 'E6', 'NEIRONG', '意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('74', '2014-10-03', '02:18:00', '李洁', '添乘', '长河碥', '代高勇', 'SSDSD', '否', 'sww', 'ss', 'ss', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('75', '2014-10-03', '02:22:01', '李洁', '夜查', '荣昌', '代高勇', 'hhh', '是', 'hh', 'mn', 'kjj', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('79', '2014-10-17', '10:08:00', '李洁', '夜查', '荣昌', '张建辉', '发现问题', '是', 'F5', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('80', '2014-10-03', '10:14:15', '樊鹏', '添乘', '大足', '代高勇', 's', '是', 'D2', 'S', 'W', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('81', '2014-10-03', '10:17:45', '李洁', '添乘', '荣昌', '文桂明', '对对', '是', 'D', 'D', 'D', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('82', '2014-10-03', '10:27:55', '李洁', '添乘', '荣昌', '文桂明', 's', '是', 'sdsd', 's', 's', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('83', '2014-10-08', '10:30:00', '蔡泽琪', '添乘', '荣昌', '文桂明', 'gg', '是', 'f', 'f', 'f', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('84', '2014-10-08', '10:29:00', '李洁', '昼查', '荣昌', '张建辉', 's', '是', 'ss', 'sss', 'ss', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('88', '2014-10-03', '10:43:43', '蔡泽琪', '昼查', '荣昌', '文桂明', 'hh', '是', 'h', 'h', 'h', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('90', '2014-10-24', '10:56:00', '樊鹏', '添乘', '长河碥', '张建辉', 'ff', '是', 'f', 'f', 'f', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('92', '2014-10-16', '11:00:00', '李洁', '昼查', '荣昌', '代高勇', 's', '是', 'sdsd', 's', 's', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('93', '2014-10-08', '11:06:30', '李洁', '添乘', '长河碥', '苏国勇', 'ss', '是', 'sss', 's', 's', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('101', '2014-10-10', '11:49:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'ss', 'ss', 'ddd', '', '', '', '', '', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('102', '2014-10-03', '11:51:00', '蔡泽琪', '夜查', '大足', '代高勇', '发现了一点问题', '是', 'F5', 's', 's', '5', '得说明一下', '政委省政府', '我的评语', '整改的不错', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('105', '2014-10-02', '14:22:30', '蔡泽琪', '添乘', '荣昌', '代高勇', 'dfgfg', '是', 'fff', 'h', 'h', '考核扣分', '扣分原因', '主体', '评语', '整体情况', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('107', '2014-10-03', '18:43:39', '蔡泽琪', '添乘', '大足', '张建辉', '发现问题', '是', 'A', '内容', '意见', '10', '测试扣分', '考核主体测试', '评语', '测试整改', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('109', '2014-10-03', '23:50:41', '李洁', '添乘', '荣昌', '张建辉', '测试', '是', 'F4', '检查内同', '改进意见', '1', '1', '1', '1', '整改的不错', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('111', '2014-10-04', '22:21:43', '蔡泽琪', '昼查', '荣昌', '钟世能', '发现了', '是', 'M5', '444', '444', 'EEE', 'EE', 'EEE', 'EE', 'EEE', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('112', '2014-10-04', '22:30:24', '李洁', '添乘', '荣昌', '钟世能', 'ff', '否', 'pp', 'y7', 'jjj', '1', '2', '2', '2', '2', '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('113', '2014-10-04', '22:31:00', '李洁', '添乘', '荣昌', '张建辉', 'dd', '否', 'dd', 'ddd', 'ddd', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('114', '2014-10-04', '22:33:55', '李洁', '添乘', '荣昌', '代高勇', 'e', '否', 'e', 'e', 'e', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('115', '2014-10-04', '22:37:58', '李洁', '昼查', '大足', '代高勇', 'dd', '是', 'hh', 'dd', 'dd', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('116', '2014-10-04', '22:45:47', '蔡泽琪', '添乘', '荣昌', '代高勇', 'hh', '否', 'h', 'hhh', 'j', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('117', '2014-10-16', '22:50:38', '蔡泽琪', '添乘', '荣昌', '张建辉', 'dd', '是', 'dd', 'dd', 'dd', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('118', '2014-10-04', '22:54:34', '樊鹏', '添乘', '荣昌', '文桂明', 'ss', '否', 's', 's', 's', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('119', '2014-10-29', '23:21:30', '余戈', '夜查', '荣昌', '代高勇', 'hh', '是', 'g6', 'gt', 'gy', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('120', '2014-10-05', '19:52:23', '余戈', '昼查', '荣昌', '代高勇', 's', '否', 'e4', 'e', 'e', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('121', '2014-10-05', '19:53:15', '蔡泽琪', '添乘', '长河碥', '张建辉', 'ss', '否', 'ee', 'ee', 'ee', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('122', '2014-10-05', '20:40:34', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '否', 'A1', '检查内通过', '一键', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('123', '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('124', '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('125', '2014-10-05', '20:47:30', '蔡泽琪', '昼查', '荣昌', '代高勇', 'ss', '是', 'B2', 'ss', 'ss', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('126', '2014-10-04', '20:49:30', '蔡泽琪', '添乘', '荣昌', '代高勇', 'ww', '是', 'B2', 'w', 'w', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('127', '2014-10-05', '20:51:59', '蔡泽琪', '昼查', '长河碥', '代高勇', 'hh', '是', 'B2', 'neirong', 'yijian', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('128', '2014-10-05', '20:51:59', '蔡泽琪', '昼查', '长河碥', '代高勇', 'hh', '是', 'B2', 'neirong', 'yijian', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('130', '2014-10-05', '21:07:43', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '是', 'B2', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('131', '2014-10-05', '21:07:43', '蔡泽琪', '添乘', '荣昌', '代高勇', '发现问题', '是', 'B2', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('132', '2014-10-05', '21:47:21', '余戈', '添乘', '荣昌', '代高勇', '发现了部分问题', '是', 'A1', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('133', '2014-11-06', '16:18:00', '袁志佳', '昼查', '南海公司', '张文星', '发现问题', '是', 'A3', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('134', '2014-11-11', '17:25:30', '测试', '夜查', '技信科', '问问', '说说', '是', '是', '是', '是', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('135', '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('136', '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('137', '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('138', '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('139', '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('140', '2014-11-06', '18:51:30', '检查人', '添乘', '客营科', '值班干部', '发现问题', '是', '发现问题', '检查内容', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('141', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('142', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('143', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('144', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('145', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('146', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('147', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', '司机', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('148', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('149', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('150', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('151', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('152', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('153', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('154', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('155', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('156', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('157', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('158', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('159', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('160', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, '168', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('174', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('175', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('176', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('177', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('178', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('179', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, './docfile/1415506560.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('180', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, './docfile/1415506645.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('181', '2014-10-28', '11:05:30', '检查人', '夜查', '行政办公室', 'zhangsan', '发现问题发现问题发现问题发现问题', '是', '两违类别', '两违类别', '改进意见', null, null, null, null, null, './docfile/1415506661.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('182', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519147.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('183', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519185.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('184', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('185', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('186', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'asdas', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519306.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('187', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519337.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('188', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519394.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('189', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519517.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('190', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519572.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('191', '2014-11-20', '15:45:00', '检查人', '夜查', '铁运部', 'zhangsan', 'asdasd', '是', 'asdasd', 'adsas', 'dasda', null, null, null, null, null, './docfile/1415519647.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('192', '2014-10-29', '15:54:30', 'asdasd', '昼查', '物流营销部', 'zhangsan', 'asdasd', '是', 'adas', 'asda', 'asdasd', null, null, null, null, null, './docfile/1415519766.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('193', '2014-10-29', '15:54:30', 'asdasd', '昼查', '物流营销部', 'zhangsan', 'asdasd', '是', 'adas', 'asda', 'asdasd', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('194', '2014-10-29', '15:54:30', 'asdasd', '昼查', '物流营销部', 'zhangsan', 'asdasd', '是', 'adas', 'asda', 'asdasd', null, null, null, null, null, './docfile/1415519943.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('195', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('196', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('197', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('198', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('199', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('200', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('201', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('202', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415526821.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('203', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527027.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('204', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527066.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('205', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527113.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('206', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527218.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('207', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527244.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('208', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527312.doc', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('209', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527338.docx', null, null, null, null, null, null);
INSERT INTO `tl_realinvestigation` VALUES ('210', '2014-11-19', '17:39:30', 'asd', '夜查', '铁运部', 'zhangsan', 'asdasdasdasd', '是', 'asdasdasd', '检查内容', '改进意见', null, null, null, null, null, './docfile/1415527358.docx', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for tl_role
-- ----------------------------
DROP TABLE IF EXISTS `tl_role`;
CREATE TABLE `tl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '权限名称，',
  `departmenttype` int(11) DEFAULT NULL COMMENT '部门类型ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tl_role
-- ----------------------------
INSERT INTO `tl_role` VALUES ('1', '超级管理员', '0');
INSERT INTO `tl_role` VALUES ('2', 'level1', '1');
INSERT INTO `tl_role` VALUES ('3', 'level1', '2');
INSERT INTO `tl_role` VALUES ('4', 'leve2', '3');
INSERT INTO `tl_role` VALUES ('5', 'level3', '4');

-- ----------------------------
-- Table structure for tl_safetyproduct
-- ----------------------------
DROP TABLE IF EXISTS `tl_safetyproduct`;
CREATE TABLE `tl_safetyproduct` (
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='安全生产管理表';

-- ----------------------------
-- Records of tl_safetyproduct
-- ----------------------------
INSERT INTO `tl_safetyproduct` VALUES ('55', '2014055', '信息来源1', '单位A', '问题点', '2014-10-05', '解决方案', '责任部门1', '责任人1', '2014-10-05', '整改情况', '检查人', '2014-10-16', '备注', '问题目前');
INSERT INTO `tl_safetyproduct` VALUES ('57', '2014057', '信息来源1', '单位A', 'rr', '2014-10-22', 'rr', '责任部门1', '责任人1', '2014-10-05', null, '检查人1', null, null, null);
INSERT INTO `tl_safetyproduct` VALUES ('58', '2014058', '信息来源1', '荣昌', '发现了部分问题', '2014-10-05', '解决方案', '责任部门1', '责任人1', '2014-10-05', null, '检查人1', null, null, null);
INSERT INTO `tl_safetyproduct` VALUES ('59', '2014059', '信息来源1', '双石桥', 'wenti', '2014-10-24', '多得多', '责任部门1', '责任人1', '2014-10-05', null, '检查人1', null, null, null);
INSERT INTO `tl_safetyproduct` VALUES ('60', '2014060', '信息来源1', '大足', 'hh', '2014-10-23', '的', '责任部门1', '责任人1', '2014-10-16', '', '', null, '', '目前问题状况');
INSERT INTO `tl_safetyproduct` VALUES ('62', '2014062', '信息来源1', '峰高铺', '发现问题', '2014-10-23', '解决方案', '责任部门1', '责任人1', '2014-10-30', '整改情况', '刘宁', '2014-10-01', 'sss', '事实上');

-- ----------------------------
-- Table structure for tl_safetyrisk
-- ----------------------------
DROP TABLE IF EXISTS `tl_safetyrisk`;
CREATE TABLE `tl_safetyrisk` (
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
  PRIMARY KEY (`id`),
  KEY `riskclass` (`riskclass`) COMMENT '风险分类',
  KEY `risksystem` (`risksystem`),
  KEY `responsibilitylead` (`responsibilitylead`),
  KEY `dutypartments` (`dutypartments`),
  KEY `coordinationpart` (`coordinationpart`),
  KEY `implementdate` (`implementdate`),
  KEY `completiondate` (`completiondate`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='安全风险表';

-- ----------------------------
-- Records of tl_safetyrisk
-- ----------------------------
INSERT INTO `tl_safetyrisk` VALUES ('5', '2014005', '志佳测试', '风险分类1', '系统1', '风险原因导致的', '可能的后果', '既有措施', '分布情况', '进一步防控', '应急', '责任领导1', '责任部门1', '配合部门1', '2014-10-05', null, '备注客车的数据', '备注高铁的数据', '0000-00-00 00:00:00', null);
INSERT INTO `tl_safetyrisk` VALUES ('6', '2014006', '2014-10-08', '风险分类1', '系统1', '2', 'yyyu', '2', '2', '2', '2', '余戈', '系统1', '余戈', '0000-00-00', '0000-00-00', '2', '2', '0000-00-00 00:00:00', null);
INSERT INTO `tl_safetyrisk` VALUES ('7', '2014007', 'gbtr', '风险分类1', '系统1', 'tbg', 'gbr', 'tgrt', 'fv', 'fv', 'fer', '责任领导1', '责任部门1', '配合部门1', '2014-10-03', null, 'rfr', 'fvf', '0000-00-00 00:00:00', null);
INSERT INTO `tl_safetyrisk` VALUES ('8', '2014008', '风险名称', '风险分类1', '系统1', '风险原因', '可能后果', '有效性', '分布情况', '进一步防控', '措施', '责任领导1', '责任部门1', '配合部门1', '2014-10-16', null, '备注客车', '备注高铁', '0000-00-00 00:00:00', null);

-- ----------------------------
-- Table structure for tl_schedule
-- ----------------------------
DROP TABLE IF EXISTS `tl_schedule`;
CREATE TABLE `tl_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(20) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `task_name` varchar(1000) NOT NULL,
  `task_type` varchar(50) NOT NULL,
  `creator` varchar(20) NOT NULL,
  `task_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tl_schedule
-- ----------------------------
INSERT INTO `tl_schedule` VALUES ('2', '袁志佳', '2014-11-09 07:06:19', 'test', '夜查', 'me', '2014-11-19');
INSERT INTO `tl_schedule` VALUES ('3', '张三', '2014-11-09 07:21:01', 'fsdfsd', '值班', 'me', '2014-11-04');
INSERT INTO `tl_schedule` VALUES ('4', '袁志佳', '2014-11-09 07:21:51', 'sfdfsdf', '值班', 'me', '2014-11-26');
INSERT INTO `tl_schedule` VALUES ('5', '袁志佳', '2014-11-09 07:26:05', 'sfdfsdf', '值班', 'me', '2014-11-26');
INSERT INTO `tl_schedule` VALUES ('6', '李四', '2014-11-09 07:26:14', 'fsfsdf', '值班', 'me', '2014-11-27');
INSERT INTO `tl_schedule` VALUES ('11', '袁志佳', '2014-11-09 07:32:21', 'fsdfsdfs', '值班', 'me', '2014-11-26');
INSERT INTO `tl_schedule` VALUES ('12', 'me', '2014-11-09 07:51:16', 'test', '值班', 'me', '2014-11-20');

-- ----------------------------
-- Table structure for tl_test
-- ----------------------------
DROP TABLE IF EXISTS `tl_test`;
CREATE TABLE `tl_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mydate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tl_test
-- ----------------------------
INSERT INTO `tl_test` VALUES ('1', 'zhijiayuan', '2014-08-25');
INSERT INTO `tl_test` VALUES ('2', 'xiaohui', '2014-08-29');

-- ----------------------------
-- Table structure for tl_twocontrarymanage
-- ----------------------------
DROP TABLE IF EXISTS `tl_twocontrarymanage`;
CREATE TABLE `tl_twocontrarymanage` (
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
  PRIMARY KEY (`id`),
  KEY `checktime` (`checktime`),
  KEY `inspectionunit` (`inspectionunit`),
  KEY `llegalcategory` (`llegalcategory`),
  KEY `company` (`company`) COMMENT '被查单位索引',
  KEY `responsibleperson` (`responsibleperson`),
  KEY `productionleader` (`productionleader`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='两违查询表';

-- ----------------------------
-- Records of tl_twocontrarymanage
-- ----------------------------
INSERT INTO `tl_twocontrarymanage` VALUES ('22', '2014022', '2014-10-17', '荣昌', '检查人1', '被查单位1', '责任人1', '', '', '苟富贵', '对方答复', '', '', '', '', '', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('23', '2014023', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('24', '2014024', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('26', '2014026', '0000-00-00', '荣昌', '', '', '', '', '', '', '', '', '', '', '', '', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('28', '2014028', '0000-00-00', '荣昌', '', '', '', '', '', 'wwttt', 'www', '类别1', 'ww', '组长1', 'ww', 'www', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('30', '2014030', '2014-10-04', '大足', '检查人1', '被查单位1', '', '', '', 'a', 'b', '类别1', 'c', '组长1', 'd', 'e', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('38', '2014038', '2014-10-04', '荣昌', '检查人1', '被查单位1', '责任人1', '恩恩', '恩恩', '鹅鹅鹅饿饿', '1212', '1212', '1212', '1212', '1212', '1212', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('39', '2014039', '2014-10-16', '荣昌', '检查人1', '被查单位1', '责任人1', '恩恩', '恩恩', '鹅鹅鹅饿饿', 'ttt', '2323sss', 'sssssss', 'sss', 'ss', '222', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('42', '2014042', '2014-10-04', '长河碥', '检查人1', '被查单位1', '责任人1', '111', '11', '11', '1111', '1111', '11', '组长', '12', '11', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('43', '2014043', '2014-10-04', '大足', '检查人1', '被查单位1', '责任人1', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('44', '2014044', '2014-10-04', '大足', '检查人1', '被查单位1', '责任人1', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', 'y', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('45', '2014045', '2014-10-07', '检查单位', '检查人A', '被查单位', '责任人A', '职名', '政治面貌', '违章内容', '处理结果', '类别1', '责任人扣分', '组长1', '扣积分情况', '班组长扣积分情况', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('46', '2014046', '2014-10-11', '荣昌', '余戈', '大足', '责任人1', 'ww', 'ww', 'faxianwen', 'ww', 'A1', 'ww', 'ww', 'w', 'w', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('47', '2014047', '2014-10-04', '荣昌', '李洁', '长河碥', '责任人1', 'x s', 'sxs', 'kkk', 's', 'B2', 'xz', 'sxd', 've', 'cdce', null);
INSERT INTO `tl_twocontrarymanage` VALUES ('48', '2014048', '2014-10-07', '荣昌', '樊鹏', '大足', '责任人1', '测试', '党员', '发现问题', '处理结果', 'B2', '12', '张五', '扣积分情况', '班组长扣分', null);

-- ----------------------------
-- Table structure for tl_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tl_userinfo`;
CREATE TABLE `tl_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '用户密码MD5',
  `departmenttype` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `position` varchar(50) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `tel` varchar(13) DEFAULT NULL COMMENT '办公电话',
  `photo` varchar(200) DEFAULT NULL,
  `positionType` enum('主管','书记','职员') DEFAULT NULL,
  `parentDanwei` int(10) DEFAULT NULL,
  `parentLeader` int(10) DEFAULT NULL,
  `xiesi` int(1) DEFAULT NULL,
  `zhoucha` int(11) DEFAULT NULL,
  `yecha` int(11) DEFAULT NULL,
  `tiancheng` int(11) DEFAULT NULL,
  `jiancha` int(11) DEFAULT NULL,
  `tongzhi` int(11) DEFAULT NULL,
  `faxianwenti` int(11) DEFAULT NULL,
  `liangwei` int(11) DEFAULT NULL,
  `anquan` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tl_userinfo
-- ----------------------------
INSERT INTO `tl_userinfo` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'dasdadas@126.com');
INSERT INTO `tl_userinfo` VALUES ('4', 'zhangsan', '1111', '29', '3', 'sd', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, 'adasd@163.com');
DROP TRIGGER IF EXISTS `safeserialnumber`;
DELIMITER ;;
CREATE TRIGGER `safeserialnumber` BEFORE INSERT ON `tl_safetyproduct` FOR EACH ROW BEGIN 

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
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `safetyproserialnumber`;
DELIMITER ;;
CREATE TRIGGER `safetyproserialnumber` BEFORE INSERT ON `tl_safetyrisk` FOR EACH ROW BEGIN 

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
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `updateserialnumber`;
DELIMITER ;;
CREATE TRIGGER `updateserialnumber` BEFORE INSERT ON `tl_twocontrarymanage` FOR EACH ROW BEGIN 

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
;;
DELIMITER ;
