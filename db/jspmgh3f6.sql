-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmgh3f6
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
) ENGINE=InnoDB AUTO_INCREMENT=1618378044682 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (41,'2021-04-14 05:17:51','班级1'),(42,'2021-04-14 05:17:51','班级2'),(43,'2021-04-14 05:17:51','班级3'),(44,'2021-04-14 05:17:51','班级4'),(45,'2021-04-14 05:17:51','班级5'),(46,'2021-04-14 05:17:51','班级6'),(1618378044681,'2021-04-14 05:27:24','生工1902班');
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmgh3f6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmgh3f6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmgh3f6/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378009610 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-04-14 05:17:51','公告标题1','http://localhost:8080/jspmgh3f6/upload/1618377625485.jpg','内容1\r\n','2021-04-14'),(12,'2021-04-14 05:17:51','公告标题2','http://localhost:8080/jspmgh3f6/upload/1618377631590.jpg','内容2\r\n','2021-04-14'),(13,'2021-04-14 05:17:51','公告标题3','http://localhost:8080/jspmgh3f6/upload/1618377667224.jpg','内容3\r\n','2021-04-14'),(14,'2021-04-14 05:17:51','公告标题4','http://localhost:8080/jspmgh3f6/upload/1618377673990.png','内容4\r\n','2021-04-14'),(15,'2021-04-14 05:17:51','公告标题5','http://localhost:8080/jspmgh3f6/upload/1618377682361.jpg','内容5\r\n','2021-04-14'),(16,'2021-04-14 05:17:51','公告标题6','http://localhost:8080/jspmgh3f6/upload/1618377689319.jpg','内容6\r\n','2021-04-14'),(1618378009609,'2021-04-14 05:26:49','新学期排课通知','http://localhost:8080/jspmgh3f6/upload/1618377998310.jpg','新学期排课相关事宜\r\n<img src=\"http://localhost:8080/jspmgh3f6/upload/1618378008000.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmgh3f6/upload/1618378008000.jpg\">\r\n','2021-04-14');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `renjiaokemu` varchar(200) DEFAULT NULL COMMENT '任教科目',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378106798 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (61,'2021-04-14 05:17:51','教师1','123456','教师姓名1','男','http://localhost:8080/jspmgh3f6/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881','任教科目1'),(62,'2021-04-14 05:17:51','教师2','123456','教师姓名2','男','http://localhost:8080/jspmgh3f6/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882','任教科目2'),(63,'2021-04-14 05:17:51','教师3','123456','教师姓名3','男','http://localhost:8080/jspmgh3f6/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883','任教科目3'),(64,'2021-04-14 05:17:51','教师4','123456','教师姓名4','男','http://localhost:8080/jspmgh3f6/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884','任教科目4'),(65,'2021-04-14 05:17:51','教师5','123456','教师姓名5','男','http://localhost:8080/jspmgh3f6/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885','任教科目5'),(66,'2021-04-14 05:17:51','教师6','123456','教师姓名6','男','http://localhost:8080/jspmgh3f6/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886','任教科目6'),(1618378106797,'2021-04-14 05:28:26','2','2','张悦','女','http://localhost:8080/jspmgh3f6/upload/1618378092725.jpg','中级教师','12345678963','数学');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kebiaoxinxi`
--

DROP TABLE IF EXISTS `kebiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kebiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `diyijie` varchar(200) DEFAULT NULL COMMENT '第一节',
  `dierjie` varchar(200) DEFAULT NULL COMMENT '第二节',
  `disanjie` varchar(200) DEFAULT NULL COMMENT '第三节',
  `disijie` varchar(200) DEFAULT NULL COMMENT '第四节',
  `diwujie` varchar(200) DEFAULT NULL COMMENT '第五节',
  `diliujie` varchar(200) DEFAULT NULL COMMENT '第六节',
  `diqijie` varchar(200) DEFAULT NULL COMMENT '第七节',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378182482 DEFAULT CHARSET=utf8 COMMENT='课表信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kebiaoxinxi`
--

LOCK TABLES `kebiaoxinxi` WRITE;
/*!40000 ALTER TABLE `kebiaoxinxi` DISABLE KEYS */;
INSERT INTO `kebiaoxinxi` VALUES (81,'2021-04-14 05:17:51','班级1','上学期','星期一','第一节1','第二节1','第三节1','第四节1','第五节1','第六节1','第七节1'),(82,'2021-04-14 05:17:51','班级2','上学期','星期一','第一节2','第二节2','第三节2','第四节2','第五节2','第六节2','第七节2'),(83,'2021-04-14 05:17:51','班级3','上学期','星期一','第一节3','第二节3','第三节3','第四节3','第五节3','第六节3','第七节3'),(84,'2021-04-14 05:17:51','班级4','上学期','星期一','第一节4','第二节4','第三节4','第四节4','第五节4','第六节4','第七节4'),(85,'2021-04-14 05:17:51','班级5','上学期','星期一','第一节5','第二节5','第三节5','第四节5','第五节5','第六节5','第七节5'),(86,'2021-04-14 05:17:51','班级6','上学期','星期一','第一节6','第二节6','第三节6','第四节6','第五节6','第六节6','第七节6'),(1618378156615,'2021-04-14 05:29:15','生工1902班','上学期','星期一','岩石力学','机械工程','课程名称1','课程名称2','课程名称3','课程名称5','高等数学'),(1618378182481,'2021-04-14 05:29:41','生工1902班','上学期','星期二','岩石力学','机械工程','课程名称1','课程名称1','课程名称3','课程名称5','课程名称6');
/*!40000 ALTER TABLE `kebiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengchengji`
--

DROP TABLE IF EXISTS `kechengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `kaohechengji` int(11) DEFAULT NULL COMMENT '考核成绩',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378364929 DEFAULT CHARSET=utf8 COMMENT='课程成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengchengji`
--

LOCK TABLES `kechengchengji` WRITE;
/*!40000 ALTER TABLE `kechengchengji` DISABLE KEYS */;
INSERT INTO `kechengchengji` VALUES (111,'2021-04-14 05:17:51','课程名称1','课程类型1','班级1','年级1','学期1',1,'评语1','2021-04-14','教师工号1','教师姓名1','学号1','学生姓名1'),(112,'2021-04-14 05:17:51','课程名称2','课程类型2','班级2','年级2','学期2',2,'评语2','2021-04-14','教师工号2','教师姓名2','学号2','学生姓名2'),(113,'2021-04-14 05:17:51','课程名称3','课程类型3','班级3','年级3','学期3',3,'评语3','2021-04-14','教师工号3','教师姓名3','学号3','学生姓名3'),(114,'2021-04-14 05:17:51','课程名称4','课程类型4','班级4','年级4','学期4',4,'评语4','2021-04-14','教师工号4','教师姓名4','学号4','学生姓名4'),(115,'2021-04-14 05:17:51','课程名称5','课程类型5','班级5','年级5','学期5',5,'评语5','2021-04-14','教师工号5','教师姓名5','学号5','学生姓名5'),(116,'2021-04-14 05:17:51','课程名称6','课程类型6','班级6','年级6','学期6',6,'评语6','2021-04-14','教师工号6','教师姓名6','学号6','学生姓名6'),(1618378364928,'2021-04-14 05:32:44','高等数学','公共课','生工1902班','大二','上学期',95,'考得不错','2021-06-25','2','张悦','1','陈一');
/*!40000 ALTER TABLE `kechengchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengmingcheng`
--

DROP TABLE IF EXISTS `kechengmingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengmingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengmingcheng` (`kechengmingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378133901 DEFAULT CHARSET=utf8 COMMENT='课程名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengmingcheng`
--

LOCK TABLES `kechengmingcheng` WRITE;
/*!40000 ALTER TABLE `kechengmingcheng` DISABLE KEYS */;
INSERT INTO `kechengmingcheng` VALUES (71,'2021-04-14 05:17:51','课程名称1'),(72,'2021-04-14 05:17:51','课程名称2'),(73,'2021-04-14 05:17:51','课程名称3'),(74,'2021-04-14 05:17:51','课程名称4'),(75,'2021-04-14 05:17:51','课程名称5'),(76,'2021-04-14 05:17:51','课程名称6'),(1618378120751,'2021-04-14 05:28:39','高等数学'),(1618378127050,'2021-04-14 05:28:46','机械工程'),(1618378133900,'2021-04-14 05:28:53','岩石力学');
/*!40000 ALTER TABLE `kechengmingcheng` ENABLE KEYS */;
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
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) NOT NULL COMMENT '课程类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378227464 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (91,'2021-04-14 05:17:51','课程名称1','公共课','http://localhost:8080/jspmgh3f6/upload/1618377769215.jpg','专业1','班级1','大一','上学期','2021-04-14','','教师姓名1'),(92,'2021-04-14 05:17:51','课程名称2','公共课','http://localhost:8080/jspmgh3f6/upload/1618377775187.jpg','专业2','班级2','大一','上学期','2021-04-14','','教师姓名2'),(93,'2021-04-14 05:17:51','课程名称3','公共课','http://localhost:8080/jspmgh3f6/upload/1618377872385.jpg','专业3','班级3','大一','上学期','2021-04-14','','教师姓名3'),(94,'2021-04-14 05:17:51','课程名称4','公共课','http://localhost:8080/jspmgh3f6/upload/1618377888979.jpg','专业4','班级4','大一','上学期','2021-04-14','','教师姓名4'),(95,'2021-04-14 05:17:51','课程名称5','公共课','http://localhost:8080/jspmgh3f6/upload/1618377895593.jpg','专业5','班级5','大一','上学期','2021-04-14','','教师姓名5'),(96,'2021-04-14 05:17:51','课程名称6','公共课','http://localhost:8080/jspmgh3f6/upload/1618377907515.jpg','专业6','班级6','大一','上学期','2021-04-14','','教师姓名6'),(1618378227463,'2021-04-14 05:30:26','高等数学','公共课','http://localhost:8080/jspmgh3f6/upload/1618378216012.jpg','生物工程','生工1902班','大二','上学期','2021-04-14','2','张悦');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','9ccaiiai0s50mnntgj1vq5snui2zyz4r','2021-04-14 05:20:09','2021-04-14 06:33:08'),(2,1618378077849,'1','xuesheng','学生','42qxjobfemiq1v6mt33g1n1608a5nvyd','2021-04-14 05:30:41','2021-04-14 06:32:57'),(3,1618378106797,'2','jiaoshi','教师','al2xhd1ng6nsoull4rj1niqllrnkts92','2021-04-14 05:31:29','2021-04-14 06:31:29');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-14 05:17:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378077850 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (51,'2021-04-14 05:17:51','学生1','123456','学生姓名1','男','http://localhost:8080/jspmgh3f6/upload/xuesheng_touxiang1.jpg','学院1','专业1','班级1','13823888881','773890001@qq.com'),(52,'2021-04-14 05:17:51','学生2','123456','学生姓名2','男','http://localhost:8080/jspmgh3f6/upload/xuesheng_touxiang2.jpg','学院2','专业2','班级2','13823888882','773890002@qq.com'),(53,'2021-04-14 05:17:51','学生3','123456','学生姓名3','男','http://localhost:8080/jspmgh3f6/upload/xuesheng_touxiang3.jpg','学院3','专业3','班级3','13823888883','773890003@qq.com'),(54,'2021-04-14 05:17:51','学生4','123456','学生姓名4','男','http://localhost:8080/jspmgh3f6/upload/xuesheng_touxiang4.jpg','学院4','专业4','班级4','13823888884','773890004@qq.com'),(55,'2021-04-14 05:17:51','学生5','123456','学生姓名5','男','http://localhost:8080/jspmgh3f6/upload/xuesheng_touxiang5.jpg','学院5','专业5','班级5','13823888885','773890005@qq.com'),(56,'2021-04-14 05:17:51','学生6','123456','学生姓名6','男','http://localhost:8080/jspmgh3f6/upload/xuesheng_touxiang6.jpg','学院6','专业6','班级6','13823888886','773890006@qq.com'),(1618378077849,'2021-04-14 05:27:57','1','11','陈一','女','http://localhost:8080/jspmgh3f6/upload/1618378061833.jpg','轻工食品学院','生物工程','生工1902班','12345678912','1233@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengxuanke`
--

DROP TABLE IF EXISTS `xueshengxuanke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xuankeriqi` date DEFAULT NULL COMMENT '选课日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378278978 DEFAULT CHARSET=utf8 COMMENT='学生选课';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengxuanke`
--

LOCK TABLES `xueshengxuanke` WRITE;
/*!40000 ALTER TABLE `xueshengxuanke` DISABLE KEYS */;
INSERT INTO `xueshengxuanke` VALUES (101,'2021-04-14 05:17:51','课程名称1','课程类型1','班级1','年级1','学期1','2021-04-14','教师工号1','教师姓名1','学号1','学生姓名1','备注1','是',''),(102,'2021-04-14 05:17:51','课程名称2','课程类型2','班级2','年级2','学期2','2021-04-14','教师工号2','教师姓名2','学号2','学生姓名2','备注2','是',''),(103,'2021-04-14 05:17:51','课程名称3','课程类型3','班级3','年级3','学期3','2021-04-14','教师工号3','教师姓名3','学号3','学生姓名3','备注3','是',''),(104,'2021-04-14 05:17:51','课程名称4','课程类型4','班级4','年级4','学期4','2021-04-14','教师工号4','教师姓名4','学号4','学生姓名4','备注4','是',''),(105,'2021-04-14 05:17:51','课程名称5','课程类型5','班级5','年级5','学期5','2021-04-14','教师工号5','教师姓名5','学号5','学生姓名5','备注5','是',''),(106,'2021-04-14 05:17:51','课程名称6','课程类型6','班级6','年级6','学期6','2021-04-14','教师工号6','教师姓名6','学号6','学生姓名6','备注6','是',''),(1618378278977,'2021-04-14 05:31:18','高等数学','公共课','生工1902班','大二','上学期','2021-04-14','2','张悦','1','陈一','','是','ok');
/*!40000 ALTER TABLE `xueshengxuanke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuan`
--

DROP TABLE IF EXISTS `xueyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) NOT NULL COMMENT '学院',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuan` (`xueyuan`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378023963 DEFAULT CHARSET=utf8 COMMENT='学院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuan`
--

LOCK TABLES `xueyuan` WRITE;
/*!40000 ALTER TABLE `xueyuan` DISABLE KEYS */;
INSERT INTO `xueyuan` VALUES (21,'2021-04-14 05:17:51','学院1'),(22,'2021-04-14 05:17:51','学院2'),(23,'2021-04-14 05:17:51','学院3'),(24,'2021-04-14 05:17:51','学院4'),(25,'2021-04-14 05:17:51','学院5'),(26,'2021-04-14 05:17:51','学院6'),(1618378023962,'2021-04-14 05:27:03','轻工食品学院');
/*!40000 ALTER TABLE `xueyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanye`
--

DROP TABLE IF EXISTS `zhuanye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanye` (`zhuanye`)
) ENGINE=InnoDB AUTO_INCREMENT=1618378032832 DEFAULT CHARSET=utf8 COMMENT='专业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanye`
--

LOCK TABLES `zhuanye` WRITE;
/*!40000 ALTER TABLE `zhuanye` DISABLE KEYS */;
INSERT INTO `zhuanye` VALUES (31,'2021-04-14 05:17:51','专业1'),(32,'2021-04-14 05:17:51','专业2'),(33,'2021-04-14 05:17:51','专业3'),(34,'2021-04-14 05:17:51','专业4'),(35,'2021-04-14 05:17:51','专业5'),(36,'2021-04-14 05:17:51','专业6'),(1618378032831,'2021-04-14 05:27:12','生物工程');
/*!40000 ALTER TABLE `zhuanye` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-27 17:20:09
