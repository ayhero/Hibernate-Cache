/*
SQLyog Enterprise - MySQL GUI v5.26
Host - 5.0.95 : Database - springdb
*********************************************************************
Server version : 5.0.95
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `springdb`;

USE `springdb`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `login_info` */

DROP TABLE IF EXISTS `login_info`;

CREATE TABLE `login_info` (
  `ip` varchar(20) default NULL,
  `username` varchar(50) default NULL,
  `loginTime` datetime default NULL,
  `id` int(20) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `login_info` */

insert  into `login_info`(`ip`,`username`,`loginTime`,`id`) values ('127.0.0.1','admin','2014-05-15 11:20:01',1),('127.0.0.1','admin','2014-05-15 11:40:52',2),('127.0.0.1','admin','2014-05-15 11:45:01',3),('127.0.0.1','user','2014-05-15 12:19:11',4),('127.0.0.1','user','2014-05-15 12:21:45',5),('127.0.0.1','user','2014-05-15 12:23:49',6),('127.0.0.1','user','2014-05-15 12:26:17',7),('127.0.0.1','admin','2014-05-15 12:31:59',8),('127.0.0.1','user','2014-05-15 13:33:47',9),('127.0.0.1','user','2014-05-15 13:36:38',10),('127.0.0.1','user','2014-05-15 13:49:02',11),('127.0.0.1','user','2014-05-15 13:50:27',12),('127.0.0.1','user','2014-05-15 14:16:27',13),('127.0.0.1','user','2014-05-15 14:17:16',14),('127.0.0.1','admin','2014-05-15 14:17:32',15),('127.0.0.1','admin','2014-05-15 14:18:19',16),('127.0.0.1','user','2014-05-15 14:18:52',17),('127.0.0.1','user','2014-05-15 14:22:35',18),('127.0.0.1','user','2014-05-15 14:29:39',19),('127.0.0.1','user','2014-05-15 16:46:28',20),('127.0.0.1','user','2014-05-15 16:47:32',21),('127.0.0.1','user','2014-05-15 17:40:20',22),('127.0.0.1','admin','2014-05-15 17:40:25',23),('127.0.0.1','admin','2014-05-15 18:03:45',24),('127.0.0.1','admin','2014-05-15 18:16:07',25),('127.0.0.1','admin','2014-05-15 18:17:01',26),('127.0.0.1','admin','2014-05-15 18:17:11',27),('127.0.0.1','admin','2014-05-15 18:20:16',28),('127.0.0.1','admin','2014-05-16 10:22:29',29),('127.0.0.1','admin','2014-05-16 10:27:06',30),('127.0.0.1','admin','2014-05-16 10:28:24',31),('127.0.0.1','admin','2014-05-16 10:39:58',32),('127.0.0.1','admin','2014-05-16 10:51:28',33),('127.0.0.1','admin','2014-05-16 10:54:28',34),('127.0.0.1','admin','2014-05-16 13:50:55',35),('127.0.0.1','admin','2014-05-16 13:54:26',36),('127.0.0.1','admin','2014-05-16 14:05:30',37),('127.0.0.1','admin','2014-05-16 15:01:45',38),('127.0.0.1','admin','2014-05-16 15:05:30',39),('127.0.0.1','admin','2014-05-16 15:11:39',40),('127.0.0.1','admin','2014-05-16 15:14:39',41),('127.0.0.1','admin','2014-05-16 15:20:05',42),('127.0.0.1','admin','2014-05-16 15:24:13',43),('127.0.0.1','admin','2014-05-16 15:39:03',44),('127.0.0.1','admin','2014-05-16 15:40:12',45),('127.0.0.1','user','2014-05-16 15:42:25',46),('127.0.0.1','admin','2014-05-16 15:42:31',47),('127.0.0.1','admin','2014-05-16 16:03:12',48),('127.0.0.1','admin','2014-05-17 11:10:54',49),('127.0.0.1','admin','2014-05-17 11:53:09',50),('127.0.0.1','admin','2014-05-17 11:57:25',51),('127.0.0.1','admin','2014-05-17 16:11:39',52),('127.0.0.1','admin','2014-05-17 17:28:57',53),('127.0.0.1','admin','2014-05-17 17:35:57',54);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`) values (8,'');

/*Table structure for table `mission` */

DROP TABLE IF EXISTS `mission`;

CREATE TABLE `mission` (
  `id` int(11) NOT NULL auto_increment,
  `publishDate` datetime default NULL,
  `detail` mediumtext,
  `address` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `mission` */

insert  into `mission`(`id`,`publishDate`,`detail`,`address`) values (1,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(2,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(3,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(4,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(5,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(6,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(7,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(8,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(9,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(10,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(11,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(12,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(13,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(14,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(15,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(16,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路'),(17,'2014-05-16 11:45:14','哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈','广州市西湾路');

/*Table structure for table `persistent_logins` */

DROP TABLE IF EXISTS `persistent_logins`;

CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`series`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `persistent_logins` */

/*Table structure for table `resc` */

DROP TABLE IF EXISTS `resc`;

CREATE TABLE `resc` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `res_type` varchar(50) default NULL,
  `res_string` varchar(200) default NULL,
  `priority` int(11) default NULL,
  `descn` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `resc` */

insert  into `resc`(`id`,`name`,`res_type`,`res_string`,`priority`,`descn`) values (1,'','URL','/admin',1,''),(2,'','URL','/**',2,''),(3,'','URL','/login.jsp*',0,'');

/*Table structure for table `resc_role` */

DROP TABLE IF EXISTS `resc_role`;

CREATE TABLE `resc_role` (
  `resc_id` bigint(20) default NULL,
  `role_id` bigint(20) default NULL,
  KEY `FK_resc_role_rescid` (`resc_id`),
  KEY `FK_resc_role_roleid` (`role_id`),
  CONSTRAINT `FK_resc_role_rescid` FOREIGN KEY (`resc_id`) REFERENCES `resc` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_resc_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resc_role` */

insert  into `resc_role`(`resc_id`,`role_id`) values (1,1),(2,1),(3,3);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(50) collate utf8_bin NOT NULL,
  `descn` varchar(200) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`descn`) values (1,'ROLE_ADMIN',''),(2,'ROLE_USER',''),(3,'IS_AUTHENTICATED_ANONYMOUSLY','anonymous');

/*Table structure for table `submenu` */

DROP TABLE IF EXISTS `submenu`;

CREATE TABLE `submenu` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(20) default NULL,
  `parent_id` bigint(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`,`parent_id`),
  KEY `FK_submenu` (`parent_id`),
  CONSTRAINT `FK_submenu` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `submenu` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL auto_increment,
  `username` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `status` int(11) default NULL,
  `descn` varchar(200) default NULL,
  `version` int(10) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`status`,`descn`,`version`) values (1,'admin','admin',2,'',1),(2,'user','user',1,'',0);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) default NULL,
  `role_id` bigint(20) default NULL,
  KEY `FK_user_role_userid` (`user_id`),
  KEY `FK_user_role_roleid` (`role_id`),
  CONSTRAINT `FK_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (1,1),(1,2),(2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
