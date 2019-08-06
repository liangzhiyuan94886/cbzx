/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : cbzx

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 04/08/2019 23:56:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for issues
-- ----------------------------
DROP TABLE IF EXISTS `issues`;
CREATE TABLE `issues`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL COMMENT '项目主键',
  `projectName` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '项目名',
  `newAdd` int(10) NULL DEFAULT NULL COMMENT '本周新增',
  `newAddSerious` int(10) NULL DEFAULT NULL COMMENT '本周新增严重',
  `discovered` int(10) NULL DEFAULT NULL COMMENT '已发现',
  `resolved` int(10) NULL DEFAULT NULL COMMENT '已解决',
  `unresolved` int(10) NULL DEFAULT NULL COMMENT '未解决',
  `deadlineUnresolved` int(10) NULL DEFAULT NULL COMMENT '到期未解决',
  `reopen` int(10) NULL DEFAULT NULL COMMENT '重新打开',
  `unresolvedSerious` int(10) NULL DEFAULT NULL COMMENT '未解决严重',
  `updateDate` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
