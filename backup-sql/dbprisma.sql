CREATE DATABASE  IF NOT EXISTS `dbprisma` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbprisma`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: dbprisma
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('0509e303-bb6b-4678-8681-806d27c20587','0c5b9368308b77ace819bffdb1adc7c69f5ea2dfd8658aaad18bf06346a2dcfb','2022-08-26 23:41:12.205','20220826234112_init',NULL,NULL,'2022-08-26 23:41:12.160',1),('08631fad-54ae-43f5-bc3f-6aef511e5d5c','973406167e84525479a2f9055225c9a1a82d6a854d30e4f8ca9889c09e284fc4','2022-08-27 00:08:41.264','20220827000841_init',NULL,NULL,'2022-08-27 00:08:41.208',1),('112db542-4d30-4a74-8b22-a49699739ceb','8a779aacc3dbb848ef2c48fbadd7dd2daa7836d3a6e1622315d71f1a987741b2','2022-08-26 23:43:54.937','20220826234354_teste',NULL,NULL,'2022-08-26 23:43:54.891',1),('44eaca67-ed96-4d82-9243-640c9ab16021','2b415b0e6e457c16bb20af76dca761df12ad0dbd052d868b39e7677b4039a77d','2022-08-26 23:34:44.244','20220826233444_init',NULL,NULL,'2022-08-26 23:34:44.212',1),('7b7299d8-e7c9-4cda-bb23-3b93401e83e2','9d6bd40f9b824d053cb31eec6b466e9136ba804070f108e971a90831430dbda1','2022-08-27 00:24:25.161','20220827002425_init',NULL,NULL,'2022-08-27 00:24:25.115',1),('a51d8c90-cce7-4d60-aa8d-9114ffda0cae','f33d59ce1264f4dc62deac1350fa3368844015a2a407dd7251277fa0cbbdaa85','2022-08-26 23:57:13.776','20220826235713_init',NULL,NULL,'2022-08-26 23:57:13.690',1),('b8bb6e9e-f8e7-4b52-8485-2acad9f3406e','47e32c3ec1ab3a699f9a2571347975e0d34bd726ab41ba87986dd87331814d23','2022-08-26 23:48:18.518','20220826234818_teste',NULL,NULL,'2022-08-26 23:48:18.480',1),('c2fd17cd-1c5b-4b56-add9-512295446357','0c0de5ae964b5096315e9e7cf14ed782b0c60fc5068997f3bd59b2398e8404a4','2022-08-27 00:23:13.293','20220827002313_init',NULL,NULL,'2022-08-27 00:23:13.236',1),('d2c533f5-4dd5-4e7a-a1ba-5020652f6483','87b1eb2e4c0e1b6e0963786e1354d473f3be3220f392dab81c909af11f523011','2022-08-27 00:23:59.069','20220827002359_init',NULL,NULL,'2022-08-27 00:23:59.055',1),('e0a28629-67cf-42d5-bf69-03209cd4a122','526aab1966ad44f8a9ca830b0b02c780995c835e73083ca5cfcd63517614c107','2022-08-27 00:20:53.272','20220827002053_init',NULL,NULL,'2022-08-27 00:20:53.206',1),('f828ef91-621e-48be-a59a-71666d3b3ee2','3113c0f0fe4eb757f3aabc14b4be61153910c788efbadbcd321a7e981d6c034f','2022-08-27 00:13:57.291','20220827001357_init',NULL,NULL,'2022-08-27 00:13:57.251',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcidade`
--

DROP TABLE IF EXISTS `tblcidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idEstado` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblcidade_id_key` (`id`),
  KEY `tblcidade_idEstado_fkey` (`idEstado`),
  CONSTRAINT `tblcidade_idEstado_fkey` FOREIGN KEY (`idEstado`) REFERENCES `tblestado` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcidade`
--

LOCK TABLES `tblcidade` WRITE;
/*!40000 ALTER TABLE `tblcidade` DISABLE KEYS */;
INSERT INTO `tblcidade` VALUES (1,'Jandira',1),(2,'Carapicuiba',1),(3,'Valinhos',2),(4,'Osasco',3);
/*!40000 ALTER TABLE `tblcidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestado`
--

DROP TABLE IF EXISTS `tblestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblestado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblestado_id_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestado`
--

LOCK TABLES `tblestado` WRITE;
/*!40000 ALTER TABLE `tblestado` DISABLE KEYS */;
INSERT INTO `tblestado` VALUES (1,'São Paulo','SP'),(2,'Rio de Janeiro','RJ'),(3,'Belo Horizonte','BH'),(4,'Recife','RE');
/*!40000 ALTER TABLE `tblestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgenero`
--

DROP TABLE IF EXISTS `tblgenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgenero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblgenero_id_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgenero`
--

LOCK TABLES `tblgenero` WRITE;
/*!40000 ALTER TABLE `tblgenero` DISABLE KEYS */;
INSERT INTO `tblgenero` VALUES (1,'Masculino','M'),(2,'Masculino','M'),(3,'Feminino','F'),(4,'Outro','O');
/*!40000 ALTER TABLE `tblgenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  `idGenero` int NOT NULL,
  `idCidade` int NOT NULL,
  `biografia` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblusuario_id_key` (`id`),
  KEY `tblusuario_idGenero_fkey` (`idGenero`),
  KEY `tblusuario_idCidade_fkey` (`idCidade`),
  CONSTRAINT `tblusuario_idCidade_fkey` FOREIGN KEY (`idCidade`) REFERENCES `tblcidade` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `tblusuario_idGenero_fkey` FOREIGN KEY (`idGenero`) REFERENCES `tblgenero` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario`
--

LOCK TABLES `tblusuario` WRITE;
/*!40000 ALTER TABLE `tblusuario` DISABLE KEYS */;
INSERT INTO `tblusuario` VALUES (1,'maria@gmail.com','123','Maria','2000-08-01',3,1,'Me chamo Maria');
/*!40000 ALTER TABLE `tblusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbprisma'
--

--
-- Dumping routines for database 'dbprisma'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 22:47:44
