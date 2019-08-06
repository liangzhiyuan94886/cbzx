/*
SQLyog v10.2 
MySQL - 5.7.26 : Database - cbzx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cbzx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cbzx`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL COMMENT '原表主键',
  `name` varchar(100) DEFAULT NULL COMMENT '项目名',
  `code` varchar(50) DEFAULT NULL COMMENT '项目简称',
  `createdBy` varchar(50) DEFAULT NULL COMMENT '创建者',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `platform` varchar(20) DEFAULT NULL COMMENT '平台',
  `deleted` varchar(10) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `type` int(10) DEFAULT NULL COMMENT '所属产品类主键',
  `address` varchar(255) DEFAULT NULL COMMENT '项目缺陷地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `product` */

insert  into `product`(`id`,`pid`,`name`,`code`,`createdBy`,`createdDate`,`platform`,`deleted`,`type`,`address`) values (1,1,'化工园区APP','hgyq-app','admin','2018-06-02 11:53:44','zt','0',NULL,'????'),(2,4,'智慧校园','zhxy','admin','2018-07-26 16:12:41','zt','1',1,NULL),(3,2,'化工园区app一期-android','hgyq-android-1.0','admin','2018-06-02 11:55:23','zt','1',NULL,NULL),(4,3,'化工园区公众号','HGYQGZH','admin','2018-06-27 10:35:11','zt','0',NULL,NULL),(5,5,'智慧LNG_Android','1.0.5','xuandekui','2018-07-26 19:00:19','zt','1',NULL,NULL),(6,6,'嘉兴港区水气共治平台','1.0.0','changguocheng','2018-07-27 08:41:50','zt','0',NULL,NULL),(7,7,'智慧LNG_IOS','78655','wuhaili','2018-07-27 16:04:03','zt','1',NULL,NULL),(8,8,'智慧国防APP','765980','wuhaili','2018-07-27 16:07:24','zt','1',NULL,NULL),(9,9,'化工封闭园区公众号','ASOCO_FBYQ','admin','2018-09-29 13:18:56','zt','0',NULL,NULL),(10,10,'蓝区监管决策项目','JGJC','yangzixi','2018-10-26 16:25:19','zt','0',NULL,NULL),(11,11,'危化品全生命周期','WHJGPT','wujs','2018-11-02 09:00:53','zt','0',NULL,'https://zentao.asoco.com.cn/index.php?m=bug&f=view&bugID='),(12,12,'一企一档','YQYD','heliujie','2018-11-16 10:23:48','zt','0',NULL,NULL),(13,13,'智慧校园-APP','zhxy-app','admin','2018-11-27 09:54:02','zt','0',1,'https://zentao.asoco.com.cn/index.php?m=bug&f=view&bugID='),(14,14,'智慧应急','ZHHYJ','xieyijuan','2018-11-29 14:14:23','zt','0',NULL,NULL),(15,15,'智能工厂传化项目','CHHG','gaoxc','2018-11-30 10:32:49','zt','1',NULL,NULL),(16,16,'智慧校园','zhxy','yangzixi','2018-11-30 11:28:57','zt','0',1,NULL),(17,17,'综合运营管理平台一张图升级','YZT-SJ','heliujie','2018-12-18 10:56:42','zt','0',NULL,NULL),(18,18,'Asoco2.0-应急指挥','YJZH','heliujie','2018-12-18 10:58:23','zt','0',2,NULL),(19,19,'嘉兴港区化工园区智慧环保（二期）','HBEQ','wangsw','2019-01-04 16:11:46','zt','0',NULL,NULL),(20,26,'公司质量管理','ZJHTHJ-QA','hanlulu','2019-04-26 14:05:25','zt','1',NULL,NULL),(21,20,'ASOCO2.0-导航大厅','DHDT','gonggf','2019-01-07 15:53:48','zt','0',2,NULL),(22,21,'辅助决策业务调度','FZJCYWDD','heliujie','2019-01-09 12:28:06','zt','0',NULL,NULL),(23,22,'舆情分析','YQFX','heliujie','2019-01-25 15:45:48','zt','0',NULL,NULL),(24,23,'测试','ASOCO','yangzixi','2019-01-29 16:03:57','zt','1',NULL,NULL),(25,24,'智慧消防-物联网综合管理系统','WLW','gonggf','2019-02-13 15:34:44','zt','0',NULL,NULL),(26,25,'一企一档产品','oeoa','heliujie','2019-03-25 11:04:29','zt','0',NULL,NULL),(27,27,'质量管理','ZLGL','liaoxm','2019-04-26 14:05:53','zt','0',NULL,NULL),(28,28,'农村生活污水管理平台','NWPT','jinyangyu','2019-05-08 09:16:44','zt','0',NULL,NULL),(29,4,'智慧校园','zhxy','admin','2018-07-26 16:12:41','zt','1',NULL,NULL),(30,10002,'危化品全生命周期监管','WHP','zhangbin','2019-05-20 10:27:18','jira','0',NULL,NULL),(31,10003,'智慧消防','ZHXF','caihaitong','2019-05-20 10:27:18','jira','0',NULL,NULL),(32,10004,'运维服务','YWFW','ID10103','2019-05-20 10:27:18','jira','0',NULL,''),(33,10006,'API网关','APIG','huangrong','2019-05-20 10:27:18','jira','0',NULL,NULL),(34,10007,'星智云','XZY','zhuzhouwang','2019-05-20 10:27:18','jira','0',NULL,NULL),(35,10008,'环保二期','HBEQ','rensongxin','2019-05-20 10:27:18','jira','0',NULL,NULL),(36,10009,'Asoco导航大厅','ADHDT','huangrong','2019-05-20 10:27:18','jira','0',NULL,NULL),(37,10011,'星磐数据','XPSJ','liuhao','2019-05-20 10:27:18','jira','0',NULL,'	 http://jira.asoco.com.cn/browse/XPSJ-1?jql=text%20~%20'),(38,10101,'LNG二期','LNGEQ','wanbaoyue','2019-05-20 10:27:18','jira','0',NULL,NULL),(39,10102,'传化合成管理驾驶舱','CHHC','songchenxu','2019-05-20 10:27:18','jira','0',NULL,NULL),(40,10103,'XPSJ星磐数据项目-看板测试','XPSJKB','liuhao','2019-05-20 10:27:18','jira','0',NULL,NULL),(41,10105,'鹊桥','MB','gongwei','2019-05-20 10:27:18','jira','0',NULL,NULL),(42,10106,'项目管理测试','PLAN','wanbaoyue','2019-05-20 10:27:18','jira','0',NULL,NULL),(43,10107,'Asoco智慧化工园区平台','AS','liangyuan','2019-05-20 10:27:18','jira','0',NULL,NULL),(44,10108,'Scrum-工具体系试运行测试项目','SCRUM','hanlulu','2019-05-20 10:27:18','jira','0',NULL,NULL),(45,10200,'化工园区统一app','APP','lichao','2019-05-20 10:27:18','jira','0',NULL,NULL),(46,10300,'农村生活污水运维管理平台','NWYWGL','huangjinhu','2019-05-20 10:27:18','jira','0',NULL,NULL),(47,10301,'配置管理库','ZPGL','songxuejie','2019-05-20 10:27:18','jira','0',NULL,NULL),(48,10400,'启东化工园智慧园区项目','KANBAN','wangchenhao','2019-05-20 10:27:18','jira','0',NULL,NULL),(49,10403,'园区封闭','YQFB','chenqiaofeng','2019-05-20 10:27:18','jira','0',NULL,NULL),(50,10404,'智慧校园二期','ZHXY','huangjinhu','2019-05-20 10:27:18','jira','0',NULL,NULL),(51,10405,'智能工厂产品','ZNGC','yangjinzhan','2019-05-20 10:27:18','jira','0',NULL,NULL),(52,10406,'智能传感器产品','ZNCGQ','lixiayang','2019-05-20 10:27:18','jira','0',NULL,NULL),(53,29,'危化品数据库','ASOCO3.0','wubin','2019-05-30 16:12:40','zt','0',NULL,NULL),(54,30,'校园学生成长档案','XSCZDA','liangzy','2019-06-14 13:28:01','zt','0',NULL,NULL),(55,31,'供应链协同平台-重构版','whpgylxt','wujs','2019-06-17 13:15:47','zt','0',NULL,NULL),(56,32,'启东市滨江精细化工园区智慧园区大数据平台集成项目测试','QDZHYQ','gaoxc','2019-07-01 16:46:24','zt','0',NULL,NULL),(57,33,'智慧安监','PHZHAJ','chenmj','2019-07-12 15:49:09','zt','0',NULL,NULL),(58,34,'柘汪临港产业园区智慧园区项目','ZWZHYQ','wangchh','2019-07-12 15:57:31','zt','0',NULL,NULL),(59,10407,'平湖安监（PHAJ）','PHAJ','huangjinhu','2019-07-25 01:38:05','jira','0',NULL,NULL),(60,10408,'危化品硬件（WHPYJ）','WHPYJ','chenqiaofeng','2019-07-25 01:38:05','jira','0',NULL,NULL),(61,10409,'柘汪临港产业智慧园区','ZWZHYQ','wangchenhao','2019-07-25 01:38:05','jira','0',NULL,NULL),(62,10410,'五水共治（三期）','WSGZ3','huangjinhu','2019-07-25 01:38:05','jira','0',NULL,NULL),(63,10411,'产品研发部工单','CPYFB','wanbaoyue','2019-07-25 01:38:05','jira','0',NULL,NULL),(64,10500,'业务运营中心','YWYYZX','ID10103','2019-07-25 01:38:05','jira','0',NULL,NULL),(65,10501,'美福码头智慧排船管理系统','MFMT','zhoujiong','2019-07-25 01:38:05','jira','0',NULL,NULL),(66,10502,'智安小区三期','ZAXQSQ','caihaitong','2019-07-25 01:38:05','jira','0',NULL,NULL),(67,10503,'镇江海鹰ERP管理系统','HYERP','daiyongchang','2019-07-25 01:38:05','jira','0',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
