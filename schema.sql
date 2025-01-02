-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: huseyn
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Atatürk Caddesi 123','İstanbul','Kadıköy','34710','Türkiye'),(2,'Cumhuriyet Mah. 45','Ankara','Çankaya','06450','Türkiye'),(3,'İzmir Bulvarı 89','İzmir','Bornova','35040','Türkiye'),(4,'Bahçelievler Sok. 78','Antalya','Muratpaşa','07010','Türkiye'),(5,'Eski İstanbul Yolu 5','Bursa','Nilüfer','16140','Türkiye'),(6,'Yenikapı Sok. 12','Adana','Seyhan','01060','Türkiye'),(7,'Çamlık Cad. 32','Konya','Selçuklu','42060','Türkiye'),(8,'Fatih Mah. 16','Gaziantep','Şahinbey','27010','Türkiye'),(9,'Sahil Yolu Cad. 21','Samsun','Atakum','55200','Türkiye'),(10,'Mevlana Bulvarı 55','Kayseri','Kocasinan','38050','Türkiye');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigncustomers`
--

DROP TABLE IF EXISTS `campaigncustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigncustomers` (
  `campaign_customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaign_customer_id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `campaigncustomers_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`) ON DELETE CASCADE,
  CONSTRAINT `campaigncustomers_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigncustomers`
--

LOCK TABLES `campaigncustomers` WRITE;
/*!40000 ALTER TABLE `campaigncustomers` DISABLE KEYS */;
INSERT INTO `campaigncustomers` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,3,1),(12,3,3),(13,3,5),(14,3,7),(15,3,9),(16,4,2),(17,4,4),(18,4,6),(19,4,8),(20,4,10);
/*!40000 ALTER TABLE `campaigncustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `campaign_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'Yılbaşı İndirimi','2025-01-01','2025-01-10',10000.00),(2,'Sevgililer Günü Kampanyası','2025-02-01','2025-02-14',15000.00),(3,'Bahar İndirimi','2025-03-01','2025-03-31',20000.00),(4,'Anneler Günü Kampanyası','2025-05-01','2025-05-10',12000.00),(5,'Babalar Günü Kampanyası','2025-06-01','2025-06-20',11000.00),(6,'Okul Sezonu İndirimi','2025-08-15','2025-09-15',25000.00),(7,'Kış İndirimi','2025-11-01','2025-11-30',18000.00),(8,'Black Friday','2025-11-25','2025-11-30',30000.00),(9,'Cyber Monday','2025-12-01','2025-12-02',15000.00),(10,'Yeni Yıl Kampanyası','2025-12-20','2025-12-31',20000.00);
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerfeedback`
--

DROP TABLE IF EXISTS `customerfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerfeedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `feedback_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customerfeedback_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerfeedback`
--

LOCK TABLES `customerfeedback` WRITE;
/*!40000 ALTER TABLE `customerfeedback` DISABLE KEYS */;
INSERT INTO `customerfeedback` VALUES (1,1,'2025-01-04 21:00:00',5,'Hizmet çok hızlı ve kaliteli.'),(2,2,'2025-01-05 21:00:00',4,'Genel olarak memnunum, ancak teslimat biraz gecikti.'),(3,3,'2025-01-06 21:00:00',3,'Ürün kalitesinden memnun kalmadım.'),(4,4,'2025-01-07 21:00:00',5,'Müşteri desteği mükemmeldi.'),(5,5,'2025-01-08 21:00:00',2,'Teslimatta problem yaşadım.'),(6,6,'2025-01-09 21:00:00',4,'Kargolama hızlıydı, teşekkürler.'),(7,7,'2025-01-10 21:00:00',3,'Fiyat/performans oranı daha iyi olabilirdi.'),(8,8,'2025-01-11 21:00:00',5,'Ürün tam istediğim gibi, çok memnun kaldım.'),(9,9,'2025-01-12 21:00:00',4,'Paketleme çok iyi, tavsiye ederim.'),(10,10,'2025-01-13 21:00:00',2,'Yanlış ürün gönderildi, iade süreci zorlu oldu.');
/*!40000 ALTER TABLE `customerfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`customer_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Ahmet','Kaya','ahmet.kaya@example.com','5551234567',1,'2025-01-02 10:33:06'),(2,'Ayşe','Yılmaz','ayse.yilmaz@example.com','5552345678',2,'2025-01-02 10:33:06'),(3,'Mehmet','Çelik','mehmet.celik@example.com','5553456789',3,'2025-01-02 10:33:06'),(4,'Fatma','Demir','fatma.demir@example.com','5554567890',4,'2025-01-02 10:33:06'),(5,'Hasan','Taş','hasan.tas@example.com','5555678901',5,'2025-01-02 10:33:06'),(6,'Zehra','Aksoy','zehra.aksoy@example.com','5556789012',6,'2025-01-02 10:33:06'),(7,'Hakan','Sarı','hakan.sari@example.com','5557890123',7,'2025-01-02 10:33:06'),(8,'Selin','Uzun','selin.uzun@example.com','5558901234',8,'2025-01-02 10:33:06'),(9,'Cem','Kaya','cem.kaya@example.com','5559012345',9,'2025-01-02 10:33:06'),(10,'Büşra','Çetin','busra.cetin@example.com','5550123456',10,'2025-01-02 10:33:06');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customersegmentmapping`
--

DROP TABLE IF EXISTS `customersegmentmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customersegmentmapping` (
  `mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `segment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mapping_id`),
  KEY `customer_id` (`customer_id`),
  KEY `segment_id` (`segment_id`),
  CONSTRAINT `customersegmentmapping_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `customersegmentmapping_ibfk_2` FOREIGN KEY (`segment_id`) REFERENCES `customersegments` (`segment_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersegmentmapping`
--

LOCK TABLES `customersegmentmapping` WRITE;
/*!40000 ALTER TABLE `customersegmentmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `customersegmentmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customersegments`
--

DROP TABLE IF EXISTS `customersegments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customersegments` (
  `segment_id` int(11) NOT NULL AUTO_INCREMENT,
  `segment_name` varchar(100) DEFAULT NULL,
  `criteria` text DEFAULT NULL,
  PRIMARY KEY (`segment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customersegments`
--

LOCK TABLES `customersegments` WRITE;
/*!40000 ALTER TABLE `customersegments` DISABLE KEYS */;
/*!40000 ALTER TABLE `customersegments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emaillogs`
--

DROP TABLE IF EXISTS `emaillogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emaillogs` (
  `email_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_body` text DEFAULT NULL,
  `sent_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`email_log_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `emaillogs_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emaillogs`
--

LOCK TABLES `emaillogs` WRITE;
/*!40000 ALTER TABLE `emaillogs` DISABLE KEYS */;
INSERT INTO `emaillogs` VALUES (1,1,'Sipariş Onayı','Sayın Ahmet Kaya, siparişiniz onaylandı.','2025-01-01 21:00:00'),(2,2,'Fatura Bilgisi','Sayın Ayşe Yılmaz, fatura detaylarınızı inceleyebilirsiniz.','2025-01-02 21:00:00'),(3,3,'Teslimat Takibi','Sayın Mehmet Çelik, teslimat sürecinizi takip edebilirsiniz.','2025-01-03 21:00:00'),(4,4,'Kampanya Duyurusu','Sayın Fatma Demir, özel kampanyalarımızdan haberdar olun.','2025-01-04 21:00:00'),(5,5,'Destek Talebi Yanıtı','Sayın Hasan Taş, destek talebiniz işleme alındı.','2025-01-05 21:00:00'),(6,6,'Yeni Ürünler','Sayın Zehra Aksoy, yeni ürünlerimizi inceleyin.','2025-01-06 21:00:00'),(7,7,'Sipariş Güncellemesi','Sayın Hakan Sarı, siparişinizde güncellemeler yapıldı.','2025-01-07 21:00:00'),(8,8,'İndirim Kuponu','Sayın Selin Uzun, indirim kuponu kazandınız!','2025-01-08 21:00:00'),(9,9,'Anket Daveti','Sayın Cem Kaya, memnuniyet anketimize katılın.','2025-01-09 21:00:00'),(10,10,'Üyelik Avantajları','Sayın Büşra Çetin, üyelik avantajlarınızı kaçırmayın.','2025-01-10 21:00:00');
/*!40000 ALTER TABLE `emaillogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interactions`
--

DROP TABLE IF EXISTS `interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interactions` (
  `interaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `interaction_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`interaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `interactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `interactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactions`
--

LOCK TABLES `interactions` WRITE;
/*!40000 ALTER TABLE `interactions` DISABLE KEYS */;
INSERT INTO `interactions` VALUES (1,1,1,'2025-01-01 21:00:00','Müşteri sipariş iptali istedi.'),(2,2,2,'2025-01-02 21:00:00','Fatura talebi üzerine işlem yapıldı.'),(3,3,3,'2025-01-03 21:00:00','Arızalı ürünün iadesi kabul edildi.'),(4,4,4,'2025-01-04 21:00:00','Ödeme sorunu çözüldü.'),(5,5,5,'2025-01-05 21:00:00','Teslimat gecikmesi hakkında bilgilendirme yapıldı.'),(6,6,6,'2025-01-06 21:00:00','Eksik ürün için yeni bir gönderim planlandı.'),(7,7,7,'2025-01-07 21:00:00','Kampanya bilgisi paylaşıldı.'),(8,8,8,'2025-01-08 21:00:00','Yanlış ürün iade alındı ve doğrusu gönderildi.'),(9,9,9,'2025-01-09 21:00:00','Adres değişikliği talebi işleme alındı.'),(10,10,10,'2025-01-10 21:00:00','Ürün değişim talebi inceleniyor.');
/*!40000 ALTER TABLE `interactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `invoice_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,'2025-01-01 21:00:00','2025-01-12',13500.00),(2,2,'2025-01-02 21:00:00','2025-01-13',4500.00),(3,3,'2025-01-03 21:00:00','2025-01-14',3000.00),(4,4,'2025-01-04 21:00:00','2025-01-15',4800.00),(5,5,'2025-01-05 21:00:00','2025-01-16',1500.00),(6,6,'2025-01-06 21:00:00','2025-01-17',8000.00),(7,7,'2025-01-07 21:00:00','2025-01-18',3500.00),(8,8,'2025-01-08 21:00:00','2025-01-19',700.00),(9,9,'2025-01-09 21:00:00','2025-01-20',4000.00),(10,10,'2025-01-10 21:00:00','2025-01-21',500.00);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,1,1,7500.00),(2,1,2,2,6000.00),(3,2,3,1,2000.00),(4,2,4,3,1500.00),(5,3,5,2,2400.00),(6,3,6,1,600.00),(7,4,7,4,800.00),(8,5,8,1,1500.00),(9,6,9,2,8000.00),(10,7,10,5,3500.00);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-12-31 21:00:00',150.50,'Tamamlandı'),(2,2,'2025-01-01 21:00:00',200.75,'Beklemede'),(3,3,'2025-01-02 21:00:00',300.00,'Tamamlandı'),(4,4,'2025-01-03 21:00:00',120.20,'İptal Edildi'),(5,5,'2025-01-04 21:00:00',450.90,'Tamamlandı'),(6,6,'2025-01-05 21:00:00',89.99,'Beklemede'),(7,7,'2025-01-06 21:00:00',220.45,'Tamamlandı'),(8,8,'2025-01-07 21:00:00',130.10,'Tamamlandı'),(9,9,'2025-01-08 21:00:00',560.00,'İptal Edildi'),(10,10,'2025-01-09 21:00:00',78.25,'Beklemede');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `invoice_id` (`invoice_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2025-01-02 21:00:00',13500.00,'Kredi Kartı'),(2,2,'2025-01-03 21:00:00',4500.00,'Havale'),(3,3,'2025-01-04 21:00:00',3000.00,'Nakit'),(4,4,'2025-01-05 21:00:00',4800.00,'Kredi Kartı'),(5,5,'2025-01-06 21:00:00',1500.00,'Havale'),(6,6,'2025-01-07 21:00:00',8000.00,'Nakit'),(7,7,'2025-01-08 21:00:00',3500.00,'Kredi Kartı'),(8,8,'2025-01-09 21:00:00',700.00,'Havale'),(9,9,'2025-01-10 21:00:00',4000.00,'Kredi Kartı'),(10,10,'2025-01-11 21:00:00',500.00,'Nakit');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategories`
--

DROP TABLE IF EXISTS `productcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategories`
--

LOCK TABLES `productcategories` WRITE;
/*!40000 ALTER TABLE `productcategories` DISABLE KEYS */;
INSERT INTO `productcategories` VALUES (1,'Elektronik'),(2,'Ev Aletleri'),(3,'Ofis Malzemeleri'),(4,'Moda'),(5,'Kozmetik'),(6,'Kitap'),(7,'Spor'),(8,'Oyun'),(9,'Müzik'),(10,'Bahçe Ürünleri');
/*!40000 ALTER TABLE `productcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategorymapping`
--

DROP TABLE IF EXISTS `productcategorymapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategorymapping` (
  `mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mapping_id`),
  KEY `product_id` (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `productcategorymapping_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  CONSTRAINT `productcategorymapping_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `productcategories` (`category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategorymapping`
--

LOCK TABLES `productcategorymapping` WRITE;
/*!40000 ALTER TABLE `productcategorymapping` DISABLE KEYS */;
INSERT INTO `productcategorymapping` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,8),(5,5,1),(6,6,8),(7,7,8),(8,8,1),(9,9,1),(10,10,1);
/*!40000 ALTER TABLE `productcategorymapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop','Yüksek performanslı dizüstü bilgisayar',7500.00,50),(2,'Telefon','Android işletim sistemli akıllı telefon',3000.00,100),(3,'Tablet','Taşınabilir tablet cihaz',2000.00,75),(4,'Kulaklık','Kablosuz Bluetooth kulaklık',500.00,200),(5,'Monitör','Full HD LED ekran',1200.00,60),(6,'Klavye','Mekanik oyuncu klavyesi',600.00,150),(7,'Mouse','Kablosuz optik mouse',200.00,300),(8,'Yazıcı','Renkli lazer yazıcı',1500.00,20),(9,'Kamera','4K çözünürlüklü dijital kamera',4000.00,10),(10,'Hoparlör','Taşınabilir Bluetooth hoparlör',700.00,80);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smslogs`
--

DROP TABLE IF EXISTS `smslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smslogs` (
  `sms_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `sent_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sms_log_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `smslogs_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smslogs`
--

LOCK TABLES `smslogs` WRITE;
/*!40000 ALTER TABLE `smslogs` DISABLE KEYS */;
INSERT INTO `smslogs` VALUES (1,1,'Sayın Ahmet Kaya, siparişiniz yola çıktı.','2025-01-01 21:00:00'),(2,2,'Sayın Ayşe Yılmaz, fatura bilginiz gönderildi.','2025-01-02 21:00:00'),(3,3,'Sayın Mehmet Çelik, teslimat adresinizi kontrol edin.','2025-01-03 21:00:00'),(4,4,'Sayın Fatma Demir, kampanya fırsatlarını kaçırmayın.','2025-01-04 21:00:00'),(5,5,'Sayın Hasan Taş, destek talebiniz işleme alındı.','2025-01-05 21:00:00'),(6,6,'Sayın Zehra Aksoy, yeni ürünlerimizi kaçırmayın.','2025-01-06 21:00:00'),(7,7,'Sayın Hakan Sarı, siparişiniz hazırlandı.','2025-01-07 21:00:00'),(8,8,'Sayın Selin Uzun, siparişiniz teslim edildi.','2025-01-08 21:00:00'),(9,9,'Sayın Cem Kaya, müşteri memnuniyet anketimize katılın.','2025-01-09 21:00:00'),(10,10,'Sayın Büşra Çetin, üyelik avantajlarınızı inceleyin.','2025-01-10 21:00:00');
/*!40000 ALTER TABLE `smslogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporttickets`
--

DROP TABLE IF EXISTS `supporttickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supporttickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ticket_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `supporttickets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporttickets`
--

LOCK TABLES `supporttickets` WRITE;
/*!40000 ALTER TABLE `supporttickets` DISABLE KEYS */;
INSERT INTO `supporttickets` VALUES (1,1,'Sipariş İptali','Yanlışlıkla sipariş verdim, iptal edilmesini istiyorum.','Açık','2025-01-02 10:33:34'),(2,2,'Fatura Talebi','Faturam elime ulaşmadı, yardım edebilir misiniz?','Çözüldü','2025-01-02 10:33:34'),(3,3,'Ürün Sorunu','Aldığım ürün arızalı, iade etmek istiyorum.','Açık','2025-01-02 10:33:34'),(4,4,'Ödeme Sorunu','Ödeme işlemi başarısız oldu, tekrar denemek istiyorum.','Çözüldü','2025-01-02 10:33:34'),(5,5,'Teslimat Gecikmesi','Siparişim belirtilen tarihte teslim edilmedi.','Beklemede','2025-01-02 10:33:34'),(6,6,'Ürün Eksik','Kargoda eksik ürün geldi.','Açık','2025-01-02 10:33:34'),(7,7,'Kampanya Bilgisi','Yeni kampanyalar hakkında bilgi almak istiyorum.','Kapalı','2025-01-02 10:33:34'),(8,8,'Hatalı Ürün','Yanlış ürün gönderildi.','Çözüldü','2025-01-02 10:33:34'),(9,9,'Adres Değişikliği','Siparişimin teslimat adresini değiştirmek istiyorum.','Açık','2025-01-02 10:33:34'),(10,10,'Ürün Değişimi','Ürünümü farklı bir ürünle değiştirmek istiyorum.','Beklemede','2025-01-02 10:33:34');
/*!40000 ALTER TABLE `supporttickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `assigned_to` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `assigned_to` (`assigned_to`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,1,'Müşteri siparişi hakkında bilgi sağla.','2025-01-10','Tamamlandı'),(2,2,'Yeni müşteri kayıtlarını güncelle.','2025-01-15','Beklemede'),(3,3,'Sipariş takip raporu hazırla.','2025-01-20','Tamamlandı'),(4,4,'Ürün stoğu güncelle.','2025-01-25','Devam Ediyor'),(5,5,'İndirim kampanyası tanıtımı yap.','2025-02-01','Tamamlandı'),(6,6,'Müşteri geri bildirimlerini analiz et.','2025-02-10','Beklemede'),(7,7,'CRM veritabanını yedekle.','2025-02-15','Devam Ediyor'),(8,8,'Destek taleplerine yanıt ver.','2025-02-20','Tamamlandı'),(9,9,'Yeni ürün listelemesi hazırla.','2025-02-25','Beklemede'),(10,10,'Ekip içi toplantı düzenle.','2025-03-01','Tamamlandı');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','sifre123','admin','2025-01-02 10:33:06'),(2,'ali_kaya','ali123','kullanici','2025-01-02 10:33:06'),(3,'ayse_dogan','ayse456','kullanici','2025-01-02 10:33:06'),(4,'mehmet_yilmaz','mehmet789','kullanici','2025-01-02 10:33:06'),(5,'fatma_celik','fatma123','kullanici','2025-01-02 10:33:06'),(6,'hasan_tas','hasan456','kullanici','2025-01-02 10:33:06'),(7,'zehra_aksoy','zehra789','kullanici','2025-01-02 10:33:06'),(8,'hakan_demir','hakan123','kullanici','2025-01-02 10:33:06'),(9,'selin_sari','selin456','kullanici','2025-01-02 10:33:06'),(10,'cem_uzun','cem789','kullanici','2025-01-02 10:33:06');
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

-- Dump completed on 2025-01-02 13:36:46
