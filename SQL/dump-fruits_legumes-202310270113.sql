-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fruits_legumes
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.4-MariaDB-1~deb12u1

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
-- Table structure for table `aliments`
--

DROP TABLE IF EXISTS `aliments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aliments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `poids_moyen` float NOT NULL,
  `calories` int(11) NOT NULL,
  `couleur` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `aliments_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_d_aliment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aliments`
--

LOCK TABLES `aliments` WRITE;
/*!40000 ALTER TABLE `aliments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aliments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couleur`
--

DROP TABLE IF EXISTS `couleur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couleur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `hexadecimal_rvb` char(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couleur`
--

LOCK TABLES `couleur` WRITE;
/*!40000 ALTER TABLE `couleur` DISABLE KEYS */;
INSERT INTO `couleur` VALUES (1,'rouge','#FF0000'),(2,'Noir','#000000'),(3,'blanc','#FFFFFF'),(4,'Rouge','#FF0000'),(5,'Citron vert','#00FF00'),(6,'Bleu','#0000FF'),(7,'Jaune','#FFFF00'),(8,'Cyan / Aqua','#00FFFF'),(9,'Magenta / Fuchsia','#FF00FF'),(10,'argent','#C0C0C0'),(11,'gris','#808080'),(12,'Bordeaux','#800000'),(13,'olive','#808000'),(14,'vert','#008000'),(15,'Violet','#800080'),(16,'Sarcelle','#008080'),(17,'Marine','#000080');
/*!40000 ALTER TABLE `couleur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fruits`
--

DROP TABLE IF EXISTS `fruits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fruits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `couleur` varchar(255) DEFAULT NULL,
  `poids_moyen` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fruits`
--

LOCK TABLES `fruits` WRITE;
/*!40000 ALTER TABLE `fruits` DISABLE KEYS */;
INSERT INTO `fruits` VALUES (1,'Pomme','Rouge',0.1,52),(2,'Banane','Jaune',0.15,89),(3,'Orange','Orange',0.2,47),(4,'Fraise','Rouge',0.02,33),(5,'Abricot','Orange',0.05,48),(6,'Ananas','Marron',1,50),(7,'Avocat','Vert',0.2,160),(8,'Cassis','Noir',0.01,63),(9,'Cerise','Rouge',0.01,50),(10,'Citron','Jaune',0.15,29),(11,'Clémentine','Orange',0.08,47),(12,'Coing','Jaune',0.3,57),(13,'Datte','Marron',0.02,282),(14,'Figue','Violet',0.05,74),(15,'Framboise','Rouge',0.01,53),(16,'Grenade','Rouge',0.2,83),(17,'Groseille','Rouge',0.01,56),(18,'Kiwi','Marron',0.07,61),(19,'Litchi','Rose',0.02,66),(20,'Mandarine','Orange',0.08,53),(21,'Mangue','Orange',0.3,60),(22,'Melon','Vert',1,34),(23,'Mirabelle','Jaune',0.02,67),(24,'Mûre','Noir',0.01,43),(25,'Myrtille','Bleu',0.01,57),(26,'Nectarine','Orange',0.1,44),(27,'Noix de coco','Marron',1,354),(28,'Olive','Vert',0.02,115),(29,'Pamplemousse','Jaune',0.3,42),(30,'Papaye','Orange',1,43),(31,'Pastèque','Vert',2,30),(32,'Pêche','Orange',0.15,39),(33,'Poire','Vert',0.2,57),(34,'Pomelo','Jaune',0.25,38),(35,'Prune','Violet',0.04,46),(36,'Raisin','Violet',0.02,NULL);
/*!40000 ALTER TABLE `fruits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legumes`
--

DROP TABLE IF EXISTS `legumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `couleur` varchar(255) DEFAULT NULL,
  `poids_moyen` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legumes`
--

LOCK TABLES `legumes` WRITE;
/*!40000 ALTER TABLE `legumes` DISABLE KEYS */;
INSERT INTO `legumes` VALUES (1,'Carotte','Orange',0.1,41),(2,'Brocoli','Vert',0.3,34),(3,'Pomme de terre','Marron',0.2,NULL),(4,'Tomate','Rouge',0.15,NULL),(5,'Artichaut','Vert',0.5,47),(6,'Asperge','Vert',0.1,20),(7,'Aubergine','Violet',0.2,25),(8,'Betterave','Rouge',0.3,43),(9,'Blette','Vert',0.3,19),(10,'Brocoli','Vert',0.3,34),(11,'Carotte','Orange',0.1,41),(12,'Céleri','Vert',0.4,16),(13,'Champignon','Marron',0.05,22),(14,'Chou-fleur','Blanc',1,25),(15,'Chou de Bruxelles','Vert',0.02,43),(16,'Concombre','Vert',0.2,15),(17,'Courgette','Vert',0.3,17),(18,'Échalote','Marron',0.05,72),(19,'Endive','Blanc',0.2,17),(20,'Épinard','Vert',0.2,23),(21,'Fenouil','Vert',0.4,31),(22,'Haricot vert','Vert',0.05,31),(23,'Laitue','Vert',0.3,15),(24,'Maïs','Jaune',1,86),(25,'Navet','Blanc',0.2,28),(26,'Oignon','Marron',0.1,40),(27,'Panais','Blanc',0.3,75),(28,'Petit pois','Vert',0.01,81),(29,'Poireau','Vert',0.3,NULL),(30,'Poivron','Rouge',0.2,NULL),(31,'Pomme de terre','Marron',0.2,NULL),(32,'Potiron','Orange',2,NULL),(33,'Radis','Rouge',0.02,NULL),(34,'Tomate','Rouge',0.15,NULL);
/*!40000 ALTER TABLE `legumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_d_aliment`
--

DROP TABLE IF EXISTS `type_d_aliment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_d_aliment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_d_aliment`
--

LOCK TABLES `type_d_aliment` WRITE;
/*!40000 ALTER TABLE `type_d_aliment` DISABLE KEYS */;
INSERT INTO `type_d_aliment` VALUES (1,'fruit');
/*!40000 ALTER TABLE `type_d_aliment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'fruits_legumes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27  1:13:31
