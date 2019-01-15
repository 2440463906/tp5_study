/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : study

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2019-01-15 15:01:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` text NOT NULL COMMENT '概要',
  `content` text NOT NULL,
  `top` int(11) NOT NULL DEFAULT '0' COMMENT '文章作用',
  `create_time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `hot` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('31', '讨论帖', '欢迎各位同学前来一起讨论学习。', '欢迎各位同学前来一起讨论学习。', '9', '1540439503', '36', '0');
INSERT INTO `article` VALUES ('32', '我叫小白胖', '我叫小白胖', '<span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span><span>我叫小白胖</span></span>', '0', '1540440327', '36', '0');
INSERT INTO `article` VALUES ('33', '讨论帖', '欢迎各位同学前来一起讨论学习。', '欢迎各位同学前来一起讨论学习。', '9', '1540440400', '37', '0');
INSERT INTO `article` VALUES ('34', '怎么报到呀', '安徽新华学院怎么报到呀', '安徽新华学院怎么报到呀，安徽新华', '0', '1540440700', '37', '30');
INSERT INTO `article` VALUES ('35', '讨论帖', '欢迎各位同学前来一起讨论学习。', '欢迎各位同学前来一起讨论学习。', '9', '1540440799', '38', '0');
INSERT INTO `article` VALUES ('36', '计算机', 'aaa', 'adfasdfadf', '0', '1547429768', '36', '0');
INSERT INTO `article` VALUES ('37', '讨论帖', '　　欢迎各位同学前来一起讨论学习。', '　　欢迎各位同学前来一起讨论学习。', '9', '1547432518', '39', '0');

-- ----------------------------
-- Table structure for `attention`
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL COMMENT '我的id',
  `uid` int(11) NOT NULL COMMENT '他的id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('9', '37', '36');
INSERT INTO `attention` VALUES ('10', '38', '37');
INSERT INTO `attention` VALUES ('11', '38', '36');
INSERT INTO `attention` VALUES ('12', '36', '37');

-- ----------------------------
-- Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `cname` varchar(20) NOT NULL DEFAULT '新建班级',
  `introd` text COMMENT '班级简介',
  `longitude` int(10) NOT NULL DEFAULT '0' COMMENT '经度',
  `latitude` int(10) NOT NULL DEFAULT '0' COMMENT '纬度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('10', '36', '网络工程2班', '计算机网络工程2班', '121', '31');
INSERT INTO `class` VALUES ('14', '37', '网络工程2班', '计算机网络工程师', '0', '0');
INSERT INTO `class` VALUES ('16', '36', '网络工程', '网络工程师', '0', '0');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('22', '37', '34', '这你都不知道');
INSERT INTO `comment` VALUES ('23', '37', '33', '111');
INSERT INTO `comment` VALUES ('24', '36', '33', '啊啊');
INSERT INTO `comment` VALUES ('25', '36', '34', '啊啊');

-- ----------------------------
-- Table structure for `swork`
-- ----------------------------
DROP TABLE IF EXISTS `swork`;
CREATE TABLE `swork` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `grade` varchar(10) DEFAULT NULL COMMENT 'abcde',
  `uid` int(20) NOT NULL,
  `wid` int(20) NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of swork
-- ----------------------------
INSERT INTO `swork` VALUES ('1', null, '37', '6', null);
INSERT INTO `swork` VALUES ('2', 'E', '37', '7', '');

-- ----------------------------
-- Table structure for `twork`
-- ----------------------------
DROP TABLE IF EXISTS `twork`;
CREATE TABLE `twork` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `cname` varchar(50) NOT NULL,
  `uid` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of twork
-- ----------------------------
INSERT INTO `twork` VALUES ('6', '计算机导论', '计算机导论实验报告', '网络工程', '36');
INSERT INTO `twork` VALUES ('7', '计算机', '计算机实验报告', '网络工程', '36');
INSERT INTO `twork` VALUES ('8', '啊', '啊啊啊', '网络工程2班', '36');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nickname` varchar(20) NOT NULL DEFAULT '昵称' COMMENT '昵称',
  `email` varchar(50) NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `rank` int(11) NOT NULL COMMENT '等级 教师0 学生1',
  `sex` int(11) NOT NULL COMMENT '性别 男1 女0',
  `autograph` varchar(50) NOT NULL DEFAULT '这个人很懒，什么都没留下……' COMMENT '个性签名',
  `face` varchar(200) DEFAULT NULL COMMENT '头像',
  `state` int(10) NOT NULL DEFAULT '0',
  `experience` int(100) DEFAULT '0' COMMENT '发文章加经验（活跃度）',
  `secretkey` varchar(64) DEFAULT NULL COMMENT '秘钥',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('36', '章娟', '698d51a19d8a121ce581499d7b701668', '章娟', '11aaaa1@qq.com', '1540439503', '0', '0', '我不是很懒……', '361540440181.png', '0', '10', 'b6e993162e57266a2faf5a902a2fc486');
INSERT INTO `user` VALUES ('37', '李正', '698d51a19d8a121ce581499d7b701668', '李正', '11aaaa1@qq.com', '1540440400', '1', '1', '这个人很懒，什么都没留下……', '371540470190.png', '0', '0', 'a5bfc9e07964f8dddeb95fc584cd965d');
INSERT INTO `user` VALUES ('38', '跳与白胖', '698d51a19d8a121ce581499d7b701668', '跳与白胖', '11aaaa1@qq.com', '1540440799', '1', '0', '这个人很懒，什么都没留下……', '381540476328.png', '0', '0', 'a5771bce93e200c36f7cd9dfd0e5deaa');
INSERT INTO `user` VALUES ('39', '同学1', '698d51a19d8a121ce581499d7b701668', '昵称', '1111@qq.com', '1547432518', '1', '1', '这个人很懒，什么都没留下……', null, '0', '0', '29615e5b139ab735c8ea542f1ad43118');

-- ----------------------------
-- Table structure for `webchat`
-- ----------------------------
DROP TABLE IF EXISTS `webchat`;
CREATE TABLE `webchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  `centent` text NOT NULL,
  `time` text NOT NULL,
  `cname` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of webchat
-- ----------------------------
INSERT INTO `webchat` VALUES ('1', '111', '11111', '1111111111', '网络工程');
INSERT INTO `webchat` VALUES ('2', '111', '11111111', '11111111111', '网络工程');
INSERT INTO `webchat` VALUES ('3', '222', '5151321', '1111111111111', '1311');
INSERT INTO `webchat` VALUES ('4', '222', 'aasd', '1111111111111111', '网络工程');
INSERT INTO `webchat` VALUES ('6', '章娟', 'adfas', '1547516399', '网络工程');
INSERT INTO `webchat` VALUES ('7', '章娟', 'qqqqq', '1547516647', '网络工程');
INSERT INTO `webchat` VALUES ('8', '章娟', 'qqqqq', '1547516708', '网络工程');
INSERT INTO `webchat` VALUES ('9', '章娟', 'qqqqq', '1547516793', '网络工程');
INSERT INTO `webchat` VALUES ('10', '章娟', 'qqqqq', '1547516922', '网络工程');
INSERT INTO `webchat` VALUES ('11', '章娟', 'qqqqq', '1547516925', '网络工程');
INSERT INTO `webchat` VALUES ('12', '章娟', '啊啊啊', '1547516998', '网络工程');
INSERT INTO `webchat` VALUES ('13', '章娟', '啊啊啊', '1547517026', '网络工程');
INSERT INTO `webchat` VALUES ('14', '章娟', '啊啊啊', '1547517028', '网络工程');
INSERT INTO `webchat` VALUES ('15', '章娟', '啊啊啊', '1547517029', '网络工程');
INSERT INTO `webchat` VALUES ('16', '章娟', '啊啊啊', '1547517030', '网络工程');
INSERT INTO `webchat` VALUES ('17', '章娟', '啊啊啊111111', '1547517045', '网络工程');
INSERT INTO `webchat` VALUES ('18', '章娟', '啊', '1547517357', '网络工程');
INSERT INTO `webchat` VALUES ('19', '章娟', '啊', '1547517381', '网络工程');
INSERT INTO `webchat` VALUES ('20', '章娟', '申达股份', '1547517439', '网络工程');
INSERT INTO `webchat` VALUES ('21', '章娟', '申达股份', '1547517440', '网络工程');
INSERT INTO `webchat` VALUES ('22', '章娟', '申达股份', '1547517441', '网络工程');
INSERT INTO `webchat` VALUES ('23', '章娟', '申达股份', '1547517442', '网络工程');
INSERT INTO `webchat` VALUES ('24', '章娟', '申达股份', '1547517442', '网络工程');
INSERT INTO `webchat` VALUES ('25', '章娟', '申达股份', '1547517443', '网络工程');
INSERT INTO `webchat` VALUES ('26', '章娟', '申达股份', '1547517443', '网络工程');
INSERT INTO `webchat` VALUES ('27', '章娟', '申达股份', '1547517443', '网络工程');
INSERT INTO `webchat` VALUES ('28', '章娟', '申达股份', '1547517443', '网络工程');
INSERT INTO `webchat` VALUES ('29', '章娟', '申达股份', '1547517444', '网络工程');
INSERT INTO `webchat` VALUES ('30', '章娟', '申达股份', '1547517444', '网络工程');
INSERT INTO `webchat` VALUES ('31', '章娟', '申达股份', '1547517445', '网络工程');
INSERT INTO `webchat` VALUES ('32', '章娟', '啊啊', '1547517600', '网络工程');
INSERT INTO `webchat` VALUES ('33', '章娟', '啊啊', '1547517602', '网络工程');
INSERT INTO `webchat` VALUES ('34', '章娟', '啊', '1547518390', '网络工程');
INSERT INTO `webchat` VALUES ('35', '章娟', '啊', '1547518390', '网络工程');
INSERT INTO `webchat` VALUES ('36', '章娟', '啊', '1547518390', '网络工程');
INSERT INTO `webchat` VALUES ('37', '章娟', '啊', '1547518390', '网络工程');
INSERT INTO `webchat` VALUES ('38', '章娟', '啊', '1547518390', '网络工程');
INSERT INTO `webchat` VALUES ('39', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('40', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('41', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('42', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('43', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('44', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('45', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('46', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('47', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('48', '章娟', '啊', '1547518391', '网络工程');
INSERT INTO `webchat` VALUES ('49', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('50', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('51', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('52', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('53', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('54', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('55', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('56', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('57', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('58', '章娟', '啊', '1547518392', '网络工程');
INSERT INTO `webchat` VALUES ('59', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('60', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('61', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('62', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('63', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('64', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('65', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('66', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('67', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('68', '章娟', '啊', '1547518393', '网络工程');
INSERT INTO `webchat` VALUES ('69', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('70', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('71', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('72', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('73', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('74', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('75', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('76', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('77', '章娟', '啊', '1547518394', '网络工程');
INSERT INTO `webchat` VALUES ('78', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('79', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('80', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('81', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('82', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('83', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('84', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('85', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('86', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('87', '章娟', '啊', '1547518395', '网络工程');
INSERT INTO `webchat` VALUES ('88', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('89', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('90', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('91', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('92', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('93', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('94', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('95', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('96', '章娟', '啊', '1547518396', '网络工程');
INSERT INTO `webchat` VALUES ('97', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('98', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('99', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('100', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('101', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('102', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('103', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('104', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('105', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('106', '章娟', '啊', '1547518397', '网络工程');
INSERT INTO `webchat` VALUES ('107', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('108', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('109', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('110', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('111', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('112', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('113', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('114', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('115', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('116', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('117', '章娟', '啊', '1547518398', '网络工程');
INSERT INTO `webchat` VALUES ('118', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('119', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('120', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('121', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('122', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('123', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('124', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('125', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('126', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('127', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('128', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('129', '章娟', '啊', '1547518399', '网络工程');
INSERT INTO `webchat` VALUES ('130', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('131', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('132', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('133', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('134', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('135', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('136', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('137', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('138', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('139', '章娟', '啊', '1547518400', '网络工程');
INSERT INTO `webchat` VALUES ('140', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('141', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('142', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('143', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('144', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('145', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('146', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('147', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('148', '章娟', '啊', '1547518401', '网络工程');
INSERT INTO `webchat` VALUES ('149', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('150', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('151', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('152', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('153', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('154', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('155', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('156', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('157', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('158', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('159', '章娟', '啊', '1547518402', '网络工程');
INSERT INTO `webchat` VALUES ('160', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('161', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('162', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('163', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('164', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('165', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('166', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('167', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('168', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('169', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('170', '章娟', '啊', '1547518403', '网络工程');
INSERT INTO `webchat` VALUES ('171', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('172', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('173', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('174', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('175', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('176', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('177', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('178', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('179', '章娟', '啊', '1547518404', '网络工程');
INSERT INTO `webchat` VALUES ('180', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('181', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('182', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('183', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('184', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('185', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('186', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('187', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('188', '章娟', '啊', '1547518405', '网络工程');
INSERT INTO `webchat` VALUES ('189', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('190', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('191', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('192', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('193', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('194', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('195', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('196', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('197', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('198', '章娟', '啊', '1547518406', '网络工程');
INSERT INTO `webchat` VALUES ('199', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('200', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('201', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('202', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('203', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('204', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('205', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('206', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('207', '章娟', '啊', '1547518407', '网络工程');
INSERT INTO `webchat` VALUES ('208', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('209', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('210', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('211', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('212', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('213', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('214', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('215', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('216', '章娟', '啊', '1547518408', '网络工程');
INSERT INTO `webchat` VALUES ('217', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('218', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('219', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('220', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('221', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('222', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('223', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('224', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('225', '章娟', '啊', '1547518409', '网络工程');
INSERT INTO `webchat` VALUES ('226', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('227', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('228', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('229', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('230', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('231', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('232', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('233', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('234', '章娟', '啊', '1547518410', '网络工程');
INSERT INTO `webchat` VALUES ('235', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('236', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('237', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('238', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('239', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('240', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('241', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('242', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('243', '章娟', '啊', '1547518411', '网络工程');
INSERT INTO `webchat` VALUES ('244', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('245', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('246', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('247', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('248', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('249', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('250', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('251', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('252', '章娟', '啊', '1547518412', '网络工程');
INSERT INTO `webchat` VALUES ('253', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('254', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('255', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('256', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('257', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('258', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('259', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('260', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('261', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('262', '章娟', '啊', '1547518413', '网络工程');
INSERT INTO `webchat` VALUES ('263', '章娟', '啊', '1547518414', '网络工程');
INSERT INTO `webchat` VALUES ('264', '章娟', '啊', '1547518418', '网络工程');
INSERT INTO `webchat` VALUES ('265', '章娟', '啊', '1547518452', '网络工程');
INSERT INTO `webchat` VALUES ('266', '章娟', '啊', '1547518504', '网络工程');
INSERT INTO `webchat` VALUES ('267', '章娟', '啊', '1547518508', '网络工程');
INSERT INTO `webchat` VALUES ('268', '章娟', '啊啊啊啊啊', '1547518511', '网络工程');
