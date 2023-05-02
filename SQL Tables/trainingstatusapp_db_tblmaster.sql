-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trainingstatusapp_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblmaster`
--

DROP TABLE IF EXISTS `tblmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmaster` (
  `s_no` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) DEFAULT NULL,
  `emp_mail` varchar(45) DEFAULT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `emp_batch` varchar(45) DEFAULT NULL,
  `approver_name` varchar(50) DEFAULT NULL,
  `course_id` varchar(50) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `st_date` varchar(45) DEFAULT NULL,
  `ed_date` varchar(45) DEFAULT NULL,
  `tr_date` varchar(45) DEFAULT NULL,
  `mail_srn` varchar(45) DEFAULT NULL,
  `saba_srn` varchar(45) DEFAULT NULL,
  `test_srn` varchar(45) DEFAULT NULL,
  `test_score` varchar(10) DEFAULT NULL,
  `rec_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmaster`
--

LOCK TABLES `tblmaster` WRITE;
/*!40000 ALTER TABLE `tblmaster` DISABLE KEYS */;
INSERT INTO `tblmaster` VALUES (2,'Parinav Urade','parinav.urade@fujitsu.com','32032','January','Anandhan','959637267','(Course) Excel 2016 (Windows): Working with Data in 3D Maps ','2023-04-19','2023-04-19','2023-04-19','\\images\\sabamailImg\\32032_959637267.png','\\images\\percipioImg\\32032_959637267.png','\\images\\testscoreImg\\32032_959637267.png','90','A'),(3,'Parinav Urade','john.doe@gmail.com','32032','January','Anandhan','97705654','(Course) Excel 2016 (Windows): Inserting & Manipulating Data ','2023-04-19','2023-04-19','2023-04-19','\\images\\sabamailImg\\32032_97705654.png','\\images\\percipioImg\\32032_97705654.png','\\images\\testscoreImg\\32032_97705654.png','90','U'),(4,'Parinav Urade','john.doe@gmail.com','32032','January','Anandhan','97705654','(Course) Excel 2016 (Windows): Inserting & Manipulating Data ','2023-04-19','2023-04-19','2023-04-19','\\images\\sabamailImg\\32032_97705654.png','\\images\\percipioImg\\32032_97705654.png','\\images\\testscoreImg\\32032_97705654.png','90','U'),(5,'Parinav Urade','parinav.urade@gmail.com','32050','March','Anandhan','12345','JAVA','2023-04-21','2023-04-21','2023-04-21','\\images\\sabamailImg\\32050_12345.png','\\images\\percipioImg\\32050_12345.png','\\images\\testscoreImg\\32050_12345.png','90','U'),(6,'Parinav Urade','parinav.urade@gmail.com','32050','March','Anandhan','12345','JAVA','2023-04-21','2023-04-21','2023-04-21','\\images\\sabamailImg\\32050_12345.png','\\images\\percipioImg\\32050_12345.png','\\images\\testscoreImg\\32050_12345.png','90','U');
/*!40000 ALTER TABLE `tblmaster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 16:44:12
