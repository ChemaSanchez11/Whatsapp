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

 Date: 28/11/2022 19:37:40
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
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'room',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES (1, 'GRUPO 1', 'room');
INSERT INTO `chats` VALUES (4, 'Grupo 2', 'room');
INSERT INTO `chats` VALUES (10, 'Grupo Prueba', 'room');
INSERT INTO `chats` VALUES (59, '(DIRECT) Juan - Isabel', 'direct');
INSERT INTO `chats` VALUES (60, '(DIRECT) Chema - Isabel', 'direct');
INSERT INTO `chats` VALUES (61, '(DIRECT) Juan - Chema', 'direct');
INSERT INTO `chats` VALUES (62, '(DIRECT) Chema - mario', 'direct');
INSERT INTO `chats` VALUES (63, '(DIRECT) Juan - mario', 'direct');
INSERT INTO `chats` VALUES (71, 'chat 2', 'room');

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
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `messages` VALUES (42, 'Hola', '28/11/22', 1, 43);
INSERT INTO `messages` VALUES (43, 'Prueba', '28/11/22', 4, 43);
INSERT INTO `messages` VALUES (44, 'Hola\r\n', '28/11/22', 1, 44);
INSERT INTO `messages` VALUES (45, 'prueba', '28/11/22', 4, 44);
INSERT INTO `messages` VALUES (46, 'Hola', '28/11/22', 7, 59);
INSERT INTO `messages` VALUES (47, 'Hola', '28/11/22', 7, 60);
INSERT INTO `messages` VALUES (48, 'Hola', '28/11/22', 1, 60);
INSERT INTO `messages` VALUES (49, 'Hola', '28/11/22', 1, 61);
INSERT INTO `messages` VALUES (50, 'gfdhrt\r\n', '28/11/22', 8, 10);
INSERT INTO `messages` VALUES (51, 'Mario cabron', '28/11/22', 1, 10);
INSERT INTO `messages` VALUES (52, 'fdg\r\n', '28/11/22', 8, 63);
INSERT INTO `messages` VALUES (53, 'dfwfrewfg\r\n', '28/11/22', 8, 64);
INSERT INTO `messages` VALUES (54, 'test', '28/11/22', 4, 1);

-- ----------------------------
-- Table structure for user_chats
-- ----------------------------
DROP TABLE IF EXISTS `user_chats`;
CREATE TABLE `user_chats`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `chatid` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_chats
-- ----------------------------
INSERT INTO `user_chats` VALUES (48, 7, 59);
INSERT INTO `user_chats` VALUES (49, 4, 59);
INSERT INTO `user_chats` VALUES (50, 7, 60);
INSERT INTO `user_chats` VALUES (51, 1, 60);
INSERT INTO `user_chats` VALUES (52, 1, 61);
INSERT INTO `user_chats` VALUES (53, 4, 61);
INSERT INTO `user_chats` VALUES (54, 8, 62);
INSERT INTO `user_chats` VALUES (55, 1, 62);
INSERT INTO `user_chats` VALUES (56, 8, 63);
INSERT INTO `user_chats` VALUES (57, 4, 63);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Chema', 'Chema', 'Sanchez', 'c4ca4238a0b923820dcc509a6f75849b', 0, 'default.png', 'offline', 1669660628);
INSERT INTO `users` VALUES (4, 'admin', 'Juan', 'Jimenez', '21232f297a57a5a743894a0e4a801fc3', 0, 'admin.png', 'offline', 1669660516);
INSERT INTO `users` VALUES (6, 'Prueba', 'Prueba', 'Jimemez Sanchez', 'c893bad68927b457dbed39460e6afd62', 0, 'default.png', 'offline', 1669233069);
INSERT INTO `users` VALUES (7, 'isabel', 'Isabel', 'Torres Carazo', 'c4ca4238a0b923820dcc509a6f75849b', 0, 'default.png', 'offline', 1669658421);
INSERT INTO `users` VALUES (8, 'mario', 'mario', 'mario', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'default.png', 'offline', 1669659539);

SET FOREIGN_KEY_CHECKS = 1;
