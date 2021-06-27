-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: abcStoreCatalogCopy
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `isfeatured` bit(1) DEFAULT NULL,
  `isnavigationincluded` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentid` bigint DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `urlkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PARENT_CATEGORY_idx` (`parentid`),
  CONSTRAINT `FK_PARENT_CATEGORY` FOREIGN KEY (`parentid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin',_binary '',_binary '',_binary '','Kitchen & Lifestyle',NULL,'/kitchen-and-lifestyle',''),(2,'2021-06-25 00:11:13',NULL,'2021-06-25 00:11:13',NULL,_binary '',_binary '',_binary '','Kitchen',1,'/kitchen',''),(3,'2021-06-25 00:12:27',NULL,'2021-06-25 00:12:27',NULL,_binary '',_binary '',_binary '','Drinkware',2,'/kitchen/drinkware','drinkware'),(4,'2021-06-25 00:13:54',NULL,'2021-06-25 00:13:54',NULL,_binary '',_binary '',_binary '','Small Appliances',2,'/kitchen/small-appliances','small-appliances'),(5,'2021-06-25 00:15:12',NULL,'2021-06-25 00:15:12',NULL,_binary '',_binary '',_binary '','Lifestyle',1,'/lifestyle',''),(6,'2021-06-25 00:33:40',NULL,'2021-06-25 00:33:40',NULL,_binary '',_binary '',_binary '','Books and dining guides',5,'/lifestyle/books-and-dining-guides','books-and-dining-guides'),(7,'2021-06-25 00:35:04',NULL,'2021-06-25 00:35:04',NULL,_binary '',_binary '',_binary '','Cookbooks',2,'/kitchen/cookbooks','cookbooks'),(8,'2021-06-25 09:38:37',NULL,'2021-06-25 09:38:37',NULL,_binary '',_binary '',_binary '','Kitchen tools',2,'/kitchen/kitchen-tools','kitchen-tools'),(9,'2021-06-27 00:07:58',NULL,'2021-06-27 00:07:58',NULL,_binary '',_binary '',_binary '','Sleep',5,'/lifestyle/sleep','sleep'),(10,'2021-06-27 00:09:49',NULL,'2021-06-27 00:09:49',NULL,_binary '',_binary '',_binary '','Food containers',2,'/kitchen/food-containers','food-containers'),(11,'2021-06-27 00:09:49',NULL,NULL,NULL,_binary '',_binary '',_binary '','Food & Drink',NULL,'/food',NULL),(12,'2021-06-27 00:16:31',NULL,'2021-06-27 00:16:31',NULL,_binary '',_binary '',_binary '','Snack bars',11,'/food/snack-bars','snack-bars'),(13,'2021-06-27 00:18:13',NULL,'2021-06-27 00:18:13',NULL,_binary '',_binary '',_binary '','Puffed snacks',11,'/food/puffed-snacks','puffed-snacks'),(14,'2021-06-27 00:19:07',NULL,'2021-06-27 00:19:07',NULL,_binary '',_binary '',_binary '','Chips, crisps, and crackers',11,'/food/chips-crisps-crackers','chips-crisps-and-crackers');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `productId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKqojfn7tfr52qjdeio8o4pq38i` FOREIGN KEY (`id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin','USD',1);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `percentage` int DEFAULT NULL,
  `productId` bigint DEFAULT NULL,
  `productSkuId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKp26x85s5a88j555hpt4mm5b4p` FOREIGN KEY (`id`) REFERENCES `product_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin',0.00,0,1,NULL);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fulfillment`
--

DROP TABLE IF EXISTS `fulfillment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fulfillment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `friendlyname` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `productSkuId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FKa6acoaqqrqmfti216hfgwkkqc` FOREIGN KEY (`id`) REFERENCES `product_sku` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fulfillment`
--

LOCK TABLES `fulfillment` WRITE;
/*!40000 ALTER TABLE `fulfillment` DISABLE KEYS */;
INSERT INTO `fulfillment` VALUES (1,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin','Physical Ship','PHYSICAL_SHIP\" \"PHYSICAL_SHIP\" PHYSICAL_SHIP',NULL);
/*!40000 ALTER TABLE `fulfillment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `alttext` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_sku_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin','WW by Built 30 oz Tumbler','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_Built_Tumbler_52013-0266.jpg?auto=webp',1,1),(2,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin','Air Fryer - Grey','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/1200x1200-air-fryer-6.jpg?auto=webp',2,2),(3,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin','Meal Planner','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/Meal-Planner-1200x1200-82629.jpg?auto=webp',3,3),(4,'2021-06-24 16:31:59','admin','2021-06-24 16:31:59','admin','The myWW Program Cookbook','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/5061017_cb_myww_programcookbook_cover_rev_1200.jpg?auto=webp',4,4),(5,'2021-06-24 16:31:59',NULL,NULL,NULL,'Reusable Produce Bags','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_ReusableProduceBags-52031-157.jpg?auto=webp',5,5),(6,'2021-06-24 16:31:59',NULL,NULL,NULL,'SpaRoom Essential Oils Sleep Set','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/WW_Grey-Amber-1RT.jpg?auto=webp',6,6),(7,NULL,NULL,NULL,NULL,'Bottle and Straw Cleaner Set','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_ReusableStrawAndBottleCleanerSet_52027_0060_RET_1200_F.jpg?auto=webp',7,7),(8,NULL,NULL,NULL,NULL,'2-in-1 Muffin and Mini Cake Cups','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/1200x1200-muffin-cup-4_v2.jpg?auto=webp',8,8),(9,NULL,NULL,NULL,NULL,'WW by Built 3 Compartment Container','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_Built_3-CompartmentContainer_52021-0269.jpg?auto=webp',9,9),(10,NULL,NULL,NULL,NULL,NULL,'https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/6023002_mini_pbpie_box_f_1200.jpg?auto=webp',10,10),(11,NULL,NULL,NULL,NULL,'Sweet and Salty Nut Mini Bar','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/mini_swtslty_box_f_1200.jpg?auto=webp',11,11),(12,NULL,NULL,NULL,NULL,'Cheddar Cheese Protein Puffs','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/US_CheddarCheeseProteinPuff_15023_Front-90512.jpg?auto=webp',12,12),(13,NULL,NULL,NULL,NULL,'Nacho Tortilla Chips','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/6015015_cs_NachoTortillaChips_box_f_1200.jpg?auto=webp',13,13),(14,NULL,NULL,NULL,NULL,'Triple Decker Mini Bar','https://www.weightwatchers.com/us/shop/assets-proxy/weight-watchers/image/upload/q_auto/v1/prod/en-us-ec/static-asset/6023017_TripleDeckerChoc_Box_f.jpg?auto=webp',14,14);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `isnew` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `retailprice` decimal(19,2) DEFAULT NULL,
  `saleprice` decimal(19,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `categoryid` bigint DEFAULT NULL,
  `discountid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','WW by BUILT(r) 30 oz Tumbler 5052013P',_binary '',_binary '','WW by BUILT(r) 30 oz Tumbler',19.99,19.99,'/ww-by-built-30oz-tumbler',3,1),(2,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Dash 2 Qt Compact Air Fryer 854940007694P',_binary '',_binary '','Dash 2 Qt Compact Air Fryer',39.99,39.99,'/dash-2qt-compact-air-fryer',4,1),(3,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','52-Week Meal Planner 5061033P',_binary '',_binary '','52-Week Meal Planner',19.99,19.99,'/52-week-meal-planner',6,1),(4,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','5061017P The myWW Program Cookbook',_binary '',_binary '','The myWWTM Program Cookbook',17.99,17.99,'/the-myww-program-cookbook',7,1),(5,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','WW Reusable Produce Bags (Set of 5) 5052031P',_binary '',_binary '','WW Reusable Produce Bags (Set of 5)',9.99,9.99,'/ww-reusable-produce-bags',8,1),(6,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','SpaRoom(r) Essential Oils Sleep Set 850020194919P',_binary '',_binary '','SpaRoom(r) Essential Oils Sleep Set',19.99,19.99,'/sparoom-essential-oils-sleep-set',9,1),(7,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Bottle and Straw Cleaner Set 5052027P',_binary '',_binary '','Bottle and Straw Cleaner Set',9.99,9.99,'/bottle-and-straw-cleaner-set',8,1),(8,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','2-in-1 Muffin and Mini Cake Cups 5052026P',_binary '',_binary '','2-in-1 Muffin and Mini Cake Cups',6.99,6.99,'/2-in-1-muffin-and-mini-cake-cups',8,1),(9,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','WW by BUILT(r) 3 Compartment Container 5052021P',_binary '',_binary '','WW by BUILT(r) 3 Compartment Container',16.99,16.99,'/ww-by-built-3compartment-container',10,1),(10,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars) 601005P',_binary '',_binary '','Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars)',22.99,22.99,'/chocolate-peanut-butter-pie-mini-bar-value-pack',12,1),(11,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Sweet and Salty Nut Mini Bar 6023019P',_binary '',_binary '','Sweet & Salty Nut Mini Bar',7.99,7.99,'/sweet-and-salty-nut-mini-bar',12,1),(12,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Cheddar Cheese Protein Puffs 6015023P',_binary '',_binary '','Cheddar Cheese Protein Puffs',6.99,6.99,'/cheddar-cheese-protein-puffs',13,1),(13,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Nacho Tortilla Chips 6015015P',_binary '',_binary '','Nacho Tortilla Chips',4.99,4.99,'/nacho-tortilla-chips',14,1),(14,'2021-06-27 06:02:37','admin','2021-06-27 06:02:50','admin','Triple Decker Chocolate Mini Bar 6023017P',_binary '',_binary '','Triple Decker Chocolate Mini Bar',7.99,7.99,'/triple-decker-chocolate-mini-bar',12,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sku`
--

DROP TABLE IF EXISTS `product_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sku` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `enteredby` varchar(255) DEFAULT NULL,
  `baseunitprice` varchar(255) DEFAULT NULL,
  `descritpion` varchar(255) DEFAULT NULL,
  `discountid` int DEFAULT NULL,
  `inventorytype` varchar(255) DEFAULT NULL,
  `isactive` tinyint DEFAULT NULL,
  `isavailable` tinyint DEFAULT NULL,
  `issubscription` tinyint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `producttype` varchar(255) DEFAULT NULL,
  `qtyavailable` int DEFAULT NULL,
  `retailprice` decimal(19,2) DEFAULT NULL,
  `saleprice` decimal(19,2) DEFAULT NULL,
  `shortdesc` varchar(255) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `taxcode` varchar(255) DEFAULT NULL,
  `wwsku` varchar(255) DEFAULT NULL,
  `fulfillment_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sku`
--

LOCK TABLES `product_sku` WRITE;
/*!40000 ALTER TABLE `product_sku` DISABLE KEYS */;
INSERT INTO `product_sku` VALUES (1,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','WW by BUILT(r) 30 oz Tumbler 5052013P',1,'CHECK_QUANTITY',1,1,0,'WW by BUILT(r) 30 oz Tumbler','TangibleProduct',471,19.99,19.99,'Sip away! Now you can take your hot or cold drinks anywhere with this 30 oz. vacuum insulated tumbler with double walls--keeping drinks cold for 24 hours and hot for 6 hours.','2020-12-09 00:00:00','P0000000','5052013',1,1),(2,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Dash 2 Qt Compact Air Fryer 854940007694P',1,'CHECK_QUANTITY',1,1,0,'Dash 2 Qt Compact Air Fryer (Grey)','TangibleProduct',631,39.99,39.99,'Give fried foods a SmartPoints(r)-friendly spin with an air fryer that proves good things come in smaller packages.','2020-12-09 00:00:00','P0000000','5063076',1,2),(3,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','52-Week Meal Planner 5061033P',1,'CHECK_QUANTITY',1,1,0,'52-Week Meal Planner','TangibleProduct',645,19.99,19.99,'\nStay on track with our all-in-one 52-Week Meal Planner featuring shopping lists, notes, stickers, and pockets.','2020-07-30 00:00:00','P0000000','5061033',1,3),(4,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','5061017P The myWW Program Cookbook',1,'CHECK_QUANTITY',1,1,0,'The myWWTM Program Cookbook','TangibleProduct',6429,17.99,17.99,'guide you on your weight-loss journey, the new myWWTM program cookbook has loads of tips on meal planning and 130 easy recipes for breakfast, lunch, dinner, snacks, and sweets','2019-06-12 00:00:00','P0000000','5061017',1,4),(5,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','WW Reusable Produce Bags (Set of 5) 5052031P',1,'CHECK_QUANTITY',1,1,0,'WW Reusable Produce Bags (Set of 5)','TangibleProduct',1561,9.99,9.99,'Swap your single-use plastic bags for one that you and the planet can feel good about! Take our pack of sustainable WW Reusable Produce Bags to the market or grocery store to carry your produce, essentials, and more.','2020-07-23 00:00:00','P0000000','5052031',1,5),(6,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','SpaRoom(r) Essential Oils Sleep Set 850020194919P',1,'CHECK_QUANTITY',1,1,0,'SpaRoom(r) Essential Oils Sleep Set','TangibleProduct',221,19.99,19.99,'Add some self-care to your schedule with this set of three essential oils, featuring 10-milliliter bottles of 100% pure Lavender Essential Oil, 100% pure Breathe Easy(r) Essential Oil Blend, and 100% pure Sleep Essential Oil Blend.','2021-01-12 00:00:00','P0000000','850020194919',1,6),(7,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Bottle and Straw Cleaner Set 5052027P',1,'CHECK_QUANTITY',1,1,0,'Bottle and Straw Cleaner Set','TangibleProduct',0,9.99,9.99,'\nSip, sip, hooray! This Bottle and Straw Cleaner Set gives you everything you need to keep your favorite water containers clean, while you stay hydrated 24/7.','2020-08-26 00:00:00','P0000000','5052027',1,7),(8,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','2-in-1 Muffin and Mini Cake Cups 5052026P',1,'CHECK_QUANTITY',1,1,0,'2-in-1 Muffin and Mini Cake Cups','TangibleProduct',1235,6.99,6.99,'Make delicious treats with one versatile tool. The 2-in-1 Muffin and Mini Cake Cups make it simple to bake muffins, cupcakes, egg bites, and more! ','2020-10-01 00:00:00','P0000000','5052026',1,8),(9,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','WW by BUILT(r) 3 Compartment Container 5052021P',1,'CHECK_QUANTITY',1,1,0,'WW by BUILT(r) 3 Compartment Container','TangibleProduct',459,16.99,16.99,'Enjoy the meals you love--whenever, wherever! This BPA-free convenient container makes it easy to take your meals on-the-go and gives you everything you need with a set of full size stainless steel utensils.','2020-12-09 00:00:00','P0000000','5052021',1,9),(10,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars) 601005P',1,'CHECK_QUANTITY',1,1,0,'Chocolate Peanut Butter Pie Mini Bar Value Pack (36 Bars)','TangibleProduct',3401,22.99,22.99,'Enjoy the classic combination of chocolate flavor and creamy peanut butter infused with a touch of honey in this snack bar. Value pack contains 36 bars.','2020-10-28 00:00:00','PF050900','601005',1,10),(11,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Sweet and Salty Nut Mini Bar 6023019P',1,'CHECK_QUANTITY',1,1,0,'Sweet & Salty Nut Mini Bar','TangibleProduct',7901,7.99,7.99,'Need a quick boost? Grab a Sweet & Salty Nut Bar--a healthier energy-bar alternative that balances the natural sweetness of dates with the salty crunch of peanuts and almonds.','2020-10-23 00:00:00','PF050900','6023019',1,11),(12,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Cheddar Cheese Protein Puffs 6015023P',1,'CHECK_QUANTITY',1,1,0,'Cheddar Cheese Protein Puffs','TangibleProduct',0,6.99,6.99,'Fuel your day with our cheesy puffed protein snack. Airy and light, Cheddar Cheese Protein Puffs are perfect for savory snacking on-the-go.','2020-12-14 00:00:00','PF050900','6015023',1,12),(13,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Nacho Tortilla Chips 6015015P',1,'CHECK_QUANTITY',1,1,0,'Nacho Tortilla Chips','TangibleProduct',14984,4.99,4.99,'For a quick, cheesy bite that\'s enjoyable all on its own, WW Nacho Tortilla Chips take snack time to the next level without emptying your SmartPoints(r) Budget.','2019-12-25 00:00:00','PF050900','6015015',1,13),(14,'2021-06-27 06:26:36','admin','2021-06-27 06:26:46','admin','g','Triple Decker Chocolate Mini Bar 6023017P',1,'CHECK_QUANTITY',1,1,0,'Triple Decker Chocolate Mini Bar','TangibleProduct',12117,7.99,7.99,'Say hello to a mini bar with major flavor! The Triple Decker Chocolate Mini Bar combines fluffy marshmallow and flaky chocolate crisps covered in a dreamy chocolate layer.','2020-07-29 00:00:00','PF050900','6023017',1,14);
/*!40000 ALTER TABLE `product_sku` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-27  1:36:23
