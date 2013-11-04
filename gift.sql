/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - gift
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `gift`;

USE `gift`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `friend` */

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `name` varchar(20) default NULL,
  `dob` varchar(20) default NULL,
  `semail` varchar(40) default NULL,
  `addrs` varchar(20) default NULL,
  `demail` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `friend` */


/*Table structure for table `image` */

DROP TABLE IF EXISTS `image`;

CREATE TABLE `image` (
  `fid` int(20) default NULL,
  `fname` varchar(20) default NULL,
  `fdata` blob,
  `email` varchar(30) default NULL,
  `price` varchar(30) default NULL,
  `location` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `image` */


/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `name` varchar(20) default NULL,
  `ages` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `dob` varchar(20) default NULL,
  `userid` varchar(20) default NULL,
  `pwd` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `mno` varchar(20) default NULL,
  `address` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signup` */


/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `gid` varchar(20) default NULL,
  `id` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `store` */


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
