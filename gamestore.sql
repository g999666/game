/*
 Navicat Premium Data Transfer

 Source Server         : new
 Source Server Type    : MySQL
 Source Server Version : 50547
 Source Host           : localhost:3306
 Source Schema         : gamestore

 Target Server Type    : MySQL
 Target Server Version : 50547
 File Encoding         : 65001

 Date: 12/07/2020 21:35:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏id',
  `game_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏名字',
  `game_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏描述',
  `game_url` int(11) NOT NULL COMMENT '游戏url等',
  `last_topic` int(11) NULL DEFAULT NULL COMMENT '最后的评论',
  `gamePrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '游戏的价钱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unurl`(`game_url`) USING BTREE,
  INDEX `game_url`(`game_url`) USING BTREE,
  CONSTRAINT `fk_gurl` FOREIGN KEY (`game_url`) REFERENCES `gameurl` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of game
-- ----------------------------
INSERT INTO `game` VALUES (0, 'admin', '系统', 0, NULL, NULL);
INSERT INTO `game` VALUES (1, '愤怒的小鸟', '愤怒的小鸟描述', 1, 1, NULL);
INSERT INTO `game` VALUES (2, '侠盗飞车', '侠盗飞车描述', 2, NULL, 100.00);
INSERT INTO `game` VALUES (3, '极品飞车', '飞车描述', 3, NULL, 98.00);
INSERT INTO `game` VALUES (4, 'lol', 'lol描述', 4, NULL, NULL);
INSERT INTO `game` VALUES (6, 'test', 'testsets', 5, NULL, NULL);

-- ----------------------------
-- Table structure for game_type
-- ----------------------------
DROP TABLE IF EXISTS `game_type`;
CREATE TABLE `game_type`  (
  `game_type` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL COMMENT '游戏排行',
  INDEX `fk_ftg`(`game_id`) USING BTREE,
  INDEX `fk_fty`(`game_type`) USING BTREE,
  CONSTRAINT `fk_ftg` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_fty` FOREIGN KEY (`game_type`) REFERENCES `gametype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of game_type
-- ----------------------------
INSERT INTO `game_type` VALUES (1, 2, 1);
INSERT INTO `game_type` VALUES (1, 3, 2);
INSERT INTO `game_type` VALUES (2, 1, 1);
INSERT INTO `game_type` VALUES (2, 2, 2);
INSERT INTO `game_type` VALUES (3, 4, 1);
INSERT INTO `game_type` VALUES (4, 1, 1);
INSERT INTO `game_type` VALUES (4, 2, 2);
INSERT INTO `game_type` VALUES (2, 3, 3);

-- ----------------------------
-- Table structure for gametype
-- ----------------------------
DROP TABLE IF EXISTS `gametype`;
CREATE TABLE `gametype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏分类id',
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏分类名字',
  `topFlag` int(2) NOT NULL DEFAULT 0 COMMENT '是否上首页',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of gametype
-- ----------------------------
INSERT INTO `gametype` VALUES (1, 'top', 0);
INSERT INTO `gametype` VALUES (2, 'new', 1);
INSERT INTO `gametype` VALUES (3, 'poster', 0);
INSERT INTO `gametype` VALUES (4, 'hot', 1);

-- ----------------------------
-- Table structure for gameurl
-- ----------------------------
DROP TABLE IF EXISTS `gameurl`;
CREATE TABLE `gameurl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `downLoad_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏下载路径',
  `official_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏官网',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'top小图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of gameurl
-- ----------------------------
INSERT INTO `gameurl` VALUES (0, NULL, NULL, '0');
INSERT INTO `gameurl` VALUES (1, 'null', 'null', 'la1.jpg');
INSERT INTO `gameurl` VALUES (2, 'null', 'null', 'la1.jpg');
INSERT INTO `gameurl` VALUES (3, 'null', 'null', 'la2.jpg');
INSERT INTO `gameurl` VALUES (4, 'null', 'null', 'la4.jpg');
INSERT INTO `gameurl` VALUES (5, 'null', 'null', 'la5.jpg');

-- ----------------------------
-- Table structure for identity
-- ----------------------------
DROP TABLE IF EXISTS `identity`;
CREATE TABLE `identity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of identity
-- ----------------------------
INSERT INTO `identity` VALUES (1, 'admin');
INSERT INTO `identity` VALUES (2, 'common');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论主键',
  `game_id` int(11) NOT NULL COMMENT '评论在哪个游戏下面，如果为0那就是用户反馈的信息',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '具体评论',
  `from_uid` int(11) NOT NULL COMMENT '评论用户id',
  `parent_id` int(11) NOT NULL COMMENT '父评论的id,如果父评论是0那就是公告',
  `good` int(11) NOT NULL DEFAULT 0 COMMENT '点赞',
  `low` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '踩',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`, `from_uid`) USING BTREE,
  INDEX `fk_fu`(`from_uid`) USING BTREE,
  INDEX `fk_fg`(`game_id`) USING BTREE,
  CONSTRAINT `fk_fg` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_fu` FOREIGN KEY (`from_uid`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, 1, '摸鱼', 1, 0, 0, 0, '2020-07-07 16:21:58', NULL);
INSERT INTO `topic` VALUES (2, 1, '摸鱼1', 1, 0, 0, 0, '2020-07-07 16:21:50', NULL);
INSERT INTO `topic` VALUES (3, 2, '摸鱼2', 1, 0, 0, 0, '2020-07-07 16:21:11', NULL);
INSERT INTO `topic` VALUES (4, 0, '123', 1, 1, 0, 0, '2020-07-10 09:42:33', NULL);
INSERT INTO `topic` VALUES (5, 0, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq&_&OIPM', 1, 1, 0, 0, '2020-07-10 09:54:02', NULL);
INSERT INTO `topic` VALUES (6, 0, '1231231&_&1111111111111111111111111111111111111111111111111111111111111111111', 1, 1, 0, 0, '2020-07-10 09:56:05', NULL);
INSERT INTO `topic` VALUES (7, 0, '1231231&_&1111111111111111111111111111111111111111111111111111111111111111111', 1, 1, 0, 0, '2020-07-10 09:57:23', NULL);
INSERT INTO `topic` VALUES (8, 0, '12312111&_&222222222222222222222222222222222222222222222222222222222222222222', 1, 1, 0, 0, '2020-07-10 09:57:41', NULL);
INSERT INTO `topic` VALUES (9, 0, '1231231&_&1111111111111111111111111111111111111111111111111111111111111111111111111111111', 1, 1, 0, 0, '2020-07-10 10:04:10', NULL);
INSERT INTO `topic` VALUES (10, 0, '1231231&_&我真的就方法 佛涩废和搜if饿死of杰恩斯of金额死哦乏味金佛大家我的', 1, 1, 0, 0, '2020-07-10 10:05:58', NULL);
INSERT INTO `topic` VALUES (11, 0, '1231231&_&，。、，。，、，。、‘&1231231313’&2131312312#!@%%!qw单位ID阿无敌哈维', 1, 1, 0, 0, '2020-07-10 10:20:44', NULL);
INSERT INTO `topic` VALUES (12, 0, '主题123123&_&12312312312.,/.;[];[];]>\"\"}}\"?}>}:。】‘’‘’】【。】】【》}{}》}》}》}》}》！@#@！￥@！%@！#@￥￥￥}。、', 1, 1, 0, 0, '2020-07-10 10:25:30', NULL);
INSERT INTO `topic` VALUES (13, 0, '主题111&_&123213><\":|e1231312312312312321312312123123123213,faiawfjawoifawiufhiafwafawf', 1, 1, 0, 0, '2020-07-10 10:26:28', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名字',
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `identity_id` int(11) NOT NULL COMMENT '身份',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `head_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `fk_fi`(`identity_id`) USING BTREE,
  CONSTRAINT `fk_identity` FOREIGN KEY (`identity_id`) REFERENCES `identity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '郭浩驰', '123456', '3286739215@qq.com', 1, NULL, NULL, '2020-07-05 00:12:51', NULL);
INSERT INTO `user` VALUES (2, '3286739215', '123321', NULL, 2, '18559268627', NULL, '2020-07-11 09:49:01', NULL);
INSERT INTO `user` VALUES (3, '123', 'qwe123.0', NULL, 2, '', NULL, '2020-07-11 09:54:23', NULL);
INSERT INTO `user` VALUES (4, 'zoujun', '123456', NULL, 2, '18959252884', NULL, '2020-07-11 10:14:05', NULL);

SET FOREIGN_KEY_CHECKS = 1;
