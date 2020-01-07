CREATE DATABASE  IF NOT EXISTS `pkmndb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pkmndb`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pkmndb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Temporary view structure for view `avg_type_atk`
--

DROP TABLE IF EXISTS `avg_type_atk`;
/*!50001 DROP VIEW IF EXISTS `avg_type_atk`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_type_atk` AS SELECT 
 1 AS `Type Name`,
 1 AS `Average Attack`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `effective_vs_water`
--

DROP TABLE IF EXISTS `effective_vs_water`;
/*!50001 DROP VIEW IF EXISTS `effective_vs_water`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `effective_vs_water` AS SELECT 
 1 AS `move_id`,
 1 AS `Type`,
 1 AS `Move`,
 1 AS `category`,
 1 AS `power`,
 1 AS `Accuracy`,
 1 AS `pp`,
 1 AS `effectiveness`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `evolutions`
--

DROP TABLE IF EXISTS `evolutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evolutions` (
  `poke_id` int(11) NOT NULL,
  `evo_id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `item_req` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`poke_id`,`evo_id`),
  KEY `cpk_evo_id_idx` (`evo_id`),
  CONSTRAINT `cpk_poke_id` FOREIGN KEY (`poke_id`) REFERENCES `pokemon` (`poke_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolutions`
--

LOCK TABLES `evolutions` WRITE;
/*!40000 ALTER TABLE `evolutions` DISABLE KEYS */;
INSERT INTO `evolutions` VALUES (1,2,16,NULL),(2,3,32,NULL),(4,5,16,NULL),(5,6,36,NULL),(7,8,16,NULL),(8,9,36,NULL),(10,11,7,NULL),(11,12,10,NULL),(13,14,7,NULL),(14,15,10,NULL),(16,17,18,NULL),(17,18,36,NULL),(19,20,20,NULL),(21,22,20,NULL),(23,24,22,NULL),(25,26,NULL,'Thunder Stone'),(27,28,22,NULL),(29,30,16,NULL),(30,31,NULL,'Moon Stone'),(32,33,16,NULL),(33,34,NULL,'Moon Stone'),(35,36,NULL,'Moon Stone'),(37,38,NULL,'Fire Stone'),(39,40,NULL,'Moon Stone'),(41,42,22,NULL),(43,44,21,NULL),(44,45,NULL,'Leaf Stone'),(46,47,24,NULL),(48,49,31,NULL),(50,51,26,NULL),(52,53,28,NULL),(54,55,33,NULL),(56,57,28,NULL),(58,59,NULL,'Fire Stone'),(60,61,25,NULL),(61,62,NULL,'Water Stone'),(63,64,16,NULL),(64,65,NULL,'Trade'),(66,67,28,NULL),(67,68,NULL,'Trade'),(69,70,21,NULL),(70,71,NULL,'Leaf Stone'),(72,73,30,NULL),(74,75,25,NULL),(75,76,NULL,'Trade'),(77,78,40,NULL),(79,80,37,NULL),(81,82,30,NULL),(84,85,31,NULL),(86,87,34,NULL),(88,89,38,NULL),(90,91,NULL,'Water Stone'),(92,93,25,NULL),(93,94,NULL,'Trade'),(96,97,26,NULL),(98,99,28,NULL),(100,101,30,NULL),(102,103,NULL,'Leaf Stone'),(104,105,28,NULL),(109,110,35,NULL),(111,112,42,NULL),(116,117,32,NULL),(118,119,33,NULL),(120,121,NULL,'Water Stone'),(129,130,20,NULL),(133,134,NULL,'Water Stone'),(133,135,NULL,'Thunder Stone'),(133,136,NULL,'Fire Stone'),(138,139,40,NULL),(140,141,40,NULL),(147,148,30,NULL),(148,149,55,NULL);
/*!40000 ALTER TABLE `evolutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `grass_type_atkspeed`
--

DROP TABLE IF EXISTS `grass_type_atkspeed`;
/*!50001 DROP VIEW IF EXISTS `grass_type_atkspeed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grass_type_atkspeed` AS SELECT 
 1 AS `Pokemon`,
 1 AS `Atk/Speed Sum`,
 1 AS `Type ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hydro_pump`
--

DROP TABLE IF EXISTS `hydro_pump`;
/*!50001 DROP VIEW IF EXISTS `hydro_pump`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hydro_pump` AS SELECT 
 1 AS `Pokemon`,
 1 AS `Move ID`,
 1 AS `level`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (-1,'Pallet Town'),(1,'Viridian City'),(2,'Pewter City'),(3,'Cerulean City'),(4,'Lavender Town'),(5,'Vermillion City'),(6,'Celadon City'),(7,'Fuchsia City'),(8,'Cinnabar Island'),(9,'Pokemon League'),(10,'Saffron City'),(11,'Unused Fly Location'),(12,'Route 1'),(13,'Route 2'),(14,'Route 3'),(15,'Route 4'),(16,'Route 5'),(17,'Route 6'),(18,'Route 7'),(19,'Route 8'),(20,'Route 9'),(21,'Route 10'),(22,'Route 11'),(23,'Route 12'),(24,'Route 13'),(25,'Route 14'),(26,'Route 15'),(27,'Route 16'),(28,'Route 17'),(29,'Route 18'),(30,'Sea Route 19'),(31,'Sea Route 20'),(32,'Sea Route 21'),(33,'Route 22'),(34,'Route 23'),(35,'Route 24'),(36,'Route 25'),(37,'Red\'s house (first floor)'),(38,'Red\'s house (second floor)'),(39,'Blue\'s house'),(40,'Professor Oak\'s Lab'),(41,'Pokemon Center (Viridian City)'),(42,'Poke Mart (Viridian City)'),(43,'School (Viridian City)'),(44,'House 1 (Viridian City)'),(45,'Pokemon Gym (Viridian City)'),(46,'Diglett\'s Cave (Route 2 entrance)'),(47,'Gate (Viridian City/Pewter City) (Route 2)'),(48,'Oak\'s Aid House 1 (Route 2)'),(49,'Gate (Route 2)'),(50,'Gate (Route 2/Viridian Forest) (Route 2)'),(51,'Viridian Forest'),(52,'Pewter Museum (floor 1)'),(53,'Pewter Museum (floor 2)'),(54,'Pokemon Gym (Pewter City)'),(55,'House with disobediant Nidoran(Pewter City)'),(56,'Poke Mart (Pewter City)'),(57,'House with two Trainers (Pewter City)'),(58,'Pokemon Center (Pewter City)'),(59,'Mt. Moon (Route 3 entrance)'),(60,'Mt. Moon'),(61,'Mt. Moon'),(62,'Invaded house (Cerulean City)'),(63,'Poliwhirl for Jynx trade house'),(64,'Pokemon Center (Cerulean City)'),(65,'Pokemon Gym (Cerulean City)'),(66,'Bike Shop (Cerulean City)'),(67,'Poke Mart (Cerulean City)'),(68,'Pokemon Center (Route 4)'),(69,'Invaded house - alternative music (Cerulean City)'),(70,'Saffron City Gate (Route 5)'),(71,'Entrance to Underground Path (Kanto Routes 5-6) (Route 5)'),(72,'Daycare Center (Route 5)'),(73,'Saffron City Gate (Route 6)'),(74,'Entrance to Underground Path (Route 6)'),(75,'Entrance to Underground Path 2 (Route 7)'),(76,'Saffron City Gate (Route 7)'),(77,'Entrance to Underground Path (Route 7)'),(78,'Entrance to Underground Path 2 (Route 7)'),(79,'Saffron City Gate (Route 8)'),(80,'Entrance to Underground Path (Route 8)'),(81,'Pokemon Center (Rock Tunnel)'),(82,'Rock Tunnel'),(83,'Power Plant'),(84,'Gate 1F (Route 11-Route 12)'),(85,'Diglett\'s Cave (Vermilion City entrance)'),(86,'Gate 2F (Route 11-Route 12)'),(87,'Gate (Route 12-Route 13)'),(88,'Sea Cottage'),(89,'Pokemon Center (Vermilion City)'),(90,'Pokemon Fan Club (Vermilion City)'),(91,'Poke Mart (Vermilion City)'),(92,'Pokemon Gym (Vermilion City)'),(93,'House with Pidgey (Vermilion City)'),(94,'Vermilion Harbor (Vermilion City)'),(95,'S.S. Anne 1F'),(96,'S.S. Anne 2F'),(97,'S.S. Anne 3F'),(98,'S.S. Anne B1F'),(99,'S.S. Anne (Deck)'),(100,'S.S. Anne (Kitchen)'),(101,'S.S. Anne (Captain\'s room)'),(102,'S.S. Anne 1F (Gentleman\'s room)'),(103,'S.S. Anne 2F (Gentleman\'s room)'),(104,'S.S. Anne BF1 (Sailor/Fisherman\'s room)'),(105,'Unused (Victory Road)'),(106,'Unused (Victory Road)'),(107,'Unused (Victory Road)'),(108,'Victory Road (Route 23 entrance)'),(109,'Unused (Pokemon League)'),(110,'Unused (Pokemon League)'),(111,'Unused (Pokemon League)'),(112,'Unused (Pokemon League)'),(113,'Lance\'s Elite Four room'),(114,'Unused (Pokemon League)'),(115,'Unused (Pokemon League)'),(116,'Unused (Pokemon League)'),(117,'Unused (Pokemon League)'),(118,'Hall of Fame'),(119,'Underground Path (Route 5-Route 6)'),(120,'Blue\'s room'),(121,'Underground Path (Route 7-Route 8)'),(122,'Celadon Department Store 1F'),(123,'Celadon Department Store 2F'),(124,'Celadon Department Store 3F'),(125,'Celadon Department Store 4F'),(126,'Celadon Department Store Roofstop Square'),(127,'Celadon Department Store Lift'),(128,'Celadon Mansion 1F'),(129,'Celadon Mansion 2F'),(130,'Celadon Mansion 3F'),(131,'Celadon Mansion 4F'),(132,'Celadon Mansion 4F (Eevee building)'),(133,'Pokemon Center (Celadon City)'),(134,'Pokemon Gym (Celadon City)'),(135,'Roket Game Corner (Celadon City)'),(136,'Celadon Department Store 5F'),(137,'Prize corner (Celadon City)'),(138,'Restaurant (Celadon City'),(139,'House with Team Rocket members (Celadon City)'),(140,'Hotel (Celadon City)'),(141,'Pokemon Center (Lavender Town)'),(142,'Pokemon Town F1'),(143,'Pokemon Town F2'),(144,'Pokemon Town F3'),(145,'Pokemon Town F4'),(146,'Pokemon Town F5'),(147,'Pokemon Town F6'),(148,'Pokemon Town F7'),(149,'Mr. Fuji\'s house (Lavender Town)'),(150,'Poke Mart (Lavender Twon)'),(151,'House with NPC discussing Cubone\'s mother'),(152,'Poke Mart (Fuchsia City)'),(153,'House with NPCs discussing Bill (Fuchsia City)'),(154,'Pokemon Center (Fuchsia City)'),(155,'Warden\'s house (Fuchsia City)'),(156,'Safari Zone gate (Fuchsia City)'),(157,'Pokemon Gym (Fuchsia City)'),(158,'House with NPCs discussing Baoba (Fuchsia City)'),(159,'Seafoam Islands'),(160,'Seafoam Islands'),(161,'Seafoam Islands'),(162,'Seafoam Islands'),(163,'Vermilion City Fishing Brother'),(164,'Fuchsia City Fishing Brother'),(165,'Pokemon Mansion (1F)'),(166,'Pokemon Gym (Cinnabar Island)'),(167,'Pokemon Lab (Cinnabar Island)'),(168,'Pokemon Lab - Trade room (Cinnabar Island)'),(169,'Pokemon Lab - Room with scientists (Cinnabar Island)'),(170,'Pokemon Lab - Fossil resurrection room (Cinnabar Island)'),(171,'Pokemon Center (Cinnabar Island)'),(172,'Poke Mart (Cinnabar Island)'),(173,'Poke Mart - alternative music (Cinnabar Island)'),(174,'Pokemon Center (Indigo Plateau)'),(175,'Copycat\'s house 1F (Saffron City)'),(176,'Copycat\'s house 2F (Saffron City)'),(177,'Fighting Dojo (Saffron City)'),(178,'Pokemon Gym (Saffron City)'),(179,'House with Pidgey (Saffron City)'),(180,'Poke Mart (Saffron City)'),(181,'Silph Co. 1F'),(182,'Pokemon Center (Saffron City)'),(183,'Mr. Psychic\'s house (Saffron City)'),(184,'Gate 1F (Route 15)'),(185,'Gate SF (Route 15)'),(186,'Gate 1F (Cycling Road (Route 16)'),(187,'Gate 2F (Cycling Road (Route 16)'),(188,'Secret house (Cycling Road) (Route 16)'),(189,'Route 12 Fishing Brother'),(190,'Gate 1F (Route 18)'),(191,'Gate 2F (Route 18)'),(192,'Seafoam Islands'),(193,'Badges check gate (Route 22)'),(194,'Victory Road'),(195,'Gate 2F (Route 12)'),(196,'House with NPC and HM moves advice Vermilion City'),(197,'Diglett\'s Cave'),(198,'Victory Road'),(199,'Team Rocket Hideout (B1F)'),(200,'Team Rocket Hideout (B2F)'),(201,'Team Rocket Hideout (B3F)'),(202,'Team Rocket Hideout (B4F)'),(203,'Team Rocket Hideout (Lift)'),(204,'Unused (Team Rocket Hideout)'),(205,'Unused (Team Rocket Hideout)'),(206,'Unused (Team Rocket Hideout)'),(207,'Silph Co. (2F)'),(208,'Silph Co. (3F)'),(209,'Silph Co. (4F)'),(210,'Silph Co. (5F)'),(211,'Silph Co. (6F)'),(212,'Silph Co. (7F)'),(213,'Silph Co. (8F)'),(214,'Pokemon Mansion (2F)'),(215,'Pokemon Mansion (3F)'),(216,'Pokemon Mansion (B1F)'),(217,'Safari Zone (Area 1)'),(218,'Safari Zone (Area 2)'),(219,'Safari Zone (Area 3)'),(220,'Safari Zone (Entrance)'),(221,'Safari Zone (Rest house)'),(222,'Safari Zone (Prize house)'),(223,'Safari Zone (Rest house 2)'),(224,'Safari Zone (Rest house 3)'),(225,'Safari Zone (Rest house 4)'),(226,'Unknown Dungeon'),(227,'Unknown Dungeon 1F'),(228,'Unknown Dungeon B1F'),(229,'Name Rater\'s house (Lavender Town)'),(230,'Cerulean City (Gym Badge man)'),(231,'Unused (Rock Tunnel)'),(232,'Rock Tunnel'),(233,'Silph Co. 9F'),(234,'Silph Co. 10F'),(235,'Silph Co. 11F'),(236,'Silph Co. Lift'),(237,'Invalid'),(238,'Invalid'),(239,'Cable Club Trade Center'),(240,'Cable Club Colosseum'),(241,'Invalid'),(242,'Invalid'),(244,'Invalid'),(245,'Lorelei\'s room'),(246,'Bruno\'s room'),(247,'Agatha\'s room'),(248,'Summer Beach House (Pokemon Yellow)');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moves`
--

DROP TABLE IF EXISTS `moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moves` (
  `move_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `move_title` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `acc` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  PRIMARY KEY (`move_id`),
  KEY `type_id_fk_idx` (`type_id`),
  CONSTRAINT `type_id_fk` FOREIGN KEY (`type_id`) REFERENCES `types` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves`
--

LOCK TABLES `moves` WRITE;
/*!40000 ALTER TABLE `moves` DISABLE KEYS */;
INSERT INTO `moves` VALUES (1,5,'Absorb','Special',20,100,25),(2,8,'Acid','Special',40,100,20),(3,8,'Acid Armor','Status',0,0,20),(4,11,'Agility','Status',0,0,30),(5,11,'Amnesia','Status',0,0,20),(6,6,'Aurora Beam','Special',65,100,20),(7,1,'Barrage','Physical',15,85,20),(8,11,'Barrier','Status',0,0,20),(9,1,'Bide','Physical',0,0,10),(10,1,'Bind','Physical',15,85,20),(12,6,'Blizzard','Special',110,70,5),(13,1,'Body Slam','Physical',85,100,15),(14,9,'Bone Club','Physical',65,85,20),(15,9,'Bonemerang','Physical',50,90,10),(16,3,'Bubble','Special',40,100,30),(17,3,'Bubble Beam','Special',65,100,20),(18,3,'Clamp','Physical',35,85,10),(19,1,'Comet Punch','Physical',18,85,15),(20,14,'Confuse Ray','Status',0,100,10),(21,11,'Confusion','Special',50,100,25),(22,1,'Constrict','Physical',10,100,35),(23,1,'Conversion','Status',0,0,30),(24,7,'Counter','Physical',0,100,20),(25,3,'Crabhammer','Physical',10,90,10),(26,1,'Cut','Physical',50,95,30),(27,1,'Defense Curl','Status',0,0,40),(28,9,'Dig','Physical',80,100,10),(29,1,'Disable','Status',0,100,20),(30,1,'Dizzy Punch','Physical',70,100,10),(31,7,'Double Kick','Physical',30,100,30),(32,1,'Double Slap','Physical',15,85,10),(33,1,'Double Team','Status',0,0,15),(34,1,'Double-Edge','Physical',120,100,15),(35,15,'Dragon Rage','Special',0,100,15),(36,11,'Dream Eater','Special',100,100,15),(37,10,'Drill Peck','Physical',80,100,20),(38,9,'Earthquake','Physical',100,100,10),(39,1,'Egg Bomb','Physical',100,75,10),(40,2,'Ember','Special',40,100,25),(41,1,'Explosion','Physical',250,100,5),(42,2,'Fire Blast','Speical',110,85,5),(43,2,'Fire Punch','Physical',75,100,15),(44,2,'Fire Spin','Special',35,85,15),(45,9,'Fissure','Physical',0,0,5),(46,2,'Flamethrower','Special',90,100,15),(47,1,'Flash','Status',0,100,20),(48,10,'Fly','Physical',90,95,15),(49,1,'Focus Energy','Status',0,0,30),(50,1,'Fury Attack','Physical',15,85,20),(51,1,'Glare','Status',0,100,30),(52,1,'Growl','Status',0,100,40),(53,1,'Growth','Status',0,0,40),(54,1,'Guillotine','Physical',0,0,5),(55,10,'Gust','Special',40,100,35),(56,1,'Harden','Status',0,0,30),(57,6,'Haze','Status',0,0,30),(58,1,'Headbutt','Physical',70,100,15),(59,7,'High Jump Kick','Physical',130,90,10),(60,1,'Horn Attack','Physical',65,100,25),(61,1,'Horn Drill','Physical',0,0,5),(62,3,'Hydro Pump','Special',110,80,5),(63,1,'Hyper Beam','Special',150,90,5),(64,1,'Hyper Fang','Physical',80,90,15),(65,11,'Hypnosis','Status',0,60,20),(66,6,'Ice Beam','Special',90,100,10),(67,6,'Ice Punch','Physical',75,100,15),(68,7,'Jump Kick','Physcial',100,95,10),(69,7,'Karate Chop','Physical',50,100,25),(70,11,'Kinesis','Status',0,80,15),(71,12,'Leech Life','Physical',80,100,10),(72,5,'Leech Seed','Status',0,90,10),(73,1,'Leer','Status',0,100,30),(74,14,'Lick','Status',30,100,30),(75,11,'Light Screen','Status',0,0,30),(76,1,'Lovely Kiss','Status',0,75,10),(77,7,'Low Kick','Physical',0,100,20),(78,11,'Meditate','Status',0,0,40),(79,5,'Mega Drain','Special',40,100,15),(80,1,'Mega Kick','Physical',120,75,5),(81,1,'Mega Punch','Physical',80,85,20),(82,1,'Metronome','Status',0,0,10),(83,1,'Mimic','Status',0,0,10),(84,1,'Minimize','Status',0,0,10),(85,10,'Mirror Move','Status',0,0,20),(86,6,'Mist','Status',0,0,30),(87,14,'Night Shade','Special',0,100,15),(88,1,'Pay Day','Physical',40,100,20),(89,10,'Peck','Physical',35,100,35),(90,5,'Petal Dance','Special',120,100,10),(91,12,'Pin Missile','Physical',25,95,20),(92,8,'Poison Gas','Status',0,90,40),(93,8,'Poison Powder','Status',0,75,35),(94,8,'Poison Sting','Physical',15,100,35),(95,1,'Pound','Physical',40,100,35),(96,11,'Psybeam','Special',65,100,20),(97,11,'Psychic','Special',90,100,10),(98,11,'Psywave','Special',0,80,15),(99,1,'Quick Attack','Physical',40,100,30),(100,1,'Rage','Physical',20,100,20),(101,5,'Razor Leaf','Physical',55,95,25),(102,1,'Razor Wind','Special',80,100,10),(103,1,'Recover','Status',0,0,10),(104,11,'Reflect','Status',0,0,20),(105,11,'Rest','Status',0,0,10),(106,1,'Roar','Status',0,0,20),(107,13,'Rock Slide','Physical',75,90,10),(108,13,'Rock Throw','Physical',50,90,15),(109,7,'Rolling Kick','Physical',60,85,15),(110,9,'Sand Attack','Status',0,100,15),(111,1,'Scratch','Physical',40,100,35),(112,1,'Screech','Status',0,85,40),(113,7,'Seismic Toss','Physical',0,100,20),(114,1,'Self-Destruct','Physical',200,100,5),(115,1,'Sharpen','Status',0,0,30),(116,1,'Sing','Status',0,55,15),(117,1,'Skull Bash','Physical',130,100,10),(118,10,'Sky Attack','Physical',140,90,5),(119,1,'Slam','Physical',80,75,20),(120,1,'Slash','Physical',70,100,20),(121,5,'Sleep Powder','Status',0,75,15),(122,8,'Sludge','Special',65,100,20),(123,8,'Smog','Special',30,70,20),(124,1,'Smokescreen','Status',0,100,20),(125,1,'Soft-Boiled','Status',0,0,10),(126,5,'Solar Beam','Special',120,100,10),(127,1,'Sonic Boom','Special',0,90,20),(128,1,'Spike Cannon','Physical',20,100,15),(129,1,'Splash','Status',0,0,40),(130,5,'Spore','Status',0,100,15),(131,1,'Stomp','Physical',65,100,20),(132,1,'Strength','Physical',80,100,15),(133,12,'String Shot','Status',0,95,40),(134,1,'Struggle','Physical',50,100,0),(135,5,'Stun Spore','Status',0,75,30),(136,7,'Submission','Physical',80,80,20),(137,1,'Substitute','Status',0,0,10),(138,1,'Super Fang','Physical',0,90,10),(139,1,'Supersonic','Status',0,55,20),(140,3,'Surf','Special',90,100,15),(141,1,'Swift','Special',60,0,20),(142,1,'Swords Dance','Status',0,0,20),(143,1,'Tackle','Physical',40,100,35),(144,1,'Tail Whip','Status',0,100,30),(145,1,'Take Down','Physical',90,85,20),(146,11,'Teleport','Status',0,0,20),(147,1,'Thrash','Physical',120,100,10),(148,4,'Thunder','Special',110,70,10),(149,4,'Thunder Punch','Physical',75,100,15),(150,4,'Thunder Shock','Special',40,100,30),(151,4,'Thunder Wave','Status',0,90,20),(152,4,'Thunderbolt','Special',90,100,15),(153,8,'Toxic','Status',0,90,10),(154,1,'Transform','Status',0,0,10),(155,1,'Tri Attack','Special',80,100,10),(156,12,'Twineedle','Physical',25,100,20),(157,1,'Vice Grip','Physical',55,100,30),(158,5,'Vine Whip','Physical',45,100,25),(159,3,'Water Gun','Special',40,100,25),(160,3,'Waterfall','Physical',80,100,15),(161,1,'Whirlwind','Status',0,0,20),(162,10,'Wing Attack','Physical',60,100,35),(163,3,'Withdraw','Status',0,0,40),(164,1,'Wrap','Physical',15,90,20),(165,1,'Bite','Physical',60,100,25),(166,1,'Fury Swipes','Physical',18,80,15);
/*!40000 ALTER TABLE `moves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poke_locations`
--

DROP TABLE IF EXISTS `poke_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poke_locations` (
  `location_id` int(11) NOT NULL,
  `poke_id` int(11) NOT NULL,
  `exists_in_red` tinyint(4) DEFAULT NULL,
  `exists_in_blue` tinyint(4) DEFAULT NULL,
  `exists_in_yellow` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`location_id`,`poke_id`),
  KEY `poke_fk_idx` (`poke_id`),
  CONSTRAINT `location_fk` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `poke_fk` FOREIGN KEY (`poke_id`) REFERENCES `pokemon` (`poke_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poke_locations`
--

LOCK TABLES `poke_locations` WRITE;
/*!40000 ALTER TABLE `poke_locations` DISABLE KEYS */;
INSERT INTO `poke_locations` VALUES (12,16,1,1,1),(12,19,1,1,1),(13,10,0,1,0),(13,13,1,0,0),(13,16,1,1,1),(13,29,0,0,1),(13,32,0,0,1),(14,10,1,1,1),(14,21,1,1,1),(14,23,1,0,0),(14,27,0,1,1),(14,56,0,0,1),(15,10,1,1,1),(15,21,1,1,1),(15,23,1,0,0),(15,27,0,1,1),(15,56,0,0,1),(16,16,1,1,1),(16,17,0,0,1),(16,19,0,0,1),(16,39,0,0,1),(16,43,1,0,0),(16,52,0,1,0),(16,56,1,0,0),(16,63,0,0,1),(16,69,0,1,0),(17,16,1,1,1),(17,17,0,0,1),(17,19,0,0,1),(17,39,0,0,1),(17,43,1,0,0),(17,52,0,1,0),(17,54,0,0,1),(17,55,0,0,1),(17,56,1,0,0),(17,60,1,1,1),(17,63,0,0,1),(17,69,0,1,0),(17,90,1,1,0),(17,98,1,1,0),(17,118,1,1,1),(17,129,1,1,1),(18,16,1,1,1),(18,17,0,0,1),(18,19,0,0,1),(18,37,0,1,0),(18,39,0,0,1),(18,43,1,0,0),(18,52,0,1,0),(18,56,1,0,0),(18,58,1,0,0),(18,63,0,0,1),(18,69,0,1,0),(19,16,1,1,1),(19,17,0,0,1),(19,19,0,0,1),(19,23,1,0,0),(19,27,0,1,0),(19,37,0,1,0),(19,39,0,0,1),(19,52,0,1,0),(19,56,1,0,0),(19,58,1,0,0),(19,63,0,0,1),(19,64,0,0,1),(20,19,1,1,1),(20,20,0,0,1),(20,21,1,1,1),(20,22,0,0,1),(20,23,1,0,0),(20,27,0,1,0),(20,29,0,0,1),(20,30,0,0,1),(20,32,0,0,1),(20,33,0,0,1),(21,19,0,0,1),(21,20,0,0,1),(21,21,1,1,0),(21,23,1,0,0),(21,27,0,1,0),(21,29,0,0,1),(21,32,0,0,1),(21,60,1,1,1),(21,61,1,1,0),(21,66,0,0,1),(21,79,1,1,0),(21,81,0,0,1),(21,98,0,0,1),(21,99,0,0,1),(21,100,1,1,0),(21,116,0,0,1),(21,118,1,1,1),(21,129,1,1,1),(22,16,0,0,1),(22,17,0,0,1),(22,19,0,0,1),(22,20,0,0,1),(22,21,1,1,0),(22,23,1,0,0),(22,27,0,1,0),(22,60,1,1,1),(22,72,0,0,1),(22,90,1,1,0),(22,96,1,1,1),(22,98,1,1,0),(22,116,0,0,1),(22,118,1,1,1),(22,129,1,1,1),(23,16,1,1,1),(23,17,0,0,1),(23,43,1,0,1),(23,44,1,0,1),(23,48,1,1,0),(23,60,1,1,1),(23,69,0,1,1),(23,70,0,1,1),(23,72,1,1,0),(23,79,0,0,1),(23,80,0,0,1),(23,83,0,0,1),(23,98,1,1,0),(23,116,0,0,1),(23,117,0,0,1),(23,118,1,1,1),(23,129,1,1,1),(51,10,1,1,1),(51,11,1,1,1),(51,13,1,1,0),(51,14,1,1,0),(51,16,0,0,1),(51,17,0,0,1),(51,25,1,1,0);
/*!40000 ALTER TABLE `poke_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poke_moves`
--

DROP TABLE IF EXISTS `poke_moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poke_moves` (
  `poke_id` int(11) NOT NULL,
  `move_id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`poke_id`,`move_id`),
  KEY `fk_move_id_idx` (`move_id`),
  CONSTRAINT `fk_move_id` FOREIGN KEY (`move_id`) REFERENCES `moves` (`move_id`),
  CONSTRAINT `fk_poke_id` FOREIGN KEY (`poke_id`) REFERENCES `pokemon` (`poke_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poke_moves`
--

LOCK TABLES `poke_moves` WRITE;
/*!40000 ALTER TABLE `poke_moves` DISABLE KEYS */;
INSERT INTO `poke_moves` VALUES (1,52,1),(1,53,34),(1,72,7),(1,93,20),(1,101,27),(1,121,41),(1,126,48),(1,143,1),(1,158,13),(2,52,1),(2,53,38),(2,72,1),(2,93,22),(2,101,30),(2,121,46),(2,126,54),(2,143,1),(2,158,13),(3,52,1),(3,53,43),(3,72,1),(3,93,22),(3,101,30),(3,121,55),(3,126,65),(3,143,1),(3,158,1),(4,40,9),(4,44,46),(4,46,38),(4,52,1),(4,73,15),(4,100,22),(4,111,1),(4,120,30),(5,40,1),(5,44,56),(5,46,42),(5,52,1),(5,73,15),(5,100,24),(5,111,1),(5,120,33),(6,40,1),(6,44,55),(6,46,46),(6,52,1),(6,73,1),(6,100,24),(6,111,1),(6,120,36),(7,16,8),(7,62,42),(7,117,35),(7,143,1),(7,144,1),(7,159,15),(7,163,28),(7,165,22),(8,16,1),(8,62,47),(8,117,39),(8,143,1),(8,144,1),(8,159,15),(8,163,31),(8,165,24),(9,16,1),(9,62,52),(9,117,42),(9,143,1),(9,144,1),(9,159,1),(9,163,31),(9,165,24),(10,133,1),(10,143,1),(11,56,1),(12,21,1),(12,55,28),(12,93,15),(12,96,32),(12,121,17),(12,135,16),(12,139,21),(12,161,26),(13,94,1),(13,133,1),(14,56,1),(15,4,35),(15,49,16),(15,50,1),(15,91,30),(15,100,25),(15,156,20),(16,4,36),(16,55,1),(16,85,44),(16,99,12),(16,110,5),(16,161,19),(16,162,28),(17,4,40),(17,55,1),(17,85,49),(17,99,12),(17,110,1),(17,161,21),(17,162,31),(18,4,44),(18,55,1),(18,85,54),(18,99,1),(18,110,1),(18,161,21),(18,162,31),(19,49,23),(19,64,14),(19,99,7),(19,138,34),(19,143,1),(19,144,1),(20,49,27),(20,64,14),(20,99,1),(20,138,41),(20,143,1),(20,144,1),(21,4,36),(21,37,29),(21,50,15),(21,52,1),(21,73,9),(21,85,22),(21,89,1),(22,4,43),(22,37,34),(22,50,15),(22,52,1),(22,73,1),(22,85,25),(22,89,1),(23,2,38),(23,51,24),(23,73,1),(23,94,10),(23,112,31),(23,164,1),(23,165,17),(24,2,47),(24,51,27),(24,73,1),(24,94,1),(24,112,36),(24,164,1),(24,165,17),(25,4,33),(25,33,15),(25,52,1),(25,75,50),(25,99,16),(25,119,20),(25,141,26),(25,144,6),(25,148,43),(25,150,1),(25,151,9),(25,152,26),(26,52,1),(26,150,1),(26,151,1),(27,94,24),(27,110,10),(27,111,1),(27,120,17),(27,141,31),(27,166,38),(28,94,27),(28,110,1),(28,111,1),(28,120,17),(28,141,36),(28,166,47),(29,31,43),(29,52,1),(29,94,14),(29,111,8),(29,143,1),(29,144,21),(29,165,29),(29,166,36),(30,31,50),(30,52,1),(30,94,14),(30,111,1),(30,143,1),(30,144,23),(30,165,32),(30,166,41),(31,13,1),(31,31,12),(31,94,14),(31,111,1),(31,143,1),(31,144,1),(32,31,43),(32,49,21),(32,50,29),(32,60,8),(32,61,36),(32,73,1),(32,94,14),(32,143,1),(33,31,50),(33,49,23),(33,50,32),(33,60,1),(33,61,41),(33,73,1),(33,94,14),(33,143,1),(34,31,12),(34,60,1),(34,94,1),(34,143,1),(34,147,1),(35,27,39),(35,32,18),(35,52,1),(35,75,48),(35,82,31),(35,84,24),(35,95,1),(35,116,13),(36,32,1),(36,82,1),(36,84,1),(36,116,1),(37,20,28),(37,40,1),(37,44,42),(37,46,35),(37,99,16),(37,106,21),(37,144,1),(38,40,1),(38,99,1),(38,106,1),(38,144,1),(39,13,34),(39,27,19),(39,29,14),(39,32,24),(39,34,39),(39,95,9),(39,105,29),(39,116,1),(40,27,1),(40,29,1),(40,32,1),(40,116,1),(41,20,21),(41,57,36),(41,71,1),(41,139,10),(41,162,28),(41,165,15),(42,20,21),(42,57,43),(42,71,1),(42,112,1),(42,139,10),(42,162,32),(42,165,1),(43,1,1),(43,2,24),(43,90,33),(43,93,15),(43,121,19),(43,126,46),(43,135,17),(44,1,1),(44,2,28),(44,90,38),(44,93,1),(44,121,19),(44,126,52),(44,135,1),(45,2,1),(45,90,1),(45,93,15),(45,121,1),(45,135,1),(46,53,41),(46,71,20),(46,111,1),(46,120,34),(46,130,27),(46,135,13),(47,53,48),(47,71,1),(47,111,1),(47,120,39),(47,130,30),(47,135,1),(48,21,19),(48,29,1),(48,71,27),(48,93,24),(48,96,35),(48,97,43),(48,121,38),(48,135,30),(48,139,11),(48,143,1),(49,21,1),(49,29,1),(49,71,1),(49,93,1),(49,96,38),(49,97,50),(49,121,43),(49,135,30),(49,139,1),(49,143,1),(50,28,19),(50,38,40),(50,52,15),(50,110,24),(50,111,1),(50,120,31),(51,28,1),(51,38,47),(51,52,1),(51,110,24),(51,111,1),(51,120,35),(52,52,1),(52,88,17),(52,111,1),(52,112,24),(52,120,44),(52,165,12),(52,166,33),(53,52,1),(53,88,17),(53,111,1),(53,112,1),(53,120,51),(53,165,1),(53,166,37),(54,21,36),(54,29,31),(54,62,52),(54,111,1),(54,144,28),(54,166,43),(55,21,39),(55,29,1),(55,62,59),(55,111,1),(55,144,1),(55,166,48),(56,49,27),(56,69,15),(56,73,1),(56,77,9),(56,111,1),(56,112,45),(56,113,33),(56,147,39),(56,166,21),(57,49,27),(57,69,1),(57,73,1),(57,77,1),(57,100,28),(57,111,1),(57,112,45),(57,113,37),(57,147,46),(57,166,1),(58,4,39),(58,40,18),(58,46,50),(58,73,23),(58,106,1),(58,145,30),(58,165,1),(59,40,1),(59,73,1),(59,106,1),(59,145,1),(60,5,38),(60,13,31),(60,16,1),(60,32,25),(60,62,45),(60,65,16),(60,159,19),(61,5,41),(61,13,33),(61,16,1),(61,32,26),(61,62,49),(61,65,1),(61,159,1),(62,13,1),(62,32,1),(62,65,1),(62,159,1),(63,146,1),(64,21,1),(64,29,1),(64,70,1),(64,96,27),(64,97,38),(64,103,31),(64,104,42),(64,146,1),(65,21,1),(65,29,1),(65,70,1),(65,96,27),(65,97,38),(65,103,31),(65,104,42),(65,146,1),(66,49,32),(66,69,1),(66,73,25),(66,77,20),(66,113,39),(66,136,46),(67,49,36),(67,69,1),(67,73,1),(67,77,1),(67,113,44),(67,136,52),(68,49,36),(68,69,1),(68,73,1),(68,77,1),(68,113,44),(68,136,52),(69,2,26),(69,53,1),(69,93,15),(69,101,33),(69,119,42),(69,121,18),(69,135,21),(69,158,1),(69,164,13),(70,2,29),(70,53,1),(70,93,15),(70,101,38),(70,119,49),(70,121,18),(70,135,23),(70,158,1),(70,164,1),(71,2,1),(71,93,15),(71,101,1),(71,121,1),(71,135,1),(71,164,13),(72,2,1),(72,8,33),(72,22,27),(72,62,48),(72,94,18),(72,112,40),(72,139,7),(72,159,22),(72,164,13),(73,2,1),(73,8,35),(73,22,27),(73,62,50),(73,94,18),(73,112,43),(73,139,1),(73,159,22),(73,164,1),(74,27,11),(74,38,31),(74,41,36),(74,56,26),(74,108,16),(74,114,21),(74,143,1),(75,27,1),(75,38,36),(75,41,43),(75,56,29),(75,108,16),(75,114,21),(75,143,1),(76,27,1),(76,38,36),(76,41,43),(76,56,29),(76,108,16),(76,114,21),(76,143,1),(77,4,48),(77,40,1),(77,44,39),(77,52,35),(77,131,32),(77,144,30),(77,145,43),(78,4,55),(78,40,1),(78,44,39),(78,52,1),(78,131,1),(78,144,1),(78,145,47),(79,5,40),(79,21,1),(79,29,18),(79,52,27),(79,58,22),(79,97,48),(79,159,33),(80,5,44),(80,21,1),(80,29,1),(80,52,27),(80,58,1),(80,97,55),(80,159,33),(80,163,37),(81,112,47),(81,127,21),(81,139,29),(81,141,41),(81,143,1),(81,150,25),(81,151,35),(82,112,54),(82,127,1),(82,139,29),(82,141,46),(82,143,1),(82,150,1),(82,151,38),(83,4,31),(83,50,15),(83,73,7),(83,89,1),(83,110,1),(83,120,39),(83,142,23),(84,4,44),(84,37,30),(84,50,24),(84,52,20),(84,89,1),(84,100,36),(84,155,40),(85,4,51),(85,37,30),(85,50,1),(85,52,1),(85,89,1),(85,100,39),(85,155,45),(86,6,35),(86,52,30),(86,58,1),(86,66,50),(86,105,40),(86,145,45),(87,6,1),(87,52,1),(87,58,1),(87,66,56),(87,105,44),(87,145,50),(88,3,55),(88,29,1),(88,56,42),(88,84,33),(88,92,30),(88,95,1),(88,112,48),(88,122,37),(89,3,60),(89,29,1),(89,56,45),(89,84,33),(89,92,1),(89,95,1),(89,112,53),(89,122,37),(90,6,30),(90,18,23),(90,66,50),(90,73,39),(90,139,18),(90,143,1),(90,163,1),(91,6,1),(91,18,1),(91,128,50),(91,139,1),(91,163,1),(92,20,1),(92,36,35),(92,65,27),(92,74,1),(92,87,1),(93,20,1),(93,36,38),(93,65,29),(93,74,1),(93,87,1),(94,20,1),(94,36,38),(94,65,29),(94,74,1),(94,87,1),(95,10,15),(95,56,43),(95,100,25),(95,108,19),(95,112,1),(95,119,33),(95,143,1),(96,21,17),(96,29,12),(96,58,24),(96,65,1),(96,78,37),(96,92,29),(96,95,1),(96,97,32),(97,21,1),(97,29,1),(97,58,24),(97,65,1),(97,78,43),(97,92,33),(97,95,1),(97,97,37),(98,16,1),(98,25,35),(98,54,25),(98,56,40),(98,73,1),(98,131,30),(98,157,20),(99,16,1),(99,25,42),(99,54,25),(99,56,49),(99,73,1),(99,131,34),(99,157,1),(100,41,43),(100,75,29),(100,112,1),(100,114,22),(100,127,17),(100,141,36),(100,143,1),(101,41,50),(101,75,29),(101,112,1),(101,114,22),(101,127,1),(101,141,40),(101,143,1),(102,7,1),(102,65,1),(102,72,28),(102,93,37),(102,104,25),(102,121,48),(102,126,42),(102,135,32),(103,7,1),(103,65,1),(103,131,28),(104,14,1),(104,15,43),(104,49,31),(104,52,1),(104,58,18),(104,73,25),(104,100,46),(104,144,13),(104,147,38),(105,14,1),(105,15,48),(105,49,1),(105,52,1),(105,58,18),(105,73,1),(105,100,55),(105,144,1),(105,147,41),(106,31,1),(106,49,43),(106,59,48),(106,68,38),(106,78,1),(106,80,53),(106,109,33),(107,4,1),(107,19,1),(107,24,53),(107,43,33),(107,67,38),(107,81,48),(107,149,43),(108,27,23),(108,29,15),(108,112,39),(108,119,31),(108,131,7),(108,139,1),(108,164,1),(109,41,48),(109,57,45),(109,114,40),(109,122,32),(109,123,1),(109,124,37),(109,143,1),(110,41,53),(110,57,49),(110,114,43),(110,122,1),(110,123,1),(110,124,39),(110,143,1),(111,50,40),(111,60,1),(111,61,45),(111,73,50),(111,131,30),(111,144,35),(111,145,55),(112,50,1),(112,60,1),(112,61,48),(112,73,55),(112,131,1),(112,144,1),(112,145,64),(113,27,44),(113,32,1),(113,34,54),(113,52,30),(113,75,48),(113,84,38),(113,95,1),(113,116,24),(113,144,1),(114,1,29),(114,10,1),(114,22,1),(114,53,49),(114,93,32),(114,119,45),(114,121,39),(114,135,36),(114,158,29),(115,19,1),(115,30,46),(115,73,41),(115,81,36),(115,100,1),(115,144,31),(115,165,26),(116,4,37),(116,16,1),(116,62,45),(116,73,24),(116,124,19),(116,159,30),(117,4,41),(117,16,1),(117,62,52),(117,73,24),(117,124,1),(117,159,30),(118,4,54),(118,50,30),(118,60,24),(118,61,45),(118,89,1),(118,139,19),(118,144,1),(118,160,37),(119,4,54),(119,50,30),(119,60,24),(119,61,48),(119,89,1),(119,139,1),(119,144,1),(119,160,39),(120,56,22),(120,62,47),(120,75,42),(120,84,37),(120,103,27),(120,141,32),(120,143,1),(120,159,17),(121,56,1),(121,143,1),(121,159,1),(122,8,1),(122,21,1),(122,32,31),(122,75,23),(122,78,39),(122,137,47),(123,4,42),(123,33,24),(123,49,20),(123,73,17),(123,99,1),(123,120,29),(123,142,35),(123,162,50),(124,12,58),(124,13,39),(124,32,23),(124,67,31),(124,74,18),(124,76,1),(124,95,1),(124,147,47),(125,73,1),(125,75,49),(125,99,1),(125,112,37),(125,148,54),(125,149,42),(125,150,34),(126,20,39),(126,40,1),(126,43,43),(126,46,55),(126,73,36),(126,123,52),(126,124,48),(127,10,21),(127,49,36),(127,54,30),(127,56,43),(127,113,25),(127,120,49),(127,142,54),(127,157,1),(128,73,35),(128,100,44),(128,131,21),(128,143,1),(128,144,28),(128,145,51),(129,129,1),(129,143,15),(130,35,1),(130,62,1),(130,63,52),(130,73,1),(130,143,1),(130,165,1),(131,13,25),(131,20,31),(131,52,1),(131,62,46),(131,66,38),(131,86,20),(131,116,16),(131,159,1),(132,154,1),(133,49,36),(133,52,16),(133,99,27),(133,110,1),(133,143,1),(133,144,31),(133,145,45),(133,165,37),(134,3,42),(134,6,36),(134,57,44),(134,62,54),(134,86,48),(134,99,1),(134,110,1),(134,143,1),(134,144,37),(134,159,1),(134,165,40),(135,4,44),(135,31,42),(135,91,48),(135,99,1),(135,110,1),(135,143,1),(135,144,37),(135,148,54),(135,150,1),(135,151,40),(136,40,1),(136,44,44),(136,46,54),(136,73,42),(136,99,1),(136,100,48),(136,110,1),(136,123,42),(136,143,1),(136,144,37),(136,165,40),(137,4,35),(137,23,1),(137,96,23),(137,103,28),(137,115,1),(137,143,1),(137,155,42),(138,60,34),(138,62,53),(138,73,39),(138,128,46),(138,159,1),(138,163,1),(139,60,1),(139,62,49),(139,73,39),(139,128,44),(139,159,1),(139,163,1),(140,1,34),(140,56,1),(140,62,49),(140,73,44),(140,111,1),(140,120,39),(141,1,1),(141,56,1),(141,62,53),(141,73,46),(141,111,1),(141,120,39),(142,4,1),(142,63,54),(142,139,33),(142,145,45),(142,162,1),(142,165,38),(143,5,1),(143,13,35),(143,34,48),(143,56,41),(143,58,1),(143,63,56),(143,105,1),(144,4,55),(144,12,51),(144,66,1),(144,86,60),(144,89,1),(145,4,55),(145,37,1),(145,75,60),(145,148,51),(145,150,1),(146,4,55),(146,44,1),(146,73,51),(146,89,1),(146,118,60),(147,4,20),(147,35,40),(147,63,50),(147,73,1),(147,119,30),(147,151,10),(147,164,1),(148,4,20),(148,35,45),(148,63,55),(148,73,1),(148,119,35),(148,151,1),(148,164,1),(149,4,1),(149,35,45),(149,63,60),(149,73,1),(149,119,35),(149,151,1),(149,164,1),(150,5,81),(150,8,63),(150,21,1),(150,29,1),(150,86,75),(150,97,1),(150,103,70),(150,141,1);
/*!40000 ALTER TABLE `poke_moves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pokemon` (
  `poke_id` int(11) NOT NULL AUTO_INCREMENT,
  `pokedex_no` varchar(45) NOT NULL,
  `poke_name` varchar(45) NOT NULL,
  `type1_id` int(11) NOT NULL,
  `type2_id` int(11) DEFAULT NULL,
  `hp` int(11) NOT NULL,
  `atk` int(11) NOT NULL,
  `def` int(11) NOT NULL,
  `specialatk` int(11) NOT NULL,
  `specialdef` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  PRIMARY KEY (`poke_id`),
  KEY `type_id_fk_idx` (`type1_id`),
  KEY `type2_id_fk_idx` (`type2_id`),
  CONSTRAINT `type1_id_fk` FOREIGN KEY (`type1_id`) REFERENCES `types` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'1','Bulbasaur',5,8,45,49,49,65,65,45),(2,'2','Ivysaur',5,8,60,62,63,80,80,60),(3,'3','Venusaur',5,8,80,82,83,100,100,80),(4,'4','Charmander',2,NULL,39,52,43,60,50,65),(5,'5','Charmeleon',2,NULL,58,64,58,80,65,80),(6,'6','Charizard',2,10,78,84,78,109,85,100),(7,'7','Squirtle',3,NULL,44,48,65,50,64,43),(8,'8','Wartortle',3,NULL,59,63,80,65,80,58),(9,'9','Blastoise',3,NULL,79,83,100,85,105,78),(10,'10','Caterpie',12,NULL,45,30,35,20,20,45),(11,'11','Metapod',12,NULL,50,20,55,25,25,30),(12,'12','Butterfree',12,10,60,45,50,90,80,70),(13,'13','Weedle',12,8,40,35,30,20,20,50),(14,'14','Kakuna',12,8,45,25,50,25,25,35),(15,'15','Beedrill',12,8,65,90,40,45,80,75),(16,'16','Pidgey',1,10,40,45,40,35,35,56),(17,'17','Pidgeotto',1,10,63,60,55,50,50,71),(18,'18','Pidgeot',1,10,83,80,75,70,70,101),(19,'19','Rattata',1,NULL,30,56,35,25,35,72),(20,'20','Raticate',1,NULL,55,81,60,50,70,97),(21,'21','Spearow',1,10,40,60,30,31,31,70),(22,'22','Fearow',1,10,65,90,65,61,61,100),(23,'23','Ekans',8,NULL,35,60,44,40,54,55),(24,'24','Arbok',8,NULL,60,95,69,65,79,80),(25,'25','Pikachu',4,NULL,35,55,40,50,50,90),(26,'26','Raichu',4,NULL,60,90,55,90,80,110),(27,'27','Sandshrew',9,NULL,50,75,85,20,30,40),(28,'28','Sandslash',9,NULL,75,100,110,45,55,65),(29,'29','Nidoran♀',8,NULL,55,47,52,40,40,41),(30,'30','Nidorina',8,NULL,70,62,67,55,55,56),(31,'31','Nidoqueen',8,9,90,92,87,75,85,76),(32,'32','Nidoran♂',8,NULL,46,57,40,40,40,50),(33,'33','Nidorino',8,NULL,61,72,57,55,55,65),(34,'34','Nidoking',8,9,81,102,77,85,75,85),(35,'35','Clefairy',1,NULL,70,45,48,60,65,35),(36,'36','Clefable',1,NULL,95,70,73,95,90,60),(37,'37','Vulpix',2,NULL,38,41,40,50,65,65),(38,'38','Ninetales',2,NULL,73,76,75,81,100,100),(39,'39','Jigglypuff',1,1,115,45,20,45,25,20),(40,'40','Wigglytuff',1,1,140,70,45,85,50,45),(41,'41','Zubat',8,10,40,45,35,30,40,55),(42,'42','Golbat',8,10,75,80,70,65,75,90),(43,'43','Oddish',5,8,45,50,55,75,65,30),(44,'44','Gloom',5,8,60,65,70,85,75,40),(45,'45','Vileplume',5,8,75,80,85,110,90,50),(46,'46','Paras',12,5,35,70,55,45,55,25),(47,'47','Parasect',12,5,60,95,80,60,80,30),(48,'48','Venonat',12,8,60,55,50,40,55,45),(49,'49','Venomoth',12,8,70,65,60,90,75,90),(50,'50','Diglett',9,NULL,10,55,25,35,45,95),(51,'51','Dugtrio',9,NULL,35,100,50,50,70,120),(52,'52','Meowth',1,NULL,40,45,35,40,40,90),(53,'53','Persian',1,NULL,65,70,60,65,65,115),(54,'54','Psyduck',3,NULL,50,52,48,65,50,55),(55,'55','Golduck',3,NULL,80,82,78,95,80,85),(56,'56','Mankey',7,NULL,40,80,35,35,45,70),(57,'57','Primeape',7,NULL,65,105,60,60,70,95),(58,'58','Growlithe',2,NULL,55,70,45,70,50,60),(59,'59','Arcanine',2,NULL,90,110,80,100,80,95),(60,'60','Poliwag',3,NULL,40,50,40,40,40,90),(61,'61','Poliwhirl',3,NULL,65,65,65,50,50,90),(62,'62','Poliwrath',3,7,90,95,95,70,90,70),(63,'63','Abra',11,NULL,25,20,15,105,55,90),(64,'64','Kadabra',11,NULL,40,35,30,120,70,105),(65,'65','Alakazam',11,NULL,55,50,45,135,95,120),(66,'66','Machop',7,NULL,70,80,50,35,35,35),(67,'67','Machoke',7,NULL,80,100,70,50,60,45),(68,'68','Machamp',7,NULL,90,130,80,65,85,55),(69,'69','Bellsprout',5,8,50,75,35,70,30,40),(70,'70','Weepinbell',5,8,65,90,50,85,45,55),(71,'71','Victreebel',5,8,80,105,65,100,70,70),(72,'72','Tentacool',3,8,40,40,35,50,100,70),(73,'73','Tentacruel',3,8,80,70,65,80,120,100),(74,'74','Geodude',13,9,40,80,100,30,30,20),(75,'75','Graveler',13,9,55,95,115,45,45,35),(76,'76','Golem',13,9,80,120,130,55,65,45),(77,'77','Ponyta',2,NULL,50,85,55,65,65,90),(78,'78','Rapidash',2,NULL,65,100,70,80,80,105),(79,'79','Slowpoke',3,11,90,65,65,40,40,15),(80,'80','Slowbro',3,11,95,75,110,100,80,30),(81,'81','Magnemite',4,1,25,35,70,95,55,45),(82,'82','Magneton',4,1,50,60,95,120,70,70),(83,'83','Farfetch\'d',1,10,52,90,55,58,62,60),(84,'84','Doduo',1,10,35,85,45,35,35,75),(85,'85','Dodrio',1,10,60,110,70,60,60,110),(86,'86','Seel',3,NULL,65,45,55,45,70,45),(87,'87','Dewgong',3,6,90,70,80,70,95,70),(88,'88','Grimer',8,NULL,80,80,50,40,50,25),(89,'89','Muk',8,NULL,105,105,75,65,100,50),(90,'90','Shellder',3,NULL,30,65,100,45,25,40),(91,'91','Cloyster',3,6,50,95,180,85,45,70),(92,'92','Gastly',14,8,30,35,30,100,35,80),(93,'93','Haunter',14,8,45,50,45,115,55,95),(94,'94','Gengar',14,8,60,65,60,130,75,110),(95,'95','Onix',13,9,35,45,160,30,45,70),(96,'96','Drowzee',11,NULL,60,48,45,43,90,42),(97,'97','Hypno',11,NULL,85,73,70,73,115,67),(98,'98','Krabby',3,NULL,30,105,90,25,25,50),(99,'99','Kingler',3,NULL,55,130,115,50,50,75),(100,'100','Voltorb',4,NULL,40,30,50,55,55,100),(101,'101','Electrode',4,NULL,60,50,70,80,80,150),(102,'102','Exeggcute',5,11,60,40,80,60,45,40),(103,'103','Exeggutor',5,11,95,95,85,125,75,55),(104,'104','Cubone',9,NULL,50,50,95,40,50,35),(105,'105','Marowak',9,NULL,60,80,110,50,80,45),(106,'106','Hitmonlee',7,NULL,50,120,53,35,110,87),(107,'107','Hitmonchan',7,NULL,50,105,79,35,110,76),(108,'108','Lickitung',1,NULL,90,55,75,60,75,30),(109,'109','Koffing',8,NULL,40,65,95,60,45,35),(110,'110','Weezing',8,NULL,65,90,120,85,70,60),(111,'111','Rhyhorn',9,13,80,85,95,30,30,25),(112,'112','Rhydon',9,13,105,130,120,45,45,40),(113,'113','Chansey',1,NULL,250,5,5,35,105,50),(114,'114','Tangela',5,NULL,65,55,115,100,40,60),(115,'115','Kangaskhan',1,NULL,105,95,80,40,80,90),(116,'116','Horsea',3,NULL,30,40,70,70,25,60),(117,'117','Seadra',3,NULL,55,65,95,95,45,85),(118,'118','Goldeen',3,NULL,45,67,60,35,50,63),(119,'119','Seaking',3,NULL,80,92,65,65,80,68),(120,'120','Staryu',3,NULL,30,45,55,70,55,85),(121,'121','Starmie',3,11,60,75,85,100,85,115),(122,'122','Mr. Mime',11,1,40,45,65,100,120,90),(123,'123','Scyther',12,10,70,110,80,55,80,105),(124,'124','Jynx',6,11,65,50,35,115,95,95),(125,'125','Electabuzz',4,NULL,65,83,57,95,85,105),(126,'126','Magmar',2,NULL,65,95,57,100,85,93),(127,'127','Pinsir',12,NULL,65,125,100,55,70,85),(128,'128','Tauros',1,NULL,75,100,95,40,70,110),(129,'129','Magikarp',3,NULL,20,10,55,15,20,80),(130,'130','Gyarados',3,10,95,125,79,60,100,81),(131,'131','Lapras',3,6,130,85,80,85,95,60),(132,'132','Ditto',1,NULL,48,48,48,48,48,48),(133,'133','Eevee',1,NULL,55,55,50,45,65,55),(134,'134','Vaporeon',3,NULL,130,65,60,110,95,65),(135,'135','Jolteon',4,NULL,65,65,60,110,95,130),(136,'136','Flareon',2,NULL,65,130,60,95,110,65),(137,'137','Porygon',1,NULL,65,60,70,85,75,40),(138,'138','Omanyte',13,3,35,40,100,90,55,35),(139,'139','Omastar',13,3,70,60,125,115,70,55),(140,'140','Kabuto',13,3,30,80,90,55,45,55),(141,'141','Kabutops',13,3,60,115,105,65,70,80),(142,'142','Aerodactyl',13,10,80,105,65,60,75,130),(143,'143','Snorlax',1,NULL,160,110,65,65,110,30),(144,'144','Articuno',6,10,90,85,100,95,125,85),(145,'145','Zapdos',4,10,90,90,85,125,90,100),(146,'146','Moltres',2,10,90,100,90,125,85,90),(147,'147','Dratini',1,NULL,41,64,45,50,50,50),(148,'148','Dragonair',1,NULL,61,84,65,70,70,70),(149,'149','Dragonite',1,10,91,134,95,100,100,80),(150,'150','Mewtwo',11,NULL,106,110,90,154,90,130);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `query_viridian`
--

DROP TABLE IF EXISTS `query_viridian`;
/*!50001 DROP VIEW IF EXISTS `query_viridian`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query_viridian` AS SELECT 
 1 AS `Pokemon`,
 1 AS `Above Average Speed`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `type_effect`
--

DROP TABLE IF EXISTS `type_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_effect` (
  `atk_id` int(11) NOT NULL,
  `def_id` int(11) NOT NULL,
  `effectiveness` int(11) DEFAULT NULL,
  PRIMARY KEY (`atk_id`,`def_id`),
  KEY `def_fk_idx` (`def_id`),
  CONSTRAINT `atk_fk` FOREIGN KEY (`atk_id`) REFERENCES `types` (`type_id`),
  CONSTRAINT `def_fk` FOREIGN KEY (`def_id`) REFERENCES `types` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_effect`
--

LOCK TABLES `type_effect` WRITE;
/*!40000 ALTER TABLE `type_effect` DISABLE KEYS */;
INSERT INTO `type_effect` VALUES (1,7,-1),(1,14,-1),(2,3,-1),(2,5,1),(2,6,1),(2,9,-1),(2,12,1),(2,13,-1),(3,2,1),(3,4,-1),(3,5,-1),(3,9,1),(3,13,1),(4,3,1),(4,4,-1),(4,5,-1),(4,9,-1),(4,10,1),(4,15,-1),(5,2,-1),(5,3,1),(5,5,-1),(5,8,-1),(5,10,-1),(5,12,-1),(5,13,1),(5,15,-1),(6,2,-1),(6,5,1),(6,7,-1),(6,9,1),(6,10,1),(6,13,-1),(6,15,1),(7,1,1),(7,10,-1),(7,11,-1),(8,5,1),(8,9,-1),(8,11,-1),(9,2,1),(9,4,1),(9,5,-1),(9,8,1),(9,10,-1),(9,12,-1),(9,13,1),(10,3,0),(10,4,-1),(10,5,1),(10,6,-1),(10,7,1),(10,12,1),(10,13,-1),(11,7,1),(11,8,1),(11,11,-1),(12,2,-1),(12,5,1),(12,7,-1),(12,8,-1),(12,10,-1),(12,11,1),(12,14,-1),(13,2,1),(13,3,-1),(13,5,-1),(13,6,1),(13,7,-1),(13,9,-1),(13,10,1),(13,12,1),(14,1,-1),(14,11,1),(14,14,1),(15,6,-1),(15,15,1);
/*!40000 ALTER TABLE `type_effect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Normal'),(2,'Fire'),(3,'Water'),(4,'Electric'),(5,'Grass'),(6,'Ice'),(7,'Fighting'),(8,'Poison'),(9,'Ground'),(10,'Flying'),(11,'Psychic'),(12,'Bug'),(13,'Rock'),(14,'Ghost'),(15,'Dragon');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `avg_type_atk`
--

/*!50001 DROP VIEW IF EXISTS `avg_type_atk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `avg_type_atk` AS select `types`.`type_name` AS `Type Name`,avg(`pokemon`.`atk`) AS `Average Attack` from (`pokemon` left join `types` on((`types`.`type_id` = `pokemon`.`type1_id`))) group by `types`.`type_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `effective_vs_water`
--

/*!50001 DROP VIEW IF EXISTS `effective_vs_water`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `effective_vs_water` AS select `moves`.`move_id` AS `move_id`,`t`.`type_name` AS `Type`,`moves`.`move_title` AS `Move`,`moves`.`category` AS `category`,`moves`.`power` AS `power`,`moves`.`acc` AS `Accuracy`,`moves`.`pp` AS `pp`,`type_effect`.`effectiveness` AS `effectiveness` from ((`moves` join `type_effect` on((`moves`.`type_id` = `type_effect`.`atk_id`))) join `types` `t` on((`moves`.`type_id` = `t`.`type_id`))) where ((`type_effect`.`def_id` = 3) and (`type_effect`.`effectiveness` = 1)) order by `moves`.`move_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grass_type_atkspeed`
--

/*!50001 DROP VIEW IF EXISTS `grass_type_atkspeed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `grass_type_atkspeed` AS select `pokemon`.`poke_name` AS `Pokemon`,max((`pokemon`.`atk` + `pokemon`.`speed`)) AS `Atk/Speed Sum`,`pokemon`.`type1_id` AS `Type ID` from `pokemon` where (`pokemon`.`type1_id` = 5) group by `pokemon`.`poke_name` order by 'Atk/Speed Sum' desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hydro_pump`
--

/*!50001 DROP VIEW IF EXISTS `hydro_pump`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `hydro_pump` AS select `p`.`poke_name` AS `Pokemon`,`c`.`level` AS `level` from ((`pokemon` `p` join `poke_moves` `c` on((`p`.`poke_id` = `c`.`poke_id`))) join `moves` `m` on((`c`.`move_id` = `m`.`move_id`))) where (`m`.`move_title` = 'Hydro Pump') order by `p`.`poke_name`,`c`.`level` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query_viridian`
--

/*!50001 DROP VIEW IF EXISTS `query_viridian`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50001 VIEW `query_viridian` AS select `p`.`poke_name` AS `Pokemon`,`p`.`speed` AS `Above Average Speed` from ((`pokemon` `p` join `poke_locations` `pl`) join `location` `l`) where ((`p`.`poke_id` = `pl`.`poke_id`) and (`pl`.`location_id` = 51) and (`pl`.`location_id` = `l`.`location_id`) and (`p`.`speed` > (select avg(`p`.`speed`) from (`pokemon` `p` join `poke_locations` `pl`) where ((`pl`.`location_id` = 51) and (`p`.`poke_id` = `pl`.`poke_id`))))) */;
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

-- Dump completed on 2019-12-06 16:31:49
