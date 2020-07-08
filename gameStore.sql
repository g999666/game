/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.47 : Database - gamestore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gamestore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gamestore`;

/*Table structure for table `game` */

DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏id',
  `game_name` varchar(20) NOT NULL COMMENT '游戏名字',
  `game_desc` varchar(255) NOT NULL COMMENT '游戏描述',
  `game_url` int(11) NOT NULL COMMENT '游戏url等',
  `last_topic` int(11) DEFAULT NULL COMMENT '最后的评论',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unurl` (`game_url`),
  KEY `game_url` (`game_url`) USING BTREE,
  CONSTRAINT `fk_gurl` FOREIGN KEY (`game_url`) REFERENCES `gameurl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `game` */

insert  into `game`(`id`,`game_name`,`game_desc`,`game_url`,`last_topic`) values 
(1,'愤怒的小鸟','愤怒的小鸟描述',1,1),
(2,'侠盗飞车','侠盗飞车描述',2,NULL),
(3,'极品飞车','飞车描述',3,NULL),
(4,'lol','lol描述',4,NULL);

/*Table structure for table `game_type` */

DROP TABLE IF EXISTS `game_type`;

CREATE TABLE `game_type` (
  `game_type` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL COMMENT '游戏排行',
  KEY `fk_ftg` (`game_id`) USING BTREE,
  KEY `fk_fty` (`game_type`) USING BTREE,
  CONSTRAINT `fk_ftg` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  CONSTRAINT `fk_fty` FOREIGN KEY (`game_type`) REFERENCES `gametype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `game_type` */

insert  into `game_type`(`game_type`,`game_id`,`rank`) values 
(1,2,1),
(1,3,2),
(2,1,1),
(2,2,2),
(3,4,1),
(4,1,1),
(4,2,2),
(2,3,3);

/*Table structure for table `gametype` */

DROP TABLE IF EXISTS `gametype`;

CREATE TABLE `gametype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '游戏分类id',
  `type_name` varchar(20) NOT NULL COMMENT '游戏分类名字',
  `topFlag` int(2) NOT NULL DEFAULT '0' COMMENT '是否上首页',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `gametype` */

insert  into `gametype`(`id`,`type_name`,`topFlag`) values 
(1,'top',0),
(2,'new',1),
(3,'poster',0),
(4,'hot',1);

/*Table structure for table `gameurl` */

DROP TABLE IF EXISTS `gameurl`;

CREATE TABLE `gameurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `downLoad_url` varchar(255) DEFAULT NULL COMMENT '游戏下载路径',
  `official_url` varchar(255) DEFAULT NULL COMMENT '游戏官网',
  `pic` varchar(255) DEFAULT NULL COMMENT 'top小图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `gameurl` */

insert  into `gameurl`(`id`,`downLoad_url`,`official_url`,`pic`) values 
(1,'null','null','la1.jpg'),
(2,'null','null','la2.jpg'),
(3,'null','null','la3.jpg'),
(4,'null','null','la4.jpg'),
(5,'null','null','la5.jpg');

/*Table structure for table `identity` */

DROP TABLE IF EXISTS `identity`;

CREATE TABLE `identity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_name` varchar(25) NOT NULL COMMENT '职位名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `identity` */

insert  into `identity`(`id`,`identity_name`) values 
(1,'admin'),
(2,'common');

/*Table structure for table `topic` */

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论主键',
  `game_id` int(11) NOT NULL COMMENT '评论在哪个游戏下面，如果为0那就是用户反馈的信息',
  `content` varchar(255) NOT NULL COMMENT '具体评论',
  `from_uid` int(11) NOT NULL COMMENT '评论用户id',
  `parent_id` int(11) NOT NULL COMMENT '父评论的id,如果父评论是0那就是公告',
  `good` int(11) NOT NULL DEFAULT '0' COMMENT '点赞',
  `low` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`,`from_uid`) USING BTREE,
  KEY `fk_fu` (`from_uid`),
  KEY `fk_fg` (`game_id`),
  CONSTRAINT `fk_fg` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`),
  CONSTRAINT `fk_fu` FOREIGN KEY (`from_uid`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `topic` */

insert  into `topic`(`id`,`game_id`,`content`,`from_uid`,`parent_id`,`good`,`low`,`create_time`,`modify_time`) values 
(1,1,'摸鱼',1,0,0,0,'2020-07-07 16:21:58',NULL),
(2,1,'摸鱼1',1,0,0,0,'2020-07-07 16:21:50',NULL),
(3,2,'摸鱼2',1,0,0,0,'2020-07-07 16:21:11',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(20) NOT NULL COMMENT '用户名字',
  `user_password` varchar(255) NOT NULL COMMENT '密码',
  `user_email` varchar(255) NOT NULL COMMENT '邮箱',
  `identity_id` int(11) NOT NULL COMMENT '身份',
  `head_pic` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  KEY `fk_fi` (`identity_id`) USING BTREE,
  CONSTRAINT `fk_identity` FOREIGN KEY (`identity_id`) REFERENCES `identity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `user` */

insert  into `user`(`user_id`,`user_name`,`user_password`,`user_email`,`identity_id`,`head_pic`,`create_time`,`modify_time`) values 
(1,'郭浩驰','123456','3286739215@qq.com',1,NULL,'2020-07-05 00:12:51',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
