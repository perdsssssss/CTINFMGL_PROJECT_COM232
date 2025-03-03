-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flight_id` varchar(7) NOT NULL,
  `id` varchar(7) NOT NULL,
  `departure_location` varchar(50) NOT NULL,
  `arrival_location` varchar(50) NOT NULL,
  `departure_time` varchar(50) NOT NULL,
  `arrival_time` varchar(50) NOT NULL,
  `departure_date` date NOT NULL,
  `roundtrip` enum('Yes','No') DEFAULT 'No',
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`flight_id`),
  KEY `id` (`id`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES ('AAF-001','AAP-012','Manila - MNL','Puerto Princesa - PPS','08:00 PM','09:20 PM','2025-03-05','Yes','2025-03-30'),('AAF-002','AAP-012','Manila - MNL','Singapore - SIN','8:00 PM','11:45 PM','2025-03-03','Yes','2025-03-18'),('AAF-003','AAP-012','Manila - MNL','Boracay - BCY','1:00 PM','2:00 PM','2025-03-03','Yes','2025-03-22'),('AAF-004','AAP-012','Manila - MNL','Bohol - BHL','7:00 AM','8:30 AM','2025-03-03','Yes','2025-03-23'),('AAF-005','AAP-012','Manila - MNL','Davao - DVO','1:00 PM','3:00 PM','2025-03-08','Yes','2025-04-05'),('AAF-006','AAP-012','Manila - MNL','Tokyo - NRT','7:00 AM','11:30 AM','2025-03-12','No',NULL),('AAF-007','AAP-012','Manila - MNL','Zurich - ZRH','7:00 AM','9:00 PM','2025-03-27','No',NULL),('AAF-008','AAP-012','Manila - MNL','Seoul - ICN','7:00 AM','11:00 AM','2025-03-27','Yes','2025-04-05'),('AAF-009','AAP-012','Manila - MNL','Tokyo - NRT','1:00 PM','5:30 PM','2025-03-27','No',NULL),('AAF-010','AAP-012','Manila - MNL','Bohol - BHL','7:00 AM','8:30 AM','2025-03-04','No',NULL),('AAF-011','AAP-012','Manila - MNL','Singapore - SIN','7:00 AM','10:45 AM','2025-03-03','No',NULL),('AAF-012','AAP-012','Manila - MNL','Dubai - DXB','7:00 AM','4:30 PM','2025-03-20','No',NULL);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 23:12:20
