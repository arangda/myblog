/*
Navicat MySQL Data Transfer

Source Server         : hsz
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-21 17:28:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `share_urls`
-- ----------------------------
DROP TABLE IF EXISTS `share_urls`;
CREATE TABLE `share_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `describe` varchar(500) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `views_num` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of share_urls
-- ----------------------------
INSERT INTO `share_urls` VALUES ('1', '阮一峰', 'good', 'http://www.ruanyifeng.com/home.html', '3', '4');
INSERT INTO `share_urls` VALUES ('2', '搜狗翻译', '好用', 'http://fanyi.sogou.com/', '8', '2');
INSERT INTO `share_urls` VALUES ('3', '谷歌翻译', '较好', 'http://translate.google.cn/', '8', '4');
