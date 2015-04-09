/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : flyingwebdb

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-03-23 15:58:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fly_article
-- ----------------------------
DROP TABLE IF EXISTS `fly_article`;
CREATE TABLE `fly_article` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(200) DEFAULT NULL,
  `article_content` text,
  `create_time` datetime DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `article_type_id` int(11) DEFAULT NULL,
  `article_label` varchar(1000) DEFAULT NULL COMMENT '标签',
  `article_little_title` varchar(100) DEFAULT NULL COMMENT '标题头，比如[转载]',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_article
-- ----------------------------

-- ----------------------------
-- Table structure for fly_article_comment
-- ----------------------------
DROP TABLE IF EXISTS `fly_article_comment`;
CREATE TABLE `fly_article_comment` (
  `comment_id` int(11) NOT NULL,
  `comment_title` varchar(100) DEFAULT NULL,
  `comment_content` varchar(4000) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL COMMENT '匿名用户的话为0',
  `nickname` varchar(50) DEFAULT NULL COMMENT '评论人昵称',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_article_comment
-- ----------------------------

-- ----------------------------
-- Table structure for fly_article_type
-- ----------------------------
DROP TABLE IF EXISTS `fly_article_type`;
CREATE TABLE `fly_article_type` (
  `article_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_type_name` varchar(50) DEFAULT NULL,
  `article_parent_type_id` int(11) DEFAULT NULL,
  `article_type_depth` int(11) DEFAULT NULL,
  `article_type_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`article_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_article_type
-- ----------------------------

-- ----------------------------
-- Table structure for fly_log
-- ----------------------------
DROP TABLE IF EXISTS `fly_log`;
CREATE TABLE `fly_log` (
  `log_id` int(11) NOT NULL,
  `log_name` varchar(100) DEFAULT NULL,
  `from_url` varchar(500) DEFAULT NULL,
  `to_url` varchar(500) DEFAULT NULL,
  `visit_time` datetime DEFAULT NULL,
  `to_userid` int(11) DEFAULT NULL COMMENT '访问谁的博客',
  `from_userid` int(11) DEFAULT NULL COMMENT '谁访问,0代表匿名访问',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_log
-- ----------------------------

-- ----------------------------
-- Table structure for fly_message
-- ----------------------------
DROP TABLE IF EXISTS `fly_message`;
CREATE TABLE `fly_message` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_title` varchar(100) DEFAULT NULL,
  `msg_content` varchar(2000) DEFAULT NULL,
  `msg_to_userid` int(11) DEFAULT NULL,
  `msg_from_userid` int(11) DEFAULT NULL,
  `msg_from_nickname` varchar(50) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `has_read` bit(1) DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_message
-- ----------------------------

-- ----------------------------
-- Table structure for fly_role
-- ----------------------------
DROP TABLE IF EXISTS `fly_role`;
CREATE TABLE `fly_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  `role_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `inx_role_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_role
-- ----------------------------

-- ----------------------------
-- Table structure for fly_user
-- ----------------------------
DROP TABLE IF EXISTS `fly_user`;
CREATE TABLE `fly_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `last_update_time` datetime DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `portrait_img_url` varchar(500) DEFAULT NULL COMMENT '头像URL',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `inx_user_userid` (`userid`),
  UNIQUE KEY `inx_user_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of fly_user
-- ----------------------------
