/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - image_split
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`image_split` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `image_split`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `decrypted` */

DROP TABLE IF EXISTS `decrypted`;

CREATE TABLE `decrypted` (
  `user` varchar(100) DEFAULT NULL,
  `original` varchar(100) DEFAULT NULL,
  `part1` varchar(100) DEFAULT NULL,
  `part2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `decrypted` */

insert  into `decrypted`(`user`,`original`,`part1`,`part2`) values ('shiva','shiva','shivaencryp1.jpg','shivaencryp2.jpg');

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `username` varchar(100) DEFAULT NULL,
  `original` varchar(100) DEFAULT NULL,
  `parta` varchar(100) DEFAULT NULL,
  `partb` varchar(100) DEFAULT NULL,
  `ori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `images` */

insert  into `images`(`username`,`original`,`parta`,`partb`,`ori`) values ('shiva','shiva.jpg','shiva0.jpg','shiva1.jpg','shiva');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`username`,`password`,`email`,`address`,`mobile`) values ('krish','Krish1234','krish@gmail.com','hyderabad','9985267418'),('shiva','shiva','shiva.1000projects@gmail.com','hyd','9632587410');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
