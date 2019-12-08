/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.26 : Database - ocdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ocdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ocdb`;

/*Table structure for table `t_auth_user` */

DROP TABLE IF EXISTS `t_auth_user`;

CREATE TABLE `t_auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '登录用户名',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别',
  `header` varchar(128) NOT NULL DEFAULT '' COMMENT '头像',
  `mobile` varchar(15) NOT NULL DEFAULT '' COMMENT '手机号码',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '状态：待审核（0），有效（1），无效（3）',
  `birthday` date NOT NULL DEFAULT '1900-01-01',
  `education` varchar(20) NOT NULL DEFAULT '' COMMENT '学历：大专、本科、硕士、博士、博士后',
  `college_code` varchar(50) NOT NULL DEFAULT '' COMMENT '大学编码',
  `college_name` varchar(100) NOT NULL DEFAULT '' COMMENT '大学名称',
  `cert_no` varchar(50) NOT NULL DEFAULT '' COMMENT '资格证书编号',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '头衔',
  `sign` varchar(500) NOT NULL DEFAULT '' COMMENT '签名',
  `open_id` varchar(128) NOT NULL DEFAULT '' COMMENT '微信公众号openid',
  `wechat_id` varchar(100) NOT NULL DEFAULT '' COMMENT '微信号',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'qq号',
  `login_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后一次登录时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后一次登录IP',
  `province` varchar(16) NOT NULL DEFAULT '' COMMENT '所在省份',
  `city` varchar(16) NOT NULL DEFAULT '' COMMENT '所在城市',
  `district` varchar(16) NOT NULL DEFAULT '' COMMENT '所在地区',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `T_AUTH_USER_USERNAME_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `t_auth_user` */

insert  into `t_auth_user`(`id`,`realname`,`username`,`password`,`gender`,`header`,`mobile`,`status`,`birthday`,`education`,`college_code`,`college_name`,`cert_no`,`title`,`sign`,`open_id`,`wechat_id`,`qq`,`login_time`,`ip`,`province`,`city`,`district`,`weight`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,'王阳明','wangyangming','96E79218965EB72C92A549DD5A330112',0,'','18001584130',2,'1900-01-01','博士后','','华南大学dsf','fasf','高级讲师','擅长人工智能算法11','','zhangsan','12345678','0000-00-00 00:00:00','127.0.0.1','','','',0,'0000-00-00 00:00:00','system','2019-11-12 17:10:16','system',0),(2,'李四','lisi','96E79218965EB72C92A549DD5A330112',1,'','18001584131',0,'1900-01-01','硕士','','华东大学','','特级讲师','擅长人工智能算法','','lisi','','0000-00-00 00:00:00','127.0.0.1','','','',0,'0000-00-00 00:00:00','system','2019-11-16 22:01:54','system',0),(3,'赵六','zhaoliu','96E79218965EB72C92A549DD5A330112',1,'','18001584132',2,'1900-01-01','本科','','华中大学','','特级讲师','擅长C语言','','','','0000-00-00 00:00:00','127.0.0.1','','','',0,'0000-00-00 00:00:00','system','2017-03-27 22:28:21','system',0),(4,'王五','wangwu','96E79218965EB72C92A549DD5A330112',1,'','18001584133',2,'1900-01-01','硕士','','华南大学','','高级讲师','擅长PHP','','','','0000-00-00 00:00:00','127.0.0.1','','','',0,'0000-00-00 00:00:00','system','2017-03-27 22:28:22','system',0),(5,'周八','zhouba','96E79218965EB72C92A549DD5A330112',1,'','18001584134',2,'1900-01-01','博士','','华中大学','','特级讲师','擅长C、Java、PHP','','','','0000-00-00 00:00:00','127.0.0.1','','','',0,'0000-00-00 00:00:00','system','2017-03-27 22:28:23','system',0),(6,'王阳明','wangyangming2','96E79218965EB72C92A549DD5A330112',1,'','18001584135',2,'1900-01-01','博士后','','华南大学','','高级讲师','擅长PHP','','','','0000-00-00 00:00:00','127.0.0.1','','','',0,'0000-00-00 00:00:00','system','2017-05-06 15:11:27','system',0),(7,'','111111','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(8,'','1111112','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(9,'','11111123','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(10,'','22222222','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(11,'','222222223','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(14,'新的test00005','test0005','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(15,'','zhangsan111','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(16,'','zhangsan112','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(17,'','wangyangmi2','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(18,'','wangyangmi11','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(19,'','zhangsan11111','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(20,'','zhangsan111111','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(21,'','011111','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(22,'','test001','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(23,'','test002','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 01:11:40','system',0),(24,'','wangyangmi1212','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 15:24:14','system',0),(25,'','11111111111','7FA8282AD93047A4D6FE6111C93B308A',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 15:24:30','system',0),(26,'','wangyangmi222','96E79218965EB72C92A549DD5A330112',1,'','',2,'1900-01-01','','','','','','','','','','0000-00-00 00:00:00','','','','',0,'0000-00-00 00:00:00','system','2017-05-06 15:26:54','system',0);

/*Table structure for table `t_consts_classify` */

DROP TABLE IF EXISTS `t_consts_classify`;

CREATE TABLE `t_consts_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(50) NOT NULL DEFAULT '',
  `parent_code` varchar(50) NOT NULL DEFAULT '0' COMMENT '父级别code',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程类别表';

/*Data for the table `t_consts_classify` */

insert  into `t_consts_classify`(`id`,`name`,`code`,`parent_code`,`sort`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,'科研院所','fe','0',1,'0000-00-00 00:00:00','system','2019-11-11 16:09:15','system',0),(2,'博物馆','be','0',2,'0000-00-00 00:00:00','system','2019-11-11 16:09:56','system',0),(3,'科技馆','mobile','0',3,'0000-00-00 00:00:00','system','2019-11-11 16:10:00','system',0),(4,'科普基地','db','0',4,'0000-00-00 00:00:00','system','2019-11-11 16:10:29','system',0),(5,'高校','cb','0',5,'0000-00-00 00:00:00','system','2019-11-11 16:10:38','system',0),(6,'创新工程','ui','0',6,'0000-00-00 00:00:00','system','2019-11-11 16:10:51','system',0),(9,'科普研学分类1','jquery','fe',2,'0000-00-00 00:00:00','system','2019-11-16 21:20:39','system',0),(10,'科普研学分类2','html5','fe',3,'0000-00-00 00:00:00','system','2019-11-16 21:20:44','system',0),(11,'科普研学分类3','node','fe',4,'0000-00-00 00:00:00','system','2019-11-16 21:20:48','system',0),(12,'科普研学分类4','angular','fe',5,'0000-00-00 00:00:00','system','2019-11-16 21:20:53','system',0),(13,'科普研学分类5','bootstrap','fe',6,'0000-00-00 00:00:00','system','2019-11-16 21:20:57','system',0),(14,'科普研学分类6','webapp','fe',7,'0000-00-00 00:00:00','system','2019-11-16 21:21:00','system',0),(15,'科普研学分类7','php','be',1,'0000-00-00 00:00:00','system','2019-11-16 21:21:05','system',0),(16,'科普研学分类8','java','be',2,'0000-00-00 00:00:00','system','2019-11-16 21:21:09','system',0),(17,'科普研学分类9','python','be',3,'0000-00-00 00:00:00','system','2019-11-16 21:21:14','system',0),(18,'科普研学分类10','c','be',4,'0000-00-00 00:00:00','system','2019-11-16 21:21:23','system',0),(19,'科普研学分类11','android','mobile',1,'0000-00-00 00:00:00','system','2019-11-16 21:21:26','system',0),(20,'科普研学分类12','ios','mobile',2,'0000-00-00 00:00:00','system','2019-11-16 21:21:29','system',0),(21,'科普研学分类13','mysql','db',1,'0000-00-00 00:00:00','system','2019-11-16 21:21:31','system',0),(22,'科普研学分类14','mongodb','db',2,'0000-00-00 00:00:00','system','2019-11-16 21:21:34','system',0),(23,'科普研学分类15','oracle','db',3,'0000-00-00 00:00:00','system','2019-11-16 21:21:38','system',0),(24,'科普研学分类16','sqlserver','db',4,'0000-00-00 00:00:00','system','2019-11-16 21:21:41','system',0),(25,'科普研学分类17','bigdata','cb',1,'0000-00-00 00:00:00','system','2019-11-16 21:21:43','system',0),(26,'科普研学分类18','cloud','cb',2,'0000-00-00 00:00:00','system','2019-11-16 21:21:46','system',0),(27,'科普研学分类19','movie','ui',1,'0000-00-00 00:00:00','system','2019-11-16 21:21:49','system',0),(28,'科普研学分类20','appui','ui',2,'0000-00-00 00:00:00','system','2019-11-16 21:21:57','system',0),(29,'科普研学分类21','tools','ui',3,'0000-00-00 00:00:00','system','2019-11-16 21:22:08','system',0),(32,'科普研学分类22','sss','0',0,'0000-00-00 00:00:00','system','2019-11-16 21:22:12','system',1),(33,'科普研学分类23','jqxx','0',0,'0000-00-00 00:00:00','system','2019-11-16 21:22:16','system',1),(34,'科普研学分类24','wrjs','0',0,'0000-00-00 00:00:00','system','2019-11-16 21:22:19','system',1),(35,'科普研学分类25','wrjs','jqxx',0,'0000-00-00 00:00:00','system','2019-11-16 21:22:24','system',0),(36,'科普研学分类26','oracle1','jqxx',0,'0000-00-00 00:00:00','system','2019-11-16 21:22:28','system',1);

/*Table structure for table `t_consts_college` */

DROP TABLE IF EXISTS `t_consts_college`;

CREATE TABLE `t_consts_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '编码',
  `picture` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='高校表结构';

/*Data for the table `t_consts_college` */

insert  into `t_consts_college`(`id`,`name`,`code`,`picture`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (6,'湖南大学','zndx','','0000-00-00 00:00:00','system','2019-11-12 17:20:41','system',0),(7,'清华大学','shdx','','0000-00-00 00:00:00','system','2019-11-16 21:22:41','system',0),(50,'北京大学','szdx','','0000-00-00 00:00:00','system','2019-11-16 21:22:49','system',0),(51,'南京大学','njdx','','0000-00-00 00:00:00','system','2017-04-04 14:46:21','system',0),(52,'江苏大学','jsdx','','0000-00-00 00:00:00','system','2017-04-04 14:46:38','system',0);

/*Table structure for table `t_consts_dictionary` */

DROP TABLE IF EXISTS `t_consts_dictionary`;

CREATE TABLE `t_consts_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` int(11) NOT NULL DEFAULT '0' COMMENT '分组code',
  `group_name` varchar(32) NOT NULL DEFAULT '' COMMENT '分组名称',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键',
  `value` varchar(128) NOT NULL DEFAULT '' COMMENT '值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典：可用于可选项值的配置等';

/*Data for the table `t_consts_dictionary` */

/*Table structure for table `t_consts_site_carousel` */

DROP TABLE IF EXISTS `t_consts_site_carousel`;

CREATE TABLE `t_consts_site_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `picture` varchar(100) NOT NULL DEFAULT '' COMMENT '图片',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '链接',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='首页轮播表';

/*Data for the table `t_consts_site_carousel` */

insert  into `t_consts_site_carousel`(`id`,`name`,`picture`,`url`,`weight`,`enable`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,'科普研学推荐1','/ocPortal_war_exploded/res/i/c1.jpg','http://baidu.com',1,1,'0000-00-00 00:00:00','system','2019-11-16 21:19:32','system',0),(2,'科普研学推荐2','/ocPortal_war_exploded/res/i/c2.jpg','http://baidu.com',1,1,'0000-00-00 00:00:00','system','2019-11-16 21:19:45','system',0),(3,'科普研学推荐3','/ocPortal_war_exploded/res/i/c3.jpg','http://baidu.com',1,1,'0000-00-00 00:00:00','system','2019-11-16 21:19:47','system',0),(4,'科普研学推荐4','/ocPortal_war_exploded/res/i/c4.jpg','http://baidu.com',1,1,'0000-00-00 00:00:00','system','2019-11-16 21:19:49','system',0),(5,'科普研学推荐5','/ocPortal_war_exploded/res/i/c5.jpg','http://baidu.com',1,1,'2019-11-13 16:41:08','system','2019-11-16 21:19:52','system',0);

/*Table structure for table `t_course` */

DROP TABLE IF EXISTS `t_course`;

CREATE TABLE `t_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '课程名称',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '课程类型',
  `classify` varchar(50) NOT NULL DEFAULT '' COMMENT '课程分类',
  `classify_name` varchar(100) NOT NULL DEFAULT '',
  `sub_classify` varchar(50) NOT NULL DEFAULT '' COMMENT '课程二级分类',
  `sub_classify_name` varchar(100) NOT NULL DEFAULT '',
  `direction` varchar(20) NOT NULL DEFAULT '' COMMENT '课程方向',
  `username` varchar(200) NOT NULL DEFAULT '' COMMENT '归属人',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '课程级别：1-初级，2-中级，3-高级',
  `free` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否免费：0-否，1-是',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '课程价格',
  `time` varchar(50) NOT NULL DEFAULT '' COMMENT '时长',
  `onsale` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未上架（0）、上架（1）',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `brief` text COMMENT '课程描述',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未推荐（0）、推荐（1）',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `study_count` int(11) NOT NULL DEFAULT '0' COMMENT '学习人数',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `t_course` */

insert  into `t_course`(`id`,`name`,`type`,`classify`,`classify_name`,`sub_classify`,`sub_classify_name`,`direction`,`username`,`level`,`free`,`price`,`time`,`onsale`,`picture`,`brief`,`recommend`,`weight`,`study_count`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,'北京自然博物馆是新中国依靠自己的力量筹建的第一座大型自然历史博物馆，主要从事古生物、动物、植物和人类学等领域的标本收藏、科学研究和科学普及工作。','','be','科普研学','java','科研院所','','wangyangming',3,0,'149.00','2小时25分',1,'','民航博物馆建设和藏品征集工作得到社会各界的广泛参与和大力支持，并征集到大量藏品及飞机实物，其中有里2、BAe146、伊尔14、三叉戟、运7、空客A310 200等我国民航不同历史时期使用的运输机。博物馆还展示包括驼峰空运、两航起义、八一开航、拉萨试航等专题的大量珍贵历史文献和资料。',0,0,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:12','system',0),(2,'民航博物馆是中国民用航空局主办的民用航空专题博物馆。博物馆位于北京首都机场辅路民航200号地区，总占地面积189600平方米，总建筑面积21980平方米。','','be','科普研学','python','博物馆 ','','wangyangming',1,0,'249.00','2小时25分',1,'','民航博物馆建设和藏品征集工作得到社会各界的广泛参与和大力支持，并征集到大量藏品及飞机实物，其中有里2、BAe146、伊尔14、三叉戟、运7、空客A310 200等我国民航不同历史时期使用的运输机。博物馆还展示包括驼峰空运、两航起义、八一开航、拉萨试航等专题的大量珍贵历史文献和资料。',0,0,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:13','system',0),(3,'科普研学课程简介','','be','科普研学','php','科技馆','','wangyangming',2,0,'99.00','2小时25分',1,'','飞机陈列区的中心，展示着一架伊尔14型飞机。该机是室内展区中体型最大的飞机，曾多次执行毛泽东主席及其他中央领导人的重要专机任务。',0,0,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:14','system',0),(4,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',2,1,'0.00','2小时25分',1,'','科普互动区分为飞行模拟、空管体验、民用航空器、民航生产、民用机场和航油五大系统。',0,0,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:15','system',0),(5,'科普研学课程简介','','be','科普研学','python','博物馆 ','','wangyangming',1,1,'0.00','2小时25分',1,'','飞行模拟系统由空客A320模拟机3台、西锐模拟机1台、梦幻飞行模拟器2台以及波音767逃生模拟舱组成；空管体验系统以专业模拟塔台机为基础，弱化专业功能，增加娱乐与科普功能',0,1,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:15','system',0),(6,'科普研学课程简介','','be','科普研学','php','科技馆','','wangyangming',2,0,'100.00','2小时25分',1,'','露天展区最为重要的飞机为空客A310-200型2301号及BAe146型飞机。2301号飞机是国内购入的首架空中客车公司研制的飞机，拥有双通道的客舱，是国内观众难得有机会近距离参观的新型客机。',0,0,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:16','system',0),(7,'科普研学课程简介','','be','科普研学','Java','科研院所','','wangyangming',1,0,'89.00','2小时25分',1,'','王爱中，民航空管运行专家，毕业于空军领航学院空管专业，持有民航局空中交通管制员执照。资深飞行发烧友，所飞机型赛斯纳/西锐/钻石/初教六/波音737等。2015年9月以专家身份受邀赴美国西雅图参加《国际航空科技研讨会》，曾接受央视新闻频道《梦想飞行者》专题报道。',0,0,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:17','system',0),(8,'科普研学课程简介','','be','科普研学','c','科普基地','','wangyangming',3,1,'0.00','2小时25分',1,'','特色课程包括《走进民航博物馆》《我们的民航强国梦》《航空史话》《探究动物身上的航空科技》《航空服饰有多“酷”》《空姐教你学礼仪》《空中交警不神秘》《从容应对空中劫机特情》《空姐教你做“航班达人”》《英雄的中国空军飞行员》《细数军事航空的黑科技》《模拟招飞课》《详解如何考取私人飞机执照》《唯美的热气球飞行》《模拟飞行课——空客A320》《魅力纸飞机》《航空模型——组装实践课》《详解航空模型驾驶员执照》《走进五花八门的无人机世界》《无人机航拍大师课》《探秘警用无人机》《空中画笔——测绘无人机》《工业级无人机——组装实践课》《详解民用无人机驾驶员执照》等。',0,2,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:17','system',0),(9,'科普研学课程简介','','be','科普研学','python','博物馆 ','','wangyangming',3,1,'0.00','2小时25分',1,'','牧云之翼组织了北京景山学校、北京南邵中学、北京安定中学等航空主题教育活动；北京大峪中学党日活动；中国无人系统产业联盟航空专题活动等。',0,0,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:18','system',0),(10,'科普研学课程简介','','be','科普研学','c','科普基地','','wangyangming',1,1,'0.00','2小时25分',1,'','国家纳米科学中心（以下简称“纳米中心”）是由中国科学院和教育部共同建设，2003年12月获中央机构编制委员会办公室批复成立的中国科学院直属事业单位。',0,3,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:18','system',0),(11,'科普研学课程简介','','be','科普研学','c','科普基地','','wangyangming',2,1,'0.00','2小时25分',1,'','利用js及canvas绘图知识，实现程序界面编写和交互逻辑处理',0,0,1552,'0000-00-00 00:00:00','system','2019-11-16 22:20:19','system',0),(12,'科普研学课程简介','','be','科普研学','c','科普基地','','wangyangming',1,1,'0.00','2小时25分',1,'','纳米中心定位于纳米科学的基础和应用基础研究，目标是建成具有国际先进水平的研究基地、面向国内外开放的纳米科学研究公共技术平台、中国纳米科技领域国际交流的窗口和人才培养基地。',0,5,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:21','system',0),(13,'科普研学课程简介','','be','科普研学','c','科普基地','','wangyangming',3,1,'0.00','2小时25分',1,'','科普讲座、纳米实验与产品展示、纳米模型DIY',0,0,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:22','system',0),(14,'科普研学课程简介','','be','科普研学','java','科普基地','','wangyangming',3,1,'200.00','2小时25分',0,'/default/all/0/31d52db3083a42ac9afead43e2a8f1ee.jpeg','国家纳米科学中心成功举办第十三届公众科学日活动',0,5,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:23','system',0),(15,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,1,'0.00','2小时25分',1,'','2017年5月20日，作为中国科学院第十三届公众科学日的组成部分，围绕2017年科技活动周 “科技强国•创新圆梦”的主题，国家纳米科学中心面向社会公众开放，通过科普讲座、纳米实验与产品展示、纳米模型DIY、',0,8,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:23','system',0),(16,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,1,'0.00','2小时25分',0,'','中国科学院物理研究所（以下简称“物理所”）前身是成立于1928年的国立中央研究院物理研究所和成立于1929年的北平研究院物理研究所，1950年在两所合并的基础上成立了中国科学院应用物理研究所，',0,0,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:26','system',0),(17,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',2,1,'0.00','2小时25分',0,'','物理所是以物理学基础研究与应用基础研究为主的多学科、综合性研究机构，研究方向以凝聚态物理为主，包括凝聚态物理、光学物理、原子分子物理、等离子体物理、软物质物理、凝聚态理论和计算物理等。',0,0,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:25','system',0),(18,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,1,'0.00','2小时25分',1,'','物理研究所共有在职职工466人。其中科技人员270人、科技支撑人员100人，包括中国科学院院士14人、中国工程院院士1人、发展中国家科学院院士8人、研究员及正高级工程技术人员147人、副研究员及高级工程技术人员206人；全所进入创新岗位412人。共有国家杰出青年科学基金获得者37人。',0,1,1552,'0000-00-00 00:00:00','system','2019-11-16 22:20:27','system',0),(19,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,1,'0.00','2小时25分',1,'','超导国家重点实验室、表面物理国家重点实验室、磁学国家重点实验室、光学物理重点实验室、先进材料与结构分析实验室（电子显微镜重点实验室）、极端条件物理重点实验室、清洁能源重点实验室、纳米物理与器件实验室',0,2,1300,'0000-00-00 00:00:00','system','2019-11-16 22:20:28','system',0),(20,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,0,'299.00','2小时25分',1,'','《超导磁悬浮小车演示》《脉冲激光法制备组合薄膜》《会跳舞的珠链》《“膜”力非凡：神奇的液体》《“磁”无处不在-超高密度信息存储器件演示》《磁性纳米结构生长和表征》《强激光高能量密度物理》《神奇的光学世界》《功能晶体实物展示》《水溶液晶体生长演示》《高压热冰演示》《动力电池展示》《新型钙钛矿太阳能电池》《神奇广阔的纳米世界》',0,1,1452,'0000-00-00 00:00:00','system','2019-11-16 22:20:28','system',0),(21,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,1,'0.00','2小时25分',0,'','北京航空航天大学安全教育体验馆于2014年投入使用，拥有26个学习体验区域，包含绳结技术、报警训练、食品药品安全、急救技术、触电救助、治安防范、航空安全、地铁逃生、公交逃生、轿车安全、灾害防范、地震体验、震后逃生、模拟灭火、火灾逃生、反恐防爆、家居安全、宿舍安全等28个教育主题，富有科学性、参与性、实用性和趣味性，以多媒体演示、互动学习、拓展体验等方式增强学习者的安全意识，规范安全行为，提高自我保护和自救互救的能力。',0,0,1552,'0000-00-00 00:00:00','system','2019-11-16 22:20:29','system',0),(22,'科普研学课程简介','','be','科普研学','java','科研院所','','wangyangming',1,1,'0.00','2小时25分',1,'','体验式安全教育培训课程：结绳训练、报警训练、食品安全、药品安全、急救自护、触电救助、航空安全、公交安全、道路安全、震级体验、震后逃生、模拟灭火、火灾逃生、消防培训、宿舍安全和实验安全等23个教育主题体验课程。',0,0,1552,'0000-00-00 00:00:00','system','2019-11-16 22:20:30','system',0),(23,'科普研学课程简介','','fe','','jquery','科研院所','','wangyangming',1,1,'100.00','',0,'/default/all/0/4fed115013e94fa98ea4ebb7ce8c8ca0.jpeg','我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程我的测试课程',0,3,0,'0000-00-00 00:00:00','system','2019-11-16 21:34:27','system',0),(28,'科普研学课程简介','','fe','','jquery','','','wangyangming',1,1,'0.00','',0,'','我是描述我是描述',0,0,0,'0000-00-00 00:00:00','system','2019-11-16 21:24:54','system',0),(29,'科普研学课程简介','','fe','','jquery','','','wangyangming',1,1,'0.00','',0,'/default/all/0/958e97eebe4c48f1a49299ed66c92d71.jpeg','1111',0,0,0,'0000-00-00 00:00:00','system','2019-11-16 21:25:03','system',0),(30,'','','','','','','','',1,1,'0.00','',0,'',NULL,0,0,0,'0000-00-00 00:00:00','system','2019-11-16 21:24:58','system',0);

/*Table structure for table `t_course_comment` */

DROP TABLE IF EXISTS `t_course_comment`;

CREATE TABLE `t_course_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL DEFAULT '' COMMENT '用户username',
  `to_username` varchar(200) NOT NULL DEFAULT '' COMMENT '评论对象username',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `section_title` varchar(200) NOT NULL DEFAULT '0' COMMENT '章节标题',
  `content` varchar(255) NOT NULL DEFAULT '0' COMMENT '评论内容',
  `ref_id` int(11) NOT NULL DEFAULT '0' COMMENT '引用id',
  `ref_content` varchar(255) NOT NULL DEFAULT '' COMMENT '引用内容',
  `type` tinyint(11) NOT NULL DEFAULT '0' COMMENT '类型：0-评论；1-答疑QA',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='课程评论&答疑';

/*Data for the table `t_course_comment` */

insert  into `t_course_comment`(`id`,`username`,`to_username`,`course_id`,`section_id`,`section_title`,`content`,`ref_id`,`ref_content`,`type`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:04','system',0),(2,'lisi','zhangsan',1,12,'1-2 科普研学','科普研学活动真好',1,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:29:20','system',0),(3,'zhangsan','',1,12,'1-2 科普研学','我是问答，我是问答',0,'我是评论我是评论',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:10','system',0),(5,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:14','system',0),(6,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:17','system',0),(7,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:20','system',0),(8,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'我是评论我是评论',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:23','system',0),(9,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:25','system',0),(10,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:28','system',0),(11,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:31','system',0),(12,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:34','system',0),(14,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:39','system',0),(15,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',0,'2017-03-26 22:34:54','system','2019-11-16 21:26:42','system',0),(19,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:26:45','system',0),(21,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:26:48','system',0),(22,'lisi','zhangsan',1,12,'1-2 科普研学','科普研学活动真好',1,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:29:29','system',0),(23,'zhangsan','',1,12,'1-2 科普研学','我是问答，我是问答',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:26:56','system',0),(24,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:00','system',0),(25,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:03','system',0),(26,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:06','system',0),(27,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:09','system',0),(28,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:15','system',0),(29,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:18','system',0),(30,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:25','system',0),(31,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:30','system',0),(32,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:34','system',0),(33,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:45','system',0),(34,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:48','system',0),(35,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:51','system',0),(36,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:27:56','system',0),(37,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:28:01','system',0),(38,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:28:08','system',0),(39,'zhangsan','lisi',1,12,'1-1 科普研学-课程介绍','我是评论我是评论',0,'',1,'2017-03-26 22:34:54','system','2019-11-16 21:28:11','system',0),(40,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'我是评论我是评论',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:35','wangyangming',0),(41,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:26','wangyangming',0),(42,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:28','wangyangming',0),(43,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:29','wangyangming',0),(44,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:31','wangyangming',0),(45,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'我是评论我是评论',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:38','wangyangming',0),(46,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:01','wangyangming',0),(47,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','发布新的评论',0,'',0,'2017-05-03 00:00:00','wangyangming','2017-05-06 22:36:01','wangyangming',0),(48,'wangyangming','',1,23,'5-1 类定义','科普研学活动真好',0,'我是评论我是评论',0,'2017-05-04 00:00:00','wangyangming','2019-11-16 21:29:30','wangyangming',0),(49,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','科普研学活动真好',0,'',0,'2017-05-04 00:00:00','wangyangming','2019-11-16 21:29:32','wangyangming',0),(50,'wangyangming','',1,12,'3-1 变量的定义、赋值、运算 ','我是问答我是问答',0,'我是评论我是评论',1,'2017-05-04 00:00:00','wangyangming','2017-05-06 22:36:38','wangyangming',0),(51,'wangyangming','',1,6,'1-1 科普研学-课程介绍','我是评论',0,'',0,'2017-05-04 00:00:00','wangyangming','2019-11-16 21:28:21','wangyangming',0),(52,'wangyangming','',1,9,'2-2 科普研学','科普研学活动真好',0,'我是评论我是评论',1,'2017-05-04 00:00:00','wangyangming','2019-11-16 21:29:32','wangyangming',0),(53,'wangyangming','',1,9,'2-2 科普研学','科普研学活动真好',0,'我是评论我是评论',0,'2017-05-04 00:00:00','wangyangming','2019-11-16 21:29:34','wangyangming',0),(54,'wangyangming','wangyangming',1,9,'2-2 科普研学','我是回答我是回答',53,'fdsafdsaf',0,'2017-05-06 00:00:00','wangyangming','2019-11-16 21:28:38','wangyangming',0),(55,'wangyangming','wangyangming',1,9,'2-2 科普研学','我回答你我回答你我的回答你',53,'fdsafdsaf',0,'2017-05-06 00:00:00','wangyangming','2019-11-16 21:28:43','wangyangming',0),(56,'wangyangming','wangyangming',1,9,'2-2 科普研学','我我我我我我我我我我我我我我我',55,'我回答你我回答你我的回答你',0,'2017-05-06 00:00:00','wangyangming','2019-11-16 21:28:46','wangyangming',0),(57,'wangyangming','',1,12,'3-1 科普研学','科普研学活动真好',0,'',0,'2017-05-06 00:00:00','wangyangming','2019-11-16 21:29:38','wangyangming',0),(58,'wangyangming','',1,12,'3-1 科普研学 ','我是新的评论我是新的评论我是新的评论',0,'',0,'2017-05-06 00:00:00','wangyangming','2019-11-16 21:28:54','wangyangming',0),(59,'wangyangming','wangyangming',1,12,'3-1 科普研学 ','我是新的回答我是新的回答',58,'我是新的评论我是新的评论我是新的评论',0,'2017-05-06 00:00:00','wangyangming','2019-11-16 21:28:58','wangyangming',0);

/*Table structure for table `t_course_section` */

DROP TABLE IF EXISTS `t_course_section`;

CREATE TABLE `t_course_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '归属课程id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父章节id，（只有2级）',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '章节名称',
  `sort` int(11) NOT NULL DEFAULT '1' COMMENT '排序',
  `time` varchar(50) NOT NULL DEFAULT '' COMMENT '时长',
  `onsale` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未上架（0）、上架（1）',
  `video_url` varchar(255) NOT NULL DEFAULT '',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='课程章节表';

/*Data for the table `t_course_section` */

insert  into `t_course_section`(`id`,`course_id`,`parent_id`,`name`,`sort`,`time`,`onsale`,`video_url`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,1,0,'第1章 科普研学活动课程介绍',1,'',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:10','system',0),(2,1,0,'第2章 科普研学活动讲解',2,'',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:12','system',0),(3,1,0,'第3章 科普研学活动',3,'',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:16','system',0),(4,1,0,'第4章 科普研学活动',4,'',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:25','system',0),(5,1,0,'第5章 科普研学活动',5,'',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:28','system',0),(6,1,1,'1-1 科普研学活动-课程介绍',1,'06:55',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:31','system',0),(7,1,1,'1-2 科普研学活动',1,'07:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:37','system',0),(8,1,2,'2-1 科普研学活动-课程介绍 ',1,'06:00',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:42','system',0),(9,1,2,'2-2 科普研学活动',1,'01:30',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:45','system',0),(10,1,2,'2-3 WebGL带你走进3D世界',1,'06:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:56','system',0),(11,1,2,'2-4 WebGL带你走进3D世界',1,'07:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:30:59','system',0),(12,1,3,'3-1 科普研学活动',1,'06:00',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:03','system',0),(13,1,3,'3-2 科普研学活动',1,'01:30',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:06','system',0),(14,1,3,'3-3 科普研学活动',1,'07:33',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:08','system',0),(15,1,3,'3-4 科普研学活动',1,'06:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:11','system',0),(16,1,3,'3-5 科普研学活动',1,'07:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:15','system',0),(17,1,3,'3-6 科普研学活动',1,'06:00',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:18','system',0),(18,1,4,'4-1 科普研学活动简介 ',1,'01:30',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:22','system',0),(19,1,4,'4-2 科普研学活动指令',1,'07:33',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:26','system',0),(20,1,4,'4-3 自定义科普研学活动',1,'06:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:28','system',0),(21,1,4,'4-4 科普研学活动',1,'07:46',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:31','system',0),(22,1,4,'4-5 科普研学活动',1,'06:00',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:33','system',0),(23,1,5,'5-1 科普研学活动定义',1,'01:30',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:36','system',0),(24,1,5,'5-2 科普研学活动',1,'07:33',1,'http://www.baidu.com','0000-00-00 00:00:00','system','2019-11-16 21:31:39','system',0),(31,28,0,'章节001',1,'23:22',1,'','0000-00-00 00:00:00','system','2017-04-15 22:27:17','system',0),(32,28,31,'001-001',1,'23:56',1,'http://www.baidu.com','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(33,28,31,'001-002',2,'23:56',1,'http://www.baidu.com','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(34,28,0,'章节002',2,'23:22',1,'','0000-00-00 00:00:00','system','2017-04-15 22:27:17','system',0),(35,28,34,'章节002-001',1,'23:56',1,'http://www.baidu.com','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(36,28,0,'章节03',3,'23:22',1,'','0000-00-00 00:00:00','system','2017-04-15 22:27:17','system',0),(37,28,36,'章节03-01',1,'00:00',1,'','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(38,28,36,'章节03-02',2,'00:00',1,'','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(39,28,0,'章节04',5,'23:22',1,'','0000-00-00 00:00:00','system','2017-04-15 22:27:17','system',0),(40,28,39,'章节04-01',1,'00:00',1,'','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(41,28,39,'章节04-02',2,'00:00',1,'','2017-04-15 00:00:00','','2017-04-15 22:27:17','',0),(42,28,0,'科普研学活动',6,'',1,'','0000-00-00 00:00:00','system','2019-11-16 21:31:43','system',1),(43,28,0,'科普研学活动',7,'',1,'','0000-00-00 00:00:00','system','2019-11-16 21:31:45','system',1),(44,28,0,'第一章：我是第一章',8,'0:0',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(45,28,44,'第一章：我是第一章',1,'00:00',1,'第一章：我是第一章','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(46,28,44,'',2,'00:00',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(47,28,44,'',3,'00:00',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(48,28,44,'',4,'00:00',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(49,28,0,'第二章：我是第二章',10,'0:0',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(50,28,49,'第二章：我是第二章',1,'00:00',1,'第二章：我是第二章','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(51,28,49,'',2,'00:00',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(52,28,49,'',3,'00:00',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(53,28,49,'',4,'00:00',1,'','2017-04-16 00:00:00','system','2017-04-16 14:24:40','system',0),(54,28,0,'第一章：我是第一章',11,'36:6',1,'','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(55,28,54,'1-001：我是001',1,'09:00',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(56,28,54,'1-001：我是002',2,'09:01',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(57,28,54,'1-001：我是003',3,'09:02',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(58,28,54,'1-001：我是004',4,'09:03',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(59,28,0,'第二章：我是第二章',13,'32:22',1,'','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(60,28,59,'2-001：我是001',1,'08:04',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(61,28,59,'2-001：我是002',2,'08:05',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(62,28,59,'2-001：我是003',3,'08:06',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(63,28,59,'2-001：我是004',4,'08:07',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:34:06','system',0),(64,29,0,'第一章：我是第一章',1,'36:6',1,'','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(65,29,64,'1-001：我是001',1,'09:00',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(66,29,64,'1-001：我是002',2,'09:01',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(67,29,64,'1-001：我是003',3,'09:02',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(68,29,64,'1-001：我是004',4,'09:03',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(69,29,0,'第二章：我是第二章',3,'32:22',1,'','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(70,29,69,'2-001：我是001',1,'08:04',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(71,29,69,'2-001：我是002',2,'08:05',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(72,29,69,'2-001：我是003',3,'08:06',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0),(73,29,69,'2-001：我是004',4,'08:07',1,'http://www.baidu.com','2017-04-16 00:00:00','system','2017-04-16 14:42:56','system',0);

/*Table structure for table `t_user_collections` */

DROP TABLE IF EXISTS `t_user_collections`;

CREATE TABLE `t_user_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `classify` int(11) NOT NULL DEFAULT '0' COMMENT '用户收藏分类',
  `object_id` int(11) NOT NULL DEFAULT '0' COMMENT '收藏内容id',
  `tips` varchar(100) NOT NULL DEFAULT '' COMMENT '用户收藏备注',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户收藏';

/*Data for the table `t_user_collections` */

insert  into `t_user_collections`(`id`,`user_id`,`classify`,`object_id`,`tips`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (4,1,1,1,'','2017-05-06 12:00:40','system','2017-05-06 16:16:36','system',0),(5,1,1,20,'','2017-05-06 12:00:40','system','2017-05-06 16:16:38','system',0);

/*Table structure for table `t_user_course_section` */

DROP TABLE IF EXISTS `t_user_course_section`;

CREATE TABLE `t_user_course_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态：0-学习中；1-学习结束',
  `rate` int(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='用户学习章节表';

/*Data for the table `t_user_course_section` */

insert  into `t_user_course_section`(`id`,`user_id`,`course_id`,`section_id`,`status`,`rate`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,1,1,7,1,50,'2017-05-03 00:00:00','system','2017-05-06 15:57:39','system',0),(2,1,1,8,1,60,'2017-05-03 00:00:00','system','2017-05-06 15:57:41','system',0),(3,1,1,12,0,0,'2017-05-03 00:00:00','wangyangming','2017-05-06 23:48:21','wangyangming',0),(4,1,1,23,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-04 00:01:50','wangyangming',0),(5,2,1,24,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-06 14:31:16','wangyangming',0),(6,2,1,6,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-06 14:31:17','wangyangming',0),(7,3,1,13,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-06 14:31:18','wangyangming',0),(8,3,1,14,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-06 14:31:18','wangyangming',0),(9,1,1,15,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-04 22:43:44','wangyangming',0),(10,4,1,21,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-06 14:31:21','wangyangming',0),(11,4,1,9,0,0,'2017-05-04 00:00:00','wangyangming','2017-05-06 14:31:22','wangyangming',0),(12,1,1,9,0,0,'2017-05-06 00:00:00','wangyangming','2017-05-06 16:32:24','wangyangming',0);

/*Table structure for table `t_user_follows` */

DROP TABLE IF EXISTS `t_user_follows`;

CREATE TABLE `t_user_follows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `follow_id` int(11) NOT NULL DEFAULT '0' COMMENT '关注的用户id',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户关注';

/*Data for the table `t_user_follows` */

insert  into `t_user_follows`(`id`,`user_id`,`follow_id`,`create_time`,`create_user`,`update_time`,`update_user`,`del`) values (1,1,2,'0000-00-00 00:00:00','system','2017-05-06 14:20:50','system',0),(2,1,3,'0000-00-00 00:00:00','system','2017-05-06 14:21:08','system',0),(3,1,4,'0000-00-00 00:00:00','system','2017-05-06 14:21:10','system',0),(4,1,5,'0000-00-00 00:00:00','system','2017-05-06 14:21:16','system',0);

/*Table structure for table `t_user_message` */

DROP TABLE IF EXISTS `t_user_message`;

CREATE TABLE `t_user_message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '消息接收用户id',
  `send_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '消息发起用户id',
  `send_user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '消息发起用户名称',
  `ref_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '引用id',
  `ref_Content` varchar(256) NOT NULL DEFAULT '' COMMENT '引用内容',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '通知的类型，1-评论，2-关注，3-答疑',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '未读（0）、已读（1）',
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_user` varchar(32) NOT NULL DEFAULT 'system',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(32) NOT NULL DEFAULT 'system',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_message` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
