/*
 Navicat Premium Data Transfer

 Source Server         : pain
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : seckill

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/03/2019 11:56:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ware_info
-- ----------------------------
DROP TABLE IF EXISTS `ware_info`;
CREATE TABLE `ware_info`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id，自增主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '商品标题',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '商品描述',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '商品图片url',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '商品价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ware_info
-- ----------------------------
INSERT INTO `ware_info` VALUES (7, 'MacBook Pro 2018', '2018年新款MacBookPro', 'https://img14.360buyimg.com/n0/jfs/t23386/9/1066712099/277967/615ccafb/5b4f0e3aN262237fc.jpg', 20488.92);
INSERT INTO `ware_info` VALUES (8, 'ipad Pro 2018', '2018年新款ipad Pro', 'https://img14.360buyimg.com/n0/jfs/t1/2060/2/13752/217276/5bd8a77dEa1d786e7/d6acfae792866f77.jpg', 6499.00);
INSERT INTO `ware_info` VALUES (11, 'Apple iMac Pro', 'Apple iMac Pro 27英寸一体机（八核Xeon W处理器/32GB内存/1TB 固态硬盘/Vega 56显卡/5K显示屏 MQ2Y2CH/A）', 'https://img14.360buyimg.com/n0/jfs/t1/25849/21/3098/170913/5c232cd1E3113e0e6/94b112c30fd3e116.jpg', 39150.00);
INSERT INTO `ware_info` VALUES (12, 'Apple iPhone XS Max', 'Apple iPhone XS Max (A2103) 256GB 深空灰色 全网通（移动4G优先版） 双卡双待', 'https://img14.360buyimg.com/n0/jfs/t1/3/15/4536/138660/5b997bf8Ed72ebce7/819dcf182d743897.jpg', 9599.00);

SET FOREIGN_KEY_CHECKS = 1;
