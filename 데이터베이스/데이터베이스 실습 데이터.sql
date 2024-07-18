CREATE DATABASE  IF NOT EXISTS `student_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `student_test`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: student_test
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tb_school_info`
--

DROP TABLE IF EXISTS `tb_school_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_school_info` (
  `school_id` int NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) NOT NULL COMMENT '학교명',
  `school_area` varchar(10) NOT NULL COMMENT '학교 지역구',
  `school_addr` varchar(200) NOT NULL COMMENT '학교 주소',
  `school_phone` varchar(12) NOT NULL COMMENT '학교 연락처',
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_school_info`
--

LOCK TABLES `tb_school_info` WRITE;
/*!40000 ALTER TABLE `tb_school_info` DISABLE KEYS */;
INSERT INTO `tb_school_info` VALUES (1,'우송고등학교','동구','대전광역시 동구 동대전로131번길 53','042-620-5200'),(2,'보문고등학교','동구','대전광역시 동구 우암로 57','042-620-6600'),(3,'대전여자고등학교','동구','대전광역시 동구 용운로1번길 28-37','042-630-5901'),(4,'명석고등학교','동구','대전광역시 동구 우암로 380','042-623-2111'),(5,'충남고등학교','서구','대전광역시 서구 문정로 171','042-488-8013'),(6,'서일여자고등학교','서구','대전광역시 서구 구봉산북로 22','042-540-7740');
/*!40000 ALTER TABLE `tb_school_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_score`
--

DROP TABLE IF EXISTS `tb_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_score` (
  `score_id` int NOT NULL AUTO_INCREMENT COMMENT '성적 ID',
  `student_id` int NOT NULL COMMENT '학생 ID',
  `score_season` varchar(4) NOT NULL COMMENT '수능 년도',
  `score_subject` varchar(50) NOT NULL COMMENT '수능 과목',
  `score_point` int DEFAULT '0' COMMENT '수능 성적',
  PRIMARY KEY (`score_id`),
  KEY `fk_score_student_idx` (`student_id`),
  CONSTRAINT `fk_score_student` FOREIGN KEY (`student_id`) REFERENCES `tb_student_info` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='수능 성적';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_score`
--

LOCK TABLES `tb_score` WRITE;
/*!40000 ALTER TABLE `tb_score` DISABLE KEYS */;
INSERT INTO `tb_score` VALUES (1,1,'2023','언어',80),(2,1,'2023','영어',90),(3,1,'2023','수학',70),(4,1,'2023','사회탐구1',50),(5,1,'2023','사회탐구2',50),(6,5,'2023','언어',85),(7,5,'2023','영어',80),(8,5,'2023','수학',90),(9,5,'2023','사회탐구1',48),(10,5,'2023','사회탐구2',45),(11,10,'2023','언어',70),(12,10,'2023','영어',70),(13,10,'2023','수학',70),(14,10,'2023','사회탐구1',50),(15,10,'2023','사회탐구2',50),(16,1,'2024','언어',88),(17,2,'2024','언어',81),(18,3,'2024','언어',80),(19,4,'2024','언어',90),(20,5,'2024','언어',88),(21,6,'2024','언어',82),(22,7,'2024','언어',83),(23,8,'2024','언어',82),(24,9,'2024','언어',88),(25,10,'2024','언어',86),(26,11,'2024','언어',85),(27,12,'2024','언어',89),(28,13,'2024','언어',80),(29,14,'2024','언어',84),(30,15,'2024','언어',89),(31,16,'2024','언어',83),(32,17,'2024','언어',87),(33,18,'2024','언어',88),(34,19,'2024','언어',88),(35,20,'2024','언어',86),(36,21,'2024','언어',86),(37,22,'2024','언어',84),(38,23,'2024','언어',89),(39,24,'2024','언어',82),(47,1,'2024','영어',86),(48,2,'2024','영어',82),(49,3,'2024','영어',82),(50,4,'2024','영어',83),(51,5,'2024','영어',80),(52,6,'2024','영어',81),(53,7,'2024','영어',87),(54,8,'2024','영어',90),(55,9,'2024','영어',89),(56,10,'2024','영어',84),(57,11,'2024','영어',84),(58,12,'2024','영어',86),(59,13,'2024','영어',89),(60,14,'2024','영어',89),(61,15,'2024','영어',88),(62,16,'2024','영어',84),(63,17,'2024','영어',83),(64,18,'2024','영어',84),(65,19,'2024','영어',89),(66,20,'2024','영어',84),(67,21,'2024','영어',85),(68,22,'2024','영어',83),(69,23,'2024','영어',87),(70,24,'2024','영어',88),(78,1,'2024','수학',81),(79,2,'2024','수학',87),(80,3,'2024','수학',85),(81,4,'2024','수학',83),(82,5,'2024','수학',81),(83,6,'2024','수학',84),(84,7,'2024','수학',87),(85,8,'2024','수학',84),(86,9,'2024','수학',88),(87,10,'2024','수학',87),(88,11,'2024','수학',81),(89,12,'2024','수학',84),(90,13,'2024','수학',86),(91,14,'2024','수학',90),(92,15,'2024','수학',80),(93,16,'2024','수학',82),(94,17,'2024','수학',80),(95,18,'2024','수학',86),(96,19,'2024','수학',87),(97,20,'2024','수학',86),(98,21,'2024','수학',82),(99,22,'2024','수학',90),(100,23,'2024','수학',84),(101,24,'2024','수학',83),(109,1,'2024','사회탐구1',89),(110,2,'2024','사회탐구1',88),(111,3,'2024','사회탐구1',83),(112,4,'2024','사회탐구1',89),(113,5,'2024','사회탐구1',87),(114,6,'2024','사회탐구1',86),(115,7,'2024','사회탐구1',83),(116,8,'2024','사회탐구1',83),(117,9,'2024','사회탐구1',88),(118,10,'2024','사회탐구1',82),(119,11,'2024','사회탐구1',84),(120,12,'2024','사회탐구1',85),(121,13,'2024','사회탐구1',81),(122,14,'2024','사회탐구1',82),(123,15,'2024','사회탐구1',88),(124,16,'2024','사회탐구1',85),(125,17,'2024','사회탐구1',88),(126,18,'2024','사회탐구1',88),(127,19,'2024','사회탐구1',83),(128,20,'2024','사회탐구1',83),(129,21,'2024','사회탐구1',84),(130,22,'2024','사회탐구1',83),(131,23,'2024','사회탐구1',84),(132,24,'2024','사회탐구1',81),(140,1,'2024','사회탐구2',81),(141,2,'2024','사회탐구2',81),(142,3,'2024','사회탐구2',84),(143,4,'2024','사회탐구2',88),(144,5,'2024','사회탐구2',87),(145,6,'2024','사회탐구2',89),(146,7,'2024','사회탐구2',85),(147,8,'2024','사회탐구2',90),(148,9,'2024','사회탐구2',83),(149,10,'2024','사회탐구2',87),(150,11,'2024','사회탐구2',86),(151,12,'2024','사회탐구2',87),(152,13,'2024','사회탐구2',89),(153,14,'2024','사회탐구2',85),(154,15,'2024','사회탐구2',86),(155,16,'2024','사회탐구2',87),(156,17,'2024','사회탐구2',85),(157,18,'2024','사회탐구2',83),(158,19,'2024','사회탐구2',90),(159,20,'2024','사회탐구2',82),(160,21,'2024','사회탐구2',88),(161,22,'2024','사회탐구2',86),(162,23,'2024','사회탐구2',87),(163,24,'2024','사회탐구2',86);
/*!40000 ALTER TABLE `tb_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_student_info`
--

DROP TABLE IF EXISTS `tb_student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_student_info` (
  `student_id` int NOT NULL AUTO_INCREMENT COMMENT '학생_id',
  `student_name` varchar(20) DEFAULT NULL COMMENT '학생이름',
  `student_graduate_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '졸업여부',
  `school_id` int NOT NULL COMMENT '학교_id',
  PRIMARY KEY (`student_id`),
  KEY `fk_student_school_idx` (`school_id`),
  CONSTRAINT `fk_student_school` FOREIGN KEY (`school_id`) REFERENCES `tb_school_info` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_student_info`
--

LOCK TABLES `tb_student_info` WRITE;
/*!40000 ALTER TABLE `tb_student_info` DISABLE KEYS */;
INSERT INTO `tb_student_info` VALUES (1,'홍기훈','Y',1),(2,'심신','Y',1),(3,'김수아','N',1),(4,'박건하','N',1),(5,'설동호','Y',2),(6,'황인호','Y',2),(7,'정문호','N',2),(8,'김보문','N',2),(9,'김문고','N',2),(10,'김영희','Y',3),(11,'김소녀','Y',3),(12,'한소희','Y',3),(13,'신혜영','N',3),(14,'김지연','N',3),(15,'김소영','N',3),(16,'강훈식','Y',4),(17,'김명섭','Y',4),(18,'박성준','Y',4),(19,'백봉기','N',4),(20,'조성호','N',4),(21,'김동현','N',5),(22,'김종필','Y',5),(23,'김혁','N',5),(24,'이상민','Y',5);
/*!40000 ALTER TABLE `tb_student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-18 18:36:08
