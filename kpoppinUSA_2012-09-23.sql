# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: kpoppinUSA
# Generation Time: 2012-09-23 20:58:38 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table buttons
# ------------------------------------------------------------

DROP VIEW IF EXISTS `buttons`;

CREATE TABLE `buttons` (
   `product_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
   `product_name` VARCHAR(255) DEFAULT NULL,
   `product_price` INT(255) DEFAULT NULL,
   `product_quantity` INT(255) DEFAULT NULL,
   `product_category` VARCHAR(255) DEFAULT NULL,
   `product_desc` TEXT DEFAULT NULL,
   `product_img` INT(11) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table conventions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conventions`;

CREATE TABLE `conventions` (
  `con_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `con_name` varchar(255) DEFAULT NULL,
  `con_date` date DEFAULT NULL,
  `con_city` varchar(255) DEFAULT NULL,
  `con_state` varchar(2) DEFAULT NULL,
  `con_details` text,
  PRIMARY KEY (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `conventions` WRITE;
/*!40000 ALTER TABLE `conventions` DISABLE KEYS */;

INSERT INTO `conventions` (`con_id`, `con_name`, `con_date`, `con_city`, `con_state`, `con_details`)
VALUES
	(1,'Anima Weekend Atlanta','2012-10-14','Atlanta','GA','AWA'),
	(2,'New York Comic Con','2012-10-17','New York City','NY','NYCC'),
	(3,'MegaCon','2013-02-10','Orlando','FL','Mega\n');

/*!40000 ALTER TABLE `conventions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posters
# ------------------------------------------------------------

DROP VIEW IF EXISTS `posters`;

CREATE TABLE `posters` (
   `product_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
   `product_name` VARCHAR(255) DEFAULT NULL,
   `product_price` INT(255) DEFAULT NULL,
   `product_quantity` INT(255) DEFAULT NULL,
   `product_category` VARCHAR(255) DEFAULT NULL,
   `product_desc` TEXT DEFAULT NULL,
   `product_img` INT(11) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` int(255) DEFAULT NULL,
  `product_quantity` int(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_desc` text,
  `product_img` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_quantity`, `product_category`, `product_desc`, `product_img`)
VALUES
	(2,'SNSD Gee',20,100,'poster','8x12. SNSD poster from Gee promotions',NULL),
	(4,'I Love KPOP',5,100,'button','\"I LOVE KPOP\" button',NULL),
	(5,'2PM Love and Respect',10,50,'wristband','2PM Wristband',NULL),
	(6,'G-Dragon',10,50,'wristband','G-Dragon Heartbreaker wristband',NULL),
	(7,'Fairytail Group',15,50,'wallscroll','Fairytail Group wallscroll',NULL),
	(8,'Gurren Lagann Group',15,50,'wallscroll','Gurren Lagann group wallscroll',NULL),
	(9,'SNSD RunDevilRun',20,100,'poster','SNSD RunDevilRun Poster',NULL),
	(25,'I LOVE PHP',5,NULL,'button',NULL,NULL);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `u_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) DEFAULT NULL,
  `u_pass` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `u_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`u_id`, `u_name`, `u_pass`, `u_email`, `u_type`)
VALUES
	(1,'admin','1a1dc91c907325c69271ddf0c944bc72','',1),
	(2,'customer','1a1dc91c907325c69271ddf0c944bc72','email@email.com',2),
	(3,'jarvis','123321',NULL,1);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wallscrolls
# ------------------------------------------------------------

DROP VIEW IF EXISTS `wallscrolls`;

CREATE TABLE `wallscrolls` (
   `product_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
   `product_name` VARCHAR(255) DEFAULT NULL,
   `product_price` INT(255) DEFAULT NULL,
   `product_quantity` INT(255) DEFAULT NULL,
   `product_category` VARCHAR(255) DEFAULT NULL,
   `product_desc` TEXT DEFAULT NULL,
   `product_img` INT(11) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table wristbands
# ------------------------------------------------------------

DROP VIEW IF EXISTS `wristbands`;

CREATE TABLE `wristbands` (
   `product_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
   `product_name` VARCHAR(255) DEFAULT NULL,
   `product_price` INT(255) DEFAULT NULL,
   `product_quantity` INT(255) DEFAULT NULL,
   `product_category` VARCHAR(255) DEFAULT NULL,
   `product_desc` TEXT DEFAULT NULL,
   `product_img` INT(11) DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for posters with correct view syntax
# ------------------------------------------------------------

DROP TABLE `posters`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `posters`
AS select
   `products`.`product_id` AS `product_id`,
   `products`.`product_name` AS `product_name`,
   `products`.`product_price` AS `product_price`,
   `products`.`product_quantity` AS `product_quantity`,
   `products`.`product_category` AS `product_category`,
   `products`.`product_desc` AS `product_desc`,
   `products`.`product_img` AS `product_img`
from `products`
where (`products`.`product_category` = 'poster');


# Replace placeholder table for buttons with correct view syntax
# ------------------------------------------------------------

DROP TABLE `buttons`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `buttons`
AS select
   `products`.`product_id` AS `product_id`,
   `products`.`product_name` AS `product_name`,
   `products`.`product_price` AS `product_price`,
   `products`.`product_quantity` AS `product_quantity`,
   `products`.`product_category` AS `product_category`,
   `products`.`product_desc` AS `product_desc`,
   `products`.`product_img` AS `product_img`
from `products`
where (`products`.`product_category` = 'button');


# Replace placeholder table for wristbands with correct view syntax
# ------------------------------------------------------------

DROP TABLE `wristbands`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wristbands`
AS select
   `products`.`product_id` AS `product_id`,
   `products`.`product_name` AS `product_name`,
   `products`.`product_price` AS `product_price`,
   `products`.`product_quantity` AS `product_quantity`,
   `products`.`product_category` AS `product_category`,
   `products`.`product_desc` AS `product_desc`,
   `products`.`product_img` AS `product_img`
from `products`
where (`products`.`product_category` = 'wristband');


# Replace placeholder table for wallscrolls with correct view syntax
# ------------------------------------------------------------

DROP TABLE `wallscrolls`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wallscrolls`
AS select
   `products`.`product_id` AS `product_id`,
   `products`.`product_name` AS `product_name`,
   `products`.`product_price` AS `product_price`,
   `products`.`product_quantity` AS `product_quantity`,
   `products`.`product_category` AS `product_category`,
   `products`.`product_desc` AS `product_desc`,
   `products`.`product_img` AS `product_img`
from `products`
where (`products`.`product_category` = 'wallscroll');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
