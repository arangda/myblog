/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-23 17:28:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'PrjLkBD0XaUZYRw3zmEXb-O3NhV2Dn_Y', '$2y$13$uSOeGGih.oj/R.YeIIGXxuzAMsPlD/WY/MHny646osrxAoCX7QVcq', null, '273890638@qq.com', '10', '1513906430', '1513906430');

-- ----------------------------
-- Table structure for `cats`
-- ----------------------------
DROP TABLE IF EXISTS `cats`;
CREATE TABLE `cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cat_name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of cats
-- ----------------------------

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1513905848');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1513905871');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `summary` varchar(255) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '内容',
  `label_img` varchar(255) DEFAULT NULL COMMENT '标签图',
  `cat_id` int(11) DEFAULT NULL COMMENT '分类id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `is_valid` tinyint(1) DEFAULT '0' COMMENT '是否有效 0-未发布 1-已发布',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------

-- ----------------------------
-- Table structure for `relation_post_tags`
-- ----------------------------
DROP TABLE IF EXISTS `relation_post_tags`;
CREATE TABLE `relation_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `post_id` int(11) DEFAULT NULL COMMENT '文章id',
  `tag_id` int(11) DEFAULT NULL COMMENT '标签id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relation_post_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `tag_name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `post_num` int(11) NOT NULL DEFAULT '0' COMMENT '关联文章数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'arangda', 'PrjLkBD0XaUZYRw3zmEXb-O3NhV2Dn_Y', '$2y$13$uSOeGGih.oj/R.YeIIGXxuzAMsPlD/WY/MHny646osrxAoCX7QVcq', null, '273890638@qq.com', '10', '1513906430', '1513906430');
INSERT INTO `user` VALUES ('2', 'test', 'l_7xweIfu9SsSeYSS94jz0_0VsoTVpC0', '$2y$13$0Rw2IXUzKcLALM7E0ysd6.2zY07TdUvQuffSHaEPgIIMmcX7xJPYG', null, '1989513003@qq.com', '10', '1513914013', '1513914013');
