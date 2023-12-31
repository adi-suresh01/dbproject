-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bank2
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `trans_id` double NOT NULL,
  `trans_date` date DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `ssn` varchar(11) DEFAULT NULL,
  `from_acc` varchar(255) DEFAULT NULL,
  `to_acc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trans_id`),
  KEY `ssn` (`ssn`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `client` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (240089,'2023-04-20',179,'withdraw','505-56-2364','6203-3310-4916-8856','6754-8951-4801-0709'),(282406,'2023-05-03',526,'deposit','512-38-6950','6824-8918-5711-2417','2064-4883-9583-6966'),(600076,'2023-02-27',691,'withdraw','740-53-1660','2246-4988-9559-2182','2567-1969-6383-1153'),(642046,'2023-05-20',972,'deposit','538-64-3169','2123-6058-5595-5560','6731-3603-8765-2287'),(645152,'2023-07-24',855,'deposit','421-06-0674','6414-0383-6939-2100','2959-9910-4977-4927'),(755732,'2023-04-17',201,'deposit','261-12-1948','6314-2668-9487-0709','9653-0867-5987-5276'),(773976,'2023-09-24',520,'withdraw','370-51-5387','1369-8067-8282-0015','4587-1978-4321-5911'),(792965,'2023-02-11',852,'withdraw','513-20-8841','7030-6529-0894-2203','2980-7353-8080-3778'),(849839,'2023-04-07',706,'deposit','885-10-9066','8774-8269-4081-6323','2772-3190-1509-7764'),(884493,'2023-03-28',227,'withdraw','864-17-2878','8917-6720-3179-2909','9187-2605-2905-6853');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-06 15:24:41
