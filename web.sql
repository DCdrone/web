CREATE DATABASE  IF NOT EXISTS `dc_web` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dc_web`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dc_web
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,0,'chenchen',12345678,'12345','2016-04-25 22:20:46');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,0,'这是自己修改的博客',12345678,2147483647,'这只是摘要啦啦啦。会变化高度的摘要好奇怪啊',NULL,'2016-04-25 22:20:46','2016-07-01 16:45:40',' <p>我自横刀向天笑，去留肝胆两昆仑。</p><pre>a</pre><pre>c；都发送打上<br></pre><pre>d；</pre><pre>1<br>2;<br>3;</pre><blockquote>3124123<br>rewqr;</blockquote><blockquote>a<br>g;</blockquote><blockquote>c<br>;</blockquote><blockquote><br></blockquote><blockquote><br>fsdaf&nbsp;</blockquote><pre>b-a;<br></pre><p>fjgf</p>'),(2,0,'分公司',12345678,608141830,'1233',NULL,'2016-06-15 17:17:01','2016-06-15 17:17:01',NULL),(3,0,'分公司123',12345678,1104995768,'1233123',NULL,'2016-06-15 17:22:13','2016-07-05 16:29:50','<pre>nihao a&nbsp;发大水发<span style=\"color: rgb(34, 38, 46); font-family: \'Open Sans\', sans-serif; font-size: 12px; line-height: 1.42857143; background-color: rgb(255, 255, 255);\">发送到我们命令</span><span style=\"color: rgb(34, 38, 46); font-family: \'Open Sans\', sans-serif; font-size: 12px; line-height: 1.42857143; background-color: rgb(255, 255, 255);\">但是不</span></pre><p><span style=\"color: rgb(34, 38, 46); font-family: \'Open Sans\', sans-serif; font-size: 12px; line-height: 1.42857143; background-color: rgb(255, 255, 255);\">你明白吗</span></p><p><span style=\"color: rgb(34, 38, 46); font-family: \'Open Sans\', sans-serif; font-size: 12px; line-height: 1.42857143; background-color: rgb(255, 255, 255);\">奇怪了好多Bug</span></p><p><span style=\"color: rgb(34, 38, 46); font-family: \'Open Sans\', sans-serif; font-size: 12px; line-height: 1.42857143; background-color: rgb(255, 255, 255);\"><br></span></p><p><br></p>'),(4,0,'1',12345678,1179030801,'1',NULL,'2016-07-05 14:43:34','2016-07-05 14:43:34',NULL),(5,0,'2',12345678,1126837685,'2',NULL,'2016-07-05 14:43:40','2016-07-05 14:43:40',NULL),(6,0,'3',12345678,390838395,'3',NULL,'2016-07-05 14:43:48','2016-07-05 14:43:48',NULL),(7,0,'4',12345678,105137144,'4',NULL,'2016-07-05 14:43:53','2016-07-05 14:43:53',NULL),(9,0,'6',12345678,229474690,'6',NULL,'2016-07-05 14:44:02','2016-07-05 14:44:02',NULL),(10,0,'7',12345678,3318999,'7',NULL,'2016-07-05 14:44:05','2016-07-05 14:44:05',NULL),(11,0,'8',12345678,1276856020,'8',NULL,'2016-07-05 14:44:11','2016-07-05 14:44:11',NULL),(12,0,'这段内容加了好多',12345678,1200507567,'你知道有什么不对吗？',NULL,'2016-07-05 16:29:07','2016-07-05 18:08:22','我这个只是一个测试，基本功能是实现了。但是很多不完美的地方啊~<div>比如说看一段代码：</div><pre>a = b;</pre><p>这只是个测试啊。</p><div><br></div>');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `press`
--

DROP TABLE IF EXISTS `press`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `press` (
  `title` varchar(255) DEFAULT NULL,
  `updateDate` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `context` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press`
--

LOCK TABLES `press` WRITE;
/*!40000 ALTER TABLE `press` DISABLE KEYS */;
INSERT INTO `press` VALUES ('XX','January 1, 2014','dcchen',''),('实例博客','January 1, 2014','dcchen','<p>本博客项目一期主要实现博客的编写、上传、发布功能。即平台应提供普通用户浏览界面和管理员界面。普通用户暂时不具有搜索功能。通过树状分类进行文章查阅。管理员可以对自己的文章进行增删改。文章格式目前可使用如下格式</p>\n            <hr>\n            <p>文章可以添加横线符，并且支持超链接 <a href=\"http://my.oschina.net/foreverich/blog/657075\">这里就是超链接</a>, 管理员在配置超链接时，通过按钮辅助项实现.</p>\n            <blockquote>\n              <p>这里可以添加强调作用的内容</p>\n            </blockquote>\n            <p>支持字体倾斜 <em>倾斜的字体</em> 倾斜字体可以通过加标签实现</p>\n            <h2>大标题</h2>\n            <p>普通文本</p>\n            <h3>小标题</h3>\n            <p>普通文本，一下为代码片段，支持代码</p>\n            <pre><code>my $a=b;\n$a < 0;</code></pre>\n            <p>普通文本</p>\n            <h3>小标题</h3>\n            <p>普通文本</p>\n            <ul>\n              <li>支持列表</li>\n              <li>支持列表</li>\n              <li>支持列表</li>\n            </ul>\n            <p>普通文本</p>\n            <ol>\n              <li>支持列表</li>\n              <li>支持列表</li>\n              <li>支持列表</li>\n            </ol>\n            <p>普通文本</p>\n          </div><!-- /.blog-post -->');
/*!40000 ALTER TABLE `press` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topnews`
--

DROP TABLE IF EXISTS `topnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topnews` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topnews`
--

LOCK TABLES `topnews` WRITE;
/*!40000 ALTER TABLE `topnews` DISABLE KEYS */;
INSERT INTO `topnews` VALUES (2,'大数据','Hadoop到现在还不会用','chenchen','1.jpg',NULL,'2016-07-05 14:43:34'),(3,'手绘','手绘我已经画的相当不错了','chenchen','1.jpg',NULL,'2016-07-05 14:43:34'),(4,'Haproxy','负载均衡的代码要研究啊','chenchen','1.jpg',NULL,'2016-07-05 14:43:34');
/*!40000 ALTER TABLE `topnews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-14 19:06:49
