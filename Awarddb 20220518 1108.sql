-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema award
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ award;
USE award;

--
-- Table structure for table `award`.`adhar`
--

DROP TABLE IF EXISTS `adhar`;
CREATE TABLE `adhar` (
  `id` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`.`adhar`
--

/*!40000 ALTER TABLE `adhar` DISABLE KEYS */;
INSERT INTO `adhar` (`id`) VALUES 
 ('123456789'),
 ('2255585585');
/*!40000 ALTER TABLE `adhar` ENABLE KEYS */;


--
-- Table structure for table `award`.`filedata`
--

DROP TABLE IF EXISTS `filedata`;
CREATE TABLE `filedata` (
  `fn` varchar(50) DEFAULT NULL,
  `nid` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`.`filedata`
--

/*!40000 ALTER TABLE `filedata` DISABLE KEYS */;
INSERT INTO `filedata` (`fn`,`nid`) VALUES 
 ('bg2.jpg',NULL),
 ('4.jpg',NULL);
/*!40000 ALTER TABLE `filedata` ENABLE KEYS */;


--
-- Table structure for table `award`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `award`.`nominies`
--

DROP TABLE IF EXISTS `nominies`;
CREATE TABLE `nominies` (
  `name` varchar(50) DEFAULT NULL,
  `voterid` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fn` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) DEFAULT 'pending',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`.`nominies`
--

/*!40000 ALTER TABLE `nominies` DISABLE KEYS */;
INSERT INTO `nominies` (`name`,`voterid`,`category`,`address`,`id`,`fn`,`status`) VALUES 
 ('Ravvi','8585888585','social service','address',1,'0','Reject'),
 ('sudeep','123','films','null',2,'bg2.jpg','pending'),
 ('upendra','563','films','null',3,'car1.jpg','pending'),
 ('mohan','452','social work','shimoga',4,'car1.jpg','pending');
/*!40000 ALTER TABLE `nominies` ENABLE KEYS */;


--
-- Table structure for table `award`.`people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `name` varchar(50) DEFAULT NULL,
  `voterid` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`email`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `adharno` (`voterid`),
  UNIQUE KEY `voterid` (`voterid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`.`people`
--

/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` (`name`,`voterid`,`phone`,`email`,`password`,`id`) VALUES 
 ('Ravvi','447414745885','9965858569','ravi@gmail.com','ravi123',1),
 ('shivu','123','9944999449','shivu@gmail.com','shivu123',2);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;


--
-- Table structure for table `award`.`voterid`
--

DROP TABLE IF EXISTS `voterid`;
CREATE TABLE `voterid` (
  `id` varchar(50) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`.`voterid`
--

/*!40000 ALTER TABLE `voterid` DISABLE KEYS */;
INSERT INTO `voterid` (`id`) VALUES 
 ('123'),
 ('452'),
 ('477'),
 ('563');
/*!40000 ALTER TABLE `voterid` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
