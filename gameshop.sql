-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: game_shop
-- ------------------------------------------------------
-- Server version	5.5.54

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'First Person Shooter'),(2,'RPG'),(3,'Adventure'),(4,'Strategy');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_mail` varchar(45) DEFAULT NULL,
  `message` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `description` longtext,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`,`category_id`),
  KEY `fk_game_category1_idx` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'Call of Duty 4',30,'https://media.gamecentar.rs/2017/05/Call-of-Duty-4-Modern-Warfare-PS3-igra-Igrica.jpg','Call of Duty 4: Modern Warfare is a first-person shooter video game developed by Infinity Ward and published by Activision.The story takes place in the year 2011, where a radical leader has executed the president of an unnamed country in the Middle East, and an ultranationalist movement ignites a civil war in Russia. The conflicts are seen from the perspectives of a U.S. Force Reconnaissance Marine and a British SAS commando, and are set in various locales, such as the United Kingdom, the Middle East, Azerbaijan, Russia, and Ukraine. The multiplayer portion of the game features various game modes, and contains a leveling system that allows the player to unlock additional weapons, weapon attachments, and camouflage schemes as they advance.',1),
(2,'World of Warcraft',35,'https://media.gamecentar.rs/2017/05/World-of-Warcraft-Legion-PC-igra-Igrica.jpg','World of Warcraft (WoW) is a massively multiplayer online role-playing game (MMORPG) released in 2004 by Blizzard Entertainment.As with other MMORPGs, players control a character avatar within a game world in third- or first-person view, exploring the landscape, fighting various monsters, completing quests, and interacting with non-player characters (NPCs) or other players. Also similar to other MMORPGs, World of Warcraft requires the player to pay for a subscription by using a credit or debit card, using prepaid Blizzard game cards or using a WoW Token purchased in-game. Players without a subscription may use a trial account that lets the player character reach up to level 20 but has many features locked.',2),
(3,'Minecraft',25,'https://www.instant-gaming.com/images/products/442/271x377/442.jpg','Minecraft is a sandbox video game created and designed by Swedish game designer Markus \"Notch\" Persson, and later fully developed and published by Mojang. The creative and building aspects of Minecraft allow players to build with a variety of different cubes in a 3D procedurally generated world. Other activities in the game include exploration, resource gathering, crafting, and combat.',3),
(4,'Age of Empires',30,'https://media.gamecentar.rs/2017/05/Age-of-Empires-2-Gold-Edition-PC-igra-Igrica.jpg','Age of Empires is a series of personal computer games originally developed by Ensemble Studios and published by Microsoft Studios.The games in the series focus on historical events throughout time. Age of Empires covers the events between the Stone Age and the Classical period, in Europe and Asia. Its expansion, The Rise of Rome, follows the formation and rise of the Roman Empire. The Age of Kings and its Nintendo DS spin-off follow Europe and Asia through the Middle Ages. The Age of Kings\' expansion pack, The Conquerors, is set during the same period, but also includes scenarios about the Spanish conquest of Mexico, El Cid, and Attila the Hun. Age of Empires III and its first expansion, The WarChiefs, take place during the European colonization of the Americas. Its second expansion, The Asian Dynasties, follows the rise of Asia in the same period. Age of Empires Online focuses on the Greek and Egyptian civilizations. The series\' spin-off, Age of Mythology, and its expansion pack, The Titans, are set during the Bronze Age, but focus on mythology as their themes, rather than history.',4),
(5,'Counter Strike GO',30,'https://media.gamecentar.rs/2017/05/CS-GO-Counter-Strike-Global-Offensive-1.jpg','Counter-Strike: Global Offensive (CS:GO) is a multiplayer first-person shooter video game developed by Hidden Path Entertainment and Valve Corporation. It is the fourth game in the Counter-Strike series and was released for Microsoft Windows, OS X, Xbox 360, and PlayStation 3 in August 2012, with the Linux version released in September 2014. The game pits two teams against each other: the Terrorists and the Counter-Terrorists. Both sides are tasked with eliminating the other while also completing separate objectives, the Terrorists, depending on the game mode, must either plant the bomb or defend the hostages, while the Counter-Terrorists must either prevent the bomb from being planted, defuse the bomb, or rescue the hostages. There are six game modes, all of which have distinct characteristics specific to that mode.',1),
(6,'Titan Quest',40,'https://images-na.ssl-images-amazon.com/images/I/51u34s32KuL._SY445_.jpg','Titan Quest is an action role-playing game set in the pre-Roman Ancient World: these include Ancient Greece, Egypt, and the Silk Road leading through Asia. Players take control of an avatar: players are able to choose gender, name and tunic color.[2][3][4] The three-dimensional world is navigated through an overhead third-person view, with the player character being controlled with the mouse through a point-and-click interface, while abilities are mapped to keyboard buttons. The environment is obscured by a \"Fog of War\" effect which blacks out unexplored environments on the minimap. Optional text tutorials for gameplay elements are unlocked progressively throughout the game and can be viewed at any time.',2),
(7,'Subnautica',30,'http://oceanofgames.com/wp-content/uploads/2015/04/Subnautica-Free-Download.png','ubnautica is a survival, adventure game set in an open world environment and played from a first-person perspective. The player controls the lone survivor of a crashed space ship, called the Aurora, on an aquatic planet. This ship blows up early in the game. Upon entry, the PDA warns that creatures around the Aurora contain traces of human tissue inside their digestive systems, and continues to advise you not to be there. [11] The main objective of the player is to explore the game\'s world and survive the dangers of the planet while at the same time following the story of the game. Subnautica allows the player to collect resources, construct tools, bases, and submersibles, and interact with the planet\'s wildlife.',3),
(8,'Generals',25,'https://images-na.ssl-images-amazon.com/images/I/51EH80EZ98L._SY445_.jpg','Command & Conquer: Generals is a real-time strategy video game and the seventh installment in the Command & Conquer series.Generals takes place in the near future, with players given a choice of three factions to play. In Generals, the United States and the People\'s Republic of China are the world\'s two superpowers, and are the targets of the Global Liberation Army (GLA), an omnipresent borderless terrorist organization, fighting as a fanatical irregular force. The United States and China are depicted as allies in the series who occasionally co-operate against the GLA, whose goal is the elimination of the military forces of China and the United States.',4),
(9,'GTA V',25,'https://images.g2a.com/newlayout/323x433/1x1x0/387a113709aa/59e5efeb5bafe304c4426c47','Los Santos: a sprawling sun-soaked metropolis full of self-help gurus, starlets and fading celebrities, once the envy of the Western world, now struggling to stay afloat in an era of economic uncertainty and cheap reality TV.',2),
(10,'Overwatch',30,'https://static-cdn.jtvnw.net/ttv-boxart/Overwatch.jpg','Overwatch is a team-based multiplayer online first-person shooter video game developed and published by Blizzard Entertainment. It was released in May 2016 for Windows, PlayStation 4, and Xbox One. Overwatch assigns players into two teams of six, with each player selecting from a roster of over 20 characters, known in-game as \"heroes\", each with a unique style of play, whose roles are divided into four general categories: Offense, Defense, Tank, and Support. Players on a team work together to secure and defend control points on a map or escort a payload across the map in a limited amount of time. Players gain cosmetic rewards that do not affect gameplay, such as character skins and victory poses, as they play the game. The game was initially launched with casual play, with a competitive ranked mode, various \'arcade\' game modes, and a player-customizable server browser subsequently included following its release. Additionally, Blizzard has developed and added new characters, maps, and game modes post-release, while stating that all Overwatch updates will remain free, with the only additional cost to players being microtransactions to earn additional cosmetic rewards.',1),
(11,'Rocket League',25,'https://rocketleague.media.zestyio.com/boxart_comp1.f1cb27a519bdb5b6ed34049a5b86e317.jpg','Rocket League is a vehicular soccer video game developed and published by Psyonix. The game was first released for Microsoft Windows and PlayStation 4 in July 2015, with ports for Xbox One, OS X, Linux, and Nintendo Switch later being released. In June 2016, 505 Games began distributing a physical retail version for PlayStation 4 and Xbox One, with Warner Bros. Interactive Entertainment taking over those duties by the end of 2017.',3),
(12,'Far Cry 5',45,'https://www.instant-gaming.com/images/products/1842/271x377/1842.jpg','Far Cry 5 is an upcoming action-adventure first-person shooter video game developed by Ubisoft Montreal and published by Ubisoft for Microsoft Windows, PlayStation 4 and Xbox One. It is the eleventh installment and the fifth main title in the Far Cry series. It is scheduled to be released on March 27, 2018.Similar to its predecessors, Far Cry 5 is an action-adventure first-person shooter set in an open world environment which the player can explore freely on foot or via various vehicles. Unlike previous titles in the series where the player takes on the role of a set character, the game will feature a new character creator, which the player can use to customize their character\'s appearance. The game will also feature the old aiming system from other titles which allows players to lean around cover.[1][2] The player will have a variety of ranged and explosive weapons to fight against enemies, while the game will place a renewed emphasis on close-quarters combat compared to previous Far Cry titles by introducing a wider range of melee weapons',1);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (63),(63);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `game_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`,`user_id`,`game_id`),
  KEY `fk_user_has_game_game1_idx` (`game_id`),
  KEY `fk_user_has_game_user_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--



--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_address` (
  `id` bigint(20) NOT NULL,
  `state_name` varchar(45) DEFAULT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  `street_name` varchar(45) DEFAULT NULL,
  `zip_code` int(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shipping_address_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--



--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'John','Doe','john@mail.com','john','doe'),(5,'Jack','Norwitc','Jack@luv2code.com','jack','jack123'),(36,'Mary','Public','mary@mail.com','mary','public');
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

-- Dump completed on 2018-03-04 12:15:48
