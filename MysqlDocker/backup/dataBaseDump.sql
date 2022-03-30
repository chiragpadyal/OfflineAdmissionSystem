-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: Inhouse_Admission_System
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Academic_Details`
--

DROP TABLE IF EXISTS `Academic_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Academic_Details` (
  `Std_ID` int NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `Branch_Preferred` varchar(30) NOT NULL,
  `SSC` int NOT NULL,
  `HSC` int NOT NULL,
  `mhtcet` int NOT NULL,
  `jee` int NOT NULL,
  `ssc_date` varchar(30) NOT NULL,
  `hsc_date` varchar(30) NOT NULL,
  `mhcet_date` varchar(30) NOT NULL,
  `jee_date` varchar(30) NOT NULL,
  `ssc_file` varchar(100) NOT NULL,
  `hsc_file` varchar(100) NOT NULL,
  `mhcet_file` varchar(100) NOT NULL,
  `jee_file` varchar(100) NOT NULL,
  KEY `Std_ID` (`Std_ID`),
  CONSTRAINT `Academic_Details_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `Admission Details` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Academic_Details`
--

LOCK TABLES `Academic_Details` WRITE;
/*!40000 ALTER TABLE `Academic_Details` DISABLE KEYS */;
INSERT INTO `Academic_Details` VALUES (1,'IT','----',455,455,5455,455,'1/1/00','1/1/00','1/1/00','1/1/00','','','',''),(2,'CS','IT',10,10,10,10,'1/1/00','1/1/00','1/1/00','1/1/00','/home/chirag/Documents/63_DivA_Chirag_Padyal_OracleJFOCertficate.pdf','/home/chirag/Chirag Padyal_ML_Assignment.pdf','/home/chirag/Quiz Experiment No 7.pdf','/home/chirag/20104034_ChiragPadyal_SqlAndRelationDatabase101_Certificate.pdf'),(3,'IT','----',54,42,44,24,'1/1/00','1/1/00','1/1/00','1/1/00','','','','');
/*!40000 ALTER TABLE `Academic_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Admission Details`
--

DROP TABLE IF EXISTS `Admission Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admission Details` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `ProfilePic` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Middlename` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `IDProof` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `Address2` varchar(100) NOT NULL,
  `Zipcode` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `PhoneNo1` int NOT NULL,
  `PhoneNo2` int NOT NULL,
  `TelePhoneNo` int NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admission Details`
--

LOCK TABLES `Admission Details` WRITE;
/*!40000 ALTER TABLE `Admission Details` DISABLE KEYS */;
INSERT INTO `Admission Details` VALUES (1,'/home/chirag/Pictures/Screenshot from 2021-11-08 19-29-05.png','hero','zer','daw','01 January, 2000','/home/chirag/Pictures/Screenshot from 2021-11-11 18-02-15.png','female','dawd','daw','54','awd','wadw','daw','daw',54,48,48),(2,'/home/chirag/Pictures/Screenshot from 2021-11-08 19-29-05.png','Hero','go','is','01 January, 2000','/home/chirag/Pictures/Screenshot from 2021-11-11 18-01-54.png','male','daw','daw','123','fish','goat','yeah','hero.com',123456,123745,458485),(3,'','','','','','','male','','','548','','','','',548,4585,45);
/*!40000 ALTER TABLE `Admission Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Branch_details`
--

DROP TABLE IF EXISTS `Branch_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Branch_details` (
  `Std_ID` int NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `PaymentMethod` varchar(30) NOT NULL,
  `AcademicYear` varchar(30) NOT NULL,
  `Course` varchar(30) NOT NULL,
  KEY `Std_ID` (`Std_ID`),
  CONSTRAINT `Branch_details_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `Admission Details` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branch_details`
--

LOCK TABLES `Branch_details` WRITE;
/*!40000 ALTER TABLE `Branch_details` DISABLE KEYS */;
INSERT INTO `Branch_details` VALUES (1,'I.T Engineering','Credit/Debit','2021-25','F.E'),(2,'Mechanical Engineering','Credit/Debit','2021-25','D.S.E'),(3,'I.T Engineering','UPI','2020-24','F.E');
/*!40000 ALTER TABLE `Branch_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login_details`
--

DROP TABLE IF EXISTS `Login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Login_details` (
  `Srno.` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `ProfilePicture` varchar(500) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `AdmissionTaken` int NOT NULL,
  `StaffId` varchar(100) NOT NULL,
  PRIMARY KEY (`Srno.`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login_details`
--

LOCK TABLES `Login_details` WRITE;
/*!40000 ALTER TABLE `Login_details` DISABLE KEYS */;
INSERT INTO `Login_details` VALUES (1,'Hari','Joe','images/admin.jpeg','Hari','1234',0,'101'),(2,'Manish','Kor','images/Admin2.jpeg','Manish','1234',0,'102'),(3,'Leon','Ion','images/Admin3.jpeg','Leon','1234',0,'103');
/*!40000 ALTER TABLE `Login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notice_Board`
--

DROP TABLE IF EXISTS `Notice_Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Notice_Board` (
  `NoticeID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Prioirty` varchar(50) NOT NULL,
  `Body` varchar(500) NOT NULL,
  PRIMARY KEY (`NoticeID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notice_Board`
--

LOCK TABLES `Notice_Board` WRITE;
/*!40000 ALTER TABLE `Notice_Board` DISABLE KEYS */;
INSERT INTO `Notice_Board` VALUES (3,'dawd','Important','awdwfdawd'),(4,'Final Exam Report!!!!','Casual','the finale will conduct on 27 jan , hahahhahahha!!!!'),(5,'dawdas','Important','dzcszdvcvzcszdvcvzcszdvcvzcszdvcv'),(6,'king','Important','kingkingkingkingking'),(7,'Amir','Casual','Amir is a great boi'),(8,'Amir','Important','Amir is a great boi'),(9,'lopn','Important','lopn lopn lopn lopn'),(10,'lopn','Important','lopn lopn lopn lopn'),(11,'lopn','Important','lopn lopn lopn lopn'),(12,'lopn','Important','lopn lopn lopn lopn'),(13,'lopn','Important','lopn lopn lopn lopn'),(14,'lopn','Important','lopn lopn lopn lopn'),(15,'lopn','Important','lopn lopn lopn lopn'),(16,'joker','Casual','wadwad'),(17,'joker is dead','Casual','awd'),(18,'dawd','Casual','dawdw'),(19,'dawd','Important','dawdw'),(20,'dawd','Important','awdswad'),(29,'awdda','Casual','dawd'),(30,'awdda','Casual','dawd'),(31,'awdda','Important','dawd'),(32,'dasds','Important','dsxdc'),(33,'dasds','Casual','dsxdc'),(34,'dasds','Important','dsxdc'),(35,'check','Important','check'),(36,'check','Casual','check'),(37,'dawd','Important','awdw'),(38,'dawd','Important','awdw'),(39,'dawd','Casual','awdw'),(40,'joker','Important','123'),(41,'joker','Casual','123');
/*!40000 ALTER TABLE `Notice_Board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 14:42:26
