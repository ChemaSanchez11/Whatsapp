/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : whatsapp

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 24/11/2022 18:01:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES (1, 'GRUPO 1');
INSERT INTO `chats` VALUES (4, 'Grupo 2');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userid` int NOT NULL,
  `chatid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (33, 'fdgdfg', '24/11/22', 4, 1);
INSERT INTO `messages` VALUES (34, 'Hola', '24/11/22', 1, 1);
INSERT INTO `messages` VALUES (35, 'Hola', '24/11/22', 1, 1);
INSERT INTO `messages` VALUES (36, 'Hola', '24/11/22', 1, 1);
INSERT INTO `messages` VALUES (37, 'dsfasa', '24/11/22', 1, 1);
INSERT INTO `messages` VALUES (38, 'Hola', '24/11/22', 1, 4);
INSERT INTO `messages` VALUES (39, 'Hola', '24/11/22', 1, 4);
INSERT INTO `messages` VALUES (40, 'prueba', '24/11/22', 4, 1);
INSERT INTO `messages` VALUES (41, 'gfdgf', '24/11/22', 1, 1);

-- ----------------------------
-- Table structure for user_chats
-- ----------------------------
DROP TABLE IF EXISTS `user_chats`;
CREATE TABLE `user_chats`  (
  `id` int NOT NULL,
  `userid` int NOT NULL,
  `chatid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_chats
-- ----------------------------
INSERT INTO `user_chats` VALUES (0, 1, 1);
INSERT INTO `user_chats` VALUES (2, 2, 1);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rol` int NOT NULL DEFAULT 0,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default.png',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'offline',
  `lastlogin` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Chema', 'Chema', 'Sanchez', 'c4ca4238a0b923820dcc509a6f75849b', 0, 'default.png', 'offline', 1669307522);
INSERT INTO `users` VALUES (4, 'admin', 'Juan', 'Jimenez', '21232f297a57a5a743894a0e4a801fc3', 0, 'admin.png', 'offline', 1669309204);
INSERT INTO `users` VALUES (6, 'Prueba', 'Prueba', 'Jimemez Sanchez', 'c893bad68927b457dbed39460e6afd62', 0, 'default.png', 'offline', 1669233069);

SET FOREIGN_KEY_CHECKS = 1;
