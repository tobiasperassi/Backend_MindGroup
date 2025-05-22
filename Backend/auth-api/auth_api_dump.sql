-- MySQL dump 10.13  Distrib 9.3.0, for Linux (x86_64)
--
-- Host: localhost    Database: auth_db
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `artigos`
--

DROP TABLE IF EXISTS `artigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `autor_id` int NOT NULL,
  `data_criacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `data_atualizacao` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `autor_id` (`autor_id`),
  CONSTRAINT `artigos_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigos`
--

LOCK TABLES `artigos` WRITE;
/*!40000 ALTER TABLE `artigos` DISABLE KEYS */;
INSERT INTO `artigos` VALUES (5,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvi','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, ege','https://static.vecteezy.com/ti/fotos-gratis/t1/11216135-programacao-de-linguagem-de-computador-codigo-javascript-componentes-do-editor-de-texto-da-internet-na-tela-de-exibicao-gratis-foto.jpg',5,'2025-05-21 20:49:26','2025-05-22 14:49:39'),(11,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://miro.medium.com/v2/resize:fit:1358/1*moJeTvW97yShLB7URRj5Kg.png',2,'2025-05-22 14:31:17','2025-05-22 14:31:17'),(12,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://img.freepik.com/fotos-gratis/homem-tiro-medio-usando-oculos-vr_23-2149126949.jpg?semt=ais_hybrid&w=740',2,'2025-05-22 14:45:08','2025-05-22 14:45:08'),(13,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTMS7_dT_aiYwXpG_-zc87lBMAiNPkuiK0ioUGb2Mct-sL2REPE',2,'2025-05-22 14:46:08','2025-05-22 14:46:08'),(14,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://miro.medium.com/v2/resize:fit:1358/1*moJeTvW97yShLB7URRj5Kg.png',2,'2025-05-22 14:46:17','2025-05-22 14:46:17'),(15,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://img.freepik.com/fotos-gratis/homem-tiro-medio-usando-oculos-vr_23-2149126949.jpg?semt=ais_hybrid&w=740',2,'2025-05-22 14:46:26','2025-05-22 14:46:26'),(16,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTMS7_dT_aiYwXpG_-zc87lBMAiNPkuiK0ioUGb2Mct-sL2REPE',2,'2025-05-22 14:46:37','2025-05-22 14:46:37'),(17,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://miro.medium.com/v2/resize:fit:1358/1*moJeTvW97yShLB7URRj5Kg.png',2,'2025-05-22 14:46:47','2025-05-22 14:46:47'),(18,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://img.freepik.com/fotos-gratis/homem-tiro-medio-usando-oculos-vr_23-2149126949.jpg?semt=ais_hybrid&w=740',2,'2025-05-22 14:46:55','2025-05-22 14:46:55'),(19,'Dominando TypeScript: Por que a Tipagem Estática Está Transformando o Desenvolvimento JavaScript','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sodales leo nisi, at scelerisque metus pharetra sed. Nulla eu efficitur dolor. Integer sit amet dui ornare, tempor risus a, vestibulum purus. Morbi lacus magna, molestie varius elit a, dignissim volutpat dui. Nam sit amet sem condimentum, hendrerit tortor nec, ultricies eros. Curabitur eget sodales odio, non tempor ex. Vestibulum id fringilla est. Praesent id urna nisi. Phasellus ac odio eros. Vestibulum dictum erat nibh, vel placerat est condimentum vel. Phasellus malesuada, leo et commodo hendrerit, nisi tortor tincidunt ipsum, ut tincidunt enim sapien vel neque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eu auctor felis.\n\nProin vitae malesuada mauris. Morbi quis ex ligula. Aenean consectetur mauris non iaculis porta. Nunc ultrices, mauris tincidunt pulvinar scelerisque, dolor est condimentum metus, ut interdum est nisl ut ante. Cras rhoncus lacus eu finibus convallis. Ut varius lacus eros, eget suscipit odio aliquet nec. Nam sem eros, ornare ac erat eu, pharetra finibus ex. Donec in massa vitae lectus blandit posuere. Cras ut risus id metus mattis dictum.','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTMS7_dT_aiYwXpG_-zc87lBMAiNPkuiK0ioUGb2Mct-sL2REPE',2,'2025-05-22 14:47:02','2025-05-22 14:47:02');
/*!40000 ALTER TABLE `artigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,1747832325132,'AddNomeESobrenomeToUser1747832325132'),(2,1747848037083,'CreateArtigosTable1747848037083');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_e12875dfb3b1d92d7d7c5377e2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'usuario@test.com','$2b$10$mzVwN/AtQL7iJ1UbN6jy7uEuKGGMTVzC/GRHxFR2IvAwsQM7nQ6U.',NULL,NULL),(2,'tobiasperassi@gmail.com','$2b$10$zCKEVmBnUK1zk5FLRFgE/.qJNoHPwEpY.jTSGGmU6ijcxYATClLkO','Tobias','Perassi'),(3,'edu@gmail.com','$2b$10$kWw0KG.GnKe08MfgHOwu8uQ3b87R62ZfuBEo4QZJkPmESBzk8FW3G',NULL,NULL),(4,'luciano@gmail.com','$2b$10$tQP5uNqUaf40hT1ydsCbV.SVfIGM1CNt4H.AFjKqt8wRvG.XVNZcm','João','Paulo'),(5,'giovana@gmail.com','$2b$10$HFWyaJhFrwHZQGCgFANQAeg.EIiYsV2XBffxXyxW.m0H6IbjA9UF2','Giovana','Rafaela'),(6,'giovanarafaela@gmail.com','$2b$10$X5DGWbcK.T9gY/3V13EKceukSb4zr2a0uPSN/wfjCluvKjyOAd3d.','Giovana','Silva');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-22 17:57:48
