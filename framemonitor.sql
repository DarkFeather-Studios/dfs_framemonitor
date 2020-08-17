/*
SQLyog Community
MySQL - 10.4.13-MariaDB : Database - essentialmode
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `metrics_fps` */

CREATE TABLE `metrics_fps` (
  `metrics_fps_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lowFrames` int(3) DEFAULT NULL,
  `avgFrames` int(3) DEFAULT NULL,
  `highFrames` int(3) DEFAULT NULL,
  `source_id` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `date_recorded` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`metrics_fps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70587 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
