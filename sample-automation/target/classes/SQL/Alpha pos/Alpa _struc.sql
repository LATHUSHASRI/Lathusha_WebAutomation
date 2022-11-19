-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: alpha_pos
-- ------------------------------------------------------
-- Server version	5.7.34-log

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `barcode`
--

DROP TABLE IF EXISTS `barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barcode` (
  `barcode_id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode_digits` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`barcode_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_country`
--

DROP TABLE IF EXISTS `brand_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_country` (
  `brand_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`brand_country_id`),
  KEY `brand_country_fk1_idx` (`brand_id`),
  KEY `brand_country_fk2_idx` (`country_id`),
  CONSTRAINT `brand_country_fk1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `brand_country_fk2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bundle`
--

DROP TABLE IF EXISTS `bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundle` (
  `bundle_id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle_name` varchar(45) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) DEFAULT NULL,
  `category_description` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cheque_expiration`
--

DROP TABLE IF EXISTS `cheque_expiration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cheque_expiration` (
  `cheque_expiration_id` int(11) NOT NULL AUTO_INCREMENT,
  `cheque_number` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `due_payment_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`cheque_expiration_id`),
  KEY `cheque_expiration_fk1_idx` (`due_payment_id`),
  KEY `cheque_expiration_fk2_idx` (`bank_id`),
  CONSTRAINT `cheque_expiration_fk1` FOREIGN KEY (`due_payment_id`) REFERENCES `due_payment` (`due_payment_id`),
  CONSTRAINT `cheque_expiration_fk2` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_profit` int(11) DEFAULT NULL,
  `is_sale_price` int(11) DEFAULT NULL,
  `profit_percentage` double DEFAULT NULL,
  `sale_price_percentage` double DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`commission_id`),
  KEY `commission_fk_idx` (`bundle_id`),
  CONSTRAINT `commission_fk1` FOREIGN KEY (`bundle_id`) REFERENCES `bundle` (`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) DEFAULT NULL,
  `reference_country_code` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_code`
--

DROP TABLE IF EXISTS `country_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_code` (
  `country_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_prefix` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`country_code_id`),
  KEY `country_code_fk1_idx` (`country_id`),
  CONSTRAINT `country_code_fk1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(45) DEFAULT NULL,
  `currency_code` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard_configuration`
--

DROP TABLE IF EXISTS `dashboard_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_configuration` (
  `dashboard_configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` int(1) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `feature_master_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`dashboard_configuration_id`),
  KEY `dashboard_configuration_fk1_idx` (`client_id`),
  KEY `dashboard_configuration_fk2_idx` (`feature_master_id`),
  CONSTRAINT `dashboard_configuration_fk1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `dashboard_configuration_fk2` FOREIGN KEY (`feature_master_id`) REFERENCES `feature_master` (`feature_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `due_payment`
--

DROP TABLE IF EXISTS `due_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `due_payment` (
  `due_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`due_payment_id`),
  KEY `due_payment_fk1_idx` (`invoice_id`),
  CONSTRAINT `due_payment_fk1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feature_master`
--

DROP TABLE IF EXISTS `feature_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_master` (
  `feature_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(45) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  PRIMARY KEY (`feature_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_amount` double DEFAULT NULL,
  `reference_number` varchar(45) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_order_stock_master_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `invoice_fk3_idx` (`user_id`),
  KEY `invoice_fk4_idx` (`post_order_stock_master_id`),
  CONSTRAINT `invoice_fk3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `invoice_fk4` FOREIGN KEY (`post_order_stock_master_id`) REFERENCES `post_order_stock_master` (`post_order_stock_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logout_details`
--

DROP TABLE IF EXISTS `logout_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logout_details` (
  `logout_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `logout_time` time DEFAULT NULL,
  `logout_date` date DEFAULT NULL,
  PRIMARY KEY (`logout_details_id`),
  KEY `fk!_idx` (`user_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `low_stock_quantity`
--

DROP TABLE IF EXISTS `low_stock_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `low_stock_quantity` (
  `low_stock_quantity_id` int(20) NOT NULL,
  `stock_id` int(20) DEFAULT NULL,
  `is_low_stock` int(1) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`low_stock_quantity_id`),
  KEY `low_stock_quantity_fk1_idx` (`stock_id`),
  KEY `low_stock_quantity_fk2_idx` (`supplier_id`),
  CONSTRAINT `low_stock_quantity_fk1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `low_stock_quantity_fk2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loyalty`
--

DROP TABLE IF EXISTS `loyalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loyalty` (
  `loyalty_id` int(11) NOT NULL AUTO_INCREMENT,
  `acumulate_point` double DEFAULT NULL,
  `spent_amount` double DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`loyalty_id`),
  KEY `loyalty_fk1_idx` (`bundle_id`),
  CONSTRAINT `loyalty_fk1` FOREIGN KEY (`bundle_id`) REFERENCES `bundle` (`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `measurement_unit`
--

DROP TABLE IF EXISTS `measurement_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measurement_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(45) DEFAULT NULL,
  `unit_description` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_transaction`
--

DROP TABLE IF EXISTS `payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_transaction` (
  `payment_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `transaction_master_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_transaction_id`),
  KEY `payment_transaction_fk1_idx` (`payment_type_id`),
  KEY `payment_transaction_fk2_idx` (`transaction_master_id`),
  KEY `payment_transaction_fk3_idx` (`user_id`),
  CONSTRAINT `payment_transaction_fk1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`),
  CONSTRAINT `payment_transaction_fk2` FOREIGN KEY (`transaction_master_id`) REFERENCES `transaction_master` (`transaction_master_id`),
  CONSTRAINT `payment_transaction_fk3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_type` (
  `payment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type_name` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `post_order_stock`
--

DROP TABLE IF EXISTS `post_order_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_order_stock` (
  `post_order_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_order_stock_id` int(11) DEFAULT NULL,
  `arrived_quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `discount_percentage` double DEFAULT NULL,
  `no_of_free` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `discounted_price` double DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_order_stock_id`),
  KEY `post_order_stock_fk1_idx` (`pre_order_stock_id`),
  KEY `post_order_stock_fk1_idx1` (`supplier_id`),
  CONSTRAINT `post_order_stock_fk1` FOREIGN KEY (`pre_order_stock_id`) REFERENCES `pre_order_stock` (`pre_order_stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `post_order_stock_master`
--

DROP TABLE IF EXISTS `post_order_stock_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_order_stock_master` (
  `post_order_stock_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_order_stock_id` int(11) DEFAULT NULL,
  `pre_order_stock_master_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `date_of_delivery` date DEFAULT NULL,
  `discount_transaction` double DEFAULT NULL,
  `transaction_fee` double DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_order_stock_master_id`),
  KEY `post_order_stock_master_fk1_idx` (`post_order_stock_id`),
  KEY `post_order_stock_master_fk2_idx` (`pre_order_stock_master_id`),
  KEY `post_order_stock_master_fk3_idx` (`supplier_id`),
  KEY `post_order_stock_master_fk4_idx` (`stock_id`),
  CONSTRAINT `post_order_stock_master_fk1` FOREIGN KEY (`post_order_stock_id`) REFERENCES `post_order_stock` (`post_order_stock_id`),
  CONSTRAINT `post_order_stock_master_fk2` FOREIGN KEY (`pre_order_stock_master_id`) REFERENCES `pre_order_stock_master` (`pre_order_stock_master_id`),
  CONSTRAINT `post_order_stock_master_fk3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `post_order_stock_master_fk4` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pre_order_stock`
--

DROP TABLE IF EXISTS `pre_order_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_order_stock` (
  `pre_order_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` double DEFAULT NULL,
  `current_unit_price` double DEFAULT NULL,
  `measurement_unit_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `is_approved` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`pre_order_stock_id`),
  KEY `pre_order_stock_fk1_idx` (`measurement_unit_id`),
  KEY `pre_order_stock_fk2_idx1` (`product_id`),
  CONSTRAINT `pre_order_stock_fk1` FOREIGN KEY (`measurement_unit_id`) REFERENCES `measurement_unit` (`unit_id`),
  CONSTRAINT `pre_order_stock_fk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pre_order_stock_master`
--

DROP TABLE IF EXISTS `pre_order_stock_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pre_order_stock_master` (
  `pre_order_stock_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_order_stock_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `date_of_request` int(11) DEFAULT NULL,
  PRIMARY KEY (`pre_order_stock_master_id`),
  KEY `pre_order_stock_master_fk1_idx` (`pre_order_stock_id`),
  KEY `pre_order_stock_master_fk2_idx` (`supplier_id`),
  CONSTRAINT `pre_order_stock_master_fk1` FOREIGN KEY (`pre_order_stock_id`) REFERENCES `pre_order_stock` (`pre_order_stock_id`),
  CONSTRAINT `pre_order_stock_master_fk2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_code` varchar(45) DEFAULT NULL,
  `privilege_description` varchar(255) DEFAULT NULL,
  `heading` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `barcode_number` int(11) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `retail_price` double DEFAULT NULL,
  `stock_level` int(11) DEFAULT NULL,
  `minimum_stock` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `maximum_stock` int(11) DEFAULT NULL,
  `comments` varchar(45) DEFAULT NULL,
  `net_weight` double DEFAULT NULL,
  `gross_weight` double DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `plu_code` varchar(100) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `product_fk1_idx` (`brand_id`),
  KEY `product_fk2_idx` (`category_id`),
  KEY `product_fk3_idx` (`sub_category_id`),
  KEY `product_fk4_idx` (`barcode_number`),
  KEY `product_fk5_idx` (`currency_id`),
  KEY `product_fk6_idx` (`location_id`),
  KEY `product_fk7_idx` (`unit_id`),
  KEY `product_fk8_idx` (`user_id`),
  CONSTRAINT `product_fk1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `product_fk2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `product_fk3` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`sub_category_id`),
  CONSTRAINT `product_fk4` FOREIGN KEY (`barcode_number`) REFERENCES `barcode` (`barcode_id`),
  CONSTRAINT `product_fk5` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`currency_id`),
  CONSTRAINT `product_fk6` FOREIGN KEY (`location_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `product_fk7` FOREIGN KEY (`unit_id`) REFERENCES `measurement_unit` (`unit_id`),
  CONSTRAINT `product_fk8` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_bundle`
--

DROP TABLE IF EXISTS `product_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_bundle` (
  `product_bundle_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_code` varchar(10) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_bundle_id`),
  KEY `product_bundle_fk1_idx` (`bundle_id`),
  KEY `product_bundle_fk2_idx` (`product_id`),
  CONSTRAINT `product_bundle_fk1` FOREIGN KEY (`bundle_id`) REFERENCES `bundle` (`bundle_id`),
  CONSTRAINT `product_bundle_fk2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_supplier`
--

DROP TABLE IF EXISTS `product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_supplier` (
  `product_supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_supplier_id`),
  KEY `product_supplier_fk1_idx` (`product_id`),
  KEY `product_supplier_fk2_idx` (`supplier_id`),
  CONSTRAINT `product_supplier_fk1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `product_supplier_fk2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `initial_date` date DEFAULT NULL,
  `final_date` date DEFAULT NULL,
  `promotion_price` double DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`),
  KEY `promotion_fk1_idx` (`bundle_id`),
  CONSTRAINT `promotion_fk1` FOREIGN KEY (`bundle_id`) REFERENCES `bundle` (`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_privilege`
--

DROP TABLE IF EXISTS `role_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_privilege` (
  `role_privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  `heading` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_privilege_id`),
  KEY `role_privilege_fk1_idx` (`role_id`),
  KEY `role_privilege_idx` (`privilege_id`),
  CONSTRAINT `role_privilege` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`privilege_id`),
  CONSTRAINT `role_privilege_fk1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `current_quantity` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_bundle_id` int(11) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_no_of_free` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `stock_master_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `stock_fk1_idx` (`product_id`),
  KEY `stock_fk2_idx` (`product_bundle_id`),
  KEY `stock_fk3_idx` (`stock_master_id`),
  KEY `stock_fk4_idx` (`supplier_id`),
  CONSTRAINT `stock_fk1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `stock_fk2` FOREIGN KEY (`product_bundle_id`) REFERENCES `product_bundle` (`product_bundle_id`),
  CONSTRAINT `stock_fk3` FOREIGN KEY (`stock_master_id`) REFERENCES `stock_master` (`stock_master_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stock_fk4` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock_master`
--

DROP TABLE IF EXISTS `stock_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_master` (
  `stock_master_id` int(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stock_master_id`),
  KEY `stock_master_fk1_idx` (`invoice_id`),
  CONSTRAINT `stock_master_fk1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_category_name` varchar(45) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`sub_category_id`),
  KEY `sub_category_fk1_idx` (`category_id`),
  CONSTRAINT `sub_category_fk1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(45) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `added_date` date DEFAULT NULL,
  `supplier_ref_number` varchar(100) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `supplier_fk1_idx` (`user_id`),
  CONSTRAINT `supplier_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(45) DEFAULT NULL,
  `tax_fees` double DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tax_country`
--

DROP TABLE IF EXISTS `tax_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_country` (
  `tax_country_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`tax_country_id`),
  KEY `tax_country_fk1_idx` (`tax_id`),
  KEY `tax_country_fk2_idx` (`country_id`),
  CONSTRAINT `tax_country_fk1` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`tax_id`),
  CONSTRAINT `tax_country_fk2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `token_id` int(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(45) NOT NULL,
  `token_type` varchar(20) NOT NULL,
  `created_date_time` datetime NOT NULL,
  `expired_date_time` datetime NOT NULL,
  `token_status` varchar(1) NOT NULL,
  `user_id` int(20) NOT NULL,
  PRIMARY KEY (`token_id`),
  KEY `token_fk_1_idx` (`user_id`),
  CONSTRAINT `token_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_details` (
  `transaction_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_master_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `measurement_unit_id` int(11) DEFAULT NULL,
  `no_of_units` int(11) DEFAULT NULL,
  `measurement_value` double DEFAULT NULL,
  `discounted_value` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_details_id`),
  KEY `transaction_details_fk_idx` (`transaction_master_id`),
  KEY `transaction_details_fk3_idx` (`stock_id`),
  KEY `transaction_details_fk3_idx1` (`measurement_unit_id`),
  KEY `transaction_details_fk3_idx2` (`user_id`),
  CONSTRAINT `transaction_details_fk1` FOREIGN KEY (`transaction_master_id`) REFERENCES `transaction_master` (`transaction_master_id`),
  CONSTRAINT `transaction_details_fk2` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`stock_id`),
  CONSTRAINT `transaction_details_fk3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `transaction_details_fk4` FOREIGN KEY (`measurement_unit_id`) REFERENCES `measurement_unit` (`unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction_master`
--

DROP TABLE IF EXISTS `transaction_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_master` (
  `transaction_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_reference_number` int(11) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_discount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `recieved_amount` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`transaction_master_id`),
  KEY `transaction_master_fk1_idx` (`user_id`),
  CONSTRAINT `transaction_master_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `is_approved` int(11) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `is_locked` int(11) DEFAULT NULL,
  `is_locked_date` datetime DEFAULT NULL,
  `verify_token` varchar(45) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `client_id` int(20) DEFAULT NULL,
  `is_new_user` int(1) DEFAULT NULL,
  `role_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_fk1_idx` (`user_type_id`),
  KEY `user_fk_2_idx` (`client_id`),
  KEY `user_fk_3_idx` (`role_id`),
  CONSTRAINT `user_fk1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`user_type_id`),
  CONSTRAINT `user_fk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_fk_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_login_details`
--

DROP TABLE IF EXISTS `user_login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_login_details` (
  `user_login_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `login_time` time DEFAULT NULL,
  `user_ip` varchar(45) DEFAULT NULL,
  `is_success` int(11) DEFAULT NULL,
  `invalid_login_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_login_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_privilege`
--

DROP TABLE IF EXISTS `user_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_privilege` (
  `user_privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_privilege_id`),
  KEY `user_privilege_fk1_idx` (`privilege_id`),
  KEY `user_privilege_fk2_idx` (`user_id`),
  CONSTRAINT `user_privilege_fk1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`privilege_id`),
  CONSTRAINT `user_privilege_fk2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `role_description` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `user_role_fk1_idx` (`user_id`),
  KEY `user_role_idx` (`role_id`),
  CONSTRAINT `user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `user_role_fk1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-28 14:09:04
