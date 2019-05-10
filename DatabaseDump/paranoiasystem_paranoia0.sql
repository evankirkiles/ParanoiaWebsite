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
  `elims` int(11) NOT NULL DEFAULT '0',
  `eliminated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codeindex`),
  UNIQUE KEY `codeindex_UNIQUE` (`codeindex`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paranoia`
--

LOCK TABLES `paranoia` WRITE;
/*!40000 ALTER TABLE `paranoia` DISABLE KEYS */;
INSERT INTO `paranoia` VALUES (1,'3556',0,'Victoria','Geh','gehv19@kent-school.edu',0,0),(2,'8741',0,'Baljaa','Borgil','borgilb20@kent-school.edu',0,0),(3,'9502',0,'Sally','Yu','yud20@kent-school.edu',0,0),(4,'6585',0,'Nicole','Chan','chann21@kent-school.edu',0,0),(5,'2327',0,'Hayden','Myer','myerh21@kent-school.edu',0,0),(6,'5922',0,'Aay-Janae','Taylor','taylora21@kent-school.edu',0,0),(7,'5451',0,'Roshni (Rosie)','Saxena','saxenar19@kent-school.edu',0,0),(8,'3881',0,'James','Kim','kimj19@kent-school.edu',0,0),(9,'4078',0,'Oi','Srinualnad','srinualnadp20@kent-school.edu',0,0),(10,'2994',0,'Lily','Honsinger','honsingerl21@kent-school.edu',0,0),(11,'4338',0,'Sarah','Smith','smiths20@kent-school.edu',0,0),(12,'7944',0,'Owen','Zhang','zhango19@kent-school.edu',0,0),(13,'6799',0,'Mark','Stephanos','stephanosm20@kent-school.edu',0,0),(14,'2735',0,'Finn','Mclain','mclainf19@kent-school.edu',0,0),(15,'1528',0,'samuel','eszenyi','eszenyis21@kent-school.edu',0,0),(16,'1569',0,'Riley','LeBlanc','leblancr21@kent-school.edu',0,0),(17,'4339',0,'James','Hayakawa','hayakawaj21@kent-school.edu',0,0),(18,'7673',0,'Sascha','Botero','boteros21@kent-school.edu',0,0),(19,'6287',0,'Lia','Fadiman','fadimanl21@kent-school.edu',0,0),(20,'5045',0,'Jana','Safy','safyj21@kent-school.edu',0,0),(21,'8137',0,'Jack','Linardos','linardosj21@kent-school.edu',0,0),(22,'2349',0,'Haley','Uliasz','uliaszh19@kent-school.edu',0,0),(23,'6832',0,'Kenta','Neary','nearyk19@kent-school.edu',0,0),(24,'9896',0,'Miki ','Sauska ','sauskan21@kent-school.edu',0,0),(25,'5089',0,'Meagan','Flynn','flynnm19@kent-school.edu',0,0),(26,'5110',0,'Toby ','Aronson','aronsont19@kent-school.edu',0,0),(27,'2765',0,'Carson','Solaz','solazc19@kent-school.edu',0,0),(28,'5401',0,'Madie','Blakeslee','blakesleem19@kent-school.edu',0,0),(29,'2880',0,'Winslow','Bullard','bullardw19@kent-school.edu',0,0),(30,'4374',0,'Parker','LeBlanc','leblancp19@kent-school.edu',0,0),(31,'4831',0,'Jean','Udompanyawit ','udompanyawitc19@kent-school.edu',0,0),(32,'7008',0,'Chion','Alex ','chiona19@kent-school.edu',0,0),(33,'1545',0,'erin ','marczewski','marczewskie19@kent-school.edu',0,0),(34,'1953',0,'Alex','LeBlanc','leblanca21@kent-school.edu',0,0),(35,'4661',0,'Alexander','Abbruzzese','abbruzzesea19@kent-school.edu',0,0),(36,'8295',0,'Horace','Yang','yangh20@kent-school.edu',0,0),(37,'8940',0,'Taylor','Jeffrey','jeffreyt22@kent-school.edu',0,0),(38,'3174',0,'Kate','Dickson','dicksonk20@kent-school.edu',0,0),(39,'9381',0,'Edmund','Steeves','steevese20@kent-school.edu',0,0),(40,'6595',0,'Alexis','Delmore ','delmorea22@kent-school.edu',0,0),(41,'1157',0,'Jaemin ','Kim','kimj20@kent-school.edu',0,0),(42,'2758',0,'Connor','Meissner','meissnerc19@kent-school.edu',0,0),(43,'2975',0,'Julia','Dinapoli','dinapolij19@kent-school.edu',0,0),(44,'3421',0,'CJ','Brito-Trinidad','britotrinidadc19@kent-school.edu',0,0),(45,'3103',0,'Sebastian','Karreth','karrethdemiguels20@kent-school.edu',0,0),(46,'6843',0,'Tyson','Phan','phann19@kent-school.edu',0,0),(47,'3512',0,'Salim','Kheireddine','kheireddines20@kent-school.edu',0,0),(48,'4755',0,'Kalyna','Rondiak','rondiakk19@kent-school.edu',0,0),(49,'5547',0,'Dani','Hodges','hodgesd19@kent-school.edu',0,0),(50,'3077',0,'Eric ','Jung ','jungm21@kent-school.edu',0,0),(51,'5796',0,'Justin','Jung','jungj19@kent-school.edu',0,0),(52,'5386',0,'Bao','Pham','phamb22@kent-school.edu',0,0),(53,'2178',0,'Alden','Lineberger','linebergera22@kent-school.edu',0,0),(54,'2829',0,'Olivia','Mullins','mullinso22@kent-school.edu',0,0),(55,'6563',0,'Ashton','Smith','smithd20@kent-school.edu',0,0),(56,'5443',0,'Grace','Yang ','yangz21@kent-school.edu',0,0),(57,'9317',0,'Andy','Lee','lees20@kent-school.edu',0,0),(58,'8263',0,'Zhalyn','Kabyken','kabykenz20@kent-school.edu',0,0),(59,'4392',0,'Anjolie','Doan','doana21@kent-school.edu',0,0),(60,'8402',0,'Dawson','Philip','dawsonp20@kent-school.edu',0,0),(61,'9289',0,'Liu','Jeffrey','liuz19@kent-school.edu',0,0),(62,'7600',0,'Harry','Barclay','barclayh19@kent-school.edu',0,0),(63,'9423',0,'Nebeeka','Saha','sahan20@kent-school.edu',0,0),(64,'5415',0,'Cass','Hough','houghc20@kent-school.edu',0,0),(65,'2019',0,'leigh','mcdermott','mcdermottl20@kent-school.edu',0,0),(66,'2418',0,'Harry','Song','songz22@kent-school.edu',0,0),(67,'4764',0,'Chinh','Nguyen','nguyenc20@kent-school.edu',0,0),(68,'7940',0,'Nick','Chung','chungi20@kent-school.edu',0,0),(69,'2835',0,'Gabriella ','Crawford','crawfordg21@kent-school.edu',0,0),(70,'6810',0,'Lucas','Pfeifer','pfeiferl20@kent-school.edu',0,0),(71,'7746',0,'Reilly','Hedden','heddenr22@kent-school.edu',0,0),(72,'6219',0,'Rei','Collasse','collasser21@kent-school.edu',0,0),(73,'9141',0,'Carly','Mitchell','mitchellc21@kent-school.edu',0,0),(74,'9043',0,'Natalie','Sun','sunn20@kent-school.edu',0,0),(75,'3893',0,'Christopher','Guttman','guttmanc19@kent-school.edu',0,0),(76,'7336',0,'Brandon','Schuster','schusterb19@kent-school.edu',0,0),(77,'1091',0,'Jack','Keim','keimj21@kent-school.edu',0,0),(78,'7090',0,'Mark','Khalil','khalilm19@kent-school.edu',0,0),(79,'6788',0,'Honor','Campbell','campbellh19@kent-school.edu',0,0),(80,'5013',0,'Ray','Cutting','cuttingr19@kent-school.edu',0,0),(81,'8714',0,'Sehwan','Kim','kims19@kent-school.edu',0,0),(82,'6335',0,'Lydia','Klingebiel','klingebiell21@kent-school.edu',0,0),(83,'9170',0,'sloane','grover dodge','grover-dodges20@kent-school.edu',0,0),(84,'9194',0,'Mikaella','Tortusa','tortusam21@kent-school.edu',0,0),(85,'5736',0,'Chloe ','Hannan','hannanc21@kent-school.edu',0,0),(86,'7522',0,'Tyler','Kim','kimt20@kent-school.edu',0,0),(87,'9066',0,'Martha','Connor','connorm20@kent-school.edu',0,0),(88,'9593',0,'Hans','Tan','tanh19@kent-school.edu',0,0),(89,'4566',0,'Molly ','Garrahy ','garrahym20@kent-school.edu',0,0),(90,'2659',0,'Johnson','Tommy','johnsont19@kent-school.edu',0,0),(91,'1068',0,'Marquis','Wong','wongm20@kent-school.edu',0,0),(92,'2744',0,'Talia','Rosen ','rosent21@kent-school.edu',0,0),(93,'4838',0,'Pj','Kaewsawang ','kaewsawangk19@kent-school.edu',0,0),(94,'2742',0,'Elvis','Kwong','kwonge20@kent-school.edu',0,0),(95,'3155',0,'Cheryl','Chen','chenc20@kent-school.edu',0,0),(96,'4748',0,'Yueqing','Zhang','zhangy20@kent-school.edu',0,0),(97,'3563',0,'Emma','Turner','turnere21@kent-school.edu',0,0),(98,'9652',0,'Robert','Impastato','impastator20@kent-school.edu',0,0),(99,'2632',0,'John','O’Connell','oconnellj20@kent-school.edu',0,0),(100,'9172',0,'Dean','DiNicola','dinicolad20@kent-school.edu',0,0),(101,'4664',0,'Sofie','Zander','zanders19@kent-school.edu',0,0),(102,'1345',0,'Amida','Akpan','akpana21@kent-school.edu',0,0),(103,'6808',0,'Mallory','Mauracher','mauracherm21@kent-school.edu',0,0),(104,'5712',0,'Taehan','Kim','kimt21@kent-school.edu',0,0),(105,'5285',0,'Gabby','Sullivan','sullivang21@kent-school.edu',0,0),(106,'8073',0,'Brendan','Stewart','stewartb21@kent-school.edu',0,0),(107,'3843',0,'Chloe ','Pfeifer','pfeiferc21@kent-school.edu',0,0),(108,'2369',0,'Leon','Zhou','zhoul19@kent-school.edu',0,0),(109,'4024',0,'Mohammad Bilal','Minhas','minhasm20@kent-school.edu',0,0),(110,'2208',0,'Albert ','Zhang','zhangal21@kent-school.edu',0,0),(111,'4031',0,'Richard ','Chang','changr20@kent-school.edu',0,0),(112,'4106',0,'Ivanka','Shen','sheny19@kent-school.edu',0,0),(113,'3891',0,'Ashley','Parsons','parsonsa@kent-school.edu',0,0),(114,'7195',0,'Dan ','Tyson ','tysond20@kent-school.edu',0,0),(115,'5510',0,'Hien','Truong','truongh21@kent-school.edu',0,0),(116,'4325',0,'Fai Hung','Leung','leungf19@kent-school.edu',0,0),(117,'3773',0,'Peter','Lu','luk20@kent-school.edu',0,0),(118,'9440',0,'Jess','Zheng','zhengs22@kent-school.edu',0,0),(119,'6033',0,'Jiajun','Mao','maoj19@kent-school.edu',0,0),(120,'3713',0,'Middleton','Stuart','middletonc21@kent-school.edu',0,0),(121,'9874',0,'Eugene ',' Park','parke22@kent-school.edu',0,0),(122,'4008',0,'Bea','Voorhees','voorheesb19@kent-school.edu',0,0),(123,'7690',0,'Britton','Smith','smithb20@kent-school.edu',0,0),(124,'4445',0,'Sam','Thompson','thompsons19@kent-school.edu',0,0),(125,'4099',0,'Sarah','Choi','choiy19@kent-school.edu',0,0),(126,'5871',0,'Juliana','Morcos','morcosj19@kent-school.edu',0,0),(127,'2862',0,'Ian','Pierce','piercei19@kent-school.edu',0,0),(128,'7576',0,'Robby','Johnson','johnsonr19@kent-school.edu',0,0),(129,'8270',0,'Anna','Liu','liuz21@kent-school.edu',0,0),(130,'1099',0,'Emily','He','hex21@kent-school.edu',0,0),(131,'9413',0,'Sunny','Li','liz21@kent-school.edu',0,0),(132,'7879',0,'Linda','Fan','fany21@kent-school.edu',0,0),(133,'7595',0,'Annie','Yang','yanga22@kent-school.edu',0,0),(134,'8422',0,'Claudia','Shi','shiy22@kent-school.edu',0,0),(135,'2018',0,'Daelan','Mangiafico','mangiaficod20@kent-school.edu',0,0),(136,'6051',0,'Green','Isaac ','greeni20@kent-school.edu',0,0),(137,'4337',0,'Catherine ','Zhou ','zhouc20@kent-school.edu',0,0),(138,'8696',0,'Siyang','Li','lis19@kent-school.edu',0,0),(139,'3020',0,'Garrison','Smith','smithg@kent-school.edu',0,0),(140,'3708',0,'Sam','Born','borns19@kent-school.edu',0,0),(141,'3241',0,'Mariya ','Novosad','novosadm22@kent-school.edu',0,0),(142,'4703',0,'Cooper','Brill','brillc20@kent-school.edu',0,0),(143,'7681',0,'Aidan','Cobb','cobba20@kent-school.edu',0,0),(144,'2001',0,'hayden','smith','smithh20@kent-school.edu',0,0),(145,'4769',0,'Jonas','Passante','passantej20@kent-school.edu',0,0),(146,'1550',0,'Sabrina','Pauli','paulis22@kent-school.edu',0,0),(147,'8271',0,'Takuma','Endo','endot19@kent-school.edu',0,0);
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

-- Dump completed on 2019-05-07 15:04:35