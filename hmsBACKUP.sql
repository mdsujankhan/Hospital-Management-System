-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hms
--

CREATE DATABASE IF NOT EXISTS hms;
USE hms;

--
-- Definition of table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `actual_date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` (`id`,`code`,`name`,`role_name`,`date`,`status`,`actual_date`) VALUES 
 (1,'002','Dr.Al-Amin','Doctor','java.text.SimpleDateFormat@fe83bc84','Attend',NULL),
 (2,'0001','Md.Safiullah','Receptionist','Wed Apr 07 07:17:05 BDT 2021','Attend',NULL),
 (3,'003','Md.Sujan Khan','Admin','7-Apr-2021','Attend',NULL),
 (4,'004','Md.Ashique Rahman','Receptionist','7-04-2021','Attend',NULL),
 (5,'005','Aminul','Receptionist','7-04-2021','Absent',NULL),
 (6,'005','Aminul','Receptionist','7-04-2021','Present',NULL),
 (7,'0001','Md.Safiullah','Receptionist','7-04-2021','Present','Wed Apr 07 08:56:54 BDT 2021'),
 (8,'002','Dr.Al-Amin','Doctor','7-04-2021','Present','Wed Apr 07 11:06:35 BDT 2021'),
 (9,'001','Md. Abdullah','Receptionist','10-04-2021','Present','Sat Apr 10 14:30:17 BDT 2021'),
 (10,'001','Md. Abdullah','Receptionist','11-04-2021','Present','Sun Apr 11 22:46:32 BDT 2021'),
 (11,'002','Dr.Al-Amin','Doctor','11-04-2021','Present','Sun Apr 11 22:46:39 BDT 2021'),
 (12,'003','Md.Sujan Khan','Admin','11-04-2021','Present','Sun Apr 11 22:46:47 BDT 2021'),
 (13,'004','Md.Ashique Rahman','Receptionist','11-04-2021','Absent','Sun Apr 11 22:46:56 BDT 2021'),
 (14,'005','Aminul','Receptionist','11-04-2021','Present','Sun Apr 11 22:47:06 BDT 2021'),
 (15,'001','Md. Abdullah','Receptionist','12-04-2021','Present','Mon Apr 12 23:17:12 BDT 2021'),
 (16,'001','Md. Abdullah','Receptionist','16-04-2021','Present','Fri Apr 16 10:13:28 BDT 2021'),
 (17,'001','Md. Abdullah','Receptionist','23-04-2021','Absent','Fri Apr 23 08:44:38 BDT 2021'),
 (18,'002','Dr.Al-Amin','Doctor','23-04-2021','Absent','Fri Apr 23 08:44:46 BDT 2021'),
 (19,'003','Md.Sujan Khan','Admin','23-04-2021','Absent','Fri Apr 23 08:44:54 BDT 2021'),
 (20,'004','Md.Ashique Rahman','Receptionist','23-04-2021','Absent','Fri Apr 23 08:45:00 BDT 2021'),
 (21,'005','Aminul','Receptionist','23-04-2021','Absent','Fri Apr 23 08:45:07 BDT 2021'),
 (22,'006','Md.Shamim Khan','Receptionist','23-04-2021','Absent','Fri Apr 23 08:45:13 BDT 2021'),
 (23,'001','Md. Abdullah','Receptionist','17-05-2021','Present','Mon May 17 09:53:09 BDT 2021'),
 (24,'002','Dr.Al-Amin','Doctor','17-05-2021','Absent','Mon May 17 09:53:19 BDT 2021'),
 (25,'001','Md. Abdullah','Receptionist','23-05-2021','Present','Sun May 23 07:04:13 BDT 2021'),
 (26,'002','Dr.Al-Amin','Doctor','23-05-2021','Absent','Sun May 23 07:04:27 BDT 2021'),
 (27,'003','Md.Sujan Khan','Admin','23-05-2021','Present','Sun May 23 07:04:35 BDT 2021'),
 (28,'002','Dr.Al-Amin','Doctor','23-05-2021','Absent','Sun May 23 07:05:32 BDT 2021'),
 (29,'001','Md. Abdullah','Receptionist','24-05-2021','Present','Mon May 24 10:54:06 BDT 2021'),
 (30,'002','Dr.Al-Amin','Doctor','24-05-2021','Absent','Mon May 24 10:54:13 BDT 2021'),
 (31,'003','Md.Sujan Khan','Admin','24-05-2021','Absent','Mon May 24 10:54:25 BDT 2021'),
 (32,'004','Md.Ashique Rahman','Receptionist','24-05-2021','Present','Mon May 24 10:54:33 BDT 2021'),
 (33,'005','Aminul','Receptionist','24-05-2021','Absent','Mon May 24 10:54:40 BDT 2021'),
 (34,'006','Md.Shamim Khan','Receptionist','24-05-2021','Present','Mon May 24 10:54:55 BDT 2021'),
 (35,'001','Md. Abdullah','Receptionist','24-05-2021','Present','Mon May 24 14:26:51 BDT 2021');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;


--
-- Definition of table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `dept_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) DEFAULT NULL,
  `dept_desc` varchar(45) DEFAULT NULL,
  `dept_status` varchar(45) DEFAULT NULL,
  `dept_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`dept_id`,`dept_name`,`dept_desc`,`dept_status`,`dept_code`) VALUES 
 (1,'Medicine','All kinds of patients','Open','1001'),
 (2,'Surgery','All kinds of Surgery','Open','1002'),
 (3,'ENT','Ear,Nose And Tongue','Open','1003');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;


--
-- Definition of table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;


--
-- Definition of table `pathologi_bills`
--

DROP TABLE IF EXISTS `pathologi_bills`;
CREATE TABLE `pathologi_bills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `patient_code` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `total_bill` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pathologi_bills`
--

/*!40000 ALTER TABLE `pathologi_bills` DISABLE KEYS */;
INSERT INTO `pathologi_bills` (`id`,`patient_code`,`patient_name`,`department`,`total_bill`) VALUES 
 (1,'004',NULL,'Pathology',650),
 (2,'003',NULL,'Pathology',600),
 (3,'002',NULL,'Pathology',1950),
 (4,'001',NULL,'Pathology',2200),
 (5,'001',NULL,'Pathology',2030);
/*!40000 ALTER TABLE `pathologi_bills` ENABLE KEYS */;


--
-- Definition of table `patientreport`
--

DROP TABLE IF EXISTS `patientreport`;
CREATE TABLE `patientreport` (
  `patientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `symptom` varchar(200) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `medicine` varchar(200) DEFAULT NULL,
  `wardRequered` varchar(45) DEFAULT NULL,
  `wardType` varchar(45) DEFAULT NULL,
  `tests` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreport`
--

/*!40000 ALTER TABLE `patientreport` DISABLE KEYS */;
INSERT INTO `patientreport` (`patientID`,`code`,`symptom`,`diagnosis`,`medicine`,`wardRequered`,`wardType`,`tests`) VALUES 
 (6,'003','Week','fever,cold','Napa','Yes','Duo','X-Ray RBS '),
 (8,'004','Cough','Cold, Fever','Seclos, Napa','Yes','General','ESR HBS '),
 (9,'001','head ache','Fever','Napa, cevet','Yes','Simple','ESR X-Ray ECG '),
 (10,'002','backpain, gastic','Peptic ulsar','Seclo, Ranitid','Yes','General','X-Ray Endoscopy ');
/*!40000 ALTER TABLE `patientreport` ENABLE KEYS */;


--
-- Definition of table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE `patients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `major_diseas` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` (`id`,`name`,`contact_no`,`age`,`gender`,`blood_group`,`address`,`major_diseas`,`code`) VALUES 
 (11,'Md. Sajib ','01896587458',55,'Male','A RhD negative (A-)','Dhaka','Yes','001'),
 (12,'Md. Sahid','01698574854',23,'Male','B RhD negative (B-)','Mirpur','Yes','002'),
 (13,'Md. Safi','01875487542',45,'Male','A RhD positive (A+)','Dholaipar','No','003'),
 (14,'Miss. Maria Akter','015987458758',30,'Female','O RhD negative (O-)','Hatorpara','Yes','004');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;


--
-- Definition of table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) DEFAULT NULL,
  `role_desc` varchar(45) DEFAULT NULL,
  `role_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`role_id`,`role_name`,`role_desc`,`role_code`) VALUES 
 (4,'Admin','Head of the Hospital','1001'),
 (5,'Doctor','Take care of patients ','1002'),
 (6,'Receptionist','Add Patients','1003'),
 (7,'Pathologiest','Pathology bill creator','1004');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


--
-- Definition of table `salary`
--

DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `month` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `salary` double DEFAULT NULL,
  `paid` double DEFAULT NULL,
  `due` double DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `bonus_percent` double DEFAULT NULL,
  `total_salary` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` (`id`,`code`,`name`,`month`,`year`,`salary`,`paid`,`due`,`status`,`bonus_percent`,`total_salary`) VALUES 
 (1,'002','Dr.Al-Amin','January','2021',20000,20000,0,'Paid',NULL,NULL),
 (2,'002','Dr.Al-Amin','February','2021',20000,15000,5000,'Due',NULL,NULL),
 (3,'005','Aminul','January','2020',15000,5000,10000,'Due',NULL,NULL),
 (4,'003','Md.Sujan Khan','March','2021',10000,10000,0,'Paid',NULL,NULL),
 (5,'001','Md. Abdullah','January','2020',25000,20000,5000,'Due',NULL,NULL),
 (6,'001','Md. Abdullah','April','2021',25000,20000,5000,'Due',NULL,NULL),
 (7,'001','Md. Abdullah','December ','2020',25000,25000,0,'Paid',NULL,NULL),
 (8,'001','Md. Abdullah','January','2020',25000,25000,0,'Paid',NULL,NULL),
 (9,'002','Dr.Al-Amin','May','2021',20000,2000,18000,'Due',NULL,NULL),
 (10,'001','Md. Abdullah','April','2021',25000,25000,0,'Paid',NULL,NULL),
 (11,'001','Md. Abdullah','December ','2029',25000,7500,20500,'Due',12,28000),
 (12,'001','Md. Abdullah','May','2021',25000,7500,20000,'Due',10,27500),
 (13,'001','Md. Abdullah','March','2021',25000,7500,20000,'Due',10,27500);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;


--
-- Definition of table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id_Tests` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `in_Word` varchar(45) DEFAULT NULL,
  `fee` int(10) unsigned DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_Tests`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` (`id_Tests`,`code`,`full_name`,`in_Word`,`fee`,`department`) VALUES 
 (1,'001','Electricardiogram','ECG',800,'Diagnostic Imaging'),
 (2,'002','Computerized Tomography Scan','CT Scan',3000,'Diagnostic Imaging');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `salary` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`code`,`name`,`email`,`age`,`gender`,`department`,`designation`,`user_name`,`password`,`role_name`,`salary`) VALUES 
 (2,'002','Dr.Al-Amin','amin@gmail.com',0,'Male','Medicine','Head of the Dept.','amin','1234','Doctor',20000),
 (3,'003','Md.Sujan Khan',NULL,NULL,NULL,NULL,NULL,'Admin','1234','Admin',10000),
 (4,'004','Md.Ashique Rahman','abdurrahman@gmail.com',25,'Male',NULL,NULL,'ashiq','1234','Receptionist',5000),
 (5,'005','Aminul','amin@gmail.com',30,'Male',NULL,NULL,'islam','1234','Receptionist',15000),
 (6,'001','Md. Abdullah','abdullahQgmail.com',30,'Male',NULL,NULL,'abdullah','1234','Receptionist',25000),
 (7,'006','Dr.Tahmina','tahmina@gmail.com',0,'Female','ENT','Head of the Dept.','tahmina','1234','Doctor',30000),
 (8,'006','Md.Shamim Khan','shamim@gmail.com',25,'Male',NULL,NULL,'shamim','1234','Receptionist',12000),
 (9,'007','Md. Sohel Khan','suhelkhan68@gmail.com',45,'Male',NULL,NULL,'pathology','1234','Pathologiest',15000);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
