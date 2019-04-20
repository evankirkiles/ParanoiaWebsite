-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: den1.mysql6.gear.host    Database: paranoiasystem
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `paranoia`
--

DROP TABLE IF EXISTS `paranoia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paranoia` (
  `codeindex` int(11) NOT NULL AUTO_INCREMENT,
  `codename` varchar(50) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `elims` int(11) DEFAULT NULL,
  `eliminated` int(11) DEFAULT NULL,
  PRIMARY KEY (`codeindex`),
  UNIQUE KEY `codeindex_UNIQUE` (`codeindex`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paranoia`
--

LOCK TABLES `paranoia` WRITE;
/*!40000 ALTER TABLE `paranoia` DISABLE KEYS */;
INSERT INTO `paranoia` VALUES (1,'0$\r',195,NULL,NULL,NULL,1,0),(2,'3\r',199,NULL,NULL,NULL,0,0),(3,'7\r',20,NULL,NULL,NULL,0,0),(4,'315\r',77,NULL,NULL,NULL,0,0),(5,'12345\r',112,NULL,NULL,NULL,0,0),(6,'1111010\r',1,NULL,NULL,NULL,0,0),(7,'TheGiraffe\r',102,NULL,NULL,NULL,0,0),(8,'@sht0n Sm1th\r',120,NULL,NULL,NULL,0,0),(9,'?\r',105,NULL,NULL,NULL,0,0),(10,'13Brownie\r',58,NULL,NULL,NULL,0,0),(11,'2018hondaaccord\r',187,NULL,NULL,NULL,0,0),(12,'404Error\r',222,NULL,NULL,NULL,0,0),(13,'5 through 7\r',197,NULL,NULL,NULL,0,0),(14,'A Twin\r',144,NULL,NULL,NULL,0,0),(15,'Act24\r',64,NULL,NULL,NULL,0,0),(16,'Agent Domie\r',203,NULL,NULL,NULL,0,0),(17,'Agent Platapus\r',216,NULL,NULL,NULL,0,0),(18,'AjNizzle\r',91,NULL,NULL,NULL,0,0),(19,'Ankh\r',98,NULL,NULL,NULL,0,0),(20,'Anser\r',237,NULL,NULL,NULL,0,0),(21,'Army1112\r',27,NULL,NULL,NULL,0,0),(22,'Art3mis\r',72,NULL,NULL,NULL,0,0),(23,'ASA17\r',220,NULL,NULL,NULL,0,0),(24,'ATWH\r',196,NULL,NULL,NULL,0,0),(25,'Austin\r',179,NULL,NULL,NULL,0,0),(26,'Baba Yaga\r',135,NULL,NULL,NULL,0,0),(27,'Baget\r',219,NULL,NULL,NULL,0,0),(28,'Barreno Galan\r',195,NULL,NULL,NULL,0,1),(29,'Base God\r',141,NULL,NULL,NULL,0,0),(30,'Baseball king\r',23,NULL,NULL,NULL,0,0),(31,'Beast1234\r',55,NULL,NULL,NULL,0,0),(32,'Beastmode1\r',167,NULL,NULL,NULL,0,0),(33,'Bev\r',131,NULL,NULL,NULL,0,0),(34,'Blackout\r',240,NULL,NULL,NULL,0,0),(35,'blackR34\r',192,NULL,NULL,NULL,0,0),(36,'Bluejay92\r',54,NULL,NULL,NULL,0,0),(37,'Bobby John\r',157,NULL,NULL,NULL,0,0),(38,'boi\r',62,NULL,NULL,'kirkilese20@kent-school.edu',0,1),(39,'Bootsandcats\r',25,NULL,NULL,NULL,0,0),(40,'Bori$$$\r',97,NULL,NULL,NULL,0,0),(41,'breezy144\r',111,NULL,NULL,NULL,0,0),(42,'bubbles\r',36,NULL,NULL,NULL,0,0),(43,'byula\r',184,NULL,NULL,NULL,0,0),(44,'CactusEureka\r',200,NULL,NULL,NULL,0,0),(45,'Candyjar\r',88,NULL,NULL,NULL,0,0),(46,'Carefree_existence\r',134,NULL,NULL,NULL,0,0),(47,'Cash Daddy\r',205,NULL,NULL,NULL,0,0),(48,'cat123\r',153,NULL,NULL,NULL,0,0),(49,'CBUSAH\r',69,NULL,NULL,NULL,0,0),(50,'Cdogbomb\r',118,NULL,NULL,NULL,0,0),(51,'Chanman\r',33,NULL,NULL,NULL,0,0),(52,'ChauChau\r',188,NULL,NULL,NULL,0,0),(53,'Chuck\r',162,NULL,NULL,NULL,0,0),(54,'Chunky\r',226,NULL,NULL,NULL,0,0),(55,'Cloward\r',50,NULL,NULL,NULL,0,0),(56,'Co-Captain Burrito\r',90,NULL,NULL,NULL,0,0),(57,'CoachWells80\r',100,NULL,NULL,NULL,0,0),(58,'Cuboid\r',239,NULL,NULL,NULL,0,0),(59,'D money\r',89,NULL,NULL,NULL,0,0),(60,'D.W.A.B.\r',117,NULL,NULL,NULL,0,0),(61,'Damp\r',238,NULL,NULL,NULL,0,0),(62,'Damp Tomato\r',210,NULL,NULL,NULL,0,1),(63,'Dani\r',15,NULL,NULL,NULL,0,0),(64,'DanTyson\r',143,NULL,NULL,NULL,0,0),(65,'Dark Knight\r',76,NULL,NULL,NULL,0,0),(66,'Dodo Bird\r',95,NULL,NULL,NULL,0,0),(67,'Drew2rich\r',181,NULL,NULL,NULL,0,0),(68,'Dwanye West\r',4,NULL,NULL,NULL,0,0),(69,'Eagle 1\r',47,NULL,NULL,NULL,0,0),(70,'el chapo\r',63,NULL,NULL,NULL,0,0),(71,'Ella\r',163,NULL,NULL,NULL,0,0),(72,'Emory Jhonson\r',182,NULL,NULL,NULL,0,0),(73,'Eric Jung\r',202,NULL,NULL,NULL,0,0),(74,'ersauce\r',178,NULL,NULL,NULL,0,0),(75,'Esther Folly\r',158,NULL,NULL,NULL,0,0),(76,'FINNALICIOUS\r',115,NULL,NULL,NULL,0,0),(77,'firebird\r',21,NULL,NULL,NULL,0,0),(78,'Foxtrott orvile\r',103,NULL,NULL,NULL,0,0),(79,'Free Speed\r',185,NULL,NULL,NULL,0,0),(80,'FreeTilly2K18\r',16,NULL,NULL,NULL,0,0),(81,'Full-Send-Brother\r',198,NULL,NULL,NULL,0,0),(82,'Galahad\r',172,NULL,NULL,NULL,0,0),(83,'Gardening Tool\r',10,NULL,NULL,NULL,0,0),(84,'George Dubya Bush\r',12,NULL,NULL,NULL,0,0),(85,'Germ-X\r',125,NULL,NULL,NULL,0,0),(86,'Ginger Snap\r',130,NULL,NULL,NULL,0,0),(87,'GOAT\r',32,NULL,NULL,NULL,0,0),(88,'Golden Rose\r',61,NULL,NULL,NULL,0,0),(89,'Goobs\r',177,NULL,NULL,NULL,0,0),(90,'Goofy goober\r',51,NULL,NULL,NULL,0,0),(91,'Goosey\r',208,NULL,NULL,NULL,0,0),(92,'grasshopper\r',38,NULL,NULL,'kirkilese20@kent-school.edu',0,1),(93,'Guldens$Spicy$Brown$Mustard$Established$1862\r',149,NULL,NULL,NULL,0,0),(94,'hales\r',214,NULL,NULL,NULL,0,0),(95,'Han\r',107,NULL,NULL,NULL,0,0),(96,'Hans\r',41,NULL,NULL,NULL,0,0),(97,'HGAONUNSASHE\r',84,NULL,NULL,NULL,0,0),(98,'Ho69\r',227,NULL,NULL,NULL,0,0),(99,'HONOR PATRICIA JEAN CAMPBELL\r',75,NULL,NULL,NULL,0,0),(100,'Ice Mountain\r',235,NULL,NULL,NULL,0,0),(101,'Idk\r',46,NULL,NULL,NULL,0,0),(102,'IndianMaestro\r',150,NULL,NULL,NULL,0,0),(103,'Iron Fist\r',18,NULL,NULL,NULL,0,0),(104,'Ironbeagle\r',223,NULL,NULL,NULL,0,0),(105,'IsaacG\r',160,NULL,NULL,NULL,0,0),(106,'Isababe\r',180,NULL,NULL,NULL,0,0),(107,'J Mulaaaa\r',109,NULL,NULL,NULL,0,0),(108,'Jack in the Box\r',154,NULL,NULL,NULL,0,0),(109,'Jaguar\r',152,NULL,NULL,NULL,0,0),(110,'Janethepain\r',183,NULL,NULL,NULL,0,0),(111,'Jantheman\r',171,NULL,NULL,NULL,0,0),(112,'Jellyfish\r',48,NULL,NULL,NULL,0,0),(113,'Jerry\r',37,NULL,NULL,NULL,0,0),(114,'jeweliana\r',39,NULL,NULL,NULL,0,0),(115,'Jiffy Pop\r',52,NULL,NULL,NULL,0,0),(116,'John Wick\r',213,NULL,NULL,NULL,0,0),(117,'Joker\r',17,NULL,NULL,NULL,0,0),(118,'Jonas Schemm\r',35,NULL,NULL,NULL,0,0),(119,'JuicyMouse\r',68,NULL,NULL,NULL,0,0),(120,'Julia\r',233,NULL,NULL,NULL,0,0),(121,'Kal- El\r',209,NULL,NULL,NULL,0,0),(122,'Kale\r',60,NULL,NULL,NULL,0,0),(123,'Kaninen\r',116,NULL,NULL,NULL,0,0),(124,'Katie Palmer\r',212,NULL,NULL,NULL,0,0),(125,'kayla\r',156,NULL,NULL,NULL,0,0),(126,'KentWireless\r',215,NULL,NULL,NULL,0,0),(127,'Kev1n H0bb$\r',159,NULL,NULL,NULL,0,0),(128,'killerqueen\r',83,NULL,NULL,NULL,0,0),(129,'Kos\r',207,NULL,NULL,NULL,0,0),(130,'La Folie\r',66,NULL,NULL,NULL,0,0),(131,'last lost chapter\r',5,NULL,NULL,NULL,0,0),(132,'Legacy\r',186,NULL,NULL,NULL,0,0),(133,'lemon water\r',121,NULL,NULL,NULL,0,0),(134,'Lexador blanco\r',24,NULL,NULL,NULL,0,0),(135,'light of your life\r',225,NULL,NULL,NULL,0,0),(136,'Little Miss Sunshine\r',119,NULL,NULL,NULL,0,0),(137,'lobster\r',67,NULL,NULL,NULL,0,0),(138,'lovekentschool123\r',139,NULL,NULL,NULL,0,0),(139,'LOXE\r',29,NULL,NULL,NULL,0,0),(140,'Luca Vo\r',59,NULL,NULL,NULL,0,0),(141,'Lynx in the Shadows\r',133,NULL,NULL,NULL,0,0),(142,'Mangiark1318\r',99,NULL,NULL,NULL,0,0),(143,'MathClassDropOut\r',217,NULL,NULL,NULL,0,0),(144,'Matthew Jandreau\r',56,NULL,NULL,NULL,0,0),(145,'minty fresh\r',22,NULL,NULL,NULL,0,0),(146,'momoney\r',7,NULL,NULL,NULL,0,0),(147,'Monsieurgustavlikesapplepie\r',232,NULL,NULL,NULL,0,0),(148,'MOP\r',124,NULL,NULL,NULL,0,0),(149,'Mr. Dunn\r',6,NULL,NULL,NULL,0,0),(150,'MysteryBox\r',145,NULL,NULL,NULL,0,0),(151,'Na_Sun\r',176,NULL,NULL,NULL,0,0),(152,'NaClty?\r',44,NULL,NULL,NULL,0,0),(153,'Nick\r',132,NULL,NULL,NULL,0,0),(154,'Ninja\r',165,NULL,NULL,NULL,0,0),(155,'Ninja Kitty\r',53,NULL,NULL,NULL,0,0),(156,'No More Rain\r',174,NULL,NULL,NULL,0,0),(157,'No Russian\r',245,NULL,NULL,NULL,0,0),(158,'noodle\r',190,NULL,NULL,NULL,0,0),(159,'Number 5\r',81,NULL,NULL,NULL,0,0),(160,'Nuna\r',230,NULL,NULL,NULL,0,0),(161,'oakcannal\r',170,NULL,NULL,NULL,0,0),(162,'Octavius\r',114,NULL,NULL,NULL,0,0),(163,'Oguh\r',126,NULL,NULL,NULL,0,0),(164,'Okay sign\r',11,NULL,NULL,NULL,0,0),(165,'one\r',8,NULL,NULL,NULL,0,0),(166,'one-third\r',106,NULL,NULL,NULL,0,0),(167,'Onlyalittleparanoid\r',31,NULL,NULL,NULL,0,0),(168,'oof\r',234,NULL,NULL,NULL,0,0),(169,'Otatsapmi\r',71,NULL,NULL,NULL,0,0),(170,'pamplemousse\r',142,NULL,NULL,NULL,0,0),(171,'Papa Fox\r',85,NULL,NULL,NULL,0,0),(172,'Parzival\r',204,NULL,NULL,NULL,0,0),(173,'Peter Griffin\r',9,NULL,NULL,NULL,0,0),(174,'POA\r',96,NULL,NULL,NULL,0,0),(175,'POJ\r',224,NULL,NULL,NULL,0,0),(176,'Popbow06\r',30,NULL,NULL,NULL,0,0),(177,'Possum\r',34,NULL,NULL,NULL,0,0),(178,'POSTY\r',101,NULL,NULL,NULL,0,0),(179,'Qeasycoco\r',221,NULL,NULL,NULL,0,0),(180,'qtsyoongi\r',147,NULL,NULL,NULL,0,0),(181,'R1ce\r',129,NULL,NULL,NULL,0,0),(182,'Raindroponroses\r',242,NULL,NULL,NULL,0,0),(183,'rat\r',104,NULL,NULL,NULL,0,0),(184,'RDenshio Kim\r',148,NULL,NULL,NULL,0,0),(185,'roundandround\r',136,NULL,NULL,NULL,0,0),(186,'Rustlord\r',194,NULL,NULL,NULL,0,0),(187,'S.K\r',168,NULL,NULL,NULL,0,0),(188,'Sallyu\r',229,NULL,NULL,NULL,0,0),(189,'Sam Foote\r',169,NULL,NULL,NULL,0,0),(190,'SAPO\r',65,NULL,NULL,NULL,0,0),(191,'Savinator\r',86,NULL,NULL,NULL,0,0),(192,'Scruffles\r',241,NULL,NULL,NULL,0,0),(193,'SeÒor Choclo\r',137,NULL,NULL,NULL,0,0),(194,'Sharp-White-Cheddar-Cheez-It-Grooves\r',231,NULL,NULL,NULL,0,0),(195,'Shelby 006\r',127,NULL,NULL,NULL,0,0),(196,'Silverís Hair\r',191,NULL,NULL,NULL,0,0),(197,'skier gurl\r',79,NULL,NULL,NULL,0,0),(198,'slavage\r',173,NULL,NULL,NULL,0,0),(199,'Slaygod\r',189,NULL,NULL,NULL,0,0),(200,'Smellis\r',201,NULL,NULL,NULL,0,0),(201,'smrussell16\r',78,NULL,NULL,NULL,0,0),(202,'SogGang\r',164,NULL,NULL,NULL,0,0),(203,'Source Code\r',80,NULL,NULL,NULL,0,0),(204,'Sparki\r',128,NULL,NULL,NULL,0,0),(205,'Sparky jones\r',40,NULL,NULL,NULL,0,0),(206,'Speedy Gonzales\r',218,NULL,NULL,NULL,0,0),(207,'squam\r',243,NULL,NULL,NULL,0,0),(208,'Stella Klingebiel\r',13,NULL,NULL,NULL,0,0),(209,'Sting\r',151,NULL,NULL,NULL,0,0),(210,'T-Dizzle\r',14,NULL,NULL,NULL,0,1),(211,'Tay j\r',113,NULL,NULL,NULL,0,0),(212,'Tay-K\r',57,NULL,NULL,NULL,0,0),(213,'The Evasive Echidna\r',140,NULL,NULL,NULL,0,0),(214,'The Platypus\r',193,NULL,NULL,NULL,0,0),(215,'Thing 1\r',166,NULL,NULL,NULL,0,0),(216,'Tillytally\r',19,NULL,NULL,NULL,0,0),(217,'Tina\r',236,NULL,NULL,NULL,0,0),(218,'Tmoney101\r',122,NULL,NULL,NULL,0,0),(219,'toby bronchitis\r',49,NULL,NULL,NULL,0,0),(220,'Toe knee\r',43,NULL,NULL,NULL,0,0),(221,'Trickster\r',228,NULL,NULL,NULL,0,0),(222,'Trish\r',155,NULL,NULL,NULL,0,0),(223,'Tsunami Mami\r',2,NULL,NULL,NULL,0,0),(224,'Tsunamimami\r',206,NULL,NULL,NULL,0,0),(225,'ubuntu16.04\r',87,NULL,NULL,NULL,0,0),(226,'Ursa\r',74,NULL,NULL,NULL,0,0),(227,'varis\r',26,NULL,NULL,NULL,0,0),(228,'verysadperson\r',108,NULL,NULL,NULL,0,0),(229,'Vicky\r',82,NULL,NULL,NULL,0,0),(230,'vroomvroom\r',175,NULL,NULL,NULL,0,0),(231,'Vulgar\r',244,NULL,NULL,NULL,0,0),(232,'vvvvvvvvvvvv\r',3,NULL,NULL,NULL,0,0),(233,'Whatsername\r',146,NULL,NULL,NULL,0,0),(234,'xcboi19\r',161,NULL,NULL,NULL,0,0),(235,'XD\r',70,NULL,NULL,NULL,0,0),(236,'Yang\r',93,NULL,NULL,NULL,0,0),(237,'yerrrr\r',110,NULL,NULL,NULL,0,0),(238,'younggun81\r',42,NULL,NULL,NULL,0,0),(239,'zeemo\r',211,NULL,NULL,NULL,0,0),(240,'Zenith\r',45,NULL,NULL,NULL,0,0),(241,'Zig-Zag\r',94,NULL,NULL,NULL,0,0),(242,'Zoomie zoom\r',138,NULL,NULL,NULL,0,0),(243,'zucc juice\r',73,NULL,NULL,NULL,0,0),(244,'???\r',123,NULL,NULL,NULL,0,0),(245,'swaelee\r',14,NULL,NULL,'kirkilese20@kent-school.edu',5,0),(246,'UrNext\r',92,NULL,NULL,'kirkilese20@kent-school.edu',0,1);
/*!40000 ALTER TABLE `paranoia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-20 13:29:08
