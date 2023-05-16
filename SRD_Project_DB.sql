CREATE DATABASE  IF NOT EXISTS `gamestore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gamestore`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: gamestore
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `ID_Card` int NOT NULL AUTO_INCREMENT,
  `Titular_Name` varchar(50) NOT NULL,
  `Date_Expiration` datetime NOT NULL,
  `Card_Number` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Card`),
  UNIQUE KEY `ID_Card_UNIQUE` (`ID_Card`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,'Jeffrey Anderson','2026-01-01 00:00:00','4008-2072-3198-7277'),(2,'Sumaya Bennett','2026-01-11 00:00:00','4167-5152-1937-0168'),(3,'April Sherman','2026-02-28 00:00:00','4051-7683-8985-7147'),(4,'Sufyan Shaw','2026-02-27 00:00:00','4285-7874-7396-9772'),(5,'Aidan Jarvis','2026-02-26 00:00:00','4738-0770-8162-6367'),(6,'Hafsah James','2026-02-24 00:00:00','4650-8674-7791-1397'),(7,'Janet Vazquez','2026-02-23 00:00:00','4017-5911-3546-4908'),(8,'Amber Sampson','2026-02-25 00:00:00','4843-3933-8540-4399'),(9,'Lorenzo Pierce','2026-02-22 00:00:00','4104-0714-3846-8298'),(10,'Milan Tran','2026-02-21 00:00:00','4087-9289-8223-2290'),(11,'Jade Williams','2026-02-20 00:00:00','4346-4204-3095-5166'),(12,'Polly Tate','2026-02-19 00:00:00','4098-6320-7458-4215'),(13,'Levi Mendez','2026-02-18 00:00:00','4773-2079-3591-8837'),(14,'Ruairi Bradford','2026-02-16 00:00:00','4191-7534-7039-8830'),(15,'Aadam Campbell','2026-02-17 00:00:00','4972-0020-4570-7082'),(16,'Bryony Luna','2026-02-15 00:00:00','4729-2260-0952-4003'),(17,'Abbie Lawson','2026-02-14 00:00:00','4367-9124-9695-0242'),(18,'Jesse Dominguez','2026-02-13 00:00:00','4172-2560-5982-7057'),(19,'Abi Marks','2026-02-12 00:00:00','4162-2951-3018-3934'),(20,'Nana Aguirre','2026-02-11 00:00:00','4454-8717-0366-5833'),(21,'Tahlia Patrick','2026-02-10 00:00:00','4346-4204-3095-5166'),(22,'Archibald Gates','2026-02-09 00:00:00','4098-6320-7458-4215'),(23,'Tamara Rose','2026-02-08 00:00:00','4773-2079-3591-8837'),(24,'Alexis Perkins','2026-02-07 00:00:00','4191-7534-7039-8830'),(25,'Harun Doyle','2026-02-06 00:00:00','4972-0020-4570-7082'),(26,'Zeeshan Bishop','2026-02-05 00:00:00','4729-2260-0952-4003'),(27,'Shaun Peck','2026-02-04 00:00:00','4367-9124-9695-0242'),(28,'Mariya Oconnell','2026-02-03 00:00:00','4172-2560-5982-7057'),(29,'Kate Cook','2026-02-02 00:00:00','4162-2951-3018-3934'),(30,'Haider Newton','2026-01-30 00:00:00','4454-8717-0366-5833'),(31,'Imran Yoder','2026-01-31 00:00:00','4376-5046-5904-0157'),(32,'Amirah Gutierrez','2026-02-01 00:00:00','4447-1951-5327-0666'),(33,'Fintan Valencia','2026-01-29 00:00:00','4531-5169-2502-0955'),(34,'Kristen Ward','2026-01-28 00:00:00','4186-6456-9975-4958'),(35,'Zakariya Chan','2026-01-27 00:00:00','4074-9778-4541-0382'),(36,'Pauline Garrison','2026-01-26 00:00:00','4968-1501-7424-3381'),(37,'Rocco Lyons','2026-01-25 00:00:00','4282-4588-9402-6120'),(38,'Izabella Larson','2026-01-24 00:00:00','4383-4904-9893-4019'),(39,'Umair Myers','2026-01-23 00:00:00','4011-0435-8187-1018'),(40,'Jada Mcmillan','2026-01-22 00:00:00','4614-4942-6748-1195'),(41,'Romeo Gamble','2026-01-21 00:00:00','4912-6024-1629-9958'),(42,'Robbie Quinn','2026-01-20 00:00:00','4000-1871-5357-4618'),(43,'Joseph Ross','2026-01-19 00:00:00','4479-4388-1234-8650'),(44,'Daisy Lewis','2026-01-18 00:00:00','4763-6389-1467-4250'),(45,'Marcel Yates','2026-01-17 00:00:00','4728-2402-1329-3181'),(46,'Daniyal Brandt','2026-01-16 00:00:00','4787-7469-1603-7004'),(47,'Kasey Sloan','2026-01-15 00:00:00','4244-3171-1582-0173'),(48,'Lauren Mclean','2026-01-14 00:00:00','4318-9209-4854-3481'),(49,'Kaylee Crane','2026-01-13 00:00:00','4739-9462-7145-1910'),(50,'Hugh Krueger','2026-01-12 00:00:00','4329-0260-4187-0370');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID_Category` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_Category`),
  UNIQUE KEY `ID_Category_UNIQUE` (`ID_Category`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'SandBox'),(2,'Real-Time strategy (RTS)'),(3,'Shooters (FPS and TPS)'),(4,'Multiplayer online battle arena (MOBA)'),(5,'Role-Playing (RPG, ARPG)'),(6,'Simulation'),(7,'Sports'),(8,'Puzzlers'),(9,'Party games'),(10,'Action-adventure'),(11,'Survival'),(12,'Horror'),(13,'Platformer');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `ID_Company` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(35) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(65) NOT NULL,
  `ZipCode` varchar(15) NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_Company`),
  UNIQUE KEY `ID_Company_UNIQUE` (`ID_Company`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Nintendo','211129511','11â€šÃ„Ã¬1 Kamitoba Hokodatecho, Minami-ku, Kyoto','601-8116','Japan'),(2,'Valve Corporation','1-425-889-9642','10400 NE 4th St floor 14, Bellevue','WA 98004','United States'),(3,'Rockstar Games','1212-334-6633','622 Broadway, New York','NY 10012','United States'),(4,'Electronic Arts','1650-628-1500','209 Redwood Shores Parkway, Redwood City','CA 94065','United States'),(5,'Activision Blizzard','310-255-2000','2701 Olympic Blvd Bldg B Santa Monica','CA 90404','United States'),(6,'Sony Computer Entertainment','650655-8000','2207 Bridgepointe Pkwy San Mateo','CA 94404','United States'),(7,'Ubisoft','33148185000','126 Rue de Lagny','93100','France'),(8,'Sega Games Co. Ltd','813-5709-669','â‰ˆÃ¥ta-ku, Sannâ‰ˆÃ§, 2 Chomeâ€šÃ Ã­1â€šÃ Ã­5 ','143-0023','Japan'),(9,'BioWare','(780) 430-0164','4445 Calgary Trl NW Ste 200, Edmonton, Alberta','T6H 5R7','Canada'),(10,'Naughty Dog Inc','(310) 633-9100','2425 Olympic Blvd, Santa Monica','CA 90404','United States'),(11,'Square Enix Holdings Co. Ltd','81-3-5292-8092','SHINJUKU SHINJUKU EAST SIDE SQUARE SHINJUKU-KU, TOKYO','160-0022','Japan'),(12,'Capcom Company Ltd','212-238-3128','3-1-3, UCHIHIRANOMACHI, CHUO-KU OSAKA, OSAKA','540-0037','Japan'),(13,'Bungie Inc','+1 425-440-6800','550 106th Ave NE Bellevue','WA 98004','United States'),(14,'Microsoft Corporation','1-425-882-8080','One Microsoft Way, Redmond','WA 98052','United States'),(15,'Bandai Namco Entertainment','866325716796','23 Odyssey Irvine','CA 92618','United States'),(16,'Mojang','46850164225','Sâˆšâˆ‚der MâˆšÂ§larstrand 43','SE-118 25','Sweden'),(17,'Epic Games','608-271-9000','620 Crossroads Blvd, Cary','NC 27518','United States'),(18,'Game Freak','81334674387','Carrot Tower 22f 4 Setagaya-ku 1, Tokyo','1540004','Japan'),(19,'Insomniac Games Inc','(818) 729-2400 ','2255 N Ontario St, Burbank, California','CA 91504','United States'),(20,'Infinity Ward','(818) 386-0072','15821 Ventura Blvd, Ste 220, Encino','CA 91436','United States'),(21,'Take-Two Interactive Software Inc','(646) 536-2842','622 Broadway New York','NY 10012','United States'),(22,'Gameloft','33158162040','14 Rue Auber, Paris','75009','France'),(23,'ZeniMax Media Inc','(301) 926-8300','1370 Piccard Dr Ste 120, Rockville','MD 20850','United States'),(24,'NCSOFT','82221863300','509 Teheran-ro, Gangnam-gu Seoul, Seoul','6169','Republic of Korea'),(25,'Blizzard Entertainment Inc','(949) 955-1382','16215 Alton Parkway Irvine','CA 92618','United States'),(26,'Zynga','855-449-9642','699 Eighth Street San Francisco','CA 94103','United States'),(27,'Konami Holdings Corporations','81366360573','11-11-1 Ginza Chuo-ku Tokyo','104-0061','Japan'),(28,'Bethesda Game Studios','(301) 926-8300','1370 Piccard Dr, Rockville, Maryland','MD 20850','United States'),(29,'Rare','441827883400','Manor Park Watery Lane Twycross Atherstone','CV9 3QN','United Kingdom'),(30,'Retro Studios','(512) 493-4600','12345 N Lamar Blvd Ste 300, Austin, Texas','TS 78753','United States'),(31,'LucasArts','415-746-5000','5858 Lucas Valley Road Nicasio','CA 94946','United States'),(32,'Level-5 Company','(404) 761-0008','2018 Powers Ferry Rd SE Ste 750, Atlanta','GA 30339','United States'),(33,'Atari','33800814850','78 Rue Taitbout','75009','France'),(34,'Thatgamecompany LLC','(310) 453-4906','1332 N Sycamore Ave, Los Angeles','CA 90028','United States'),(35,'Beenox','(418) 522-2468','305 Charest Est Bureau 700, QuâˆšÂ©bec','G1K 3H3','Canada'),(36,'EA Maxis','(650) 628-1500','209 Redwood Shores Parkway. Redwood City','CA 94065','United States'),(37,'Polyphony Digital','650655-8000','Etchujima Yamatane Fukagawa Building No. 1 2F, Koto Ward','1350044','Japan'),(38,'PopCap Games','2062564200','2401 FOURTH AVENUE SUITE 810 SEATTLE ','WA 98121','United States'),(39,'Petroglyph Games','(702) 228-4040','1770 N Buffalo Dr Ste 101, Las Vegas','NA 89128','United States'),(40,'Relic','16507777600','188 Spear St #1000, San Francisco','CA 94105','United States');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `ID_Country` varchar(4) NOT NULL,
  `Country_Name` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_Country`),
  UNIQUE KEY `ID_Country_UNIQUE` (`ID_Country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AUS','Australia'),('FRA','France'),('PRT','Portugal'),('USA','United States'),('VEN','Venezuela');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID_Customer` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(10) NOT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `Age` int NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Phone` varchar(17) DEFAULT NULL,
  `ID_Location` int DEFAULT NULL,
  PRIMARY KEY (`ID_Customer`),
  UNIQUE KEY `ID_Customer_UNIQUE` (`ID_Customer`),
  KEY `fk_location_idx` (`ID_Location`),
  CONSTRAINT `fk_location` FOREIGN KEY (`ID_Location`) REFERENCES `location` (`ID_Location`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (4,'Jeffrey','Anderson',24,'Jeffrey.Anderson@gmail.com','+1 217-959-9985',1),(5,'Sumaya','Bennett',31,'Sumaya.Bennett@gmail.com','+1 326-530-3598',2),(6,'April','Sherman',22,'April.Sherman@gmail.com','+1 505-259-2458',3),(7,'Sufyan','Shaw',18,'Sufyan.Shaw@gmail.com','+1 505-644-7780',4),(8,'Aidan','Jarvis',26,'Aidan.Jarvis@gmail.com','+1 218-305-0850',5),(9,'Hafsah','James',21,'Hafsah.James@gmail.com','+1 505-385-8643',6),(10,'Janet','Vazquez',38,'Janet.Vazquez@gmail.com','+1 505-644-0734',7),(11,'Amber','Sampson',41,'Amber.Sampson@gmail.com','+1 304-410-3731',8),(12,'Lorenzo','Pierce',36,'Lorenzo.Pierce@gmail.com','+1 225-584-3085',9),(13,'Milan','Tran',22,'Milan.Tran@gmail.com','+1 505-535-8753',10),(14,'Jade','Williams',30,'Jade.Williams@gmail.com','351639230582',11),(15,'Polly','Tate',20,'Polly.Tate@gmail.com','351639290780',12),(16,'Levi','Mendez',34,'Levi.Mendez@gmail.com','351639294535',13),(17,'Ruairi','Bradford',23,'Ruairi.Bradford@gmail.com','351169385104',14),(18,'Aadam','Campbell',33,'Aadam.Campbell@gmail.com','351939709369',15),(19,'Bryony','Luna',32,'Bryony.Luna@gmail.com','351639233160',16),(20,'Abbie','Lawson',36,'Abbie.Lawson@gmail.com','351639294751',17),(21,'Jesse','Dominguez',40,'Jesse.Dominguez@gmail.com','351659292991',18),(22,'Abi','Marks',31,'Abi.Marks@gmail.com','351659230482',19),(23,'Nana','Aguirre',23,'Nana.Aguirre@gmail.com','351669230332',20),(24,'Tahlia','Patrick',19,'Tahlia.Patrick@gmail.com','+33 7 69 86 27 50',21),(25,'Archibald','Gates',37,'Archibald.Gates@gmail.com','+33 6 35 42 03 46',22),(26,'Tamara','Rose',18,'Tamara.Rose@gmail.com','+33 6 34 92 33 21',23),(27,'Alexis','Perkins',29,'Alexis.Perkins@gmail.com','+33 7 32 23 84 13',24),(28,'Harun','Doyle',21,'Harun.Doyle@gmail.com','+33 6 53 48 72 26',25),(29,'Zeeshan','Bishop',41,'Zeeshan.Bishop@gmail.com','+33 6 15 98 61 37',26),(30,'Shaun','Peck',29,'Shaun.Peck@gmail.com','+33 7 84 87 89 44',27),(31,'Mariya','Oconnell',43,'Mariya.Oconnell@gmail.com','+33 7 95 69 23 67',28),(32,'Kate','Cook',33,'Kate.Cook@gmail.com','+33 6 31 96 53 39',29),(33,'Haider','Newton',30,'Haider.Newton@gmail.com','+33 6 98 09 15 48',30),(34,'Imran','Yoder',24,'Imran.Yoder@gmail.com','61427561133',31),(35,'Amirah','Gutierrez',18,'Amirah.Gutierrez@gmail.com','61493437097',32),(36,'Fintan','Valencia',31,'Fintan.Valencia@gmail.com','61483313605',33),(37,'Kristen','Ward',33,'Kristen.Ward@gmail.com','61493084835',34),(38,'Zakariya','Chan',39,'Zakariya.Chan@gmail.com','61402753640',35),(39,'Pauline','Garrison',37,'Pauline.Garrison@gmail.com','61493673363',36),(40,'Rocco','Lyons',22,'Rocco.Lyons@gmail.com','61448971499',37),(41,'Izabella','Larson',35,'Izabella.Larson@gmail.com','61484836045',38),(42,'Umair','Myers',29,'Umair.Myers@gmail.com','61493366834',39),(43,'Jada','Mcmillan',37,'Jada.Mcmillan@gmail.com','61449811338',40),(44,'Romeo','Gamble',31,'Romeo.Gamble@gmail.com','+58 426-0140048',41),(45,'Robbie','Quinn',26,'Robbie.Quinn@gmail.com','+58 418-6759554',42),(46,'Joseph','Ross',25,'Joseph.Ross@gmail.com','+58 426-0152156',43),(47,'Daisy','Lewis',20,'Daisy.Lewis@gmail.com','+58 426-0815818',44),(48,'Marcel','Yates',33,'Marcel.Yates@gmail.com','+58 426-5898873',45),(49,'Daniyal','Brandt',34,'Daniyal.Brandt@gmail.com','+58 424-3598795',46),(50,'Kasey','Sloan',28,'Kasey.Sloan@gmail.com','+58 424-3625763',47),(51,'Lauren','Mclean',23,'Lauren.Mclean@gmail.com','+58 426-6103161',48),(52,'Kaylee','Crane',22,'Kaylee.Crane@gmail.com','+58 426-5910572',49),(53,'Hugh','Krueger',41,'Hugh.Krueger@gmail.com','+58 426-0152156',50);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `invoice_details_games`
--

DROP TABLE IF EXISTS `invoice_details_games`;
/*!50001 DROP VIEW IF EXISTS `invoice_details_games`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `invoice_details_games` AS SELECT 
 1 AS `Invoice Number`,
 1 AS `Name`,
 1 AS `Unit Cost`,
 1 AS `QTY/HR Rate`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `invoice_head_totals_games`
--

DROP TABLE IF EXISTS `invoice_head_totals_games`;
/*!50001 DROP VIEW IF EXISTS `invoice_head_totals_games`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `invoice_head_totals_games` AS SELECT 
 1 AS `Invoice Number`,
 1 AS `Date of Issue`,
 1 AS `Customer Name`,
 1 AS `Customer's Address`,
 1 AS `Company Name`,
 1 AS `City`,
 1 AS `Company_Street`,
 1 AS `Email`,
 1 AS `Subtotal`,
 1 AS `Discount`,
 1 AS `Tax Rate`,
 1 AS `Tax`,
 1 AS `Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `ID_Location` int NOT NULL AUTO_INCREMENT,
  `Street_Address` varchar(40) NOT NULL,
  `ZipCode` varchar(12) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(25) DEFAULT NULL,
  `ID_Country` varchar(3) NOT NULL,
  PRIMARY KEY (`ID_Location`),
  UNIQUE KEY `ID_Location_UNIQUE` (`ID_Location`),
  KEY `fk_country_idx` (`ID_Country`),
  CONSTRAINT `fk_country` FOREIGN KEY (`ID_Country`) REFERENCES `country` (`ID_Country`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'4202 Riverwood Drive','CA 96007','Anderson',NULL,'USA'),(2,'4222 Eastland Avenue','MS 39402','Mississippi',NULL,'PRT'),(3,'1914 Kembery Drive','IL 60605','Chicago',NULL,'FRA'),(4,'1604 Weekley Street','TX 78222','San Antonio',NULL,'AUS'),(5,'4155 Elkview Drive','FL 34950','Fort Pierce',NULL,'VEN'),(6,'922 Eagle Lane','MN 56715','Brooks',NULL,'USA'),(7,'1528 Half and Half Drive  ','FL 33131','Miami',NULL,'USA'),(8,'3070 Rogers Street','OH 45202','Cincinnati',NULL,'USA'),(9,'1621 Stadium Drive','MA 02401','Brockton',NULL,'USA'),(10,'3398 Marie Street','MD 21202','Baltimore',NULL,'USA'),(11,'Avenida Julio Dinis 101','1250-238','Lisboa',NULL,'USA'),(12,'Avenida Duque â€šÃ Ã¶âˆšÃ–vila 120','2530-810','Vimeiro',NULL,'USA'),(13,'R Bacelo 5','4770-719','Telhado',NULL,'USA'),(14,'Avenida 25 Abril 53','3505-559','Mundâ€šÃ Ã¶Â¬Â£o',NULL,'USA'),(15,'R Irene Lisboa 95','2680-102','Camarate',NULL,'PRT'),(16,'R Cachoeira 120','5040-457','Corredoura',NULL,'PRT'),(17,'Avenida Duque â€šÃ Ã¶âˆšÃ–vila 58','2530-087','Casal Vale Do Medo',NULL,'PRT'),(18,'R Sâ€šÃ Ã¶Â¬Â£o Joâ€šÃ Ã¶Â¬Â£o 80','7940-028','Cuba',NULL,'PRT'),(19,'Rua Forno 6','5130-203','Espinhosa Do Douro',NULL,'PRT'),(20,'R Riamar 102','4520-305','Casal Matos',NULL,'PRT'),(21,'7, rue Paul Leger','59193','Raynaud',NULL,'PRT'),(22,'rue Henri Turpin','42801','Cordier',NULL,'PRT'),(23,'348, chemin Julien Caron','69141','Perrier',NULL,'PRT'),(24,'66, avenue de Marchal','9893','Bertrand',NULL,'FRA'),(25,'52, rue Arnaude Gaillard','28608','Rossi',NULL,'FRA'),(26,'14, impasse Roger Antoine','62792','Gaillard',NULL,'FRA'),(27,'76, rue Grondin','10463','Langlois-la-Forâ€šÃ Ã¶â€šÃ‘Â¢t',NULL,'FRA'),(28,'rue de Vallee','67802','Levy',NULL,'FRA'),(29,'17, rue Olivie Torres','71570','Etienne',NULL,'FRA'),(30,'90, chemin Lombard','81268','Lenoirboeuf',NULL,'FRA'),(31,'90 Kintyre Street','4128','Shailer Park',NULL,'FRA'),(32,'99 Hummocky Road','5223','Destrees Bay',NULL,'FRA'),(33,'76 Redesdale Rd','3551','Pilchers Bridge',NULL,'AUS'),(34,'48 Burnley Street','5168','Noarlunga Downs',NULL,'AUS'),(35,'39 Moruya Street','2484','Byangum',NULL,'AUS'),(36,'99 Church Street','5271','Cadgee',NULL,'AUS'),(37,'87 Village Drive','2164','Smithfield West',NULL,'AUS'),(38,'16 Boorie Road','4613','Brigooda',NULL,'AUS'),(39,'58 Chatsworth Road','2469','Bulldog',NULL,'AUS'),(40,'66 Banksia Street','6536','Kalbarri',NULL,'AUS'),(41,'Calle Oliver, Nro 2','7420','El Saul',NULL,'AUS'),(42,'Calle Carmen, 384, Piso 2','636','Los Carlos',NULL,'VEN'),(43,'Cl. Lola, Piso 5','8577','Carretero del Valle',NULL,'VEN'),(44,'Cl. Mireia, Hab. 8','9215','El Lucia',NULL,'VEN'),(45,'Calle Oliver, 662, Casa 05','8334','Valle Loladel Tuy',NULL,'VEN'),(46,'Callejâ€šÃ Ã¶â€šÃ¢â€¢n Reyna, 6, Nro 8','1490','Bonilla del Tuy',NULL,'VEN'),(47,'Carretera Jaime Armas, Casa 37','3230','Valle Nereade Mata',NULL,'VEN'),(48,'Cl. Gonzalo Longoria, 236, Casa 0','603','Puerto Rafael',NULL,'VEN'),(49,'Vereda Fernando, Piso 3','6441','San Laura',NULL,'VEN'),(50,'Calle Ã¶â€šÃ¢â€¢n Adorno, 60, Piso 80','2044','Resaca bija de Altagracia',NULL,'VEN');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `datetime_change` datetime DEFAULT NULL,
  `USR` varchar(30) DEFAULT NULL,
  `ID_Product` int DEFAULT NULL,
  `Old_Price` decimal(8,2) DEFAULT NULL,
  `New_Price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2022-12-14 21:40:55','root@localhost',1,29.99,30.99),(2,'2022-12-14 22:20:09','root@localhost',1,30.99,30.99),(3,'2022-12-14 22:21:08','root@localhost',1,30.99,30.99),(4,'2022-12-14 22:27:16','root@localhost',3,32.99,32.99),(5,'2022-12-14 22:28:01','root@localhost',3,32.99,31.99),(10,'2022-12-16 02:23:05','root@localhost',26,59.99,59.99),(11,'2022-12-16 02:23:40','root@localhost',3,31.99,31.99),(12,'2022-12-16 02:31:02','root@localhost',3,31.99,31.99),(13,'2022-12-16 02:37:29','root@localhost',3,31.99,31.99),(14,'2022-12-16 02:43:11','root@localhost',3,31.99,31.99),(15,'2022-12-16 02:49:28','root@localhost',2,59.99,59.99),(16,'2022-12-16 02:49:28','root@localhost',2,59.99,59.99),(17,'2022-12-16 02:50:35','root@localhost',12,8.99,8.99),(18,'2022-12-16 02:54:17','root@localhost',2,59.99,59.99),(19,'2022-12-16 21:18:59','root@localhost',10,18.99,18.99),(20,'2022-12-16 22:53:04','root@localhost',15,46.99,46.99),(21,'2022-12-16 22:53:25','root@localhost',1,30.99,30.99),(22,'2022-12-16 22:54:01','root@localhost',3,31.99,31.99),(23,'2022-12-16 22:54:14','root@localhost',20,5.99,5.99),(24,'2022-12-16 22:54:32','root@localhost',30,69.99,69.99);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `ID_Order` int NOT NULL,
  `ID_Product` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID_Order`,`ID_Product`),
  KEY `fk_product_idx` (`ID_Product`),
  CONSTRAINT `fk_order` FOREIGN KEY (`ID_Order`) REFERENCES `orderg` (`ID_Order`),
  CONSTRAINT `fk_product` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`ID_Product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,20,3),(19,15,4),(20,14,6),(21,13,10),(22,12,2),(23,10,11),(24,11,1),(26,13,18),(27,24,12),(28,10,3),(29,5,12),(30,20,12),(31,1,10),(31,10,3),(32,25,20),(32,26,10),(33,12,1),(34,12,1),(34,13,10),(35,15,11),(36,25,21),(45,27,23),(46,28,3),(47,30,4),(48,1,16),(48,2,1),(48,21,5),(48,31,10),(56,10,2),(57,15,1),(58,1,2),(60,3,4),(61,20,3),(62,30,6);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_product_AFTER_INSERT_Quantity` AFTER INSERT ON `order_product` FOR EACH ROW BEGIN
	UPDATE Product
    SET Product.Stock = Product.Stock - NEW.Quantity
    WHERE Product.ID_Product = NEW.ID_Product;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orderg`
--

DROP TABLE IF EXISTS `orderg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderg` (
  `ID_Order` int NOT NULL AUTO_INCREMENT,
  `ID_Customer` int NOT NULL,
  `Total` decimal(8,2) DEFAULT NULL,
  `Order_Datetime` datetime DEFAULT NULL,
  `ID_Promotion` int DEFAULT '7',
  `ID_Taxes` int DEFAULT '1',
  PRIMARY KEY (`ID_Order`),
  KEY `fk_promotion_idx` (`ID_Promotion`),
  KEY `fk_customer_idx` (`ID_Customer`),
  KEY `fk_taxes_idx` (`ID_Taxes`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`ID_Customer`) REFERENCES `customer` (`ID_Customer`),
  CONSTRAINT `fk_promotion` FOREIGN KEY (`ID_Promotion`) REFERENCES `promotion` (`ID_Promotion`),
  CONSTRAINT `fk_tax` FOREIGN KEY (`ID_Taxes`) REFERENCES `taxes` (`ID_Taxes`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderg`
--

LOCK TABLES `orderg` WRITE;
/*!40000 ALTER TABLE `orderg` DISABLE KEYS */;
INSERT INTO `orderg` VALUES (1,4,17.97,'2022-11-12 00:00:00',2,1),(19,5,187.96,'2021-10-11 00:00:00',7,1),(20,6,233.94,'2022-08-21 00:00:00',7,1),(21,7,259.90,'2021-09-11 00:00:00',7,1),(22,8,17.98,'2022-12-24 00:00:00',7,1),(23,9,208.89,'2021-11-08 00:00:00',7,1),(24,10,59.99,'2021-08-11 00:00:00',7,1),(26,23,467.82,'2022-11-08 00:00:00',7,1),(27,11,503.88,'2022-08-11 00:00:00',7,1),(28,11,56.97,'2021-05-05 00:00:00',7,1),(29,14,179.40,'2021-01-01 00:00:00',7,1),(30,26,71.88,'2022-03-03 00:00:00',7,1),(31,12,366.87,'2021-03-03 00:00:00',7,1),(32,15,579.80,'2021-04-04 00:00:00',7,1),(33,12,8.99,'2021-05-18 00:00:00',7,1),(34,15,259.90,'2022-08-19 00:00:00',7,1),(35,19,516.89,'2021-01-18 00:00:00',7,1),(36,22,608.79,'2022-11-19 00:00:00',7,1),(45,23,298.77,'2021-03-21 00:00:00',7,1),(46,20,137.97,'2022-06-19 00:00:00',7,1),(47,21,279.96,'2022-07-23 00:00:00',7,1),(48,23,159.99,'2022-05-10 00:00:00',7,1),(49,25,100.00,'2021-02-12 00:00:00',7,1),(56,12,37.98,'2021-06-13 00:00:00',7,1),(57,4,46.99,'2020-08-23 00:00:00',7,1),(58,5,61.98,'2020-09-25 00:00:00',7,1),(60,6,127.96,'2020-10-13 00:00:00',7,1),(61,7,17.97,'2020-11-20 00:00:00',7,1),(62,8,419.94,'2020-12-22 00:00:00',7,1);
/*!40000 ALTER TABLE `orderg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ID_Order` int NOT NULL,
  `ID_Card` int NOT NULL,
  `Payment_Datetime` datetime NOT NULL,
  PRIMARY KEY (`ID_Order`,`ID_Card`),
  KEY `fk_card_idx` (`ID_Card`),
  CONSTRAINT `fk_card` FOREIGN KEY (`ID_Card`) REFERENCES `card` (`ID_Card`),
  CONSTRAINT `fk_orderg` FOREIGN KEY (`ID_Order`) REFERENCES `orderg` (`ID_Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,1,'2022-02-21 00:00:00'),(19,2,'2022-02-21 00:00:00'),(20,3,'2022-02-21 00:00:00'),(21,4,'2022-02-21 00:00:00'),(22,5,'2022-10-08 00:00:00'),(23,6,'2021-08-11 00:00:00'),(24,7,'2021-11-08 00:00:00'),(26,8,'2022-11-08 00:00:00'),(27,9,'2022-08-11 00:00:00'),(28,10,'2022-01-01 00:00:00'),(29,11,'2021-01-01 00:00:00'),(30,12,'2022-05-05 00:00:00'),(31,13,'2021-05-05 00:00:00'),(32,14,'2022-06-06 00:00:00'),(33,15,'2021-06-06 00:00:00'),(34,16,'2022-07-07 00:00:00'),(35,16,'2021-07-07 00:00:00'),(36,17,'2022-08-08 00:00:00'),(45,18,'2021-08-08 00:00:00'),(46,19,'2022-09-09 00:00:00'),(47,20,'2021-09-09 00:00:00'),(48,21,'2022-10-10 00:00:00'),(49,22,'2021-10-10 00:00:00');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID_Product` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Game_Description` varchar(200) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Stock` int NOT NULL,
  `ID_Company` int NOT NULL,
  `PEGI_Rating` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ID_Product`),
  UNIQUE KEY `ID_Product_UNIQUE` (`ID_Product`),
  KEY `fk_company_idx` (`ID_Company`),
  CONSTRAINT `fk_company` FOREIGN KEY (`ID_Company`) REFERENCES `company` (`ID_Company`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Flight Simulator 2020','Game Description',30.99,158,6,'7'),(2,'The Worm','Game Description',59.99,198,14,'12'),(3,'Sanic','Game Description',31.99,75,28,'16'),(4,'Dungeon Master','Game Description',11.99,87,21,'18'),(5,'Parasite Complex','Game Description',14.95,66,37,'7'),(6,'Enemy Dream','Game Description',59.99,96,1,'12'),(7,'Divide of Friction','Game Description',31.99,81,19,'16'),(8,'Shoot of Democracy','Game Description',15.99,148,27,'18'),(9,'World and Dream','Game Description',24.99,13,29,'3'),(10,'Evolution and Sacrifice','Game Description',18.99,49,18,'7'),(11,'Archeshock','Game Description',59.99,49,34,'12'),(12,'Airdoom','Game Description',8.99,193,36,'16'),(13,'Dynareign','Game Description',25.99,84,22,'18'),(14,'Bulletscape','Game Description',38.99,240,15,'3'),(15,'Titan Aftermath','Game Description',46.99,137,32,'16'),(16,'Spirit Aftermath','Game Description',32.99,198,32,'16'),(17,'Infect of Logic','Game Description',12.99,205,2,'16'),(18,'Assault of Duplicity','Game Description',18.87,249,27,'18'),(19,'Science and Bridge','Game Description',43.99,161,23,'3'),(20,'Domination and Angels','Game Description',5.99,91,6,'7'),(21,'Deltashock','Game Description',59.99,184,13,'12'),(22,'Firesite','Game Description',37.99,121,4,'16'),(23,'Chromaflight','Game Description',18.99,148,5,'18'),(24,'Deadfire','Game Description',41.99,44,39,'3'),(25,'Covert Matters','Game Description',28.99,280,6,'7'),(26,'Celestial Siren','Game Description',59.99,98,4,'12'),(27,'Command of Retribution','Game Description',12.99,264,30,'16'),(28,'Besiege of Autonomy','Game Description',45.99,285,11,'18'),(29,'Galaxy and Apocalypse','Game Description',7.99,215,18,'3'),(30,'Blasterworks','Game Description',69.99,125,13,'18'),(31,'Exfight','Game Description',32.99,166,40,'12'),(32,'Astroland','Game Description',59.99,119,27,'16'),(33,'Helllight','Game Description',15.98,247,38,'18'),(34,'Blasterworks','Game Description',69.99,131,13,'18'),(35,'Datarage','Game Description',22.00,197,33,'3'),(36,'Frenzy and Power','Game Description',6.99,256,35,'7');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_AFTER_UPDATE_PRice` AFTER UPDATE ON `product` FOR EACH ROW BEGIN
	INSERT INTO log(datetime_change, USR, ID_Product, Old_Price, New_Price) 
    VALUES(NOW(), USER(), NEW.ID_Product, OLD.Price, NEW.Price);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `ID_Product` int NOT NULL,
  `ID_Category` int NOT NULL,
  PRIMARY KEY (`ID_Product`,`ID_Category`),
  KEY `fk_category_idx` (`ID_Category`),
  CONSTRAINT `fk_product_category_category` FOREIGN KEY (`ID_Category`) REFERENCES `category` (`ID_Category`),
  CONSTRAINT `fk_product_category_product` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`ID_Product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (13,1),(14,1),(23,1),(30,1),(12,2),(15,2),(16,3),(17,4),(36,4),(18,5),(35,5),(19,6),(34,6),(20,7),(33,7),(21,8),(32,8),(22,9),(31,9),(24,11),(29,11),(25,12),(28,12),(1,13),(26,13),(27,13);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `ID_Promotion` int NOT NULL,
  `Promotion_Code` varchar(45) DEFAULT NULL,
  `Promotion_Description` varchar(45) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Promotion_Rate` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Promotion`),
  UNIQUE KEY `ID_Promotion_UNIQUE` (`ID_Promotion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'SD10','Summer Sale 2021','2021-06-21','2021-08-21',0.10),(2,'BD30','Summer Sale 2021','2021-06-21','2031-08-21',0.30),(3,'BF2021','Black Friday 2021','2021-11-21','2026-11-21',0.35),(4,'BF2022','Black Friday 2022','2022-11-22','2022-11-26',0.35),(5,'SC2022','Christmas Week 2022','2022-12-22','2022-12-25',0.20),(6,'SC2021','Christmas Week 2021','2021-12-19','2021-12-26',0.20),(7,'NOPRO','No Promotion','2021-01-01','2999-12-12',0.00);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `ID_Rating` int NOT NULL AUTO_INCREMENT,
  `ID_Customer` int NOT NULL,
  `ID_Product` int NOT NULL,
  `Rating_Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Rating` int DEFAULT NULL,
  `Comment` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Rating`),
  UNIQUE KEY `ID_Rating_UNIQUE` (`ID_Rating`),
  KEY `fk_rating_customer_idx` (`ID_Customer`),
  KEY `fk_rating_product_idx` (`ID_Product`),
  CONSTRAINT `fk_rating_customer` FOREIGN KEY (`ID_Customer`) REFERENCES `customer` (`ID_Customer`),
  CONSTRAINT `fk_rating_product` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`ID_Product`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (45,4,4,'2022-01-01 00:00:00',10,'Rating Comment'),(46,7,20,'2021-01-01 00:00:00',9,'Rating Comment'),(47,8,20,'2022-08-11 00:00:00',10,'Rating Comment'),(48,4,25,'2022-01-01 00:00:00',7,'Rating Comment'),(49,5,24,'2021-11-08 00:00:00',9,'Rating Comment'),(50,5,8,'2022-08-11 00:00:00',8,'Rating Comment'),(51,6,7,'2022-11-08 00:00:00',10,'Rating Comment'),(52,7,6,'2021-10-23 00:00:00',5,'Rating Comment'),(53,8,5,'2022-12-23 00:00:00',3,'Rating Comment'),(54,8,4,'2021-01-01 00:00:00',2,'Rating Comment'),(55,11,23,'2021-05-05 00:00:00',10,'Rating Comment'),(56,9,21,'2022-01-01 00:00:00',1,'Rating Comment'),(57,12,22,'2021-10-10 00:00:00',5,'Rating Comment'),(58,14,23,'2022-03-04 00:00:00',9,'Rating Comment'),(59,12,25,'2022-06-06 00:00:00',3,'Rating Comment'),(60,50,27,'2021-01-19 00:00:00',10,'Rating Comment'),(61,6,30,'2021-05-20 00:00:00',8,'Rating Comment'),(62,8,20,'2022-04-14 00:00:00',7,'Rating Comment'),(63,9,24,'2022-02-23 00:00:00',5,'Rating Comment'),(64,20,26,'2021-02-23 00:00:00',4,'Rating Comment'),(65,25,16,'2022-09-24 00:00:00',2,'Rating Comment'),(66,27,10,'2021-09-24 00:00:00',10,'Rating Comment');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `ID_Taxes` int NOT NULL,
  `Tax_value` decimal(5,2) NOT NULL,
  `Tax_Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Taxes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,0.23,'23 %');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gamestore'
--

--
-- Dumping routines for database 'gamestore'
--

--
-- Final view structure for view `invoice_details_games`
--

/*!50001 DROP VIEW IF EXISTS `invoice_details_games`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `invoice_details_games` AS select `og`.`ID_Order` AS `Invoice Number`,`p`.`Name` AS `Name`,`p`.`Price` AS `Unit Cost`,`op`.`Quantity` AS `QTY/HR Rate`,(`p`.`Price` * `op`.`Quantity`) AS `Total` from ((`product` `p` join `order_product` `op` on((`p`.`ID_Product` = `op`.`ID_Product`))) join `orderg` `og` on((`op`.`ID_Order` = `og`.`ID_Order`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `invoice_head_totals_games`
--

/*!50001 DROP VIEW IF EXISTS `invoice_head_totals_games`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `invoice_head_totals_games` AS select `og`.`ID_Order` AS `Invoice Number`,`og`.`Order_Datetime` AS `Date of Issue`,concat(`c`.`First_Name`,' ',`c`.`Last_Name`) AS `Customer Name`,concat(`l`.`Street_Address`,', ',`l`.`ZipCode`,', ',`l`.`City`) AS `Customer's Address`,`co`.`Country_Name` AS `Company Name`,`l`.`City` AS `City`,'123 Your Street' AS `Company_Street`,'StoreGame@email.com' AS `Email`,concat(`og`.`Total`,' €') AS `Subtotal`,concat(round((`og`.`Total` * `pro`.`Promotion_Rate`),2),' %') AS `Discount`,`t`.`Tax_Description` AS `Tax Rate`,concat(round(((`og`.`Total` * (1 - cast(`pro`.`Promotion_Rate` as signed))) * `t`.`Tax_value`),2),' €') AS `Tax`,concat(round(((`og`.`Total` - cast((`pro`.`Promotion_Rate` * `og`.`Total`) as signed)) * (1 + `t`.`Tax_value`)),2),' €') AS `Total` from (((((`orderg` `og` join `customer` `c` on((`c`.`ID_Customer` = `og`.`ID_Customer`))) join `location` `l` on((`l`.`ID_Location` = `c`.`ID_Location`))) join `country` `co` on((`co`.`ID_Country` = `l`.`ID_Country`))) left join `promotion` `pro` on((`pro`.`ID_Promotion` = `og`.`ID_Promotion`))) join `taxes` `t` on((`t`.`ID_Taxes` = `og`.`ID_Taxes`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-17 21:19:50
