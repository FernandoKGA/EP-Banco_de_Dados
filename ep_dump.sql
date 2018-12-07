-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: ep_banco_de_dados
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ep_banco_de_dados`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ep_banco_de_dados` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ep_banco_de_dados`;

--
-- Table structure for table `atores`
--

DROP TABLE IF EXISTS `atores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atores` (
  `id_atores` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `ano_nascimento` year(4) NOT NULL,
  `genero` enum('MASC','FEM') NOT NULL,
  PRIMARY KEY (`id_atores`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atores`
--

LOCK TABLES `atores` WRITE;
/*!40000 ALTER TABLE `atores` DISABLE KEYS */;
INSERT INTO `atores` VALUES (1,'Brad Pitt',1963,'MASC'),(2,'Daniel Bruhl',1978,'MASC'),(3,'Mélanie Laurent',1983,'FEM'),(4,'Daniel Day-Lewis',1957,'MASC'),(5,'Joseph Gordon-Levitt',1981,'MASC'),(6,'Wagner Moura',1976,'MASC'),(7,'Maria Ribeiro',1975,'FEM'),(8,'Ellen Burstyn',1932,'FEM'),(9,'Jared Leto',1971,'MASC'),(10,'Miyu Irino',1988,'MASC'),(11,'Saori Hayami',1991,'FEM'),(12,'Tom Hanks',1956,'MASC'),(13,'Michael Clarke Duncan',1957,'MASC'),(14,'Uma Thurman',1970,'FEM'),(15,'David Carradine',1936,'MASC'),(16,'Stephen Chow',1962,'MASC');
/*!40000 ALTER TABLE `atores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao` (
  `id_avaliacao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_avaliacao` date NOT NULL,
  `id_avaliadores_orgaos_imprensa` int(10) unsigned NOT NULL,
  `id_orgaos_imprensa_avaliadores` int(10) unsigned NOT NULL,
  `filme_id_filme` int(10) unsigned NOT NULL,
  `resultado_original` varchar(20) NOT NULL,
  `resultado_normalizado` decimal(4,2) unsigned NOT NULL,
  PRIMARY KEY (`id_avaliacao`,`id_avaliadores_orgaos_imprensa`,`id_orgaos_imprensa_avaliadores`),
  KEY `fk_avaliacao_avaliadores_has_orgaos_imprensa1_idx` (`id_avaliadores_orgaos_imprensa`,`id_orgaos_imprensa_avaliadores`),
  KEY `fk_avaliacao_filme1_idx` (`filme_id_filme`),
  CONSTRAINT `fk_avaliacao_avaliadores_has_orgaos_imprensa1` FOREIGN KEY (`id_avaliadores_orgaos_imprensa`, `id_orgaos_imprensa_avaliadores`) REFERENCES `avaliadores_has_orgaos_imprensa` (`id_avaliadores`, `id_orgaos_imprensa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_filme1` FOREIGN KEY (`filme_id_filme`) REFERENCES `filme` (`id_filme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,'2003-05-04',1,1,5,'2 Estrelas',4.00),(2,'2010-12-20',2,1,2,'5 Estrelas',10.00),(3,'2016-10-17',3,2,6,'70%',7.00),(4,'2018-01-10',3,2,9,'62%',6.20),(5,'2019-01-10',3,2,9,'62%',6.20),(6,'2019-01-12',3,2,8,'70%',7.00),(7,'2019-01-13',3,2,1,'80%',8.00),(8,'2019-03-11',3,2,4,'80%',7.50);
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliadores`
--

DROP TABLE IF EXISTS `avaliadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliadores` (
  `id_avaliadores` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  PRIMARY KEY (`id_avaliadores`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliadores`
--

LOCK TABLES `avaliadores` WRITE;
/*!40000 ALTER TABLE `avaliadores` DISABLE KEYS */;
INSERT INTO `avaliadores` VALUES (4,'Andrew Sarris'),(6,'Geoffrey O\' Brien'),(2,'Jonathan Rosenbaum'),(3,'Peter Rainer'),(5,'Rick Groen'),(1,'Todd McCarthy');
/*!40000 ALTER TABLE `avaliadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliadores_has_orgaos_imprensa`
--

DROP TABLE IF EXISTS `avaliadores_has_orgaos_imprensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliadores_has_orgaos_imprensa` (
  `id_avaliadores` int(10) unsigned NOT NULL,
  `id_orgaos_imprensa` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_avaliadores`,`id_orgaos_imprensa`),
  KEY `fk_avaliadores_has_orgaos_imprensa_orgaos_imprensa1_idx` (`id_orgaos_imprensa`),
  KEY `fk_avaliadores_has_orgaos_imprensa_avaliadores1_idx` (`id_avaliadores`),
  CONSTRAINT `fk_avaliadores_has_orgaos_imprensa_avaliadores1` FOREIGN KEY (`id_avaliadores`) REFERENCES `avaliadores` (`id_avaliadores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliadores_has_orgaos_imprensa_orgaos_imprensa1` FOREIGN KEY (`id_orgaos_imprensa`) REFERENCES `orgaos_imprensa` (`id_orgaos_imprensa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliadores_has_orgaos_imprensa`
--

LOCK TABLES `avaliadores_has_orgaos_imprensa` WRITE;
/*!40000 ALTER TABLE `avaliadores_has_orgaos_imprensa` DISABLE KEYS */;
INSERT INTO `avaliadores_has_orgaos_imprensa` VALUES (1,1),(2,1),(3,2),(1,3);
/*!40000 ALTER TABLE `avaliadores_has_orgaos_imprensa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diretor`
--

DROP TABLE IF EXISTS `diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diretor` (
  `id_diretor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `ano_nascimento` year(4) NOT NULL,
  `genero` enum('MASC','FEM') NOT NULL,
  PRIMARY KEY (`id_diretor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diretor`
--

LOCK TABLES `diretor` WRITE;
/*!40000 ALTER TABLE `diretor` DISABLE KEYS */;
INSERT INTO `diretor` VALUES (1,'Steven Spielberg',1946,'MASC'),(2,'Quentin Tarantino',1963,'MASC'),(3,'Francis Ford Coppola',1939,'MASC'),(4,'Tim Burton',1958,'MASC'),(5,'James Cameron',1954,'MASC'),(6,'Sofia Coppola',1971,'FEM'),(7,'Woody Allen',1935,'MASC'),(8,'Oliver Stone',1946,'MASC'),(9,'José Padilha',1967,'MASC'),(10,'Darren Aronofsky',1969,'MASC'),(11,'Naoko Yamada',1984,'FEM'),(12,'Frank Darabont',1959,'MASC'),(13,'Stephen Chow',1962,'MASC');
/*!40000 ALTER TABLE `diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elenco`
--

DROP TABLE IF EXISTS `elenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elenco` (
  `filme_id_filme` int(10) unsigned NOT NULL,
  `atores_id_atores` int(10) unsigned NOT NULL,
  `papel` varchar(60) NOT NULL,
  PRIMARY KEY (`filme_id_filme`,`atores_id_atores`),
  KEY `fk_filme_has_atores_atores1_idx` (`atores_id_atores`),
  KEY `fk_filme_has_atores_filme1_idx` (`filme_id_filme`),
  CONSTRAINT `fk_filme_has_atores_atores1` FOREIGN KEY (`atores_id_atores`) REFERENCES `atores` (`id_atores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_has_atores_filme1` FOREIGN KEY (`filme_id_filme`) REFERENCES `filme` (`id_filme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elenco`
--

LOCK TABLES `elenco` WRITE;
/*!40000 ALTER TABLE `elenco` DISABLE KEYS */;
INSERT INTO `elenco` VALUES (1,1,'Tenente Aldo Raine'),(1,2,'Fredrick Zoller'),(1,3,'Shosanna Dreyfus / Emmanuelle Mimieux '),(2,4,'Abraham Lincoln'),(2,5,'Robert Todd Lincoln'),(3,5,'Edward Snowden'),(4,6,'Capitão Nascimento'),(4,7,'Rosane'),(5,8,'Sara Goldfarb'),(5,9,'Harry Goldfarb'),(6,10,'Shoya Ishida'),(6,11,'Shoko Nishimiya'),(7,12,'Paul Edgecomb'),(7,13,'John Coffey'),(8,14,'Beatrix Kiddo'),(8,15,'Bill'),(9,14,'Beatrix Kiddo'),(9,15,'Bill'),(10,16,'Sing');
/*!40000 ALTER TABLE `elenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme` (
  `id_filme` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(60) NOT NULL,
  `duracao` time NOT NULL,
  `data_de_lancamento` date NOT NULL,
  `genero_filme_fk` int(10) unsigned NOT NULL,
  `idioma_fk` int(10) unsigned NOT NULL,
  `pais_fk` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_filme`),
  KEY `fk_filme_genero_filme1_idx` (`genero_filme_fk`),
  KEY `fk_filme_idioma1_idx` (`idioma_fk`),
  KEY `fk_filme_pais1_idx` (`pais_fk`),
  CONSTRAINT `fk_filme_genero_filme1` FOREIGN KEY (`genero_filme_fk`) REFERENCES `genero_filme` (`id_genero_filme`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_idioma1` FOREIGN KEY (`idioma_fk`) REFERENCES `idioma` (`id_idioma`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_pais1` FOREIGN KEY (`pais_fk`) REFERENCES `pais` (`id_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'Bastardos Inglórios','02:33:00','2009-05-20',5,2,1),(2,'Lincoln','02:30:00','2012-10-08',1,2,1),(3,'Snowden','02:14:00','2016-09-09',1,2,1),(4,'Tropa de Elite','01:58:00','2007-10-12',8,1,2),(5,'Réquiem para um Sonho','01:42:00','2000-05-14',1,2,11),(6,'Koe no Katachi','02:10:00','2016-09-17',11,8,6),(7,'À Espera de um Milagre','03:09:00','1999-12-10',1,2,1),(8,'Kill Bill: Volume 1','01:51:00','2003-10-24',5,2,1),(9,'Kill Bill: Volume 2','02:16:00','2004-04-16',5,2,1),(10,'Kung-Fusão','01:35:00','2004-09-14',2,6,4);
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_has_diretor`
--

DROP TABLE IF EXISTS `filme_has_diretor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filme_has_diretor` (
  `filme_id_filme` int(10) unsigned NOT NULL,
  `diretor_id_diretor` int(10) unsigned NOT NULL,
  PRIMARY KEY (`filme_id_filme`,`diretor_id_diretor`),
  KEY `fk_filme_has_diretor_diretor1_idx` (`diretor_id_diretor`),
  KEY `fk_filme_has_diretor_filme1_idx` (`filme_id_filme`),
  CONSTRAINT `fk_filme_has_diretor_diretor1` FOREIGN KEY (`diretor_id_diretor`) REFERENCES `diretor` (`id_diretor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_has_diretor_filme1` FOREIGN KEY (`filme_id_filme`) REFERENCES `filme` (`id_filme`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_has_diretor`
--

LOCK TABLES `filme_has_diretor` WRITE;
/*!40000 ALTER TABLE `filme_has_diretor` DISABLE KEYS */;
INSERT INTO `filme_has_diretor` VALUES (1,1),(2,1),(1,2),(4,2),(8,2),(9,2),(1,3),(3,8),(4,9),(5,10),(6,11),(7,12),(10,13);
/*!40000 ALTER TABLE `filme_has_diretor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_de_avaliacao`
--

DROP TABLE IF EXISTS `formas_de_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_de_avaliacao` (
  `idformas_de_avaliacao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_orgaos_imprensa` int(10) unsigned NOT NULL,
  `tipo_de_avaliacao` enum('ESTRELAS','QUALITATIVO','NOTA','PORCENTAGEM') NOT NULL,
  PRIMARY KEY (`idformas_de_avaliacao`,`id_orgaos_imprensa`),
  KEY `fk_formas_de_avaliacao_orgaos_imprensa1_idx` (`id_orgaos_imprensa`),
  CONSTRAINT `fk_formas_de_avaliacao_orgaos_imprensa1` FOREIGN KEY (`id_orgaos_imprensa`) REFERENCES `orgaos_imprensa` (`id_orgaos_imprensa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_de_avaliacao`
--

LOCK TABLES `formas_de_avaliacao` WRITE;
/*!40000 ALTER TABLE `formas_de_avaliacao` DISABLE KEYS */;
INSERT INTO `formas_de_avaliacao` VALUES (1,1,'ESTRELAS'),(2,2,'PORCENTAGEM'),(3,3,'NOTA');
/*!40000 ALTER TABLE `formas_de_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_filme`
--

DROP TABLE IF EXISTS `genero_filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero_filme` (
  `id_genero_filme` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id_genero_filme`),
  UNIQUE KEY `nome_UNIQUE` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_filme`
--

LOCK TABLES `genero_filme` WRITE;
/*!40000 ALTER TABLE `genero_filme` DISABLE KEYS */;
INSERT INTO `genero_filme` VALUES (5,'Ação'),(11,'Animação'),(4,'Aventura'),(2,'Comédia'),(1,'Drama'),(6,'Ficção'),(7,'Ficção-Científica'),(8,'Policial'),(3,'Romance'),(10,'Suspense'),(9,'Terror');
/*!40000 ALTER TABLE `genero_filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idioma` (
  `id_idioma` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_idioma` varchar(45) NOT NULL,
  PRIMARY KEY (`id_idioma`),
  UNIQUE KEY `nome_idioma_UNIQUE` (`nome_idioma`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (3,'Alemão'),(5,'Espanhol'),(4,'Francês'),(2,'Inglês'),(8,'Japonês'),(6,'Mandarim'),(10,'Polonês'),(1,'Português-Brasil'),(7,'Português-Portugal'),(9,'Russo');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgaos_imprensa`
--

DROP TABLE IF EXISTS `orgaos_imprensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgaos_imprensa` (
  `id_orgaos_imprensa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_orgao` varchar(60) NOT NULL,
  PRIMARY KEY (`id_orgaos_imprensa`),
  UNIQUE KEY `nome_orgao_UNIQUE` (`nome_orgao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgaos_imprensa`
--

LOCK TABLES `orgaos_imprensa` WRITE;
/*!40000 ALTER TABLE `orgaos_imprensa` DISABLE KEYS */;
INSERT INTO `orgaos_imprensa` VALUES (1,'IMDB'),(3,'Metacritic'),(2,'Rotten Tomatoes');
/*!40000 ALTER TABLE `orgaos_imprensa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id_pais` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_pais` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pais`),
  UNIQUE KEY `nome_pais_UNIQUE` (`nome_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (2,'BR'),(4,'CH'),(7,'ESP'),(11,'FR'),(9,'GER'),(6,'JP'),(8,'POL'),(3,'PT'),(5,'RS'),(10,'UK'),(1,'USA');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-07  0:58:26
