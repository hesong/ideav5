-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: u117670_idea
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `pp_access`
--

DROP TABLE IF EXISTS `pp_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_access` (
  `role_id` tinyint(5) NOT NULL,
  `node_id` tinyint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_access`
--

LOCK TABLES `pp_access` WRITE;
/*!40000 ALTER TABLE `pp_access` DISABLE KEYS */;
INSERT INTO `pp_access` VALUES (2,14),(2,13),(2,12),(1,50),(1,51),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,107),(1,115),(1,116),(1,117),(1,118),(1,127),(1,121),(1,122),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(2,15),(2,16),(2,101),(2,102),(2,103),(2,105),(2,106),(2,127),(2,117),(2,127),(1,50),(1,51),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,107),(1,115),(1,116),(1,117),(1,118),(1,127),(1,121),(1,122),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(1,127),(2,127),(2,127),(2,127),(2,116),(2,115),(2,110),(2,109),(2,108),(2,107),(2,104),(2,106),(2,105),(2,103),(2,102),(2,101),(2,127),(2,127),(2,127),(2,100),(2,99),(2,51),(2,50),(2,124),(2,123),(2,125),(2,16),(2,15),(2,14),(2,13),(2,12),(2,11),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,122),(2,121),(2,127),(2,10),(2,9),(2,8),(2,127),(2,127),(2,118),(2,7),(2,6),(2,5),(2,4),(2,3),(2,2),(2,1),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127),(2,127);
/*!40000 ALTER TABLE `pp_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_ad`
--

DROP TABLE IF EXISTS `pp_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_ad` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL,
  `ordid` int(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_ad`
--

LOCK TABLES `pp_ad` WRITE;
/*!40000 ALTER TABLE `pp_ad` DISABLE KEYS */;
INSERT INTO `pp_ad` VALUES (6,4,'code','麦包包','','<script type=\\\"text/javascript\\\">var _bdhmProtocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https://\\\" : \\\" http://\\\");document.write(unescape(\\\"%3Cscript src=\\\'\\\" + _bdhmProtocol + \\\"hm.baidu.com/h.js%3F0d7cfb59679455d9e770b1f9e1487bdf\\\' type=\\\'text/javascript\\\'%3E%3C/script%3E\\\"));</script>',1333595088,1365217491,0,1333681516,0,0),(7,5,'code','凡客','','<a href=\\\"http://c.duomai.com/track.php?sid=10506&lid=2178&aid=62&euid=&t=http%3A%2F%2Fcatalog.vancl.com%2Fintegrated%2Fgzcs_20120224.html\\\" target=\\\"_blank\\\"><img border=\\\"0\\\" src=\\\"http://www.duomai.com/Public/Uploads/d5755cdbca7ca21daccf62114f129dba.gif\\\" alt=\\\"格子衬衫 79元起\\\" /></a>',1333683143,1365219146,11,1333683151,0,0);
/*!40000 ALTER TABLE `pp_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_adboard`
--

DROP TABLE IF EXISTS `pp_adboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_adboard` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_adboard`
--

LOCK TABLES `pp_adboard` WRITE;
/*!40000 ALTER TABLE `pp_adboard` DISABLE KEYS */;
INSERT INTO `pp_adboard` VALUES (1,'首页焦点图','focus',580,280,'33',0),(4,'详细页横幅','banner',950,100,'',0),(5,'详细页右侧','banner',226,226,'',0),(6,'首页下方横幅','banner',950,100,'',0);
/*!40000 ALTER TABLE `pp_adboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_admin`
--

DROP TABLE IF EXISTS `pp_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `add_time` int(10) DEFAULT NULL,
  `last_time` int(10) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `role_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_admin`
--

LOCK TABLES `pp_admin` WRITE;
/*!40000 ALTER TABLE `pp_admin` DISABLE KEYS */;
INSERT INTO `pp_admin` VALUES (1,'admin','c722c3a0141d8ccebbee6869f18478c9',1349711411,NULL,1,1);
/*!40000 ALTER TABLE `pp_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_album`
--

DROP TABLE IF EXISTS `pp_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_album` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '默认专辑',
  `img` varchar(255) DEFAULT NULL,
  `uid` int(10) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `cid` int(10) NOT NULL DEFAULT '0',
  `sort_order` int(10) DEFAULT NULL,
  `recommend` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_album`
--

LOCK TABLES `pp_album` WRITE;
/*!40000 ALTER TABLE `pp_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_album_cate`
--

DROP TABLE IF EXISTS `pp_album_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_album_cate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '我的专辑',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `album_num` int(10) NOT NULL DEFAULT '0',
  `sort_order` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_album_cate`
--

LOCK TABLES `pp_album_cate` WRITE;
/*!40000 ALTER TABLE `pp_album_cate` DISABLE KEYS */;
INSERT INTO `pp_album_cate` VALUES (5,'其他',1338789120,0,0,1),(1,'美容',1338789120,0,1,1),(2,'购物',1338789120,0,1,1),(3,'生活',1338789120,0,5,1),(4,'家居',1338789120,0,10,1);
/*!40000 ALTER TABLE `pp_album_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_album_items`
--

DROP TABLE IF EXISTS `pp_album_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_album_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `items_id` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `add_time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_album_items`
--

LOCK TABLES `pp_album_items` WRITE;
/*!40000 ALTER TABLE `pp_album_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_album_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_article`
--

DROP TABLE IF EXISTS `pp_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` tinyint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `orig` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `abst` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `add_time` datetime NOT NULL,
  `ordid` tinyint(4) NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_best` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-待审核 1-已审核',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_article`
--

LOCK TABLES `pp_article` WRITE;
/*!40000 ALTER TABLE `pp_article` DISABLE KEYS */;
INSERT INTO `pp_article` VALUES (1,1,'关于我们','','','','','<div>　　欢迎来到快乐的小鸟， 我们致力于为美好生活服务，逛一逛我们的网站，你懂的~<br />\r\n</div>','2012-03-17 11:30:14',0,0,0,1,'','',''),(2,1,'网站地图','','','','','网站地图<br />','2012-03-17 11:31:22',0,0,0,1,'','',''),(3,1,'联系我们','','','','','<p>官方网站：www.kldxn.com</p>\r\n<p>官方微博：http://weibo.com/kldxngw</p>\r\n<p>邮箱：service@kldxn.com</p>\r\n<p>&nbsp;</p>','2012-03-17 11:32:08',0,0,0,1,'','',''),(4,1,'隐私政策','','','','快乐的小鸟','<div style=\"text-align:center;\"><b><span style=\"font-size:18px;\">隐私保护原则</span></b> </div>\r\n<div>　　我们非常重视您的隐私，保护用户隐私是我们的重点原则，在您使用快乐的小鸟提供的服务前，请您仔细阅读以下隐私保护原则。</div>\r\n<div><br />\r\n</div>\r\n<div>　　<b>一、用户信息</b></div>\r\n<div>　　快乐的小鸟将对您所提供的资料进行严格的管理及保护，快乐的小鸟通过技术手段、提供隐私保护服务功能、强化内部管理等办法充分保护用户的个人资料安全。快乐的小鸟为用户提供对个人注册信息的绝对的控制权，用户可以通过“修改个人信息”查看或修改个人信息。用户自愿注册个人信息，用户在注册时提供的所有信息，都是基于自愿，用户有权在任何时候拒绝提供这些信息。快乐的小鸟保证不对外公开或向第三方提供用户注册的个人资料，及用户在使用服务时存储的非公开内容，但下列情况除外：</div>\r\n<div>　　◇ 事先获得您的明确授权；</div>\r\n<div>　　◇ 根据有关的法律法规要求；</div>\r\n<div>　　◇ 按照相关司法机构或政府主管部门的要求；</div>\r\n<div>　　◇ 只有透露你的个人资料，才能提供你所要求的产品和服务；</div>\r\n<div>　　◇ 因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用；</div>\r\n<div>　　◇ 由于您将用户密码告知他人或与他人共享注册帐户，由此导致的任何个人资料泄露。</div>\r\n<div><br />\r\n</div>\r\n<div>　　<b>二、Cookies和其他浏览器技术</b></div>\r\n<div>　　当用户访问快乐的小鸟的时候，我们可能会保存会员的用户登录状态并且为用户分配一个或多个“Cookies”（一个很小的文本文件），例如：当会员访问一个需要会员登录才可以提供的信息或服务，当会员登录时，我们会把该会员的登录名和密码加密存储在用会员计算机的Cookie文件中，由于是不可逆转的加密存储，其他人即使可以使用该会员的计算机，也无法识别出会员的用户名和密码。会员并不需要额外做任何工作，所有的收集和保存都由系统自动完成。</div>\r\n<div>Cookie文件将永久的保存在您的计算机硬盘上，除非您使用浏览器或操作系统软件手工将其删除。您也可以选择“不使用Cookie”或“在使用Cookie时事先通知我”的选项禁止Cookie的产生，但是您将为此无法使用一些快乐的小鸟的查询和服务。</div>\r\n<div><br />\r\n</div>\r\n<div>　　<b>三、合作伙伴</b></div>\r\n<div>　　我们选择有信誉的第三方公司或网站作为我们的合作伙伴为用户提供信息和服务。尽管我们只选择有信誉的公司或网站作为我们的合作伙伴，但是每个合作伙伴都会有与快乐的小鸟不同的隐私保护政策，一旦您通过点击进入了合作伙伴的网站，快乐的小鸟隐私保护原则将不再生效，我们　　建议您查看该合作伙伴网站的隐私条款，并了解该合作伙伴对于收集、使用、泄露您的个人信息的规定。</div>\r\n<div>　　</div>\r\n<div>　　如果您对此隐私保护原则有任何疑问或建议，请通过以下方式联系我们: service@kldxn.com，我们会尽一切努力保护您的隐私。</div>','2012-03-17 11:33:00',0,0,0,1,'','',''),(5,5,'新手指南','','','','','新手指南<br />','2012-03-17 11:33:29',0,0,0,1,'','',''),(6,5,'网站地图','','','','','网站地图<br />','2012-03-17 11:33:45',0,0,0,1,'','',''),(7,9,'50条天使之恋项链免费申领','','4f640f80f14d9.jpg','','白色情人节来啦，浪漫延续，美丽说携手@珂兰钻石网 为爱美丽们准备了50条天使之恋项链，这个情人节让@珂兰钻石网 陪你一起度过，妞们还等什么，快来申领吧！','','2012-03-17 12:13:53',0,0,0,1,'','',''),(8,9,'100件Shinelove心爱FOR LOVER文胸免费试穿','','4f640fe112c89.jpg','index.php?m=search&a=index&type=search&keywords=心爱','#100件心爱文胸试穿申领#有心才有爱，把爱传至心底，爱美丽们一定要学会宠爱自己哦！美丽说携手 @Shinelove心爱 为爱美丽们准备了100件爱慕集团旗下网络专享品牌“Shinelove心爱” 文胸。','','2012-03-17 12:15:29',0,0,0,1,'','',''),(9,9,'50件金三塔真丝家居服免费试穿','','','index.php?m=search&a=index&type=search&keywords=家居','50件金三塔真丝家居服免费试穿50件金三塔真丝家居服免费试穿50件金三塔真丝家居服免费试穿50件金三塔真丝家居服免费试穿50件金三塔真丝家居服免费试穿','','2012-03-17 12:15:49',0,0,0,1,'','',''),(10,9,'100套大牌护肤盒子免费试用','','','http://demo.pinphp.com/c-2','100套大牌护肤盒子免费试用100套大牌护肤盒子免费试用100套大牌护肤盒子免费试用100套大牌护肤盒子免费试用','','2012-03-17 12:16:01',0,0,0,1,'','',''),(11,9,'女生节小精灵有礼相送','','4f64199e548b1.jpg','index.php?m=search&a=index&type=search&keywords=女生','2 女生节小精灵有礼相送2 女生节小精灵有礼相送2 女生节小精灵有礼相送2 女生节小精灵有礼相送','','2012-03-17 12:16:33',0,1,1,1,'','','');
/*!40000 ALTER TABLE `pp_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_article_cate`
--

DROP TABLE IF EXISTS `pp_article_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_article_cate` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `article_nums` int(10) unsigned NOT NULL,
  `sort_order` smallint(4) unsigned NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_article_cate`
--

LOCK TABLES `pp_article_cate` WRITE;
/*!40000 ALTER TABLE `pp_article_cate` DISABLE KEYS */;
INSERT INTO `pp_article_cate` VALUES (1,'网站信息','sites',11,1,4,10,'','',''),(5,'新手入门','faq',11,1,2,5,'','',''),(9,'热门活动','active',10,1,5,0,'','',''),(10,'资讯活动','news',0,1,0,1,'','',''),(11,'网站帮助','help',0,1,0,2,'','','');
/*!40000 ALTER TABLE `pp_article_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_attatch`
--

DROP TABLE IF EXISTS `pp_attatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_attatch` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `res_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filesize` float NOT NULL,
  `uptime` datetime NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `res_id` (`res_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_attatch`
--

LOCK TABLES `pp_attatch` WRITE;
/*!40000 ALTER TABLE `pp_attatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_attatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_collect_taobao`
--

DROP TABLE IF EXISTS `pp_collect_taobao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_collect_taobao` (
  `cate_id` smallint(4) NOT NULL,
  `collect_time` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_collect_taobao`
--

LOCK TABLES `pp_collect_taobao` WRITE;
/*!40000 ALTER TABLE `pp_collect_taobao` DISABLE KEYS */;
INSERT INTO `pp_collect_taobao` VALUES (65,1355931004),(38,1349795228),(78,1355560315),(70,1355560476),(79,1355930205),(43,1355930984),(37,1355930962),(71,1355931016),(67,1355931072),(44,1355931105),(80,1356098767),(41,1356099105),(74,1356122306),(64,1356621948),(433,1367655840);
/*!40000 ALTER TABLE `pp_collect_taobao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_flink`
--

DROP TABLE IF EXISTS `pp_flink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_flink` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(4) NOT NULL DEFAULT '1',
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` smallint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_flink`
--

LOCK TABLES `pp_flink` WRITE;
/*!40000 ALTER TABLE `pp_flink` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_flink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_flink_cate`
--

DROP TABLE IF EXISTS `pp_flink_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_flink_cate` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_flink_cate`
--

LOCK TABLES `pp_flink_cate` WRITE;
/*!40000 ALTER TABLE `pp_flink_cate` DISABLE KEYS */;
INSERT INTO `pp_flink_cate` VALUES (1,'友情链接'),(2,'合作伙伴');
/*!40000 ALTER TABLE `pp_flink_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_focus`
--

DROP TABLE IF EXISTS `pp_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_focus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `abst` text NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `ordid` smallint(4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_focus`
--

LOCK TABLES `pp_focus` WRITE;
/*!40000 ALTER TABLE `pp_focus` DISABLE KEYS */;
INSERT INTO `pp_focus` VALUES (9,1,'中性风潮','?a=index&m=cate&cid=3','4f7d43c7e4e98.png','',146,0,1),(10,1,'格子控女生','?a=index&m=cate&cid=5','4f7d439f15ab3.png','',97,0,1),(7,1,'蝴蝶结公主','?a=index&m=cate&cid=7','4f7d56a8e5540.png','',88,0,1),(8,1,'爱上小碎花','?a=index&m=cate&cid=1','4f7d57352e630.png','',90,0,1);
/*!40000 ALTER TABLE `pp_focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_focus_cate`
--

DROP TABLE IF EXISTS `pp_focus_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_focus_cate` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `width` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_focus_cate`
--

LOCK TABLES `pp_focus_cate` WRITE;
/*!40000 ALTER TABLE `pp_focus_cate` DISABLE KEYS */;
INSERT INTO `pp_focus_cate` VALUES (1,'首页焦点',580,280);
/*!40000 ALTER TABLE `pp_focus_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_group`
--

DROP TABLE IF EXISTS `pp_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_group`
--

LOCK TABLES `pp_group` WRITE;
/*!40000 ALTER TABLE `pp_group` DISABLE KEYS */;
INSERT INTO `pp_group` VALUES (1,'system','系统设置',1222841259,1222841259,1,3),(4,'article','内容管理',1222841259,1222841259,1,1),(6,'goods','商品管理',1222841259,0,1,0),(8,'member','会员管理',0,0,1,2);
/*!40000 ALTER TABLE `pp_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items`
--

DROP TABLE IF EXISTS `pp_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` smallint(4) DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '3',
  `item_key` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `simg` varchar(255) DEFAULT NULL,
  `bimg` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `sid` smallint(4) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `dlikes` int(11) NOT NULL,
  `likes` int(10) NOT NULL DEFAULT '0' COMMENT '喜欢数',
  `haves` int(10) NOT NULL DEFAULT '0' COMMENT '库存数',
  `comments` int(10) NOT NULL DEFAULT '0' COMMENT '评论数',
  `comments_last` text COMMENT '最近的N条评论',
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `last_time` int(10) NOT NULL,
  `uid` int(10) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keys` varchar(255) DEFAULT NULL,
  `sort_order` int(10) DEFAULT '0',
  `seo_desc` text,
  `remark` varchar(50) DEFAULT NULL,
  `remark_status` tinyint(6) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `is_index` (`is_index`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items`
--

LOCK TABLES `pp_items` WRITE;
/*!40000 ALTER TABLE `pp_items` DISABLE KEYS */;
INSERT INTO `pp_items` VALUES (255,1,1,'taobao_12419296124','欧式奢华 大提琴实木酒柜','http://img01.taobaocdn.com/bao/uploaded/i1/10924027653148460/T1dfj8XmViXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/10924027653148460/T1dfj8XmViXXXXXXXX_!!0-item_pic.jpg_64x64.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/10924027653148460/T1dfj8XmViXXXXXXXX_!!0-item_pic.jpg',6249.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CITy7klxn%2Fr3HZwuuY0VC7BwYalpabCAzKDwijr8gHcNve8Wz0M02jO6E5zB9OvuddszY5fLQvvsgjlv%2B6PQo2EgR0jMs%2Fr0OAJ3Zc0sRQ0YnMC5czX%2B0ypHt6LuB%2BakalQwnluLVN5CL5LQtrDXZqJWieNIf7Zkj6eoo0eZhTXX47Jj8Sk&spm=2014.2','',1,1168,0,446,0,0,NULL,0,1,1367656571,1367679394,0,'','',0,'',NULL,1),(256,450,1,'taobao_10879034648','韩版防水炫酷LED灯式腕表','http://img03.taobaocdn.com/bao/uploaded/i3/T1qin6XfhaXXcCtPs9_073830.jpg_210x1000.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T1qin6XfhaXXcCtPs9_073830.jpg_64x64.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T1qin6XfhaXXcCtPs9_073830.jpg',107.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CITy7klxn%2Fr3HZwuuY0VC7BwYalp5xVXWMiZmPN%2FDUFBU%2B3br6rf%2BjCZbVx%2BDqsv3CspZVD%2B%2Fat57nHuc4QFaV3Ai94ADY3KFD4Erp8oNQh6g%2FwT1FpjfTNxu8hV%2Bw1W0czVxzNtpo7lXVcHLjMB9IqCD1KWoxQY3W1t%2FkKg8PhlfWq6ws%2','',1,135,0,86,0,0,NULL,0,1,1367679362,1367679362,0,'','',0,'',NULL,1),(257,1,1,'taobao_18547492743','吉祥双孔雀酒架摆设','http://img03.taobaocdn.com/bao/uploaded/i3/T10dfuXfljXXa6lPsY_030122.jpg_210x1000.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T10dfuXfljXXa6lPsY_030122.jpg_64x64.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T10dfuXfljXXa6lPsY_030122.jpg',1624.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CFcRfH0G7DLkP9xIxJLW2Wdpnlp4DD%2FyLLV0Gn6XArwqm3H3DuEuFF9sV%2Bgs3vhDNqM%2B%2FJCQ6yOpDzJBbFiu2YCYC2kMZQ6Ft1MhH9OCBEaqc7mdzl31XdAS9me8bxyFm05PwoTECcPQVnG7a%2FxsDoS6U%2FA%2FvabkxnydGTj9aDTpY252hLQ7g%3D%3','',1,825,0,1424,0,0,NULL,0,1,1367679512,1367679512,0,'','',0,'',NULL,1),(258,1,1,'taobao_19700060930','Homee招财猫五色碗','http://img03.taobaocdn.com/bao/uploaded/i3/T1cyvUXgBmXXXFx5I7_065148.jpg_210x1000.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T1cyvUXgBmXXXFx5I7_065148.jpg_64x64.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T1cyvUXgBmXXXFx5I7_065148.jpg',97.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CFcRfH0G7DLkP9xIxJLW2Wdpnlp4DDzMQgPNNGFzzs%2BX2crBIDv5gT9LQs8V4atAG2oVsc77WGycoPAeDLofvlL1g8MiARxXZbwEUbAUmm4rZLc8EJ7NGcTrL0a8NjhxzJaCASHGpxhKBJbbP8T3AmwaIzssnJxPVF16zeYcZsxe0wPqfgNyw%3D%3D&spm=2014.2','',1,483,0,1047,0,0,NULL,0,1,1367679949,1367679949,0,'','',0,'',NULL,1),(259,1,1,'taobao_17476806309','爱情沙漏计时器','http://img03.taobaocdn.com/bao/uploaded/i3/16824022760772535/T16jE2XcJXXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/16824022760772535/T16jE2XcJXXXXXXXXX_!!0-item_pic.jpg_64x64.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/16824022760772535/T16jE2XcJXXXXXXXXX_!!0-item_pic.jpg',25.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CITy7klxn%2Fr3HZwuuY0VC7BwYalqHqChJesN%2BsUVxnd5c2GpojOQoP54p3b7RsCMdkYMr3mBuJLMBxMvj9sXXMXeWWAyUNP%2F1dm4UTpjj%2BV58KJvcDN%2B49SPskBuAE9EMdn%2FPSkP4NW8spU%2FUBYoxJPOtL9CgFpeJ6Zuujlp93xS0BpGvtkJg%3D%3','',1,1880,0,85,0,0,NULL,0,1,1367680131,1367680131,0,'','',0,'',NULL,1),(260,1,1,'taobao_13818394302','多功能收纳置物架 圆形迷你茶几','http://img03.taobaocdn.com/bao/uploaded/i3/T1GnjUXb4gXXaDRVZ__074951.jpg_210x1000.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T1GnjUXb4gXXaDRVZ__074951.jpg_64x64.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/T1GnjUXb4gXXaDRVZ__074951.jpg',239.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CFcRfH0G7DLkP9xIxJLW2Wdpnloac0zysuM7QDTi5Gig0JxW2JoxfmW6sQRKjQrpt8yVBeJ6CgwJs6qFIEgkHW2kBxGyZhcbAkFMrdNEr4bTf%2FFmVhk6%2BzKvTfIweoF18IUHJl0WoFVZ3tYw31pmerZrXUKGuANrpuZqs53ame%2BOGKyuxkRPQ%3D%3D&spm=20','',1,441,0,488,0,0,NULL,0,1,1367759819,1367759819,0,'','',0,'',NULL,1),(261,1,1,'taobao_13180539484','可移除墙贴','http://img01.taobaocdn.com/bao/uploaded/i1/18451021756727965/T1p4FuXuxcXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/18451021756727965/T1p4FuXuxcXXXXXXXX_!!0-item_pic.jpg_64x64.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/18451021756727965/T1p4FuXuxcXXXXXXXX_!!0-item_pic.jpg',58.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CFcRfH0G7DLkP9xIxJLW2WdpnloaoxsZY1jq0pLy5iVAxjKjddnB%2BCBhXq%2FoRRQmYkpGEgpeFYEzH6fWMhPjM4nyYeXQZ0mWIMQo6ET8wwYrTrLBs1M5ZOQoXTFUSf9q%2FAbdvtOtCTW2ZEhwhDIkNT3WmboqtSfIBMUXLXKlf0%2BVNQAfhBb%2BQ%3D%3D&sp','',1,1495,0,1655,0,0,NULL,0,1,1367760504,1367760504,0,'','',0,'',NULL,1),(262,1,1,'taobao_10065885038','创意卡通陶瓷泡面碗','http://img01.taobaocdn.com/bao/uploaded/i1/T1ycC9Xj4jXXXmyCkS_010110.jpg_210x1000.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/T1ycC9Xj4jXXXmyCkS_010110.jpg_64x64.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/T1ycC9Xj4jXXXmyCkS_010110.jpg',15.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CITy7klxn%2Fr3HZwuuY0VC7BwYakt0dHw6EP5uq0S%2Bu%2F4p9k1PHzK5%2Bx1%2FID7oULm1nwWLm4KJK2F2l5%2FY272aMi%2BYlrHl5P3l0wvLlPTdBdw%2FfGDtQ4781MGuWqKrmqdK7sHlBS67F%2Bs5gTIIXljFeMChVCYv83nr4UEPTwAxguvSeqb1oKuQ%','',1,1412,0,165,0,0,NULL,0,1,1367760625,1367760625,0,'','',0,'',NULL,1),(263,451,1,'taobao_14183626472','地图自动三折晴雨伞','http://img01.taobaocdn.com/bao/uploaded/i1/T17h92Xb8qXXXeyrDb_093223.jpg_210x1000.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/T17h92Xb8qXXXeyrDb_093223.jpg_64x64.jpg','http://img01.taobaocdn.com/bao/uploaded/i1/T17h92Xb8qXXXeyrDb_093223.jpg',65.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CFcRfH0G7DLkP9xIxJLW2Wdpnloaoxv1EGTrBWy4JQzQJKzOiUN0pUFdC4jvw9fpVL%2BM%2Bnj1G5NoHeh1KzzKAtxcB1bnWsYCeWmP%2BC9jO17BlYa4vzgj9ohLVaOo%2FSgmhstqg6ZmqvNgb%2B6hImDQvctpmVwsU4fLlrGtjJIyBzL4B9GM32FxQ%3D%3D&sp','',1,1371,0,1166,0,0,NULL,0,1,1367760746,1367760746,0,'','',0,'',NULL,1),(264,451,1,'taobao_13195534337','环保车载USB电子打火机 可充电上飞机','http://img04.taobaocdn.com/bao/uploaded/i4/T1PUSzXXRAXXcuEaLc_095742.jpg_210x1000.jpg','http://img04.taobaocdn.com/bao/uploaded/i4/T1PUSzXXRAXXcuEaLc_095742.jpg_64x64.jpg','http://img04.taobaocdn.com/bao/uploaded/i4/T1PUSzXXRAXXcuEaLc_095742.jpg',16.90,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CITy7klxn%2Fr3HZwuuY0VC7BwYakt0dKalozP1JCRr49QLMQhWH%2BoHr5E20m2uUX5HS2dVmAiBV70LCeD7YxclvOUbCGtvEqh9ixi%2FGJ74QTE7Mn2vjHosppnyWFdc%2Fq1x3KBqnHMtWnuC83UkAKrYs8GMsgej4j8P1PRuaSU34aFtPybThTig%3D%3D&spm=','',1,1239,0,1245,0,0,NULL,0,1,1367760901,1367760901,0,'','',0,'',NULL,1),(265,1,1,'taobao_21829196527','GeekCook极客库微醺诱惑美女红酒杯','http://img03.taobaocdn.com/bao/uploaded/i3/14937019194485482/T1ZEUQXgdeXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/14937019194485482/T1ZEUQXgdeXXXXXXXX_!!0-item_pic.jpg_64x64.jpg','http://img03.taobaocdn.com/bao/uploaded/i3/14937019194485482/T1ZEUQXgdeXXXXXXXX_!!0-item_pic.jpg',24.00,'http://s.click.taobao.com/t?e=zGU34CA7K%2BPkqB07S4%2FK0CFcRfH0G7DLkP9xIxJLW2Wdpnloao0%2B0HbmmfoOJBH6fQRBi1pT61JDng7VVWw7EtRvcjRlg53zJLSA3ffGX%2BuOnUgo3t4dyk4bZqFLrjCwnZ8YSI5buivemMz1uxYoAQDdzB475%2FuHdEDEzm2niFpuO%2FRRdhZ0kCryuldAgsiKbqqV9UTJc2U%3D&spm=20','',1,1071,0,1923,0,0,NULL,0,1,1367761104,1367761104,0,'','',0,'',NULL,1);
/*!40000 ALTER TABLE `pp_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items_cate`
--

DROP TABLE IF EXISTS `pp_items_cate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items_cate` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `pid` smallint(4) NOT NULL DEFAULT '0',
  `item_nums` int(10) NOT NULL DEFAULT '0',
  `item_likes` int(11) NOT NULL,
  `collect_time` int(10) NOT NULL COMMENT '最后采集时间',
  `ordid` smallint(4) NOT NULL DEFAULT '0',
  `tags` varchar(50) NOT NULL,
  `is_hots` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=452 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items_cate`
--

LOCK TABLES `pp_items_cate` WRITE;
/*!40000 ALTER TABLE `pp_items_cate` DISABLE KEYS */;
INSERT INTO `pp_items_cate` VALUES (1,'创意家居',NULL,0,4,993,0,50,'',1,1,'','','',''),(450,'潮人服饰',NULL,0,1,0,0,40,'',1,1,'','','',''),(415,'名器倒模',NULL,416,1,0,0,0,'',1,1,'','','',''),(418,'G点后庭',NULL,412,0,0,0,0,'',1,1,'','','',''),(420,'阴蒂潮吹',NULL,419,0,0,0,0,'',1,1,'','','',''),(421,'G点潮吹',NULL,419,0,0,0,0,'',1,1,'','','',''),(448,'新奇玩具',NULL,0,0,0,0,20,'',1,1,'','','',''),(449,'炫酷科技',NULL,0,0,0,0,30,'',1,1,'','','',''),(424,'情趣内裤',NULL,432,1,0,0,0,'',1,1,'','','',''),(425,'情趣内衣',NULL,432,1,0,0,0,'',1,1,'','','',''),(426,'制服诱惑',NULL,432,2,0,0,0,'',1,1,'','','',''),(427,'性感丝袜',NULL,432,0,0,0,0,'',1,1,'','','',''),(428,'香水',NULL,432,0,0,0,0,'',1,1,'','','',''),(429,'神奇套套',NULL,3,0,0,0,0,'',1,1,'','','',''),(430,'套套',NULL,6,0,0,0,0,'',1,1,'','','',''),(443,'仿真阳具',NULL,5,0,0,0,0,'',0,1,'','','',''),(433,'充气娃娃',NULL,414,20,0,0,0,'',0,1,'','','',''),(434,'实体娃娃',NULL,414,0,0,0,0,'',0,1,'','','',''),(451,'杂七杂八',NULL,0,0,0,0,10,'',1,1,'','','',''),(440,'延时液',NULL,3,0,0,0,0,'',1,1,'','','',''),(439,'润滑液',NULL,6,0,0,0,0,'',0,1,'','','',''),(441,'催情',NULL,4,0,0,0,0,'',0,1,'','','',''),(442,'性感内裤',NULL,4,1,0,0,0,'',0,1,'','','',''),(444,'缩阴',NULL,432,0,0,0,0,'',0,1,'','','',''),(445,'C字裤',NULL,424,0,0,0,0,'',0,1,'','','',''),(446,'T字裤',NULL,424,0,0,0,0,'',0,1,'','','',''),(447,'开裆裤',NULL,424,0,0,0,0,'',0,1,'','','','');
/*!40000 ALTER TABLE `pp_items_cate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items_likes`
--

DROP TABLE IF EXISTS `pp_items_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items_likes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `items_id` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items_likes`
--

LOCK TABLES `pp_items_likes` WRITE;
/*!40000 ALTER TABLE `pp_items_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_items_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items_pics`
--

DROP TABLE IF EXISTS `pp_items_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items_pics` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items_pics`
--

LOCK TABLES `pp_items_pics` WRITE;
/*!40000 ALTER TABLE `pp_items_pics` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_items_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items_site`
--

DROP TABLE IF EXISTS `pp_items_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items_site` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `site_domain` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `collect_url` varchar(255) NOT NULL,
  `collect_time` int(10) NOT NULL DEFAULT '0',
  `item_nums` int(10) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `is_dels` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items_site`
--

LOCK TABLES `pp_items_site` WRITE;
/*!40000 ALTER TABLE `pp_items_site` DISABLE KEYS */;
INSERT INTO `pp_items_site` VALUES (1,'淘宝','taobao','http://item.taobao.com,http://item.tmall.com','taobao.jpg','',0,0,1,1),(2,'PinPHP','handel','http://www.pinphp.com','pinphp.jpg','',0,0,0,1);
/*!40000 ALTER TABLE `pp_items_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items_tags`
--

DROP TABLE IF EXISTS `pp_items_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `item_nums` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=526 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items_tags`
--

LOCK TABLES `pp_items_tags` WRITE;
/*!40000 ALTER TABLE `pp_items_tags` DISABLE KEYS */;
INSERT INTO `pp_items_tags` VALUES (525,'GeekCook',0,1,'','',''),(523,'打火机',0,1,'','',''),(522,'点烟器',0,1,'','',''),(520,'晴雨伞',0,1,'','',''),(524,'酒杯',0,1,'','',''),(521,'地图',0,1,'','',''),(519,'泡面碗',0,1,'','',''),(518,'黑板',0,1,'','',''),(517,'家饰',0,1,'','',''),(516,'墙贴',0,1,'','',''),(514,'茶几',0,1,'','',''),(512,'沙漏',0,1,'','',''),(511,'计时器',0,1,'','',''),(510,'厨具',0,1,'','',''),(507,'优梵',0,1,'','',''),(508,'Homee',1,1,'','',''),(506,'酒架',0,1,'','',''),(505,'艺术',1,1,'','',''),(504,'时尚',0,1,'','',''),(502,'实木',1,1,'','',''),(501,'创意家居',0,1,'','',''),(513,'磁力',0,1,'','',''),(500,'酒柜',2,1,'','',''),(509,'陶瓷',1,1,'','',''),(503,'手表',0,1,'','',''),(515,'桌子',0,1,'','','');
/*!40000 ALTER TABLE `pp_items_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_items_tags_item`
--

DROP TABLE IF EXISTS `pp_items_tags_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_items_tags_item` (
  `item_id` int(10) NOT NULL,
  `tag_id` int(10) NOT NULL,
  KEY `item_id` (`item_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_items_tags_item`
--

LOCK TABLES `pp_items_tags_item` WRITE;
/*!40000 ALTER TABLE `pp_items_tags_item` DISABLE KEYS */;
INSERT INTO `pp_items_tags_item` VALUES (265,525),(265,524),(264,523),(264,522),(263,508),(263,521),(263,520),(262,509),(262,519),(261,518),(261,517),(261,516),(260,515),(260,514),(259,513),(259,512),(259,511),(258,510),(258,509),(258,508),(257,507),(257,505),(257,506),(255,505),(256,504),(256,503),(255,502),(255,500);
/*!40000 ALTER TABLE `pp_items_tags_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_nav`
--

DROP TABLE IF EXISTS `pp_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort_order` smallint(4) NOT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-系统 0-自定义',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '导航位置1-顶部 2-底部',
  `in_site` tinyint(1) NOT NULL COMMENT '1-本站内 0-站外',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` text NOT NULL,
  `seo_desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_nav`
--

LOCK TABLES `pp_nav` WRITE;
/*!40000 ALTER TABLE `pp_nav` DISABLE KEYS */;
INSERT INTO `pp_nav` VALUES (1,'逛宝贝','cate','/index.php?m=search',100,1,1,1,0,'发现喜欢','发现喜欢','发现喜欢'),(2,'专辑','yifu','/index.php?m=album&a=index',100,1,1,1,0,'专辑','专辑','专辑'),(5,'创意家居','jiaju','/c-1',10,0,1,1,1,'','',''),(10,'新奇玩具','wanju','/c-448',40,0,1,1,1,'','',''),(16,'炫酷科技','keji','/c-449',30,0,1,1,1,'','',''),(17,'潮人服饰','fushi','/c-450',20,0,1,1,1,'','',''),(18,'杂七杂八','other','/c-451',50,0,1,1,1,'','','');
/*!40000 ALTER TABLE `pp_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_node`
--

DROP TABLE IF EXISTS `pp_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_name` varchar(50) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0',
  `auth_type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  `often` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-不常用 1-常用',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-不常用 1-常用',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_node`
--

LOCK TABLES `pp_node` WRITE;
/*!40000 ALTER TABLE `pp_node` DISABLE KEYS */;
INSERT INTO `pp_node` VALUES (1,'node','菜单管理','','','',1,'',0,0,1,0,0),(2,'node','菜单管理','index','菜单列表','',1,'',0,1,1,0,0),(3,'node','菜单管理','add','添加菜单','',1,'',0,2,1,0,0),(4,'node','菜单管理','edit','编辑菜单','',1,'',0,2,1,0,0),(5,'node','菜单管理','delete','删除菜单','',1,'',0,2,1,0,0),(6,'role','角色管理','','','',1,'',370,0,1,0,0),(7,'role','角色管理','index','角色管理','',1,'',0,1,1,0,0),(8,'role','角色管理','add','添加角色','',1,'',0,2,1,0,0),(9,'role','角色管理','edit','编辑角色','',1,'',0,2,1,0,0),(10,'role','角色管理','delete','删除角色','',1,'',0,2,1,0,0),(11,'role','角色管理','auth','角色授权','',1,'',0,2,1,0,0),(12,'admin','管理员管理','','','',1,'',380,0,1,0,0),(13,'admin','管理员管理','index','管理员列表','',1,'',0,1,1,0,0),(14,'admin','管理员管理','add','添加管理员','',1,'',0,2,1,0,0),(15,'admin','管理员管理','edit','编辑管理员','',1,'',0,2,1,0,0),(16,'admin','管理员管理','delete','删除管理员','',1,'',0,2,1,0,0),(50,'setting','网站设置','','','',1,'',399,0,1,0,0),(51,'setting','网站设置','index','网站设置','',1,'',0,1,1,0,0),(99,'flink','友情链接','','','',1,'',98,0,4,0,0),(100,'flink','友情链接','index','友情链接列表','',1,'',0,1,4,0,0),(101,'article','资讯管理','','','',1,'',100,0,4,0,0),(102,'article','资讯管理','index','资讯列表','',1,'',0,1,4,0,0),(103,'article','资讯管理','add','添加资讯','',1,'',0,1,4,0,0),(104,'article_cate','资讯分类','','','',1,'',99,0,4,0,0),(105,'article','资讯管理','edit','编辑资讯','',1,'',0,2,4,0,0),(106,'article','资讯管理','delete','删除资讯','',1,'',0,2,4,0,0),(107,'article_cate','资讯分类','index','分类列表','',1,'',0,1,4,0,0),(108,'article_cate','资讯分类','add','添加分类','',1,'',0,2,4,0,0),(109,'article_cate','资讯分类','edit','编辑分类','',1,'',0,2,4,0,0),(110,'article_cate','资讯分类','delete','删除分类','',1,'',0,2,4,0,0),(115,'items','商品管理','','','',1,'',0,0,6,0,0),(116,'items','商品管理','index','商品列表','',1,NULL,0,1,6,0,0),(117,'items_cate','商品分类','',NULL,'',1,NULL,0,0,6,0,0),(118,'items_cate','商品分类','index','商品分类','',1,NULL,0,1,6,0,0),(134,'items_tags','标签管理','index','标签列表','',1,'',0,1,6,0,0),(121,'nav','导航管理','','','',1,'',2,0,4,0,0),(122,'nav','导航管理','index','导航列表','',1,'',0,1,4,0,0),(123,'nav','导航管理','add','添加导航','',1,'',0,2,4,0,0),(124,'nav','导航管理','edit','编辑导航','',1,'',0,2,4,0,0),(125,'nav','导航管理','delete','删除导航','',1,'',0,2,4,0,0),(133,'items_tags','标签管理','','','',1,'',0,0,6,0,0),(132,'items_cate','商品管理','add','添加分类','',1,'',0,1,6,0,0),(131,'items','商品管理','add','添加商品','5',1,'',0,1,6,0,0),(135,'items_collect','商品采集','','','',1,'',0,0,6,0,0),(136,'items_collect','商品采集','index','商品采集','',0,'',0,1,6,0,0),(137,'items_collect','商品采集','taobaoapi','淘宝客设置','',1,'',0,1,6,0,0),(139,'adboard','广告位置','','','',1,'',70,0,4,0,0),(140,'adboard','广告位置','index','广告位置','',1,'',0,1,4,0,0),(141,'ad','广告管理','','','',1,'',90,0,4,0,0),(142,'ad','广告管理','index','广告列表','',1,'',0,1,4,0,0),(143,'template','模板管理','','','',1,'',0,0,1,0,0),(144,'template','模板管理','index','模板管理','',1,'',0,1,1,0,0),(145,'items','商品管理','batch_add','批量添加','',1,'',0,1,6,0,0),(146,'focus','焦点图管理','index','焦点图列表','',1,'',0,1,4,0,0),(147,'focus','焦点图管理','add','添加焦点图','',1,'',0,1,4,0,0),(148,'flink','友情链接','add','添加友情链接','',1,'',0,2,4,0,0),(149,'flink','友情链接','edit','编辑友情链接','',1,'',0,2,4,0,0),(150,'flink','友情链接','del','删除友情链接','',1,'',0,2,4,0,0),(151,'ad','广告管理','add','添加广告','',1,'',0,2,4,0,0),(152,'ad','广告管理','edit','编辑广告','',1,'',0,2,4,0,0),(153,'ad','广告管理','delete','删除广告','',1,'',0,2,4,0,0),(154,'adboard','广告位置','add','添加广告位置','',1,'',0,2,4,0,0),(155,'adboard','广告位置','edit','编辑广告位置','',1,'',0,2,4,0,0),(156,'adboard','广告位置','delete','删除广告位置','',1,'',0,2,4,0,0),(157,'focus','焦点图管理','','','',1,'',101,0,4,0,0),(158,'focus','焦点图管理','edit','编辑焦点图','',1,'',0,2,4,0,0),(159,'focus','焦点图管理','delete','删除焦点图','',1,'',0,2,4,0,0),(160,'items','商品管理','edit','编辑商品','',1,NULL,0,2,6,0,0),(161,'items','商品管理','delete','删除商品','',1,'',0,2,6,0,0),(162,'items_cate','商品管理','edit','编辑分类','',1,'',0,2,6,0,0),(163,'items_cate','商品管理','delete','删除分类','',1,'',0,2,6,0,0),(164,'items_tags','标签管理','add','添加标签','',1,'',0,2,1,0,0),(165,'items_tags','标签管理','edit','编辑标签','',1,'',0,2,1,0,0),(166,'items_tags','标签管理','delete','删除标签','',1,'',0,2,1,0,0),(167,'items_tags_cate','关联标签管理',' ','','',1,'',0,0,6,0,1),(168,'items_tags_cate','关联标签管理','index','关联标签列表','',1,'',0,1,6,0,1),(169,'items_tags_cate','关联标签管理','add','添加关联标签','',1,'',0,1,6,0,1),(181,'items_tags','标签管理','index','标签列表','',1,'',0,2,1,0,0),(171,'items_tags_cate','关联标签管理','del','删除关联标签','',1,'',0,2,6,0,1),(172,'items_collect','商品采集管理','edit','编辑采集设置','',1,'',0,2,6,0,0),(173,'items_collect','商品采集管理','collect','采集详情列表','',1,'',0,2,6,0,0),(174,'items_collect','商品采集管理','taobao_collect','采集','',1,'',0,2,6,0,0),(177,'cache','缓存管理',' ','','',1,'',0,0,1,0,1),(178,'cache','缓存管理','index','缓存管理','',1,'',0,2,1,0,1),(179,'items_collect','商品采集管理','add','添加来源','',1,'',0,1,6,0,1),(180,'items_collect','商品采集管理','delete','删除来源','',1,'',0,1,6,0,1),(182,'shop','商城管理','','','',1,'',399,0,7,0,0),(183,'shop','商城管理','index','商城列表','',1,'',0,1,7,0,0),(184,'shop','商城管理','add','添加商城','',1,'',0,1,7,0,0),(185,'shop','商城管理','edit','编辑商城','',1,'',0,1,7,0,1),(186,'shop','商城管理','delete','删除商城','',1,'',0,1,7,0,1),(187,'shop_cate','商城类别','','','',1,'',399,0,7,0,0),(188,'shop_cate','商城类别','index','类别列表','',1,'',0,1,7,0,0),(189,'shop_cate','商城类别','add','添加类别','',1,'',0,1,7,0,0),(190,'shop_cate','商城类别','edit','编辑类别','',1,'',0,1,7,0,1),(191,'shop_cate','商城类别','delete','删除类别','',1,'',0,1,7,0,1),(192,'user','会员管理','','','',1,'',399,0,8,0,0),(193,'user','会员管理','index','会员列表','',1,'',0,1,8,0,0),(194,'user','会员管理','delete','删除','',1,'',0,1,8,0,1),(195,'items','商品管理','comments','评论管理','',1,'',0,1,6,0,0),(196,'items','商品管理','collect_by_words','关键词采集','',1,'',0,1,6,0,0),(197,'setting','网站设置','index','第三方登录','type=oauth',1,'',0,1,1,0,0),(198,'setting','网站设置','index','优化设置','type=seo',1,'',0,1,1,0,0),(199,'setting','网站设置','index','关注我们','type=guanzhu',1,'',0,1,1,0,0),(200,'album','专辑管理','','','',1,'',399,0,8,0,0),(201,'album','专辑管理','index','专辑列表','',1,'',0,1,8,0,0),(202,'album','专辑管理','edit','编辑专辑','',1,'',0,2,8,0,0),(203,'album','专辑管理','delete','删除专辑','',1,'',0,2,8,0,0),(204,'album_cate','专辑分类管理','index','分类列表','',1,'',0,1,8,0,0),(205,'album_cate','专辑分类管理','add','添加分类','',1,'',0,1,8,0,0),(206,'album_cate','专辑分类管理','edit','编辑分类','',1,'',0,2,8,0,0),(207,'album_cate','专辑分类管理','delete','删除分类','',1,'',0,2,8,0,0),(208,'database','数据库管理','','','',1,'',0,0,1,0,0),(209,'database','数据库管理','execute','执行','',1,'',0,1,1,0,0),(210,'items','商品管理','delete_search','一键删除','',1,'',0,0,6,0,0),(211,'items_collect','商品采集','collect','淘宝客采集','code=taobao',1,'',0,1,6,0,0);
/*!40000 ALTER TABLE `pp_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_role`
--

DROP TABLE IF EXISTS `pp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_role`
--

LOCK TABLES `pp_role` WRITE;
/*!40000 ALTER TABLE `pp_role` DISABLE KEYS */;
INSERT INTO `pp_role` VALUES (1,'管理员',1,'管理员',1208784792,1254325558),(2,'编辑',1,'编辑',1208784792,1254325558);
/*!40000 ALTER TABLE `pp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_setting`
--

DROP TABLE IF EXISTS `pp_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_setting`
--

LOCK TABLES `pp_setting` WRITE;
/*!40000 ALTER TABLE `pp_setting` DISABLE KEYS */;
INSERT INTO `pp_setting` VALUES ('site_name','爱迪威武'),('site_title','爱迪威武 - 创意是一种态度'),('site_keyword','创意家居、创意装饰、创意礼品'),('site_description','创意家居、创意装饰、创意礼品'),('site_status','1'),('site_icp','京ICP备12038789号'),('statistics_code','<script type=\"text/javascript\">\r\nvar _bdhmProtocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");\r\ndocument.write(unescape(\"%3Cscript src=\'\" + _bdhmProtocol + \"hm.baidu.com/h.js%3F874909a23e94cbff1e23e91b5139cc0c\' type=\'text/javascript\'%3E%3C/script%3E\"));\r\n</script>'),('closed_reason','网站正在维护中......'),('site_domain','http://www.ideav5.com'),('taobao_usernick','爱迪威武'),('taobao_pid','42562456'),('taobao_appkey','21490358'),('taobao_appsecret','bf9ff2175577980551dc69a3885dc25e'),('weibo_url','http://weibo.com/ideav5'),('qqweibo_url',''),('renren_url',''),('163_url',''),('qqzone_url',''),('douban_url',''),('default_kw',''),('template','default'),('taobao_app_key','12504724'),('qq_app_key','100354207'),('qq_app_Secret','b9a6634f2d9e02c1e95d19c5293a9f4f'),('sina_app_key','3362409058'),('sina_app_Secret','334d18e4ef4498fb20f295a42808e0b2'),('taobao_app_secret','9d6877190386092d4288dcae32811081'),('url_model','2'),('waterfall_sp','5'),('waterfall_items_num','5'),('client_hash',''),('search_words','                                                                                                                                                                                '),('index_pins','1'),('index_album','0'),('index_items','2'),('likes_status','1'),('likes_status','1');
/*!40000 ALTER TABLE `pp_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_user`
--

DROP TABLE IF EXISTS `pp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `passwd` varchar(50) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '@',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `brithday` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `blog` varchar(200) NOT NULL,
  `info` varchar(500) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `last_time` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT '0',
  `share_num` int(11) DEFAULT '0',
  `like_num` int(11) DEFAULT '0',
  `follow_num` int(10) DEFAULT '0',
  `fans_num` int(10) DEFAULT '0',
  `album_num` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_user`
--

LOCK TABLES `pp_user` WRITE;
/*!40000 ALTER TABLE `pp_user` DISABLE KEYS */;
INSERT INTO `pp_user` VALUES (5,'小马哥何松','0','http://tp1.sinaimg.cn/2014168112/50/5628215291/1','@',0,'0000-00-00','','','','','','','118.186.140.22',1367655094,1,1367655094,'118.186.140.22',0,0,0,0,0);
/*!40000 ALTER TABLE `pp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_user_comments`
--

DROP TABLE IF EXISTS `pp_user_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_user_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `info` text,
  `type` varchar(20) DEFAULT NULL,
  `orig` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `add_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_user_comments`
--

LOCK TABLES `pp_user_comments` WRITE;
/*!40000 ALTER TABLE `pp_user_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_user_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_user_follow`
--

DROP TABLE IF EXISTS `pp_user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_user_follow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fans_id` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_user_follow`
--

LOCK TABLES `pp_user_follow` WRITE;
/*!40000 ALTER TABLE `pp_user_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `pp_user_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_user_history`
--

DROP TABLE IF EXISTS `pp_user_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_user_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_user_history`
--

LOCK TABLES `pp_user_history` WRITE;
/*!40000 ALTER TABLE `pp_user_history` DISABLE KEYS */;
INSERT INTO `pp_user_history` VALUES (1,1,1349791509,'分享了了一个宝贝~<br/><a href=\'http://xo.com?a=index&m=item&id=1\' target=\'_blank\'><img src=\'/data/items/2012-10-09/m_1349791509.png\'/></a>'),(2,2,1357310754,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=206\' target=\'_blank\'><img src=\'http://img02.taobaocdn.com/bao/uploaded/i2/19301018619154229/T1lkT_XlRhXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg\'/></a>'),(3,4,1357311493,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=207\' target=\'_blank\'><img src=\'http://img02.taobaocdn.com/bao/uploaded/i2/18571029617292407/T1MmQHXkpeXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg\'/></a>'),(4,4,1357311680,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=208\' target=\'_blank\'><img src=\'http://img04.taobaocdn.com/bao/uploaded/i4/12965019065934367/T17OIKXoVdXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg\'/></a>'),(5,4,1357311842,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=209\' target=\'_blank\'><img src=\'http://img01.taobaocdn.com/bao/uploaded/i1/T1DdY1XfNlXXbgfo70_040014.jpg_210x1000.jpg\'/></a>'),(6,4,1357312065,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=210\' target=\'_blank\'><img src=\'http://img02.taobaocdn.com/bao/uploaded/i2/T1SbqLXdxfXXb7g5Q8_100815.jpg_210x1000.jpg\'/></a>'),(7,4,1357312307,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=211\' target=\'_blank\'><img src=\'http://img03.taobaocdn.com/bao/uploaded/i3/T1ZZnzXnJdXXcCob7._081453.jpg_210x1000.jpg\'/></a>'),(8,4,1357312411,'分享了了一个宝贝~<br/><a href=\'http://www.kldxn.com?a=index&m=item&id=212\' target=\'_blank\'><img src=\'http://img03.taobaocdn.com/bao/uploaded/i3/19301018614349565/T1XzsiXlXcXXXXXXXX_!!0-item_pic.jpg_210x1000.jpg\'/></a>');
/*!40000 ALTER TABLE `pp_user_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pp_user_openid`
--

DROP TABLE IF EXISTS `pp_user_openid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pp_user_openid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL DEFAULT '0',
  `info` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pp_user_openid`
--

LOCK TABLES `pp_user_openid` WRITE;
/*!40000 ALTER TABLE `pp_user_openid` DISABLE KEYS */;
INSERT INTO `pp_user_openid` VALUES (4,'sina',5,'2014168112','a:1:{s:9:\"user_info\";a:37:{s:2:\"id\";i:2014168112;s:5:\"idstr\";s:10:\"2014168112\";s:11:\"screen_name\";s:15:\"小马哥何松\";s:4:\"name\";s:15:\"小马哥何松\";s:8:\"province\";s:2:\"11\";s:4:\"city\";s:4:\"1000\";s:8:\"location\";s:6:\"北京\";s:11:\"description\";s:84:\"互联网是个神奇的地方，上面有个神奇的网站，讲述神奇的故事\";s:3:\"url\";s:0:\"\";s:17:\"profile_image_url\";s:48:\"http://tp1.sinaimg.cn/2014168112/50/5628215291/1\";s:11:\"profile_url\";s:7:\"2hesong\";s:6:\"domain\";s:7:\"2hesong\";s:6:\"weihao\";s:0:\"\";s:6:\"gender\";s:1:\"m\";s:15:\"followers_count\";i:493;s:13:\"friends_count\";i:343;s:14:\"statuses_count\";i:770;s:16:\"favourites_count\";i:730;s:10:\"created_at\";s:30:\"Wed Jun 22 18:15:50 +0800 2011\";s:9:\"following\";b:0;s:17:\"allow_all_act_msg\";b:0;s:11:\"geo_enabled\";b:1;s:8:\"verified\";b:0;s:13:\"verified_type\";i:-1;s:6:\"remark\";s:0:\"\";s:6:\"status\";a:18:{s:10:\"created_at\";s:30:\"Sat May 04 07:48:29 +0800 2013\";s:2:\"id\";i:3574140282094859;s:3:\"mid\";s:16:\"3574140282094859\";s:5:\"idstr\";s:16:\"3574140282094859\";s:4:\"text\";s:111:\"这是为@uwei 团队定制的发型//@Susanhuihui:@UWei [嘻嘻] //@全球新鲜资讯:[汗]好奇葩的发型\";s:6:\"source\";s:77:\"<a href=\"http://app.weibo.com/t/feed/6tbQhM\" rel=\"nofollow\">小米手机2</a>\";s:9:\"favorited\";b:0;s:9:\"truncated\";b:0;s:21:\"in_reply_to_status_id\";s:0:\"\";s:19:\"in_reply_to_user_id\";s:0:\"\";s:23:\"in_reply_to_screen_name\";s:0:\"\";s:8:\"pic_urls\";a:0:{}s:3:\"geo\";N;s:13:\"reposts_count\";i:0;s:14:\"comments_count\";i:0;s:15:\"attitudes_count\";i:0;s:6:\"mlevel\";i:0;s:7:\"visible\";a:2:{s:4:\"type\";i:0;s:7:\"list_id\";i:0;}}s:17:\"allow_all_comment\";b:1;s:12:\"avatar_large\";s:49:\"http://tp1.sinaimg.cn/2014168112/180/5628215291/1\";s:15:\"verified_reason\";s:0:\"\";s:9:\"follow_me\";b:0;s:13:\"online_status\";i:0;s:18:\"bi_followers_count\";i:192;s:4:\"lang\";s:5:\"zh-cn\";s:4:\"star\";i:0;s:6:\"mbtype\";i:0;s:6:\"mbrank\";i:0;s:10:\"block_word\";i:0;}}'),(2,'qq',3,'E7F592946B48E8ED048591641B86097C','a:1:{s:9:\"user_info\";O:8:\"stdClass\":10:{s:3:\"ret\";i:0;s:3:\"msg\";s:0:\"\";s:8:\"nickname\";s:7:\"   song\";s:9:\"figureurl\";s:73:\"http://qzapp.qlogo.cn/qzapp/100354207/E7F592946B48E8ED048591641B86097C/30\";s:11:\"figureurl_1\";s:73:\"http://qzapp.qlogo.cn/qzapp/100354207/E7F592946B48E8ED048591641B86097C/50\";s:11:\"figureurl_2\";s:74:\"http://qzapp.qlogo.cn/qzapp/100354207/E7F592946B48E8ED048591641B86097C/100\";s:6:\"gender\";s:3:\"男\";s:3:\"vip\";s:1:\"0\";s:5:\"level\";s:1:\"0\";s:18:\"is_yellow_year_vip\";s:1:\"0\";}}');
/*!40000 ALTER TABLE `pp_user_openid` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-05 21:40:31
