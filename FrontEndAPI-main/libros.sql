CREATE DATABASE  IF NOT EXISTS `libros` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `libros`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: libros
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
-- Table structure for table `autors`
--

DROP TABLE IF EXISTS `autors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autors`
--

LOCK TABLES `autors` WRITE;
/*!40000 ALTER TABLE `autors` DISABLE KEYS */;
INSERT INTO `autors` VALUES (1,'Gabriel García Márquez','2024-08-03 09:28:10','2024-08-03 09:28:10'),(2,'Isabel Allende','2024-08-03 09:28:10','2024-08-03 09:28:10'),(3,'Jorge Luis Borges','2024-08-03 09:28:10','2024-08-03 09:28:10'),(4,'Mario Vargas Llosa','2024-08-03 09:28:10','2024-08-03 09:28:10'),(5,'Julio Cortázar','2024-08-03 09:28:10','2024-08-03 09:28:10'),(6,'Carlos Fuentes','2024-08-03 09:28:10','2024-08-03 09:28:10'),(7,'Laura Esquivel','2024-08-03 09:28:10','2024-08-03 09:28:10'),(8,'Pablo Neruda','2024-08-03 09:28:10','2024-08-03 09:28:10'),(9,'Octavio Paz','2024-08-03 09:28:10','2024-08-03 09:28:10'),(10,'Gabriela Mistral','2024-08-03 09:28:10','2024-08-03 09:28:10');
/*!40000 ALTER TABLE `autors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Emmanuel Jesus','Ramirez Martinez',23,'shark-0107@gmail.com','Lion2001','2024-08-02 20:59:15','2024-08-02 20:59:15'),(3,'Pedro Francis','Pereira Canseco',32,'fran.isco@hotmail.com','Zeus2001','2024-08-03 10:51:51','2024-08-03 15:01:08'),(4,'Jorge','Perez',45,'george.bluth@reqres.ind','*Emmanuel2001','2024-08-03 23:53:39','2024-08-03 23:54:15');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aniopublicacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contraportada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISBN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `autor_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_autor_id` (`autor_id`),
  CONSTRAINT `fk_autor_id` FOREIGN KEY (`autor_id`) REFERENCES `autors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'Cien Años de Soledad','Realismo Mágico','1967',NULL,NULL,'978-3-16-148410-0','2024-08-03 09:46:09','2024-08-03 09:46:09',1),(2,'El Otoño del Patriarca','Realismo Mágico','1975',NULL,NULL,'978-3-16-148410-1','2024-08-03 09:46:09','2024-08-03 09:46:09',1),(3,'Crónica de una Muerte Anunciada','Realismo Mágico','1981',NULL,NULL,'978-3-16-148410-2','2024-08-03 09:46:09','2024-08-03 09:46:09',1),(4,'El Amor en los Tiempos del Cólera','Realismo Mágico','1985',NULL,NULL,'978-3-16-148410-3','2024-08-03 09:46:09','2024-08-03 09:46:09',1),(5,'El General en su Laberinto','Realismo Mágico','1989',NULL,NULL,'978-3-16-148410-4','2024-08-03 09:46:09','2024-08-03 09:46:09',1),(6,'La Casa de los Espíritus','Realismo Mágico','1982',NULL,NULL,'978-3-16-148410-5','2024-08-03 09:46:09','2024-08-03 09:46:09',2),(7,'De Amor y de Sombra','Ficción','1984',NULL,NULL,'978-3-16-148410-6','2024-08-03 09:46:09','2024-08-03 09:46:09',2),(8,'Eva Luna','Ficción','1987',NULL,NULL,'978-3-16-148410-7','2024-08-03 09:46:09','2024-08-03 09:46:09',2),(9,'Cuentos de Eva Luna','Ficción','1989',NULL,NULL,'978-3-16-148410-8','2024-08-03 09:46:09','2024-08-03 09:46:09',2),(10,'El Plan Infinito','Ficción','1991',NULL,NULL,'978-3-16-148410-9','2024-08-03 09:46:09','2024-08-03 09:46:09',2),(11,'Ficciones','Fantasía','1944',NULL,NULL,'978-3-16-148411-0','2024-08-03 09:46:09','2024-08-03 09:46:09',3),(12,'El Aleph','Fantasía','1949',NULL,NULL,'978-3-16-148411-1','2024-08-03 09:46:09','2024-08-03 09:46:09',3),(13,'Historia Universal de la Infamia','Fantasía','1935',NULL,NULL,'978-3-16-148411-2','2024-08-03 09:46:09','2024-08-03 09:46:09',3),(14,'El Libro de Arena','Fantasía','1975',NULL,NULL,'978-3-16-148411-3','2024-08-03 09:46:09','2024-08-03 09:46:09',3),(15,'Inquisiciones','Ensayo','1925',NULL,NULL,'978-3-16-148411-4','2024-08-03 09:46:09','2024-08-03 09:46:09',3),(16,'La Ciudad y los Perros','Ficción','1963',NULL,NULL,'978-3-16-148411-5','2024-08-03 09:46:09','2024-08-03 09:46:09',4),(17,'La Casa Verde','Ficción','1966',NULL,NULL,'978-3-16-148411-6','2024-08-03 09:46:09','2024-08-03 09:46:09',4),(18,'Conversación en La Catedral','Ficción','1969',NULL,NULL,'978-3-16-148411-7','2024-08-03 09:46:09','2024-08-03 09:46:09',4),(19,'Pantaleón y las Visitadoras','Ficción','1973',NULL,NULL,'978-3-16-148411-8','2024-08-03 09:46:09','2024-08-03 09:46:09',4),(20,'La Guerra del Fin del Mundo','Ficción','1981',NULL,NULL,'978-3-16-148411-9','2024-08-03 09:46:09','2024-08-03 09:46:09',4),(21,'Rayuela','Ficción','1963',NULL,NULL,'978-3-16-148412-0','2024-08-03 09:46:09','2024-08-03 09:46:09',5),(22,'Bestiario','Ficción','1951',NULL,NULL,'978-3-16-148412-1','2024-08-03 09:46:09','2024-08-03 09:46:09',5),(23,'Final del Juego','Ficción','1956',NULL,NULL,'978-3-16-148412-2','2024-08-03 09:46:09','2024-08-03 09:46:09',5),(24,'Las Armas Secretas','Ficción','1959',NULL,NULL,'978-3-16-148412-3','2024-08-03 09:46:09','2024-08-03 09:46:09',5),(25,'62 Modelo para Armar','Ficción','1968',NULL,NULL,'978-3-16-148412-4','2024-08-03 09:46:09','2024-08-03 09:46:09',5),(26,'La Muerte de Artemio Cruz','Ficción','1962',NULL,NULL,'978-3-16-148412-5','2024-08-03 09:46:09','2024-08-03 09:46:09',6),(27,'Aura','Ficción','1962',NULL,NULL,'978-3-16-148412-6','2024-08-03 09:46:09','2024-08-03 09:46:09',6),(28,'Terra Nostra','Ficción','1975',NULL,NULL,'978-3-16-148412-7','2024-08-03 09:46:09','2024-08-03 09:46:09',6),(29,'Gringo Viejo','Ficción','1985',NULL,NULL,'978-3-16-148412-8','2024-08-03 09:46:09','2024-08-03 09:46:09',6),(30,'Cristóbal Nonato','Ficción','1987',NULL,NULL,'978-3-16-148412-9','2024-08-03 09:46:09','2024-08-03 09:46:09',6),(31,'Como Agua para Chocolate','Romance','1989',NULL,NULL,'978-3-16-148413-0','2024-08-03 09:46:09','2024-08-03 09:46:09',7),(32,'La Ley del Amor','Romance','1995',NULL,NULL,'978-3-16-148413-1','2024-08-03 09:46:09','2024-08-03 09:46:09',7),(33,'Tan Veloz como el Deseo','Romance','2001',NULL,NULL,'978-3-16-148413-2','2024-08-03 09:46:09','2024-08-03 09:46:09',7),(34,'Malinche','Ficción Histórica','2006',NULL,NULL,'978-3-16-148413-3','2024-08-03 09:46:09','2024-08-03 09:46:09',7),(35,'El Diario de Tita','Romance','2016',NULL,NULL,'978-3-16-148413-4','2024-08-03 09:46:09','2024-08-03 09:46:09',7),(36,'Veinte Poemas de Amor y una Canción Desesperada','Poesía','1924',NULL,NULL,'978-3-16-148413-5','2024-08-03 09:46:09','2024-08-03 09:46:09',8),(37,'Residencia en la Tierra','Poesía','1933',NULL,NULL,'978-3-16-148413-6','2024-08-03 09:46:09','2024-08-03 09:46:09',8),(38,'Canto General','Poesía','1950',NULL,NULL,'978-3-16-148413-7','2024-08-03 09:46:09','2024-08-03 09:46:09',8),(39,'Los Versos del Capitán','Poesía','1952',NULL,NULL,'978-3-16-148413-8','2024-08-03 09:46:09','2024-08-03 09:46:09',8),(40,'Memorial de Isla Negra','Poesía','1964',NULL,NULL,'978-3-16-148413-9','2024-08-03 09:46:09','2024-08-03 09:46:09',8),(41,'El Laberinto de la Soledad','Ensayo','1950',NULL,NULL,'978-3-16-148414-0','2024-08-03 09:46:09','2024-08-03 09:46:09',9),(42,'Piedra de Sol','Poesía','1957',NULL,NULL,'978-3-16-148414-1','2024-08-03 09:46:09','2024-08-03 09:46:09',9),(43,'Libertad bajo Palabra','Poesía','1960',NULL,NULL,'978-3-16-148414-2','2024-08-03 09:46:09','2024-08-03 09:46:09',9),(44,'Ladera Este','Poesía','1969',NULL,NULL,'978-3-16-148414-3','2024-08-03 09:46:09','2024-08-03 09:46:09',9),(45,'Vislumbres de la India','Ensayo','1995',NULL,NULL,'978-3-16-148414-4','2024-08-03 09:46:09','2024-08-03 09:46:09',9),(46,'Desolación','Poesía','1922',NULL,NULL,'978-3-16-148414-5','2024-08-03 09:46:09','2024-08-03 09:46:09',10),(47,'Ternura','Poesía','1924',NULL,NULL,'978-3-16-148414-6','2024-08-03 09:46:09','2024-08-03 09:46:09',10),(48,'Lagar','Poesía','1954',NULL,NULL,'978-3-16-148414-7','2024-08-03 09:46:09','2024-08-03 09:46:09',10),(49,'Poema de Chile','Poesía','1967',NULL,NULL,'978-3-16-148414-8','2024-08-03 09:46:09','2024-08-03 09:46:09',10),(50,'Recados contando a Chile','Prosa','1957',NULL,NULL,'978-3-16-148414-9','2024-08-03 09:46:09','2024-08-03 09:46:09',10);
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_07_26_133959_create_clientes_table',1),(6,'2023_07_26_173826_create_libros_table',1),(7,'2023_07_26_175927_create_autors_table',1),(8,'2024_08_03_091021_add_autor_id_to_libros_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 12:01:11
