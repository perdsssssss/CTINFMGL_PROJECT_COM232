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
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat` (
  `Seat_ID` varchar(10) NOT NULL,
  `Flight_ID` varchar(7) NOT NULL,
  `Seat_Number` varchar(7) NOT NULL,
  `Seat_Class` enum('First Class','Business Class','Economy Class') NOT NULL,
  PRIMARY KEY (`Seat_ID`),
  UNIQUE KEY `Seat_Number` (`Seat_Number`),
  KEY `Flight_ID` (`Flight_ID`),
  CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`Flight_ID`) REFERENCES `flight` (`flight_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES ('AAS-001','AAF-001','E97HG','Economy Class'),('AAS-002','AAF-001','E24WN','Economy Class'),('AAS-003','AAF-001','E06VY','Economy Class'),('AAS-004','AAF-001','E82OI','Economy Class'),('AAS-005','AAF-001','E17HX','Economy Class'),('AAS-006','AAF-001','E62ST','Economy Class'),('AAS-007','AAF-001','E87TF','Economy Class'),('AAS-008','AAF-001','E71PX','Economy Class'),('AAS-009','AAF-001','E21SZ','Economy Class'),('AAS-010','AAF-001','E17UM','Economy Class'),('AAS-011','AAF-002','B82VQ','Business Class'),('AAS-012','AAF-002','B51MX','Business Class'),('AAS-013','AAF-002','B32YS','Business Class'),('AAS-014','AAF-002','B32FB','Business Class'),('AAS-015','AAF-002','B92FJ','Business Class'),('AAS-016','AAF-002','B86MW','Business Class'),('AAS-017','AAF-002','B80TH','Business Class'),('AAS-018','AAF-002','B68FZ','Business Class'),('AAS-019','AAF-002','B22UF','Business Class'),('AAS-020','AAF-002','B34GH','Business Class'),('AAS-021','AAF-003','F04US','First Class'),('AAS-022','AAF-003','F80GV','First Class'),('AAS-023','AAF-003','F14YF','First Class'),('AAS-024','AAF-003','F54WT','First Class'),('AAS-025','AAF-003','F53OH','First Class'),('AAS-026','AAF-003','F27FG','First Class'),('AAS-027','AAF-003','F00IR','First Class'),('AAS-028','AAF-003','F45AQ','First Class'),('AAS-029','AAF-003','F51ZK','First Class'),('AAS-030','AAF-003','F43XG','First Class'),('AAS-031','AAF-004','E81TK','Economy Class'),('AAS-032','AAF-004','E94VH','Economy Class'),('AAS-033','AAF-004','E53VM','Economy Class'),('AAS-034','AAF-004','E06PS','Economy Class'),('AAS-035','AAF-004','E96KE','Economy Class'),('AAS-036','AAF-004','E88IZ','Economy Class'),('AAS-037','AAF-004','E78JO','Economy Class'),('AAS-038','AAF-004','E48WY','Economy Class'),('AAS-039','AAF-004','E33GE','Economy Class'),('AAS-040','AAF-004','E46NF','Economy Class'),('AAS-041','AAF-005','B24JA','Business Class'),('AAS-042','AAF-005','B14EM','Business Class'),('AAS-043','AAF-005','B24WN','Business Class'),('AAS-044','AAF-005','B02RI','Business Class'),('AAS-045','AAF-005','B64VE','Business Class'),('AAS-046','AAF-005','B41BB','Business Class'),('AAS-047','AAF-005','B34UY','Business Class'),('AAS-048','AAF-005','B75UR','Business Class'),('AAS-049','AAF-005','B99NR','Business Class'),('AAS-050','AAF-005','B92GN','Business Class'),('AAS-051','AAF-006','B83JI','Business Class'),('AAS-052','AAF-006','B71CH','Business Class'),('AAS-053','AAF-006','B29HQ','Business Class'),('AAS-054','AAF-006','B56FL','Business Class'),('AAS-055','AAF-006','B21FL','Business Class'),('AAS-056','AAF-006','B60JB','Business Class'),('AAS-057','AAF-006','B61FC','Business Class'),('AAS-058','AAF-006','B53VO','Business Class'),('AAS-059','AAF-006','B06OR','Business Class'),('AAS-060','AAF-006','B94IT','Business Class'),('AAS-061','AAF-007','F30WJ','First Class'),('AAS-062','AAF-007','F24CT','First Class'),('AAS-063','AAF-007','F54WS','First Class'),('AAS-064','AAF-007','F22AM','First Class'),('AAS-065','AAF-007','F76OM','First Class'),('AAS-066','AAF-007','F37QD','First Class'),('AAS-067','AAF-007','F82OH','First Class'),('AAS-068','AAF-007','F23UH','First Class'),('AAS-069','AAF-007','F94IT','First Class'),('AAS-070','AAF-007','F25DY','First Class'),('AAS-071','AAF-008','E11OM','Economy Class'),('AAS-072','AAF-008','E66XN','Economy Class'),('AAS-073','AAF-008','E23UI','Economy Class'),('AAS-074','AAF-008','E40HF','Economy Class'),('AAS-075','AAF-008','E57AH','Economy Class'),('AAS-076','AAF-008','E89DX','Economy Class'),('AAS-077','AAF-008','E99OU','Economy Class'),('AAS-078','AAF-008','E55KL','Economy Class'),('AAS-079','AAF-008','E02KZ','Economy Class'),('AAS-080','AAF-008','E69TR','Economy Class'),('AAS-081','AAF-009','B66MI','Business Class'),('AAS-082','AAF-009','B73LA','Business Class'),('AAS-083','AAF-009','B90LK','Business Class'),('AAS-084','AAF-009','B57TB','Business Class'),('AAS-085','AAF-009','B39NJ','Business Class'),('AAS-086','AAF-009','B51GR','Business Class'),('AAS-087','AAF-009','B61RM','Business Class'),('AAS-088','AAF-009','B76OM','Business Class'),('AAS-089','AAF-009','B22TD','Business Class'),('AAS-090','AAF-009','B07DL','Business Class'),('AAS-091','AAF-010','F06VZ','First Class'),('AAS-092','AAF-010','F62SQ','First Class'),('AAS-093','AAF-010','F15ZJ','First Class'),('AAS-094','AAF-010','F15SD','First Class'),('AAS-095','AAF-010','F55RQ','First Class'),('AAS-096','AAF-010','F54DY','First Class'),('AAS-097','AAF-010','F30PB','First Class'),('AAS-098','AAF-010','F12PP','First Class'),('AAS-099','AAF-010','F97EA','First Class'),('AAS-100','AAF-010','F71DL','First Class'),('AAS-101','AAF-011','E94PC','Economy Class'),('AAS-102','AAF-011','E70OP','Economy Class'),('AAS-103','AAF-011','E90YX','Economy Class'),('AAS-104','AAF-011','E68ZU','Economy Class'),('AAS-105','AAF-011','E93BK','Economy Class'),('AAS-106','AAF-011','E87HT','Economy Class'),('AAS-107','AAF-011','E80GU','Economy Class'),('AAS-108','AAF-011','E65JT','Economy Class'),('AAS-109','AAF-011','E10ZR','Economy Class'),('AAS-110','AAF-011','E78XE','Economy Class'),('AAS-111','AAF-012','B62ZY','Business Class'),('AAS-112','AAF-012','B12CE','Business Class'),('AAS-113','AAF-012','B01QB','Business Class'),('AAS-114','AAF-012','B92TA','Business Class'),('AAS-115','AAF-012','B84XB','Business Class'),('AAS-116','AAF-012','B70HJ','Business Class'),('AAS-117','AAF-012','B20RV','Business Class'),('AAS-118','AAF-012','B17OE','Business Class'),('AAS-119','AAF-012','B48QQ','Business Class'),('AAS-120','AAF-012','B14LS','Business Class');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
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
