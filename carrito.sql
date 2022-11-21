/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : carrito

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 14/11/2022 21:09:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pedidos
-- ----------------------------
DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE `pedidos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `productid` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `userid` int NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'add',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pedidos
-- ----------------------------
INSERT INTO `pedidos` VALUES (8, 3, 'BMW M3 Copue', 'BMW M3 COMPETITION COUPE, BMW M320d xDRIVE Y BMW M340d xDRIVE BERLINA. La gama BMW M3 Berlina combina poderosas proporciones', 'https://wallpaper.dog/large/20338265.jpg', 30000.00, 1, 1, 'buy');
INSERT INTO `pedidos` VALUES (9, 1, 'BMW M3 Berlina', 'BMW M3 COMPETITION BERLINA, BMW M320d xDRIVE Y BMW M340d xDRIVE BERLINA. La gama BMW M3 Berlina combina poderosas proporciones', 'https://w0.peakpx.com/wallpaper/76/1017/HD-wallpaper-bmw-g80-m3.jpg', 28000.00, 1, 1, 'buy');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `stock` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'BMW M3 Berlina', 'BMW M3 COMPETITION BERLINA, BMW M320d xDRIVE Y BMW M340d xDRIVE BERLINA. La gama BMW M3 Berlina combina poderosas proporciones', 'https://w0.peakpx.com/wallpaper/76/1017/HD-wallpaper-bmw-g80-m3.jpg', 28000.00, '4');
INSERT INTO `products` VALUES (2, 'BMW M3', 'BMW M3 COMPETITION COUPE, BMW M320d xDRIVE Y BMW M340d xDRIVE BERLINA. La gama BMW M3 Berlina combina poderosas proporciones', 'https://c4.wallpaperflare.com/wallpaper/603/383/734/car-vehicle-render-digital-art-bmw-hd-wallpaper-preview.jpg', 32000.00, '6');
INSERT INTO `products` VALUES (3, 'BMW M3 Copue', 'BMW M3 COMPETITION COUPE, BMW M320d xDRIVE Y BMW M340d xDRIVE BERLINA. La gama BMW M3 Berlina combina poderosas proporciones', 'https://wallpaper.dog/large/20338265.jpg', 30000.00, '7');
INSERT INTO `products` VALUES (6, 'BMW S3 Coupe', 'BMW Serie 3 Coupe LED', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBgVFRUZGRgaGxsbGxsbHB0dHRsbGxsbGhobGx0dJC0kHR0qIRsaJTclKi8xNDQ0GyM6PzoyPi0zNDEBCwsLEA8QHRISHzMrJCozMzMzMzY5MzEzMzMzNDMzMzMzNTMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzM//AABEIALQBGAMBIgACEQEDEQH/', 23000.00, '3');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '', NULL, '21232f297a57a5a743894a0e4a801fc3', 1);

SET FOREIGN_KEY_CHECKS = 1;
