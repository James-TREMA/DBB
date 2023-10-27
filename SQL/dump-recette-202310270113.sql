-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recette
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
-- Table structure for table `aliment`
--

DROP TABLE IF EXISTS `aliment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aliment` (
  `id_aliment` int(11) NOT NULL AUTO_INCREMENT,
  `nom_aliment` varchar(255) DEFAULT NULL,
  `poids_moyen_aliment` float DEFAULT NULL,
  `calories_aliment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_aliment`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aliment`
--

LOCK TABLES `aliment` WRITE;
/*!40000 ALTER TABLE `aliment` DISABLE KEYS */;
INSERT INTO `aliment` VALUES (1,'Tomate',0.1,18),(2,'Oignon',0.15,40),(3,'Ail',0.005,5),(4,'Carotte',0.06,41),(5,'Pomme de terre',0.15,77),(6,'Poulet',0.2,335),(7,'Boeuf',0.25,250),(8,'Porc',0.2,242),(9,'Riz',0.2,130),(10,'Blé',0.03,340),(11,'Avoine',0.03,389),(12,'Orge',0.03,354),(13,'Maïs',0.3,365),(14,'Seigle',0.03,335),(15,'Millet',0.02,378),(16,'Sorgho',0.03,329),(17,'Quinoa',0.02,368),(18,'Amarante',0.02,371),(19,'Poisson',0.2,206),(20,'Crevette',0.02,85),(21,'Moule',0.03,172),(22,'Crabe',0.1,128),(23,'Homard',0.4,129),(24,'Huile d\'olive',0.01,884),(25,'Beurre',0.01,717),(26,'Sel',0.005,0),(27,'Poivre',0.005,251),(28,'Sucre',0.005,387),(29,'Lait',0.25,42),(30,'Oeuf',0.05,68);
/*!40000 ALTER TABLE `aliment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cereales`
--

DROP TABLE IF EXISTS `cereales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cereales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `couleur` varchar(255) DEFAULT NULL,
  `poids_moyen` float DEFAULT NULL,
  `calories` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cereales`
--

LOCK TABLES `cereales` WRITE;
/*!40000 ALTER TABLE `cereales` DISABLE KEYS */;
INSERT INTO `cereales` VALUES (1,'Blé','Brun',0.03,340),(2,'Avoine','Brun clair',0.03,389),(3,'Orge','Brun',0.03,354),(4,'Maïs','Jaune',0.3,365),(5,'Riz','Blanc',0.02,130),(6,'Seigle','Brun foncé',0.03,335),(7,'Millet','Jaune',0.02,378),(8,'Sorgho','Rouge',0.03,329),(9,'Quinoa','Blanc',0.02,368),(10,'Amarante','Rouge',0.02,371),(11,'Soja','Beige',0.2,446);
/*!40000 ALTER TABLE `cereales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `est_composé_de`
--

DROP TABLE IF EXISTS `est_composé_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `est_composé_de` (
  `id_recette` int(11) NOT NULL,
  `id_aliment` int(11) NOT NULL,
  `quantite_est_composé_de` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_recette`,`id_aliment`),
  KEY `FK_est_composé_de_id_aliment` (`id_aliment`),
  CONSTRAINT `FK_est_composé_de_id_aliment` FOREIGN KEY (`id_aliment`) REFERENCES `aliment` (`id_aliment`),
  CONSTRAINT `FK_est_composé_de_id_recette` FOREIGN KEY (`id_recette`) REFERENCES `recette` (`id_recette`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `est_composé_de`
--

LOCK TABLES `est_composé_de` WRITE;
/*!40000 ALTER TABLE `est_composé_de` DISABLE KEYS */;
INSERT INTO `est_composé_de` VALUES (4,7,300),(5,9,10);
/*!40000 ALTER TABLE `est_composé_de` ENABLE KEYS */;
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
-- Table structure for table `produits_laitiers`
--

DROP TABLE IF EXISTS `produits_laitiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produits_laitiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits_laitiers`
--

LOCK TABLES `produits_laitiers` WRITE;
/*!40000 ALTER TABLE `produits_laitiers` DISABLE KEYS */;
INSERT INTO `produits_laitiers` VALUES (1,'Fromage'),(2,'Oeuf');
/*!40000 ALTER TABLE `produits_laitiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette`
--

DROP TABLE IF EXISTS `recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recette` (
  `id_recette` int(11) NOT NULL AUTO_INCREMENT,
  `name_recette` varchar(255) DEFAULT NULL,
  `description_recette` text DEFAULT NULL,
  PRIMARY KEY (`id_recette`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette`
--

LOCK TABLES `recette` WRITE;
/*!40000 ALTER TABLE `recette` DISABLE KEYS */;
INSERT INTO `recette` VALUES (1,'Spaghetti Bolognaise','Un plat italien classique avec des spaghetti et une sauce tomate à la viande.'),(2,'Poulet au Curry','Un plat épicé et aromatique à base de morceaux de poulet tendres et d\'un mélange d\'épices.'),(3,'Sauté de Légumes','Un plat rapide et sain à base d\'un mélange de légumes colorés sautés dans une sauce savoureuse.'),(4,'Ragoût de Boeuf','Un plat réconfortant à base de morceaux de boeuf cuits lentement dans une sauce riche avec des légumes.'),(5,'Paella aux Fruits de Mer','Un plat traditionnel espagnol à base de riz avec une variété de fruits de mer, du safran et des légumes.');
/*!40000 ALTER TABLE `recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recettes`
--

DROP TABLE IF EXISTS `recettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recettes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `fruit_id` int(11) DEFAULT NULL,
  `legume_id` int(11) DEFAULT NULL,
  `cereale_id` int(11) DEFAULT NULL,
  `produits_laitiers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fruit_id` (`fruit_id`),
  KEY `legume_id` (`legume_id`),
  KEY `cereale_id` (`cereale_id`),
  KEY `produits_laitiers_id` (`produits_laitiers_id`),
  CONSTRAINT `recettes_ibfk_1` FOREIGN KEY (`fruit_id`) REFERENCES `fruits` (`id`),
  CONSTRAINT `recettes_ibfk_2` FOREIGN KEY (`legume_id`) REFERENCES `legumes` (`id`),
  CONSTRAINT `recettes_ibfk_3` FOREIGN KEY (`cereale_id`) REFERENCES `cereales` (`id`),
  CONSTRAINT `recettes_ibfk_4` FOREIGN KEY (`produits_laitiers_id`) REFERENCES `produits_laitiers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recettes`
--

LOCK TABLES `recettes` WRITE;
/*!40000 ALTER TABLE `recettes` DISABLE KEYS */;
INSERT INTO `recettes` VALUES (1,'Salade de fruits',1,NULL,NULL,NULL),(2,'Ragout de légumes',NULL,3,NULL,NULL),(3,'Omelette au fromage',NULL,NULL,NULL,1),(4,'Salade de fruits',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `recettes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'recette'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27  1:14:01
