/*
 Navicat Premium Dump SQL

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80040 (8.0.40)
 Source Host           : localhost:3306
 Source Schema         : cashbook

 Target Server Type    : MySQL
 Target Server Version : 80040 (8.0.40)
 File Encoding         : 65001

 Date: 02/11/2024 17:13:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pay_type` tinyint(1) NOT NULL COMMENT '账单类型:1 为支出，2 为收入',
  `amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账单价格',
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账单日期',
  `type_id` int NOT NULL COMMENT '账单标签 id',
  `type_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账单标签名称',
  `user_id` int NOT NULL COMMENT '账单归属的用户 id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '账单备注',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bill_pk`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标签名称',
  `type` tinyint(1) NOT NULL COMMENT '标签类型，默认 1 为收入，2 为支出',
  `user_id` int NOT NULL COMMENT '保留字段，设置该标签的用户归属，默认 0 为全部用户可见，某个用户单独设置的标签，user_id 就是该用户的用户 id，在获取列表的时候，方便过滤',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type_pk`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '餐饮', 1, 0);
INSERT INTO `type` VALUES (2, '服饰', 1, 0);
INSERT INTO `type` VALUES (3, '交通', 1, 0);
INSERT INTO `type` VALUES (4, '日用', 1, 0);
INSERT INTO `type` VALUES (5, '购物', 1, 0);
INSERT INTO `type` VALUES (6, '学习', 1, 0);
INSERT INTO `type` VALUES (7, '医疗', 1, 0);
INSERT INTO `type` VALUES (8, '旅行', 1, 0);
INSERT INTO `type` VALUES (9, '人情', 1, 0);
INSERT INTO `type` VALUES (10, '其他', 1, 0);
INSERT INTO `type` VALUES (11, '工资', 2, 0);
INSERT INTO `type` VALUES (12, '奖金', 2, 0);
INSERT INTO `type` VALUES (13, '转账', 2, 0);
INSERT INTO `type` VALUES (14, '理财', 2, 0);
INSERT INTO `type` VALUES (15, '退款', 2, 0);
INSERT INTO `type` VALUES (16, '其他', 2, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户登录名称',
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户创建时间',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户头像信息',
  `signature` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_pk`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
