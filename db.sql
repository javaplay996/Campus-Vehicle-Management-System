/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yuanqutingchexitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yuanqutingchexitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yuanqutingchexitong`;

/*Table structure for table `cheliangjilu` */

DROP TABLE IF EXISTS `cheliangjilu`;

CREATE TABLE `cheliangjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chepai_number` varchar(200) DEFAULT NULL COMMENT '车牌号  ',
  `chewei_id` int(11) DEFAULT NULL COMMENT '车位id',
  `cheliangjilu_types` int(11) DEFAULT NULL COMMENT '状态  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '泊车时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '取车时间',
  `xiaoshi` int(11) DEFAULT NULL COMMENT '停车小时  ',
  `monery` int(11) DEFAULT NULL COMMENT '金额  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='车辆记录';

/*Data for the table `cheliangjilu` */

insert  into `cheliangjilu`(`id`,`chepai_number`,`chewei_id`,`cheliangjilu_types`,`insert_time`,`update_time`,`xiaoshi`,`monery`,`create_time`) values (17,'a666666',1,1,'2021-03-22 11:13:27',NULL,NULL,NULL,'2021-03-22 11:13:27'),(18,'a777777',2,2,'2021-03-22 11:13:34','2021-03-22 11:13:39',1,5,'2021-03-22 11:13:34'),(19,'a777777',2,2,'2021-03-22 11:14:30','2021-03-22 11:15:14',1,5,'2021-03-22 11:14:30'),(20,'a555555',2,2,'2021-03-22 11:19:06','2021-03-22 11:19:23',1,5,'2021-03-22 11:19:06'),(21,'a555555',2,2,'2021-03-22 11:24:24','2021-03-22 11:24:44',1,5,'2021-03-22 11:24:24'),(22,'a101010',2,2,'2021-03-22 11:33:03','2021-03-22 13:45:10',3,15,'2021-03-22 11:33:03'),(23,'a101011',3,2,'2021-03-22 11:33:09','2021-03-22 14:50:16',4,20,'2021-03-22 11:33:09'),(24,'a101012',4,2,'2021-03-22 11:33:14','2021-03-22 13:43:11',3,15,'2021-03-22 11:33:14'),(25,'a555555',2,2,'2021-02-22 11:19:06','2021-02-22 11:19:23',1,5,'2021-02-22 11:19:06'),(26,'a555555',2,2,'2021-02-22 11:24:24','2021-02-22 11:24:44',1,5,'2021-02-22 11:19:06'),(27,'a109898',4,2,'2021-03-22 13:43:23','2021-03-22 13:43:29',1,5,'2021-03-22 13:43:23'),(28,'a111111',2,2,'2021-03-22 13:47:51','2021-03-22 13:47:58',1,5,'2021-03-22 13:47:51'),(29,'a888777',2,2,'2021-03-22 14:49:29','2021-03-22 14:49:47',1,5,'2021-03-22 14:49:29'),(30,'a88888',2,1,'2021-03-22 14:49:54',NULL,NULL,NULL,'2021-03-22 14:49:54'),(31,'a888888',4,2,'2021-03-22 14:49:59','2021-03-22 14:54:11',1,5,'2021-03-22 14:49:59'),(32,'a77777',3,1,'2021-03-22 14:53:51',NULL,NULL,NULL,'2021-03-22 14:53:51');

/*Table structure for table `chewei` */

DROP TABLE IF EXISTS `chewei`;

CREATE TABLE `chewei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chewei_name` varchar(200) DEFAULT NULL COMMENT '车位名字  ',
  `chewei_types` int(11) DEFAULT NULL COMMENT '状态  ',
  `chezhu_id` int(11) DEFAULT NULL COMMENT '车主',
  `chepai_number` varchar(200) DEFAULT NULL COMMENT '车牌号  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='车位';

/*Data for the table `chewei` */

insert  into `chewei`(`id`,`chewei_name`,`chewei_types`,`chezhu_id`,`chepai_number`,`create_time`) values (1,'车位1',1,6,'a666666','2021-03-22 11:10:30'),(2,'车位2',2,NULL,'a88888','2021-03-22 11:10:30'),(3,'车位3',2,NULL,'a77777','2021-03-22 11:10:30'),(4,'车位4',3,NULL,NULL,'2021-03-22 11:10:30');

/*Table structure for table `chezhu` */

DROP TABLE IF EXISTS `chezhu`;

CREATE TABLE `chezhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chezhu_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `chezhu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `chezhu_phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `chezhu_chepai_number` varchar(200) DEFAULT NULL COMMENT '车牌号   ',
  `chezhu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='车主';

/*Data for the table `chezhu` */

insert  into `chezhu`(`id`,`chezhu_name`,`sex_types`,`chezhu_id_number`,`chezhu_phone`,`chezhu_chepai_number`,`chezhu_photo`,`create_time`) values (1,'张一一',2,'410224199610232011','17703786931','A000000','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237558462.jpg','2021-03-20 16:51:35'),(2,'张二二',2,'410224199610232012','17703786932','a111111','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237549440.jpg','2021-03-20 16:52:27'),(3,'张三三',2,'410224199610232013','17703786933','a333333','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237540735.jpg','2021-03-20 16:52:59'),(4,'张思思',2,'410224199610232014','17703786934','a444444','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237532297.jpg','2021-03-20 16:53:32'),(5,'张五五',2,'410224199610232015','17703786965','a555555','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237522602.jpg','2021-03-20 16:54:07'),(6,'张柳柳',2,'410224199610232016','17703786966','a666666','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237514243.jpg','2021-03-20 16:54:49'),(7,'张琪琪',2,'410224199610232017','17703786967','a777777','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237499095.jpg','2021-03-20 16:55:29'),(8,'张霸霸',2,'410224199610232018','17703786968','a888888','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237492027.jpg','2021-03-20 16:56:16'),(9,'张九九',2,'410224199610232019','17703786969','a999999','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237455711.jpg','2021-03-20 16:56:56'),(10,'张十十',1,'410224199610232100','17703786910','a101010','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616383967987.jpg','2021-03-22 11:32:49'),(11,'张十一',1,'410224199610232021','17703786933','a109898','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616391764981.jpg','2021-03-22 13:42:46'),(12,'张十二',2,'410224199610232022','17703786969','a888777','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616395741053.jpg','2021-03-22 14:48:53');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-20 17:49:32'),(2,'sex_types','性别',2,'女',NULL,'2021-03-20 17:49:32'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-20 17:49:32'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-20 17:49:32'),(5,'chewei_types','车位状态',1,'本校',NULL,'2021-03-20 17:49:32'),(6,'chewei_types','车位状态',2,'非本校',NULL,'2021-03-20 17:49:32'),(7,'chewei_types','车位状态',3,'未使用',NULL,'2021-03-20 17:49:32'),(8,'cheliangjilu_types','车辆记录状态',1,'已泊车',NULL,'2021-03-22 09:11:23'),(9,'cheliangjilu_types','车辆记录状态',2,'已完成',NULL,'2021-03-22 09:11:23');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','tc25t16yeuzw7ub3cn8rt4ijk9v4in7c','2021-03-20 16:09:06','2021-03-22 15:46:31'),(2,2,'a2','yonghu','用户','htpg0lar1nfddy8d2j4pdnvb1a5k1exd','2021-03-22 10:33:41','2021-03-22 15:26:05'),(3,3,'a3','yonghu','用户','186mzrpkayzkwuh4ujgfc11ypewule2k','2021-03-22 14:52:06','2021-03-22 15:52:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-20 17:49:32','日常公告','日常公告','公告信息','2021-03-20 17:49:32'),(2,'2021-03-20 17:49:32','紧急公告','紧急公告','公告信息','2021-03-20 17:49:32'),(3,'2021-03-20 17:49:32','其他公告','其他公告','公告信息','2021-03-20 17:49:32');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`sex_types`,`id_number`,`phone`,`yonghu_photo`,`nation`,`politics_types`,`address`,`create_time`) values (1,'a1','123456','张1',2,'410224199610232011','17703789991','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237445260.jpg','汉',1,'郑州东郊','2021-03-20 16:48:04'),(2,'a2','123456','张2',2,'410224199610232012','17703789992','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616237436273.jpg','汉',2,'北京朝阳区朝阳街道1111','2021-03-20 16:48:32'),(3,'a3','123456','员工3',1,'410224199610232013','17703789993','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616383833955.jpg','汉',1,'郑州东郊','2021-03-22 11:31:01'),(4,'a4','123456','张4',1,'410224199610232014','17703789994','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616391665293.jpg','汉',2,'郑州东郊','2021-03-22 13:41:38'),(5,'a6','123456','张6',1,'410224199610232016','17703789996','http://localhost:8080/yuanqutingchexitong/file/download?fileName=1616395631752.jpg','汉',1,'郑州东郊','2021-03-22 14:47:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
