/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50559
Source Host           : localhost:3306
Source Database       : how2j

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2018-04-04 16:29:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero` VALUES ('1', 'A', '66', '233');
INSERT INTO `hero` VALUES ('2', 'B', '77', '233');
INSERT INTO `hero` VALUES ('3', 'C', '44', '158');
INSERT INTO `hero` VALUES ('4', 'D', '55', '201');
INSERT INTO `hero` VALUES ('5', 'E', '11', '123');
INSERT INTO `hero` VALUES ('6', 'F', '22', '544');
