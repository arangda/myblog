/*
Navicat MySQL Data Transfer

Source Server         : hsz
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-21 17:28:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cats`
-- ----------------------------
DROP TABLE IF EXISTS `cats`;
CREATE TABLE `cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cat_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `sortrank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of cats
-- ----------------------------
INSERT INTO `cats` VALUES ('1', 'php', '0');
INSERT INTO `cats` VALUES ('2', 'yii', '10');
INSERT INTO `cats` VALUES ('3', '互联网', '20');
INSERT INTO `cats` VALUES ('4', '好文', '70');
INSERT INTO `cats` VALUES ('5', '前端', '60');
INSERT INTO `cats` VALUES ('6', 'python', '50');
INSERT INTO `cats` VALUES ('7', 'linux', '40');
INSERT INTO `cats` VALUES ('8', '工具', '30');
