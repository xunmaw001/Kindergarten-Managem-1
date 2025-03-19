-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmhc41t
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=1609381748951 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (31,'2020-12-31 02:08:01','小小班'),(32,'2020-12-31 02:08:01','小班'),(33,'2020-12-31 02:08:01','中班'),(34,'2020-12-31 02:08:01','大班'),(1609381748950,'2020-12-31 02:29:08','学前班');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmhc41t/upload/1609381235664.png'),(2,'picture2','http://localhost:8080/ssmhc41t/upload/1609381198732.jpg'),(3,'picture3','http://localhost:8080/ssmhc41t/upload/1609381208399.jpg'),(6,'homepage','http://localhost:8080/ssmhc41t/upload/1609381975320.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382151943 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (141,'2020-12-31 02:08:01',1,1,'评论内容1','回复内容1'),(142,'2020-12-31 02:08:01',2,2,'评论内容2','回复内容2'),(143,'2020-12-31 02:08:01',3,3,'评论内容3','回复内容3'),(144,'2020-12-31 02:08:01',4,4,'评论内容4','回复内容4'),(145,'2020-12-31 02:08:01',5,5,'评论内容5','回复内容5'),(146,'2020-12-31 02:08:01',6,6,'评论内容6','回复内容6'),(1609382151942,'2020-12-31 02:35:51',1609381957005,1609382066953,'课程安排合理','谢谢');
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiaogonggao`
--

DROP TABLE IF EXISTS `discussxuexiaogonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiaogonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382116906 DEFAULT CHARSET=utf8 COMMENT='学校公告评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiaogonggao`
--

LOCK TABLES `discussxuexiaogonggao` WRITE;
/*!40000 ALTER TABLE `discussxuexiaogonggao` DISABLE KEYS */;
INSERT INTO `discussxuexiaogonggao` VALUES (121,'2020-12-31 02:08:01',1,1,'评论内容1','回复内容1'),(122,'2020-12-31 02:08:01',2,2,'评论内容2','回复内容2'),(123,'2020-12-31 02:08:01',3,3,'评论内容3','回复内容3'),(124,'2020-12-31 02:08:01',4,4,'评论内容4','回复内容4'),(125,'2020-12-31 02:08:01',5,5,'评论内容5','回复内容5'),(126,'2020-12-31 02:08:01',6,6,'评论内容6','回复内容6'),(1609382116905,'2020-12-31 02:35:16',1609381839973,1609382066953,'收到','ok');
/*!40000 ALTER TABLE `discussxuexiaogonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyuankuangjieshao`
--

DROP TABLE IF EXISTS `discussyuankuangjieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyuankuangjieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382129520 DEFAULT CHARSET=utf8 COMMENT='园况介绍评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyuankuangjieshao`
--

LOCK TABLES `discussyuankuangjieshao` WRITE;
/*!40000 ALTER TABLE `discussyuankuangjieshao` DISABLE KEYS */;
INSERT INTO `discussyuankuangjieshao` VALUES (131,'2020-12-31 02:08:01',1,1,'评论内容1','回复内容1'),(132,'2020-12-31 02:08:01',2,2,'评论内容2','回复内容2'),(133,'2020-12-31 02:08:01',3,3,'评论内容3','回复内容3'),(134,'2020-12-31 02:08:01',4,4,'评论内容4','回复内容4'),(135,'2020-12-31 02:08:01',5,5,'评论内容5','回复内容5'),(136,'2020-12-31 02:08:01',6,6,'评论内容6','回复内容6'),(1609382129519,'2020-12-31 02:35:29',1609381872826,1609382066953,'ok',NULL);
/*!40000 ALTER TABLE `discussyuankuangjieshao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382206744 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2020-12-31 02:08:01','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2020-12-31 02:08:01','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2020-12-31 02:08:01','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2020-12-31 02:08:01','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2020-12-31 02:08:01','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2020-12-31 02:08:01','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1609382206743,'2020-12-31 02:36:46','论如何培养孩子的专注力','<p>托管人个人退给他&nbsp;</p>\n<p><img src=\"../../..//upload/1609382202921.jpg\" alt=\"\" width=\"500\" height=\"448\" /></p>',0,1609382066953,'22','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goutonghuifu`
--

DROP TABLE IF EXISTS `goutonghuifu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goutonghuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `huifuneirong` longtext NOT NULL COMMENT '回复内容',
  `huifushijian` date DEFAULT NULL COMMENT '回复时间',
  `laoshigonghao` varchar(200) DEFAULT NULL COMMENT '老师工号',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382381103 DEFAULT CHARSET=utf8 COMMENT='沟通回复';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goutonghuifu`
--

LOCK TABLES `goutonghuifu` WRITE;
/*!40000 ALTER TABLE `goutonghuifu` DISABLE KEYS */;
INSERT INTO `goutonghuifu` VALUES (81,'2020-12-31 02:08:01','标题1','家长账号1','学生姓名1','回复内容1','2020-12-31','老师工号1','老师姓名1'),(82,'2020-12-31 02:08:01','标题2','家长账号2','学生姓名2','回复内容2','2020-12-31','老师工号2','老师姓名2'),(83,'2020-12-31 02:08:01','标题3','家长账号3','学生姓名3','回复内容3','2020-12-31','老师工号3','老师姓名3'),(84,'2020-12-31 02:08:01','标题4','家长账号4','学生姓名4','回复内容4','2020-12-31','老师工号4','老师姓名4'),(85,'2020-12-31 02:08:01','标题5','家长账号5','学生姓名5','回复内容5','2020-12-31','老师工号5','老师姓名5'),(86,'2020-12-31 02:08:01','标题6','家长账号6','学生姓名6','回复内容6','2020-12-31','老师工号6','老师姓名6'),(1609382381102,'2020-12-31 02:39:41','关于孩子在学校的表现','22','陈陈','日常表现不错','2020-12-31','11','王一');
/*!40000 ALTER TABLE `goutonghuifu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhang`
--

DROP TABLE IF EXISTS `jiazhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiazhangzhanghao` varchar(200) NOT NULL COMMENT '家长账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `guanxi` varchar(200) DEFAULT NULL COMMENT '关系',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiazhangzhanghao` (`jiazhangzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382066954 DEFAULT CHARSET=utf8 COMMENT='家长';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhang`
--

LOCK TABLES `jiazhang` WRITE;
/*!40000 ALTER TABLE `jiazhang` DISABLE KEYS */;
INSERT INTO `jiazhang` VALUES (21,'2020-12-31 02:08:01','家长1','123456','家长姓名1','男','http://localhost:8080/ssmhc41t/upload/jiazhang_touxiang1.jpg','学生姓名1','班级1',1,'父女','13823888881'),(22,'2020-12-31 02:08:01','家长2','123456','家长姓名2','男','http://localhost:8080/ssmhc41t/upload/jiazhang_touxiang2.jpg','学生姓名2','班级2',2,'父女','13823888882'),(23,'2020-12-31 02:08:01','家长3','123456','家长姓名3','男','http://localhost:8080/ssmhc41t/upload/jiazhang_touxiang3.jpg','学生姓名3','班级3',3,'父女','13823888883'),(24,'2020-12-31 02:08:01','家长4','123456','家长姓名4','男','http://localhost:8080/ssmhc41t/upload/jiazhang_touxiang4.jpg','学生姓名4','班级4',4,'父女','13823888884'),(25,'2020-12-31 02:08:01','家长5','123456','家长姓名5','男','http://localhost:8080/ssmhc41t/upload/jiazhang_touxiang5.jpg','学生姓名5','班级5',5,'父女','13823888885'),(26,'2020-12-31 02:08:01','家长6','123456','家长姓名6','男','http://localhost:8080/ssmhc41t/upload/jiazhang_touxiang6.jpg','学生姓名6','班级6',6,'父女','13823888886'),(1609382066953,'2020-12-31 02:34:26','22','22','陈一','女','http://localhost:8080/ssmhc41t/upload/1609382088817.jpg','陈陈','中班',5,'母女','12312312312');
/*!40000 ALTER TABLE `jiazhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiazhanggoutong`
--

DROP TABLE IF EXISTS `jiazhanggoutong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiazhanggoutong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `goutongneirong` longtext COMMENT '沟通内容',
  `goutongshijian` date DEFAULT NULL COMMENT '沟通时间',
  `jiazhangzhanghao` varchar(200) DEFAULT NULL COMMENT '家长账号',
  `jiazhangxingming` varchar(200) DEFAULT NULL COMMENT '家长姓名',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382297706 DEFAULT CHARSET=utf8 COMMENT='家长沟通';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiazhanggoutong`
--

LOCK TABLES `jiazhanggoutong` WRITE;
/*!40000 ALTER TABLE `jiazhanggoutong` DISABLE KEYS */;
INSERT INTO `jiazhanggoutong` VALUES (71,'2020-12-31 02:08:01','标题1','沟通内容1','2020-12-31','家长账号1','家长姓名1','学生姓名1','班级1','否',''),(72,'2020-12-31 02:08:01','标题2','沟通内容2','2020-12-31','家长账号2','家长姓名2','学生姓名2','班级2','否',''),(73,'2020-12-31 02:08:01','标题3','沟通内容3','2020-12-31','家长账号3','家长姓名3','学生姓名3','班级3','否',''),(74,'2020-12-31 02:08:01','标题4','沟通内容4','2020-12-31','家长账号4','家长姓名4','学生姓名4','班级4','否',''),(75,'2020-12-31 02:08:01','标题5','沟通内容5','2020-12-31','家长账号5','家长姓名5','学生姓名5','班级5','否',''),(76,'2020-12-31 02:08:01','标题6','沟通内容6','2020-12-31','家长账号6','家长姓名6','学生姓名6','班级6','否',''),(1609382297705,'2020-12-31 02:38:17','关于孩子在学校的表现','<p>孩子的日常表现</p><p>兴趣爱好等？</p>','2020-12-31','22','陈一','陈陈','中班','是','');
/*!40000 ALTER TABLE `jiazhanggoutong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `kechengtese` longtext COMMENT '课程特色',
  `kechengbiao` longtext COMMENT '课程表',
  `gengxinshijian` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609381957006 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (61,'2020-12-31 02:08:01','标题1','http://localhost:8080/ssmhc41t/upload/1609380946303.jpg','班级1','课程介绍1','课程特色1','<p>课程表1</p>','2020-12-31'),(62,'2020-12-31 02:08:01','标题2','http://localhost:8080/ssmhc41t/upload/1609380958775.jpg','班级2','课程介绍2','课程特色2','<p>课程表2</p>','2020-12-31'),(63,'2020-12-31 02:08:01','标题3','http://localhost:8080/ssmhc41t/upload/1609380989745.jpg','班级3','课程介绍3','课程特色3','<p>课程表3</p>','2020-12-31'),(64,'2020-12-31 02:08:01','标题4','http://localhost:8080/ssmhc41t/upload/1609381000876.jpg','班级4','课程介绍4','课程特色4','<p>课程表4</p>','2020-12-31'),(65,'2020-12-31 02:08:01','标题5','http://localhost:8080/ssmhc41t/upload/1609381013468.jpg','班级5','课程介绍5','课程特色5','<p>课程表5</p>','2020-12-31'),(66,'2020-12-31 02:08:01','标题6','http://localhost:8080/ssmhc41t/upload/kechengxinxi_tupian6.jpg','班级6','课程介绍6','课程特色6','课程表6','2020-12-31'),(1609381957005,'2020-12-31 02:32:36','中班一周课程','http://localhost:8080/ssmhc41t/upload/1609381914000.jpg','中班','黄金分割  看到','国学经典等，引入游戏教学','<p>课程表</p><p><img src=\"http://localhost:8080/ssmhc41t/upload/1609381955005.jpg\"></p>','2020-12-31');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoshi`
--

DROP TABLE IF EXISTS `laoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laoshigonghao` varchar(200) NOT NULL COMMENT '老师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `laoshixingming` varchar(200) DEFAULT NULL COMMENT '老师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `laoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laoshigonghao` (`laoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609381794551 DEFAULT CHARSET=utf8 COMMENT='老师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoshi`
--

LOCK TABLES `laoshi` WRITE;
/*!40000 ALTER TABLE `laoshi` DISABLE KEYS */;
INSERT INTO `laoshi` VALUES (11,'2020-12-31 02:08:01','老师1','123456','老师姓名1','男','http://localhost:8080/ssmhc41t/upload/laoshi_zhaopian1.jpg','班级1','773890001@qq.com','13823888881'),(12,'2020-12-31 02:08:01','老师2','123456','老师姓名2','男','http://localhost:8080/ssmhc41t/upload/laoshi_zhaopian2.jpg','班级2','773890002@qq.com','13823888882'),(13,'2020-12-31 02:08:01','老师3','123456','老师姓名3','男','http://localhost:8080/ssmhc41t/upload/laoshi_zhaopian3.jpg','班级3','773890003@qq.com','13823888883'),(14,'2020-12-31 02:08:01','老师4','123456','老师姓名4','男','http://localhost:8080/ssmhc41t/upload/laoshi_zhaopian4.jpg','班级4','773890004@qq.com','13823888884'),(15,'2020-12-31 02:08:01','老师5','123456','老师姓名5','男','http://localhost:8080/ssmhc41t/upload/laoshi_zhaopian5.jpg','班级5','773890005@qq.com','13823888885'),(16,'2020-12-31 02:08:01','老师6','123456','老师姓名6','男','http://localhost:8080/ssmhc41t/upload/laoshi_zhaopian6.jpg','班级6','773890006@qq.com','13823888886'),(1609381794550,'2020-12-31 02:29:54','11','11','王一','女','http://localhost:8080/ssmhc41t/upload/1609381779392.jpeg','中班','12@qq.com','12312312312');
/*!40000 ALTER TABLE `laoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382006638 DEFAULT CHARSET=utf8 COMMENT='教学特色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2020-12-31 02:08:01','标题1','http://localhost:8080/ssmhc41t/upload/1609381054098.png','<p>内容1</p>'),(112,'2020-12-31 02:08:01','标题2','http://localhost:8080/ssmhc41t/upload/1609381168098.jpg','<p>内容2</p>'),(113,'2020-12-31 02:08:01','标题3','http://localhost:8080/ssmhc41t/upload/1609381094071.png','<p>内容3</p>'),(114,'2020-12-31 02:08:01','标题4','http://localhost:8080/ssmhc41t/upload/1609381118823.png','<p>内容4</p>'),(115,'2020-12-31 02:08:01','标题5','http://localhost:8080/ssmhc41t/upload/1609381130077.png','<p>内容5</p>'),(116,'2020-12-31 02:08:01','标题6','http://localhost:8080/ssmhc41t/upload/1609381140040.png','<p>内容6</p>'),(1609382006637,'2020-12-31 02:33:26','游戏教学','http://localhost:8080/ssmhc41t/upload/1609381997277.jpg','<p>游戏</p><p><img src=\"http://localhost:8080/ssmhc41t/upload/1609382005392.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609382125420 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1609382106819,'2020-12-31 02:35:06',1609382066953,1609381839973,'xuexiaogonggao','放假通知','http://localhost:8080/ssmhc41t/upload/1609381826343.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','3vkdanl8d5t97hl2rluyxpwj85wo5w8p','2020-12-31 02:10:10','2020-12-31 03:39:54'),(2,1609382066953,'22','jiazhang','家长','dxa86ptkftf3ey6c8xg8o999uj0rybjf','2020-12-31 02:34:33','2020-12-31 03:40:36'),(3,1609381794550,'11','laoshi','老师','v2i5vk3dc2fxaxze3vk5qdn1ccz9uls8','2020-12-31 02:38:44','2020-12-31 03:38:45');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2020-12-31 02:08:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiaogonggao`
--

DROP TABLE IF EXISTS `xuexiaogonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiaogonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaomingcheng` varchar(200) NOT NULL COMMENT '公告名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609381839974 DEFAULT CHARSET=utf8 COMMENT='学校公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiaogonggao`
--

LOCK TABLES `xuexiaogonggao` WRITE;
/*!40000 ALTER TABLE `xuexiaogonggao` DISABLE KEYS */;
INSERT INTO `xuexiaogonggao` VALUES (41,'2020-12-31 02:08:01','公告名称1','类型1','http://localhost:8080/ssmhc41t/upload/1609380818197.jpg','2020-12-31','<p>内容1</p>'),(42,'2020-12-31 02:08:01','公告名称2','类型2','http://localhost:8080/ssmhc41t/upload/1609380829725.jpg','2020-12-31','<p>内容2</p>'),(43,'2020-12-31 02:08:01','公告名称3','类型3','http://localhost:8080/ssmhc41t/upload/1609380839749.jpg','2020-12-31','<p>内容3</p>'),(44,'2020-12-31 02:08:01','公告名称4','类型4','http://localhost:8080/ssmhc41t/upload/1609380854889.jpg','2020-12-31','<p>内容4</p>'),(45,'2020-12-31 02:08:01','公告名称5','类型5','http://localhost:8080/ssmhc41t/upload/1609380898860.jpg','2020-12-31','<p>内容5</p>'),(46,'2020-12-31 02:08:01','公告名称6','类型6','http://localhost:8080/ssmhc41t/upload/1609380911339.jpg','2020-12-31','<p>内容6</p>'),(1609381839973,'2020-12-31 02:30:39','放假通知','放假','http://localhost:8080/ssmhc41t/upload/1609381826343.jpg','2020-12-31','<p>五一放假通知</p><p><img src=\"http://localhost:8080/ssmhc41t/upload/1609381838392.jpg\"></p>');
/*!40000 ALTER TABLE `xuexiaogonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuankuangjieshao`
--

DROP TABLE IF EXISTS `yuankuangjieshao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuankuangjieshao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tesejieshao` longtext COMMENT '特色介绍',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609381888538 DEFAULT CHARSET=utf8 COMMENT='园况介绍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuankuangjieshao`
--

LOCK TABLES `yuankuangjieshao` WRITE;
/*!40000 ALTER TABLE `yuankuangjieshao` DISABLE KEYS */;
INSERT INTO `yuankuangjieshao` VALUES (51,'2020-12-31 02:08:01','标题1','http://localhost:8080/ssmhc41t/upload/1609381416886.jpg','<p>特色介绍1</p>','2020-12-31'),(52,'2020-12-31 02:08:01','标题2','http://localhost:8080/ssmhc41t/upload/1609381461327.jpg','<p>特色介绍2</p>','2020-12-31'),(53,'2020-12-31 02:08:01','标题3','http://localhost:8080/ssmhc41t/upload/1609381475574.jpg','<p>特色介绍3</p>','2020-12-31'),(54,'2020-12-31 02:08:01','标题4','http://localhost:8080/ssmhc41t/upload/1609381485168.jpg','<p>特色介绍4</p>','2020-12-31'),(55,'2020-12-31 02:08:01','标题5','http://localhost:8080/ssmhc41t/upload/1609381494794.jpg','<p>特色介绍5</p>','2020-12-31'),(56,'2020-12-31 02:08:01','标题6','http://localhost:8080/ssmhc41t/upload/1609381593620.jpg','<p>特色介绍6</p>','2020-12-31'),(1609381872826,'2020-12-31 02:31:12','师资介绍','http://localhost:8080/ssmhc41t/upload/1609381860663.jpg','<p>师资团队</p><p><img src=\"http://localhost:8080/ssmhc41t/upload/1609381871061.jpg\"></p>','2020-12-31'),(1609381888537,'2020-12-31 02:31:28','饭堂','http://localhost:8080/ssmhc41t/upload/1609381883031.jpg','<p>风格个</p>','2020-12-31');
/*!40000 ALTER TABLE `yuankuangjieshao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31 11:20:07
