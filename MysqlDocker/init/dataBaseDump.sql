-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 08, 2022 at 03:39 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Inhouse_Admission_System`
--

-- --------------------------------------------------------

--
-- Table structure for table `Academic_Details`
--

CREATE TABLE `Academic_Details` (
  `Std_ID` int NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `Branch_Preferred` varchar(30) NOT NULL,
  `SSC` int NOT NULL,
  `HSC` int NOT NULL,
  `mhtcet` int NOT NULL,
  `jee` int NOT NULL,
  `ssc_date` varchar(30) NOT NULL,
  `hsc_date` varchar(30) NOT NULL,
  `mhcet_date` varchar(30) NOT NULL,
  `jee_date` varchar(30) NOT NULL,
  `ssc_file` varchar(100) NOT NULL,
  `hsc_file` varchar(100) NOT NULL,
  `mhcet_file` varchar(100) NOT NULL,
  `jee_file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Academic_Details`
--

INSERT INTO `Academic_Details` (`Std_ID`, `Branch`, `Branch_Preferred`, `SSC`, `HSC`, `mhtcet`, `jee`, `ssc_date`, `hsc_date`, `mhcet_date`, `jee_date`, `ssc_file`, `hsc_file`, `mhcet_file`, `jee_file`) VALUES
(1, 'Mechanical Engineering', 'Computer Science', 100, 87, 100, 80, '9/16/2021', '1/20/2022', '3/14/2022', '5/8/2021', 'http://dummyimage.com/166x100.png/ff4444/ffffff', 'http://dummyimage.com/120x100.png/ff4444/ffffff', 'http://dummyimage.com/249x100.png/cc0000/ffffff', 'http://dummyimage.com/223x100.png/5fa2dd/ffffff'),
(2, 'Computer Science', 'Information Technology', 80, 86, 92, 80, '7/20/2021', '1/5/2022', '6/1/2021', '5/10/2021', 'http://dummyimage.com/200x100.png/dddddd/000000', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'http://dummyimage.com/162x100.png/cc0000/ffffff', 'http://dummyimage.com/222x100.png/5fa2dd/ffffff'),
(3, 'Computer Science', 'Information Technology', 89, 100, 82, 86, '3/27/2022', '11/17/2021', '8/31/2021', '9/29/2021', 'http://dummyimage.com/209x100.png/dddddd/000000', 'http://dummyimage.com/113x100.png/ff4444/ffffff', 'http://dummyimage.com/181x100.png/ff4444/ffffff', 'http://dummyimage.com/128x100.png/cc0000/ffffff'),
(4, 'Mechanical Engineering', 'Information Technology', 94, 93, 81, 95, '6/25/2021', '10/6/2021', '10/6/2021', '7/12/2021', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 'http://dummyimage.com/240x100.png/5fa2dd/ffffff', 'http://dummyimage.com/121x100.png/5fa2dd/ffffff', 'http://dummyimage.com/119x100.png/cc0000/ffffff'),
(5, 'Information Technology', 'Information Technology', 88, 97, 91, 95, '12/12/2021', '9/18/2021', '10/26/2021', '1/8/2022', 'http://dummyimage.com/198x100.png/5fa2dd/ffffff', 'http://dummyimage.com/247x100.png/ff4444/ffffff', 'http://dummyimage.com/104x100.png/dddddd/000000', 'http://dummyimage.com/103x100.png/5fa2dd/ffffff'),
(6, 'Information Technology', 'Information Technology', 100, 89, 99, 93, '2/9/2022', '10/18/2021', '3/27/2022', '10/19/2021', 'http://dummyimage.com/194x100.png/cc0000/ffffff', 'http://dummyimage.com/208x100.png/ff4444/ffffff', 'http://dummyimage.com/128x100.png/ff4444/ffffff', 'http://dummyimage.com/231x100.png/ff4444/ffffff'),
(7, 'Computer Science', 'Civil Engineering', 90, 95, 88, 90, '11/1/2021', '9/8/2021', '6/26/2021', '1/30/2022', 'http://dummyimage.com/118x100.png/ff4444/ffffff', 'http://dummyimage.com/146x100.png/dddddd/000000', 'http://dummyimage.com/185x100.png/5fa2dd/ffffff', 'http://dummyimage.com/139x100.png/ff4444/ffffff'),
(8, 'Mechanical Engineering', 'Computer Science', 99, 90, 99, 91, '10/20/2021', '9/17/2021', '2/16/2022', '12/8/2021', 'http://dummyimage.com/138x100.png/5fa2dd/ffffff', 'http://dummyimage.com/177x100.png/5fa2dd/ffffff', 'http://dummyimage.com/230x100.png/cc0000/ffffff', 'http://dummyimage.com/140x100.png/ff4444/ffffff'),
(9, 'Civil Engineering', 'Mechanical Engineering', 81, 95, 95, 86, '2/14/2022', '11/20/2021', '3/31/2022', '11/13/2021', 'http://dummyimage.com/124x100.png/5fa2dd/ffffff', 'http://dummyimage.com/220x100.png/ff4444/ffffff', 'http://dummyimage.com/153x100.png/5fa2dd/ffffff', 'http://dummyimage.com/148x100.png/dddddd/000000'),
(10, 'Information Technology', 'Computer Science', 84, 86, 92, 84, '2/21/2022', '6/5/2021', '12/20/2021', '4/24/2021', 'http://dummyimage.com/218x100.png/ff4444/ffffff', 'http://dummyimage.com/217x100.png/cc0000/ffffff', 'http://dummyimage.com/176x100.png/dddddd/000000', 'http://dummyimage.com/122x100.png/5fa2dd/ffffff'),
(11, 'Civil Engineering', 'Civil Engineering', 80, 99, 83, 82, '12/8/2021', '1/24/2022', '1/11/2022', '12/3/2021', 'http://dummyimage.com/244x100.png/ff4444/ffffff', 'http://dummyimage.com/114x100.png/cc0000/ffffff', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'http://dummyimage.com/231x100.png/cc0000/ffffff'),
(12, 'Computer Science', 'Information Technology', 80, 83, 100, 96, '11/12/2021', '10/26/2021', '12/28/2021', '2/1/2022', 'http://dummyimage.com/220x100.png/cc0000/ffffff', 'http://dummyimage.com/219x100.png/cc0000/ffffff', 'http://dummyimage.com/110x100.png/dddddd/000000', 'http://dummyimage.com/206x100.png/5fa2dd/ffffff'),
(13, 'Mechanical Engineering', 'Mechanical Engineering', 84, 90, 82, 90, '4/2/2022', '4/9/2021', '6/3/2021', '7/6/2021', 'http://dummyimage.com/113x100.png/5fa2dd/ffffff', 'http://dummyimage.com/110x100.png/5fa2dd/ffffff', 'http://dummyimage.com/229x100.png/dddddd/000000', 'http://dummyimage.com/108x100.png/dddddd/000000'),
(14, 'Mechanical Engineering', 'Mechanical Engineering', 85, 93, 97, 91, '2/27/2022', '1/30/2022', '11/16/2021', '4/6/2022', 'http://dummyimage.com/175x100.png/5fa2dd/ffffff', 'http://dummyimage.com/234x100.png/5fa2dd/ffffff', 'http://dummyimage.com/198x100.png/ff4444/ffffff', 'http://dummyimage.com/195x100.png/ff4444/ffffff'),
(15, 'Mechanical Engineering', 'Civil Engineering', 89, 85, 92, 89, '7/24/2021', '10/13/2021', '5/17/2021', '9/16/2021', 'http://dummyimage.com/213x100.png/ff4444/ffffff', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 'http://dummyimage.com/144x100.png/ff4444/ffffff', 'http://dummyimage.com/223x100.png/5fa2dd/ffffff'),
(16, 'Computer Science', 'Computer Science', 89, 94, 96, 90, '11/2/2021', '8/19/2021', '2/16/2022', '8/26/2021', 'http://dummyimage.com/119x100.png/ff4444/ffffff', 'http://dummyimage.com/178x100.png/dddddd/000000', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'http://dummyimage.com/224x100.png/dddddd/000000'),
(17, 'Mechanical Engineering', 'Mechanical Engineering', 91, 91, 85, 82, '1/16/2022', '7/23/2021', '2/12/2022', '6/19/2021', 'http://dummyimage.com/152x100.png/dddddd/000000', 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', 'http://dummyimage.com/234x100.png/5fa2dd/ffffff', 'http://dummyimage.com/156x100.png/cc0000/ffffff'),
(18, 'Mechanical Engineering', 'Computer Science', 83, 95, 88, 87, '8/15/2021', '3/25/2022', '1/8/2022', '9/1/2021', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'http://dummyimage.com/230x100.png/ff4444/ffffff', 'http://dummyimage.com/159x100.png/dddddd/000000', 'http://dummyimage.com/145x100.png/5fa2dd/ffffff'),
(19, 'Mechanical Engineering', 'Computer Science', 84, 82, 99, 91, '3/26/2022', '7/3/2021', '9/26/2021', '2/20/2022', 'http://dummyimage.com/212x100.png/ff4444/ffffff', 'http://dummyimage.com/214x100.png/ff4444/ffffff', 'http://dummyimage.com/122x100.png/ff4444/ffffff', 'http://dummyimage.com/245x100.png/dddddd/000000'),
(20, 'Information Technology', 'Information Technology', 81, 90, 89, 94, '7/7/2021', '2/16/2022', '6/7/2021', '8/7/2021', 'http://dummyimage.com/238x100.png/dddddd/000000', 'http://dummyimage.com/144x100.png/ff4444/ffffff', 'http://dummyimage.com/201x100.png/ff4444/ffffff', 'http://dummyimage.com/155x100.png/cc0000/ffffff'),
(21, 'Mechanical Engineering', 'Civil Engineering', 99, 90, 82, 100, '7/28/2021', '9/11/2021', '6/3/2021', '5/19/2021', 'http://dummyimage.com/124x100.png/5fa2dd/ffffff', 'http://dummyimage.com/121x100.png/ff4444/ffffff', 'http://dummyimage.com/101x100.png/dddddd/000000', 'http://dummyimage.com/145x100.png/cc0000/ffffff'),
(22, 'Mechanical Engineering', 'Computer Science', 85, 82, 91, 89, '10/6/2021', '10/30/2021', '3/5/2022', '12/17/2021', 'http://dummyimage.com/192x100.png/ff4444/ffffff', 'http://dummyimage.com/173x100.png/5fa2dd/ffffff', 'http://dummyimage.com/109x100.png/dddddd/000000', 'http://dummyimage.com/122x100.png/ff4444/ffffff'),
(23, 'Mechanical Engineering', 'Information Technology', 81, 95, 90, 80, '2/21/2022', '12/21/2021', '6/2/2021', '1/18/2022', 'http://dummyimage.com/193x100.png/cc0000/ffffff', 'http://dummyimage.com/208x100.png/ff4444/ffffff', 'http://dummyimage.com/133x100.png/5fa2dd/ffffff', 'http://dummyimage.com/132x100.png/ff4444/ffffff'),
(24, 'Computer Science', 'Computer Science', 85, 80, 95, 92, '7/24/2021', '3/11/2022', '11/18/2021', '6/11/2021', 'http://dummyimage.com/114x100.png/cc0000/ffffff', 'http://dummyimage.com/222x100.png/dddddd/000000', 'http://dummyimage.com/154x100.png/cc0000/ffffff', 'http://dummyimage.com/194x100.png/ff4444/ffffff'),
(25, 'Civil Engineering', 'Computer Science', 84, 91, 84, 96, '10/8/2021', '12/24/2021', '2/2/2022', '2/28/2022', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 'http://dummyimage.com/197x100.png/ff4444/ffffff', 'http://dummyimage.com/209x100.png/5fa2dd/ffffff', 'http://dummyimage.com/147x100.png/5fa2dd/ffffff'),
(26, 'Civil Engineering', 'Computer Science', 94, 99, 91, 93, '6/26/2021', '12/8/2021', '3/26/2022', '6/3/2021', 'http://dummyimage.com/211x100.png/ff4444/ffffff', 'http://dummyimage.com/208x100.png/5fa2dd/ffffff', 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'http://dummyimage.com/133x100.png/dddddd/000000'),
(27, 'Mechanical Engineering', 'Mechanical Engineering', 81, 90, 99, 97, '10/23/2021', '8/30/2021', '3/21/2022', '4/20/2021', 'http://dummyimage.com/190x100.png/cc0000/ffffff', 'http://dummyimage.com/137x100.png/5fa2dd/ffffff', 'http://dummyimage.com/202x100.png/cc0000/ffffff', 'http://dummyimage.com/134x100.png/cc0000/ffffff'),
(28, 'Civil Engineering', 'Civil Engineering', 82, 80, 94, 86, '11/3/2021', '1/6/2022', '8/7/2021', '8/15/2021', 'http://dummyimage.com/186x100.png/dddddd/000000', 'http://dummyimage.com/166x100.png/dddddd/000000', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', 'http://dummyimage.com/205x100.png/dddddd/000000'),
(29, 'Civil Engineering', 'Civil Engineering', 94, 96, 95, 89, '5/22/2021', '2/13/2022', '6/6/2021', '11/4/2021', 'http://dummyimage.com/225x100.png/cc0000/ffffff', 'http://dummyimage.com/150x100.png/5fa2dd/ffffff', 'http://dummyimage.com/225x100.png/5fa2dd/ffffff', 'http://dummyimage.com/223x100.png/dddddd/000000'),
(30, 'Mechanical Engineering', 'Information Technology', 100, 98, 92, 86, '4/26/2021', '9/22/2021', '10/21/2021', '5/18/2021', 'http://dummyimage.com/178x100.png/ff4444/ffffff', 'http://dummyimage.com/132x100.png/ff4444/ffffff', 'http://dummyimage.com/102x100.png/cc0000/ffffff', 'http://dummyimage.com/205x100.png/dddddd/000000'),
(31, 'Information Technology', 'Information Technology', 82, 95, 89, 88, '7/15/2021', '9/20/2021', '9/30/2021', '12/14/2021', 'http://dummyimage.com/135x100.png/5fa2dd/ffffff', 'http://dummyimage.com/121x100.png/cc0000/ffffff', 'http://dummyimage.com/155x100.png/5fa2dd/ffffff', 'http://dummyimage.com/163x100.png/dddddd/000000'),
(32, 'Computer Science', 'Computer Science', 80, 100, 82, 99, '12/11/2021', '8/31/2021', '12/18/2021', '11/26/2021', 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'http://dummyimage.com/218x100.png/dddddd/000000', 'http://dummyimage.com/243x100.png/5fa2dd/ffffff', 'http://dummyimage.com/177x100.png/cc0000/ffffff'),
(33, 'Information Technology', 'Mechanical Engineering', 92, 93, 96, 95, '7/14/2021', '1/8/2022', '11/20/2021', '7/14/2021', 'http://dummyimage.com/232x100.png/cc0000/ffffff', 'http://dummyimage.com/202x100.png/dddddd/000000', 'http://dummyimage.com/233x100.png/ff4444/ffffff', 'http://dummyimage.com/116x100.png/cc0000/ffffff'),
(34, 'Mechanical Engineering', 'Civil Engineering', 91, 95, 85, 93, '11/5/2021', '10/31/2021', '4/5/2022', '9/9/2021', 'http://dummyimage.com/164x100.png/5fa2dd/ffffff', 'http://dummyimage.com/241x100.png/cc0000/ffffff', 'http://dummyimage.com/107x100.png/dddddd/000000', 'http://dummyimage.com/227x100.png/cc0000/ffffff'),
(35, 'Civil Engineering', 'Mechanical Engineering', 90, 93, 86, 92, '10/8/2021', '2/5/2022', '6/3/2021', '1/23/2022', 'http://dummyimage.com/246x100.png/ff4444/ffffff', 'http://dummyimage.com/203x100.png/5fa2dd/ffffff', 'http://dummyimage.com/139x100.png/5fa2dd/ffffff', 'http://dummyimage.com/121x100.png/5fa2dd/ffffff'),
(36, 'Civil Engineering', 'Computer Science', 80, 87, 99, 99, '8/31/2021', '9/4/2021', '11/30/2021', '4/8/2021', 'http://dummyimage.com/103x100.png/dddddd/000000', 'http://dummyimage.com/191x100.png/5fa2dd/ffffff', 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'http://dummyimage.com/186x100.png/dddddd/000000'),
(37, 'Computer Science', 'Civil Engineering', 84, 97, 100, 98, '5/17/2021', '5/11/2021', '2/12/2022', '10/5/2021', 'http://dummyimage.com/216x100.png/dddddd/000000', 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'http://dummyimage.com/201x100.png/cc0000/ffffff', 'http://dummyimage.com/187x100.png/cc0000/ffffff'),
(38, 'Mechanical Engineering', 'Mechanical Engineering', 90, 87, 90, 86, '9/18/2021', '11/13/2021', '12/19/2021', '1/29/2022', 'http://dummyimage.com/132x100.png/5fa2dd/ffffff', 'http://dummyimage.com/139x100.png/ff4444/ffffff', 'http://dummyimage.com/135x100.png/ff4444/ffffff', 'http://dummyimage.com/136x100.png/ff4444/ffffff'),
(39, 'Computer Science', 'Civil Engineering', 90, 96, 85, 97, '1/24/2022', '4/8/2021', '4/27/2021', '7/14/2021', 'http://dummyimage.com/126x100.png/5fa2dd/ffffff', 'http://dummyimage.com/109x100.png/cc0000/ffffff', 'http://dummyimage.com/114x100.png/dddddd/000000', 'http://dummyimage.com/213x100.png/cc0000/ffffff'),
(40, 'Mechanical Engineering', 'Information Technology', 91, 90, 86, 99, '11/17/2021', '11/4/2021', '12/24/2021', '3/19/2022', 'http://dummyimage.com/104x100.png/ff4444/ffffff', 'http://dummyimage.com/138x100.png/dddddd/000000', 'http://dummyimage.com/102x100.png/ff4444/ffffff', 'http://dummyimage.com/248x100.png/ff4444/ffffff'),
(41, 'Mechanical Engineering', 'Computer Science', 94, 95, 88, 83, '6/21/2021', '1/15/2022', '5/8/2021', '6/13/2021', 'http://dummyimage.com/227x100.png/5fa2dd/ffffff', 'http://dummyimage.com/132x100.png/ff4444/ffffff', 'http://dummyimage.com/123x100.png/ff4444/ffffff', 'http://dummyimage.com/224x100.png/ff4444/ffffff'),
(42, 'Computer Science', 'Information Technology', 82, 99, 89, 96, '11/3/2021', '3/14/2022', '6/3/2021', '12/9/2021', 'http://dummyimage.com/179x100.png/cc0000/ffffff', 'http://dummyimage.com/132x100.png/5fa2dd/ffffff', 'http://dummyimage.com/149x100.png/5fa2dd/ffffff', 'http://dummyimage.com/143x100.png/5fa2dd/ffffff'),
(43, 'Mechanical Engineering', 'Civil Engineering', 88, 84, 95, 97, '10/12/2021', '6/20/2021', '12/29/2021', '4/12/2021', 'http://dummyimage.com/249x100.png/cc0000/ffffff', 'http://dummyimage.com/221x100.png/cc0000/ffffff', 'http://dummyimage.com/187x100.png/ff4444/ffffff', 'http://dummyimage.com/103x100.png/cc0000/ffffff'),
(44, 'Mechanical Engineering', 'Civil Engineering', 100, 94, 97, 88, '2/15/2022', '5/24/2021', '10/16/2021', '1/2/2022', 'http://dummyimage.com/152x100.png/dddddd/000000', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 'http://dummyimage.com/147x100.png/ff4444/ffffff'),
(45, 'Mechanical Engineering', 'Information Technology', 99, 85, 93, 87, '8/16/2021', '2/14/2022', '4/12/2021', '2/26/2022', 'http://dummyimage.com/215x100.png/5fa2dd/ffffff', 'http://dummyimage.com/187x100.png/5fa2dd/ffffff', 'http://dummyimage.com/144x100.png/dddddd/000000', 'http://dummyimage.com/131x100.png/ff4444/ffffff'),
(46, 'Computer Science', 'Civil Engineering', 98, 91, 93, 89, '5/30/2021', '5/27/2021', '6/26/2021', '12/7/2021', 'http://dummyimage.com/125x100.png/dddddd/000000', 'http://dummyimage.com/248x100.png/cc0000/ffffff', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff', 'http://dummyimage.com/178x100.png/dddddd/000000'),
(47, 'Information Technology', 'Mechanical Engineering', 97, 88, 96, 81, '1/30/2022', '4/10/2021', '8/18/2021', '8/6/2021', 'http://dummyimage.com/155x100.png/cc0000/ffffff', 'http://dummyimage.com/194x100.png/dddddd/000000', 'http://dummyimage.com/209x100.png/5fa2dd/ffffff', 'http://dummyimage.com/134x100.png/dddddd/000000'),
(48, 'Mechanical Engineering', 'Information Technology', 83, 82, 91, 95, '3/30/2022', '12/14/2021', '7/28/2021', '6/18/2021', 'http://dummyimage.com/173x100.png/5fa2dd/ffffff', 'http://dummyimage.com/104x100.png/ff4444/ffffff', 'http://dummyimage.com/191x100.png/ff4444/ffffff', 'http://dummyimage.com/151x100.png/dddddd/000000'),
(49, 'Computer Science', 'Mechanical Engineering', 92, 84, 97, 80, '11/22/2021', '4/15/2021', '5/28/2021', '9/8/2021', 'http://dummyimage.com/106x100.png/dddddd/000000', 'http://dummyimage.com/227x100.png/dddddd/000000', 'http://dummyimage.com/120x100.png/dddddd/000000', 'http://dummyimage.com/203x100.png/cc0000/ffffff'),
(50, 'Information Technology', 'Mechanical Engineering', 97, 88, 81, 96, '12/1/2021', '11/25/2021', '1/24/2022', '10/5/2021', 'http://dummyimage.com/169x100.png/dddddd/000000', 'http://dummyimage.com/184x100.png/cc0000/ffffff', 'http://dummyimage.com/140x100.png/dddddd/000000', 'http://dummyimage.com/209x100.png/5fa2dd/ffffff'),
(51, 'Mechanical Engineering', 'Civil Engineering', 87, 99, 88, 80, '11/10/2021', '11/1/2021', '12/1/2021', '9/29/2021', 'http://dummyimage.com/215x100.png/cc0000/ffffff', 'http://dummyimage.com/184x100.png/dddddd/000000', 'http://dummyimage.com/119x100.png/cc0000/ffffff', 'http://dummyimage.com/154x100.png/dddddd/000000'),
(52, 'Civil Engineering', 'Computer Science', 82, 93, 93, 95, '6/17/2021', '10/31/2021', '11/6/2021', '10/29/2021', 'http://dummyimage.com/105x100.png/5fa2dd/ffffff', 'http://dummyimage.com/231x100.png/dddddd/000000', 'http://dummyimage.com/205x100.png/5fa2dd/ffffff', 'http://dummyimage.com/215x100.png/cc0000/ffffff'),
(53, 'Mechanical Engineering', 'Mechanical Engineering', 85, 91, 88, 84, '8/7/2021', '10/20/2021', '2/17/2022', '4/12/2021', 'http://dummyimage.com/245x100.png/dddddd/000000', 'http://dummyimage.com/200x100.png/5fa2dd/ffffff', 'http://dummyimage.com/207x100.png/cc0000/ffffff', 'http://dummyimage.com/140x100.png/cc0000/ffffff'),
(54, 'Mechanical Engineering', 'Information Technology', 90, 92, 86, 89, '6/18/2021', '11/3/2021', '4/4/2022', '2/14/2022', 'http://dummyimage.com/232x100.png/ff4444/ffffff', 'http://dummyimage.com/213x100.png/dddddd/000000', 'http://dummyimage.com/101x100.png/5fa2dd/ffffff', 'http://dummyimage.com/137x100.png/cc0000/ffffff'),
(55, 'Civil Engineering', 'Mechanical Engineering', 93, 97, 90, 95, '8/4/2021', '7/1/2021', '9/13/2021', '5/8/2021', 'http://dummyimage.com/231x100.png/dddddd/000000', 'http://dummyimage.com/240x100.png/cc0000/ffffff', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'http://dummyimage.com/139x100.png/5fa2dd/ffffff'),
(56, 'Mechanical Engineering', 'Mechanical Engineering', 81, 81, 86, 88, '11/27/2021', '2/24/2022', '10/20/2021', '5/16/2021', 'http://dummyimage.com/157x100.png/dddddd/000000', 'http://dummyimage.com/154x100.png/ff4444/ffffff', 'http://dummyimage.com/248x100.png/5fa2dd/ffffff', 'http://dummyimage.com/161x100.png/dddddd/000000'),
(57, 'Information Technology', 'Mechanical Engineering', 87, 90, 95, 88, '6/14/2021', '5/8/2021', '6/19/2021', '9/7/2021', 'http://dummyimage.com/115x100.png/dddddd/000000', 'http://dummyimage.com/118x100.png/dddddd/000000', 'http://dummyimage.com/119x100.png/dddddd/000000', 'http://dummyimage.com/157x100.png/ff4444/ffffff'),
(58, 'Information Technology', 'Information Technology', 82, 98, 90, 85, '9/3/2021', '11/21/2021', '2/19/2022', '10/28/2021', 'http://dummyimage.com/165x100.png/ff4444/ffffff', 'http://dummyimage.com/104x100.png/5fa2dd/ffffff', 'http://dummyimage.com/207x100.png/cc0000/ffffff', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff'),
(59, 'Mechanical Engineering', 'Computer Science', 84, 81, 95, 90, '6/18/2021', '7/13/2021', '10/13/2021', '12/9/2021', 'http://dummyimage.com/186x100.png/5fa2dd/ffffff', 'http://dummyimage.com/196x100.png/ff4444/ffffff', 'http://dummyimage.com/174x100.png/cc0000/ffffff', 'http://dummyimage.com/109x100.png/cc0000/ffffff'),
(60, 'Civil Engineering', 'Information Technology', 96, 91, 97, 100, '1/29/2022', '7/7/2021', '6/25/2021', '12/18/2021', 'http://dummyimage.com/141x100.png/5fa2dd/ffffff', 'http://dummyimage.com/229x100.png/5fa2dd/ffffff', 'http://dummyimage.com/222x100.png/dddddd/000000', 'http://dummyimage.com/109x100.png/5fa2dd/ffffff'),
(61, 'Mechanical Engineering', 'Mechanical Engineering', 91, 95, 81, 85, '10/28/2021', '10/28/2021', '4/18/2021', '7/2/2021', 'http://dummyimage.com/145x100.png/ff4444/ffffff', 'http://dummyimage.com/180x100.png/dddddd/000000', 'http://dummyimage.com/242x100.png/cc0000/ffffff', 'http://dummyimage.com/238x100.png/dddddd/000000'),
(62, 'Information Technology', 'Civil Engineering', 85, 82, 98, 94, '4/26/2021', '5/14/2021', '5/1/2021', '1/31/2022', 'http://dummyimage.com/133x100.png/cc0000/ffffff', 'http://dummyimage.com/160x100.png/ff4444/ffffff', 'http://dummyimage.com/103x100.png/cc0000/ffffff', 'http://dummyimage.com/201x100.png/ff4444/ffffff'),
(63, 'Computer Science', 'Information Technology', 88, 85, 85, 99, '4/28/2021', '12/21/2021', '8/15/2021', '10/7/2021', 'http://dummyimage.com/198x100.png/dddddd/000000', 'http://dummyimage.com/133x100.png/dddddd/000000', 'http://dummyimage.com/163x100.png/5fa2dd/ffffff', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff'),
(64, 'Civil Engineering', 'Information Technology', 91, 80, 95, 94, '3/17/2022', '9/9/2021', '7/4/2021', '8/18/2021', 'http://dummyimage.com/152x100.png/cc0000/ffffff', 'http://dummyimage.com/102x100.png/ff4444/ffffff', 'http://dummyimage.com/250x100.png/ff4444/ffffff', 'http://dummyimage.com/147x100.png/ff4444/ffffff'),
(65, 'Computer Science', 'Mechanical Engineering', 88, 80, 84, 85, '6/28/2021', '12/17/2021', '5/19/2021', '9/17/2021', 'http://dummyimage.com/123x100.png/cc0000/ffffff', 'http://dummyimage.com/226x100.png/dddddd/000000', 'http://dummyimage.com/127x100.png/5fa2dd/ffffff', 'http://dummyimage.com/132x100.png/5fa2dd/ffffff'),
(66, 'Computer Science', 'Information Technology', 98, 100, 81, 89, '4/24/2021', '11/3/2021', '7/3/2021', '4/12/2021', 'http://dummyimage.com/205x100.png/cc0000/ffffff', 'http://dummyimage.com/104x100.png/dddddd/000000', 'http://dummyimage.com/128x100.png/5fa2dd/ffffff', 'http://dummyimage.com/112x100.png/5fa2dd/ffffff'),
(67, 'Information Technology', 'Computer Science', 91, 92, 87, 95, '4/4/2022', '5/31/2021', '7/27/2021', '3/4/2022', 'http://dummyimage.com/148x100.png/cc0000/ffffff', 'http://dummyimage.com/196x100.png/ff4444/ffffff', 'http://dummyimage.com/202x100.png/dddddd/000000', 'http://dummyimage.com/246x100.png/ff4444/ffffff'),
(68, 'Civil Engineering', 'Information Technology', 89, 83, 81, 98, '9/21/2021', '4/19/2021', '2/1/2022', '3/4/2022', 'http://dummyimage.com/219x100.png/dddddd/000000', 'http://dummyimage.com/217x100.png/cc0000/ffffff', 'http://dummyimage.com/158x100.png/5fa2dd/ffffff', 'http://dummyimage.com/200x100.png/5fa2dd/ffffff'),
(69, 'Computer Science', 'Civil Engineering', 97, 93, 93, 99, '9/10/2021', '2/4/2022', '6/7/2021', '4/8/2021', 'http://dummyimage.com/228x100.png/5fa2dd/ffffff', 'http://dummyimage.com/138x100.png/ff4444/ffffff', 'http://dummyimage.com/171x100.png/cc0000/ffffff', 'http://dummyimage.com/243x100.png/ff4444/ffffff'),
(70, 'Civil Engineering', 'Information Technology', 94, 91, 87, 95, '10/12/2021', '5/6/2021', '8/29/2021', '1/7/2022', 'http://dummyimage.com/132x100.png/dddddd/000000', 'http://dummyimage.com/154x100.png/5fa2dd/ffffff', 'http://dummyimage.com/218x100.png/5fa2dd/ffffff', 'http://dummyimage.com/103x100.png/ff4444/ffffff'),
(71, 'Information Technology', 'Civil Engineering', 83, 99, 94, 83, '8/14/2021', '3/1/2022', '1/7/2022', '5/7/2021', 'http://dummyimage.com/124x100.png/ff4444/ffffff', 'http://dummyimage.com/163x100.png/cc0000/ffffff', 'http://dummyimage.com/211x100.png/ff4444/ffffff', 'http://dummyimage.com/207x100.png/ff4444/ffffff'),
(72, 'Information Technology', 'Computer Science', 88, 97, 88, 85, '10/29/2021', '7/26/2021', '2/27/2022', '6/11/2021', 'http://dummyimage.com/229x100.png/dddddd/000000', 'http://dummyimage.com/179x100.png/cc0000/ffffff', 'http://dummyimage.com/132x100.png/ff4444/ffffff', 'http://dummyimage.com/212x100.png/5fa2dd/ffffff'),
(73, 'Computer Science', 'Civil Engineering', 99, 82, 97, 93, '8/27/2021', '2/24/2022', '12/29/2021', '3/1/2022', 'http://dummyimage.com/149x100.png/dddddd/000000', 'http://dummyimage.com/212x100.png/ff4444/ffffff', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 'http://dummyimage.com/168x100.png/cc0000/ffffff'),
(74, 'Mechanical Engineering', 'Computer Science', 87, 83, 80, 96, '9/15/2021', '1/8/2022', '1/2/2022', '2/20/2022', 'http://dummyimage.com/198x100.png/cc0000/ffffff', 'http://dummyimage.com/115x100.png/cc0000/ffffff', 'http://dummyimage.com/159x100.png/5fa2dd/ffffff', 'http://dummyimage.com/123x100.png/ff4444/ffffff'),
(75, 'Civil Engineering', 'Civil Engineering', 86, 82, 80, 88, '11/1/2021', '5/22/2021', '6/5/2021', '7/18/2021', 'http://dummyimage.com/101x100.png/ff4444/ffffff', 'http://dummyimage.com/209x100.png/dddddd/000000', 'http://dummyimage.com/157x100.png/5fa2dd/ffffff', 'http://dummyimage.com/218x100.png/cc0000/ffffff'),
(76, 'Mechanical Engineering', 'Computer Science', 93, 99, 100, 93, '3/21/2022', '8/23/2021', '3/25/2022', '8/7/2021', 'http://dummyimage.com/191x100.png/ff4444/ffffff', 'http://dummyimage.com/136x100.png/dddddd/000000', 'http://dummyimage.com/229x100.png/cc0000/ffffff', 'http://dummyimage.com/231x100.png/5fa2dd/ffffff'),
(77, 'Information Technology', 'Mechanical Engineering', 85, 100, 98, 86, '7/23/2021', '9/1/2021', '12/19/2021', '8/6/2021', 'http://dummyimage.com/226x100.png/dddddd/000000', 'http://dummyimage.com/130x100.png/dddddd/000000', 'http://dummyimage.com/138x100.png/ff4444/ffffff', 'http://dummyimage.com/145x100.png/cc0000/ffffff'),
(78, 'Information Technology', 'Mechanical Engineering', 100, 87, 99, 98, '2/3/2022', '6/23/2021', '8/4/2021', '4/15/2021', 'http://dummyimage.com/136x100.png/cc0000/ffffff', 'http://dummyimage.com/142x100.png/cc0000/ffffff', 'http://dummyimage.com/119x100.png/dddddd/000000', 'http://dummyimage.com/175x100.png/dddddd/000000'),
(79, 'Information Technology', 'Computer Science', 92, 92, 97, 81, '9/12/2021', '11/30/2021', '10/7/2021', '10/13/2021', 'http://dummyimage.com/239x100.png/5fa2dd/ffffff', 'http://dummyimage.com/243x100.png/dddddd/000000', 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', 'http://dummyimage.com/213x100.png/5fa2dd/ffffff'),
(80, 'Information Technology', 'Civil Engineering', 89, 86, 96, 84, '12/29/2021', '9/11/2021', '9/30/2021', '9/26/2021', 'http://dummyimage.com/178x100.png/cc0000/ffffff', 'http://dummyimage.com/205x100.png/ff4444/ffffff', 'http://dummyimage.com/189x100.png/ff4444/ffffff', 'http://dummyimage.com/248x100.png/dddddd/000000'),
(81, 'Mechanical Engineering', 'Civil Engineering', 82, 86, 89, 97, '11/28/2021', '10/21/2021', '8/24/2021', '8/12/2021', 'http://dummyimage.com/238x100.png/cc0000/ffffff', 'http://dummyimage.com/213x100.png/cc0000/ffffff', 'http://dummyimage.com/129x100.png/cc0000/ffffff', 'http://dummyimage.com/172x100.png/dddddd/000000'),
(82, 'Computer Science', 'Computer Science', 81, 95, 91, 81, '10/19/2021', '8/29/2021', '10/31/2021', '10/6/2021', 'http://dummyimage.com/146x100.png/ff4444/ffffff', 'http://dummyimage.com/237x100.png/dddddd/000000', 'http://dummyimage.com/120x100.png/ff4444/ffffff', 'http://dummyimage.com/128x100.png/5fa2dd/ffffff'),
(83, 'Civil Engineering', 'Mechanical Engineering', 95, 81, 95, 98, '5/12/2021', '3/15/2022', '1/14/2022', '11/5/2021', 'http://dummyimage.com/164x100.png/5fa2dd/ffffff', 'http://dummyimage.com/240x100.png/cc0000/ffffff', 'http://dummyimage.com/146x100.png/5fa2dd/ffffff', 'http://dummyimage.com/164x100.png/5fa2dd/ffffff'),
(84, 'Civil Engineering', 'Civil Engineering', 88, 83, 97, 90, '3/22/2022', '6/16/2021', '4/25/2021', '6/19/2021', 'http://dummyimage.com/150x100.png/cc0000/ffffff', 'http://dummyimage.com/233x100.png/dddddd/000000', 'http://dummyimage.com/187x100.png/dddddd/000000', 'http://dummyimage.com/247x100.png/ff4444/ffffff'),
(85, 'Mechanical Engineering', 'Computer Science', 95, 99, 82, 97, '10/4/2021', '6/1/2021', '11/30/2021', '11/12/2021', 'http://dummyimage.com/101x100.png/ff4444/ffffff', 'http://dummyimage.com/123x100.png/ff4444/ffffff', 'http://dummyimage.com/177x100.png/5fa2dd/ffffff', 'http://dummyimage.com/237x100.png/dddddd/000000'),
(86, 'Information Technology', 'Information Technology', 81, 80, 93, 93, '9/12/2021', '4/2/2022', '8/14/2021', '3/14/2022', 'http://dummyimage.com/199x100.png/5fa2dd/ffffff', 'http://dummyimage.com/103x100.png/5fa2dd/ffffff', 'http://dummyimage.com/217x100.png/cc0000/ffffff', 'http://dummyimage.com/170x100.png/5fa2dd/ffffff'),
(87, 'Mechanical Engineering', 'Mechanical Engineering', 90, 82, 81, 88, '6/19/2021', '5/23/2021', '8/7/2021', '11/12/2021', 'http://dummyimage.com/249x100.png/5fa2dd/ffffff', 'http://dummyimage.com/208x100.png/ff4444/ffffff', 'http://dummyimage.com/177x100.png/5fa2dd/ffffff', 'http://dummyimage.com/184x100.png/ff4444/ffffff'),
(88, 'Information Technology', 'Civil Engineering', 96, 87, 94, 84, '11/12/2021', '5/15/2021', '7/19/2021', '6/26/2021', 'http://dummyimage.com/240x100.png/ff4444/ffffff', 'http://dummyimage.com/102x100.png/5fa2dd/ffffff', 'http://dummyimage.com/122x100.png/dddddd/000000', 'http://dummyimage.com/119x100.png/cc0000/ffffff'),
(89, 'Information Technology', 'Information Technology', 95, 92, 90, 94, '12/28/2021', '11/8/2021', '3/27/2022', '6/18/2021', 'http://dummyimage.com/104x100.png/ff4444/ffffff', 'http://dummyimage.com/205x100.png/dddddd/000000', 'http://dummyimage.com/150x100.png/ff4444/ffffff', 'http://dummyimage.com/118x100.png/5fa2dd/ffffff'),
(90, 'Mechanical Engineering', 'Civil Engineering', 92, 97, 100, 98, '9/26/2021', '6/16/2021', '5/25/2021', '7/25/2021', 'http://dummyimage.com/228x100.png/dddddd/000000', 'http://dummyimage.com/179x100.png/cc0000/ffffff', 'http://dummyimage.com/242x100.png/dddddd/000000', 'http://dummyimage.com/219x100.png/dddddd/000000'),
(91, 'Computer Science', 'Information Technology', 97, 93, 81, 100, '10/2/2021', '10/6/2021', '5/14/2021', '7/25/2021', 'http://dummyimage.com/231x100.png/ff4444/ffffff', 'http://dummyimage.com/235x100.png/dddddd/000000', 'http://dummyimage.com/117x100.png/dddddd/000000', 'http://dummyimage.com/183x100.png/cc0000/ffffff'),
(92, 'Computer Science', 'Mechanical Engineering', 84, 86, 87, 84, '9/29/2021', '12/5/2021', '1/10/2022', '4/18/2021', 'http://dummyimage.com/197x100.png/cc0000/ffffff', 'http://dummyimage.com/113x100.png/ff4444/ffffff', 'http://dummyimage.com/207x100.png/ff4444/ffffff', 'http://dummyimage.com/200x100.png/ff4444/ffffff'),
(93, 'Mechanical Engineering', 'Mechanical Engineering', 94, 90, 100, 99, '2/4/2022', '7/5/2021', '6/5/2021', '4/24/2021', 'http://dummyimage.com/109x100.png/cc0000/ffffff', 'http://dummyimage.com/124x100.png/cc0000/ffffff', 'http://dummyimage.com/228x100.png/dddddd/000000', 'http://dummyimage.com/193x100.png/ff4444/ffffff'),
(94, 'Information Technology', 'Information Technology', 96, 89, 85, 100, '11/25/2021', '1/10/2022', '5/5/2021', '9/12/2021', 'http://dummyimage.com/191x100.png/ff4444/ffffff', 'http://dummyimage.com/105x100.png/ff4444/ffffff', 'http://dummyimage.com/210x100.png/cc0000/ffffff', 'http://dummyimage.com/141x100.png/dddddd/000000'),
(95, 'Information Technology', 'Mechanical Engineering', 89, 82, 80, 99, '2/22/2022', '10/16/2021', '7/9/2021', '1/23/2022', 'http://dummyimage.com/194x100.png/dddddd/000000', 'http://dummyimage.com/190x100.png/5fa2dd/ffffff', 'http://dummyimage.com/201x100.png/cc0000/ffffff', 'http://dummyimage.com/210x100.png/cc0000/ffffff'),
(96, 'Information Technology', 'Information Technology', 89, 93, 88, 97, '10/8/2021', '7/4/2021', '2/7/2022', '11/10/2021', 'http://dummyimage.com/143x100.png/dddddd/000000', 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', 'http://dummyimage.com/207x100.png/ff4444/ffffff', 'http://dummyimage.com/125x100.png/dddddd/000000'),
(97, 'Computer Science', 'Information Technology', 95, 88, 80, 80, '4/10/2021', '5/2/2021', '1/23/2022', '10/13/2021', 'http://dummyimage.com/173x100.png/dddddd/000000', 'http://dummyimage.com/181x100.png/cc0000/ffffff', 'http://dummyimage.com/199x100.png/dddddd/000000', 'http://dummyimage.com/155x100.png/ff4444/ffffff'),
(98, 'Civil Engineering', 'Mechanical Engineering', 81, 94, 100, 81, '11/5/2021', '11/5/2021', '2/4/2022', '2/6/2022', 'http://dummyimage.com/119x100.png/cc0000/ffffff', 'http://dummyimage.com/206x100.png/ff4444/ffffff', 'http://dummyimage.com/212x100.png/cc0000/ffffff', 'http://dummyimage.com/171x100.png/dddddd/000000'),
(99, 'Civil Engineering', 'Mechanical Engineering', 90, 85, 83, 97, '1/29/2022', '3/1/2022', '12/5/2021', '3/21/2022', 'http://dummyimage.com/123x100.png/cc0000/ffffff', 'http://dummyimage.com/153x100.png/cc0000/ffffff', 'http://dummyimage.com/232x100.png/dddddd/000000', 'http://dummyimage.com/134x100.png/ff4444/ffffff'),
(100, 'Civil Engineering', 'Civil Engineering', 95, 98, 93, 86, '3/11/2022', '2/28/2022', '7/12/2021', '4/14/2021', 'http://dummyimage.com/196x100.png/cc0000/ffffff', 'http://dummyimage.com/109x100.png/ff4444/ffffff', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 'http://dummyimage.com/216x100.png/cc0000/ffffff');

-- --------------------------------------------------------

--
-- Table structure for table `Admission_Details`
--

CREATE TABLE `Admission_Details` (
  `StudentID` int NOT NULL,
  `ProfilePic` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Middlename` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `IDProof` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Address1` varchar(100) NOT NULL,
  `Address2` varchar(100) NOT NULL,
  `Zipcode` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `EmailID` varchar(100) NOT NULL,
  `PhoneNo1` varchar(20) NOT NULL,
  `PhoneNo2` varchar(20) NOT NULL,
  `TelePhoneNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Admission_Details`
--

INSERT INTO `Admission_Details` (`StudentID`, `ProfilePic`, `Firstname`, `Middlename`, `Lastname`, `DOB`, `IDProof`, `Gender`, `Address1`, `Address2`, `Zipcode`, `City`, `State`, `Country`, `EmailID`, `PhoneNo1`, `PhoneNo2`, `TelePhoneNo`) VALUES
(1, 'http://dummyimage.com/172x100.png/ff4444/ffffff', 'Vinnie', 'Miller', 'Johananov', '1/12/2022', 'http://dummyimage.com/196x100.png/5fa2dd/ffffff', 'Female', '777 Dwight Crossing', 'none', '652', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '169-898-3033', '541-201-4483', '463-674-5824'),
(2, 'http://dummyimage.com/241x100.png/cc0000/ffffff', 'Shir', 'Hartley', 'Leon', '5/16/2021', 'http://dummyimage.com/134x100.png/5fa2dd/ffffff', 'Female', '6 Forest Dale Avenue', 'none', '565', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '646-360-5869', '547-349-7118', '842-100-3983'),
(3, 'http://dummyimage.com/183x100.png/dddddd/000000', 'Cammy', 'Brannon', 'Shorte', '9/5/2021', 'http://dummyimage.com/190x100.png/dddddd/000000', 'Male', '253 Knutson Hill', 'none', '71', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '760-350-0979', '454-416-6530', '363-901-0834'),
(4, 'http://dummyimage.com/169x100.png/ff4444/ffffff', 'Minette', 'Korey', 'Braim', '3/19/2022', 'http://dummyimage.com/106x100.png/ff4444/ffffff', 'Female', '47929 Granby Trail', 'none', '6', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '446-604-7345', '891-336-5471', '109-293-4792'),
(5, 'http://dummyimage.com/162x100.png/dddddd/000000', 'Hanan', 'Norbert', 'Airy', '4/30/2021', 'http://dummyimage.com/121x100.png/dddddd/000000', 'Male', '3 Homewood Avenue', 'none', '680', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '234-957-2990', '442-261-2906', '237-851-9158'),
(6, 'http://dummyimage.com/208x100.png/ff4444/ffffff', 'Gypsy', 'Weylin', 'Simnell', '10/31/2021', 'http://dummyimage.com/126x100.png/5fa2dd/ffffff', 'Female', '8 Coleman Road', 'none', '3396', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '460-535-1551', '811-997-5181', '836-478-5454'),
(7, 'http://dummyimage.com/186x100.png/cc0000/ffffff', 'Ximenez', 'Tally', 'Batey', '7/28/2021', 'http://dummyimage.com/245x100.png/ff4444/ffffff', 'Male', '87 Trailsway Terrace', 'none', '51', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '190-927-2177', '241-793-0342', '364-988-4294'),
(8, 'http://dummyimage.com/226x100.png/5fa2dd/ffffff', 'Guenna', 'Byrann', 'Eisak', '2/15/2022', 'http://dummyimage.com/174x100.png/5fa2dd/ffffff', 'Female', '96113 3rd Pass', 'none', '0', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '540-632-2813', '436-655-6771', '132-980-9051'),
(9, 'http://dummyimage.com/228x100.png/ff4444/ffffff', 'Ciro', 'Ricoriki', 'Broader', '8/22/2021', 'http://dummyimage.com/143x100.png/dddddd/000000', 'Male', '747 Shelley Hill', 'none', '7122', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '652-745-3900', '940-234-5667', '392-861-1808'),
(10, 'http://dummyimage.com/201x100.png/ff4444/ffffff', 'Silvester', 'Allistir', 'McTrustram', '5/6/2021', 'http://dummyimage.com/125x100.png/5fa2dd/ffffff', 'Male', '25 Mcbride Way', 'none', '850', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '549-761-0788', '259-827-6006', '872-278-7538'),
(11, 'http://dummyimage.com/123x100.png/5fa2dd/ffffff', 'Jamie', 'Morton', 'Runham', '9/26/2021', 'http://dummyimage.com/110x100.png/ff4444/ffffff', 'Female', '39083 Crowley Park', 'none', '4629', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '734-533-8072', '145-506-9512', '839-575-8932'),
(12, 'http://dummyimage.com/128x100.png/5fa2dd/ffffff', 'Percy', 'Abramo', 'Newnham', '7/6/2021', 'http://dummyimage.com/152x100.png/5fa2dd/ffffff', 'Male', '12498 Schiller Center', 'none', '0', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '888-415-3497', '730-412-3371', '880-117-7282'),
(13, 'http://dummyimage.com/204x100.png/cc0000/ffffff', 'Noe', 'Jacobo', 'Hayto', '2/7/2022', 'http://dummyimage.com/231x100.png/dddddd/000000', 'Male', '2 Towne Drive', 'none', '10', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '154-227-7373', '624-760-0574', '496-873-8347'),
(14, 'http://dummyimage.com/149x100.png/cc0000/ffffff', 'Beltran', 'Birk', 'Kleisel', '5/3/2021', 'http://dummyimage.com/179x100.png/ff4444/ffffff', 'Male', '61529 Maple Wood Terrace', 'none', '6658', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '940-522-6230', '390-591-8955', '491-412-1009'),
(15, 'http://dummyimage.com/195x100.png/dddddd/000000', 'Chickie', 'Willy', 'Gerrit', '8/25/2021', 'http://dummyimage.com/246x100.png/cc0000/ffffff', 'Male', '7 Hollow Ridge Crossing', 'none', '2', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '397-760-9211', '740-942-3765', '290-285-9929'),
(16, 'http://dummyimage.com/125x100.png/dddddd/000000', 'Ara', 'Thatcher', 'Grange', '8/7/2021', 'http://dummyimage.com/189x100.png/dddddd/000000', 'Female', '15482 Vermont Parkway', 'none', '23', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '848-555-1239', '289-643-0426', '654-237-5450'),
(17, 'http://dummyimage.com/101x100.png/dddddd/000000', 'Branden', 'Slade', 'Krebs', '3/18/2022', 'http://dummyimage.com/188x100.png/ff4444/ffffff', 'Male', '20825 Weeping Birch Junction', 'none', '2', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '787-229-8245', '824-310-7640', '858-897-9734'),
(18, 'http://dummyimage.com/205x100.png/dddddd/000000', 'Erick', 'Jason', 'Fratczak', '2/12/2022', 'http://dummyimage.com/152x100.png/cc0000/ffffff', 'Male', '4984 Birchwood Center', 'none', '9', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '647-846-4833', '749-568-2512', '898-733-3322'),
(19, 'http://dummyimage.com/189x100.png/cc0000/ffffff', 'Lauri', 'Hagan', 'Gouldbourn', '10/25/2021', 'http://dummyimage.com/232x100.png/ff4444/ffffff', 'Female', '041 Cordelia Road', 'none', '60390', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '656-988-4996', '664-523-2762', '528-208-0018'),
(20, 'http://dummyimage.com/146x100.png/cc0000/ffffff', 'Seth', 'Lenci', 'Dinzey', '6/30/2021', 'http://dummyimage.com/159x100.png/ff4444/ffffff', 'Male', '65 Moose Circle', 'none', '606', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '516-657-5606', '994-404-5478', '405-328-7966'),
(21, 'http://dummyimage.com/132x100.png/dddddd/000000', 'Bethina', 'Pavel', 'Meldrum', '8/6/2021', 'http://dummyimage.com/243x100.png/dddddd/000000', 'Female', '30151 Helena Park', 'none', '190', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '750-901-2630', '948-437-9419', '556-134-6353'),
(22, 'http://dummyimage.com/219x100.png/dddddd/000000', 'Townie', 'Michael', 'Beckwith', '10/15/2021', 'http://dummyimage.com/248x100.png/ff4444/ffffff', 'Male', '4867 Washington Street', 'none', '828', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '549-640-2057', '983-943-6026', '671-652-5135'),
(23, 'http://dummyimage.com/200x100.png/ff4444/ffffff', 'Huey', 'Kristoffer', 'Spurrior', '2/3/2022', 'http://dummyimage.com/177x100.png/5fa2dd/ffffff', 'Male', '5 Westend Park', 'none', '4', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '492-653-1459', '781-234-9617', '160-170-5260'),
(24, 'http://dummyimage.com/186x100.png/dddddd/000000', 'Pier', 'Ricoriki', 'McLennan', '9/24/2021', 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', 'Female', '284 Ridge Oak Way', 'none', '238', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '609-994-6577', '873-873-0740', '204-775-8029'),
(25, 'http://dummyimage.com/239x100.png/dddddd/000000', 'Walden', 'Kliment', 'Colbron', '10/13/2021', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 'Male', '5754 Summerview Junction', 'none', '7', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '715-143-0524', '468-983-5369', '319-475-9837'),
(26, 'http://dummyimage.com/233x100.png/5fa2dd/ffffff', 'Andeee', 'Putnem', 'Danzelman', '3/23/2022', 'http://dummyimage.com/225x100.png/dddddd/000000', 'Female', '8752 Stuart Trail', 'none', '72976', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '761-563-3408', '864-885-8777', '162-353-0266'),
(27, 'http://dummyimage.com/199x100.png/dddddd/000000', 'Barthel', 'Felizio', 'Howton', '5/1/2021', 'http://dummyimage.com/229x100.png/5fa2dd/ffffff', 'Male', '59828 Forster Crossing', 'none', '1341', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '588-346-4074', '411-949-9457', '770-813-9104'),
(28, 'http://dummyimage.com/183x100.png/5fa2dd/ffffff', 'Jeremy', 'Benoit', 'Clyma', '3/4/2022', 'http://dummyimage.com/237x100.png/5fa2dd/ffffff', 'Male', '09 Pearson Street', 'none', '9470', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '461-842-7977', '133-789-5791', '340-296-7167'),
(29, 'http://dummyimage.com/197x100.png/dddddd/000000', 'Francisco', 'Griffie', 'Cribbins', '5/23/2021', 'http://dummyimage.com/149x100.png/dddddd/000000', 'Male', '03 Crest Line Junction', 'none', '50302', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '617-348-9920', '809-941-5682', '593-590-5746'),
(30, 'http://dummyimage.com/171x100.png/ff4444/ffffff', 'Pepi', 'Mikkel', 'Menzies', '4/17/2021', 'http://dummyimage.com/127x100.png/ff4444/ffffff', 'Female', '58413 Ohio Way', 'none', '85', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '420-242-1967', '364-135-4148', '879-491-6145'),
(31, 'http://dummyimage.com/226x100.png/dddddd/000000', 'Way', 'Pieter', 'Cornejo', '1/3/2022', 'http://dummyimage.com/169x100.png/5fa2dd/ffffff', 'Male', '8 Brentwood Pass', 'none', '1683', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '846-932-7248', '630-898-1520', '254-296-2384'),
(32, 'http://dummyimage.com/200x100.png/ff4444/ffffff', 'Fletch', 'Bartel', 'Unsworth', '9/13/2021', 'http://dummyimage.com/170x100.png/ff4444/ffffff', 'Male', '70205 Clarendon Hill', 'none', '365', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '736-506-9035', '336-384-8160', '633-433-6045'),
(33, 'http://dummyimage.com/161x100.png/cc0000/ffffff', 'Georgeanne', 'Ced', 'Alliott', '1/4/2022', 'http://dummyimage.com/154x100.png/cc0000/ffffff', 'Female', '629 Rieder Lane', 'none', '47326', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '463-248-1800', '672-535-1775', '467-979-9349'),
(34, 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', 'Amelita', 'Delmor', 'Riddett', '12/3/2021', 'http://dummyimage.com/201x100.png/ff4444/ffffff', 'Female', '775 Sage Circle', 'none', '33295', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '407-521-3671', '269-694-4962', '605-806-7374'),
(35, 'http://dummyimage.com/184x100.png/dddddd/000000', 'Dode', 'Silvain', 'Sang', '8/6/2021', 'http://dummyimage.com/203x100.png/dddddd/000000', 'Female', '53 Golf Course Street', 'none', '17297', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '984-979-7585', '943-992-5164', '103-539-3770'),
(36, 'http://dummyimage.com/246x100.png/5fa2dd/ffffff', 'Krystle', 'Brandtr', 'Rubel', '3/18/2022', 'http://dummyimage.com/246x100.png/ff4444/ffffff', 'Female', '69 Derek Alley', 'none', '6', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '349-474-2792', '776-197-3341', '705-573-6026'),
(37, 'http://dummyimage.com/248x100.png/dddddd/000000', 'Skipper', 'Bern', 'Grut', '12/6/2021', 'http://dummyimage.com/217x100.png/5fa2dd/ffffff', 'Male', '1255 Kropf Point', 'none', '41', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '729-751-1040', '927-208-2842', '271-976-2573'),
(38, 'http://dummyimage.com/214x100.png/cc0000/ffffff', 'Tania', 'Michale', 'Suller', '11/17/2021', 'http://dummyimage.com/185x100.png/5fa2dd/ffffff', 'Female', '96161 Maple Wood Way', 'none', '08', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '848-249-8257', '264-568-6777', '806-661-0575'),
(39, 'http://dummyimage.com/119x100.png/5fa2dd/ffffff', 'Kailey', 'Welby', 'Adderson', '8/18/2021', 'http://dummyimage.com/237x100.png/cc0000/ffffff', 'Female', '7 Upham Lane', 'none', '79', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '848-293-2909', '604-187-6851', '574-129-8633'),
(40, 'http://dummyimage.com/198x100.png/5fa2dd/ffffff', 'Rockie', 'Paulo', 'Kibbye', '1/7/2022', 'http://dummyimage.com/116x100.png/5fa2dd/ffffff', 'Male', '45390 Oxford Place', 'none', '63', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '284-193-2840', '972-345-9908', '145-283-8059'),
(41, 'http://dummyimage.com/229x100.png/5fa2dd/ffffff', 'Minetta', 'Brok', 'Fortoun', '10/17/2021', 'http://dummyimage.com/141x100.png/cc0000/ffffff', 'Female', '86 Moulton Way', 'none', '9515', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '118-226-9192', '651-537-8931', '616-878-4565'),
(42, 'http://dummyimage.com/221x100.png/ff4444/ffffff', 'Pate', 'Kele', 'Jayume', '10/25/2021', 'http://dummyimage.com/142x100.png/cc0000/ffffff', 'Male', '068 Northview Alley', 'none', '8087', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '724-176-8048', '624-567-1937', '775-966-2117'),
(43, 'http://dummyimage.com/163x100.png/5fa2dd/ffffff', 'Dulce', 'Isadore', 'Hincks', '7/13/2021', 'http://dummyimage.com/150x100.png/dddddd/000000', 'Female', '2 Troy Point', 'none', '74999', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '277-702-0002', '442-542-0266', '317-235-4983'),
(44, 'http://dummyimage.com/148x100.png/ff4444/ffffff', 'Kerri', 'Rudiger', 'Albrooke', '12/9/2021', 'http://dummyimage.com/107x100.png/cc0000/ffffff', 'Female', '57745 Green Lane', 'none', '423', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '997-920-3138', '576-712-7527', '788-843-0849'),
(45, 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', 'Atlante', 'Milt', 'Kleeman', '12/2/2021', 'http://dummyimage.com/189x100.png/5fa2dd/ffffff', 'Female', '3297 Nelson Hill', 'none', '7381', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '767-607-7286', '259-769-1547', '865-196-6544'),
(46, 'http://dummyimage.com/237x100.png/5fa2dd/ffffff', 'Catriona', 'Innis', 'Carslake', '1/16/2022', 'http://dummyimage.com/147x100.png/dddddd/000000', 'Female', '2717 Goodland Park', 'none', '35545', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '152-895-1521', '554-902-6923', '139-345-3155'),
(47, 'http://dummyimage.com/242x100.png/5fa2dd/ffffff', 'Ancell', 'Yale', 'Gunston', '7/2/2021', 'http://dummyimage.com/171x100.png/5fa2dd/ffffff', 'Male', '28 Crowley Parkway', 'none', '94029', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '191-421-1101', '206-882-8892', '627-212-8732'),
(48, 'http://dummyimage.com/222x100.png/5fa2dd/ffffff', 'Gwennie', 'Zachery', 'Negri', '12/10/2021', 'http://dummyimage.com/196x100.png/5fa2dd/ffffff', 'Female', '34225 Nobel Crossing', 'none', '1', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '961-829-3758', '963-639-9080', '229-289-5352'),
(49, 'http://dummyimage.com/156x100.png/5fa2dd/ffffff', 'Alisun', 'Paige', 'Risson', '12/23/2021', 'http://dummyimage.com/176x100.png/ff4444/ffffff', 'Female', '47368 Lakewood Gardens Place', 'none', '04256', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '225-811-9072', '125-293-4612', '921-900-2645'),
(50, 'http://dummyimage.com/191x100.png/dddddd/000000', 'Zaria', 'Arnuad', 'Rospars', '5/19/2021', 'http://dummyimage.com/176x100.png/dddddd/000000', 'Female', '26250 Vernon Pass', 'none', '33', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '927-343-5504', '602-335-7540', '118-825-9148'),
(51, 'http://dummyimage.com/166x100.png/cc0000/ffffff', 'Hillel', 'Cleve', 'MacDougal', '3/26/2022', 'http://dummyimage.com/232x100.png/dddddd/000000', 'Male', '27344 Pawling Trail', 'none', '73038', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '268-519-8075', '153-277-9494', '955-883-0347'),
(52, 'http://dummyimage.com/210x100.png/dddddd/000000', 'Barnie', 'Stillman', 'Duval', '8/8/2021', 'http://dummyimage.com/200x100.png/ff4444/ffffff', 'Male', '05740 Vermont Hill', 'none', '1', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '206-902-1841', '969-227-9513', '619-428-6856'),
(53, 'http://dummyimage.com/220x100.png/ff4444/ffffff', 'Aubrette', 'Matthias', 'Tournay', '6/13/2021', 'http://dummyimage.com/106x100.png/dddddd/000000', 'Female', '77839 Fisk Way', 'none', '84', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '968-111-9569', '614-774-6579', '838-204-0120'),
(54, 'http://dummyimage.com/208x100.png/5fa2dd/ffffff', 'Alene', 'Nollie', 'Coard', '4/26/2021', 'http://dummyimage.com/230x100.png/cc0000/ffffff', 'Female', '72888 Petterle Way', 'none', '055', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '786-331-0751', '874-546-7193', '307-444-4707'),
(55, 'http://dummyimage.com/210x100.png/5fa2dd/ffffff', 'Collete', 'Evan', 'Cicconetti', '7/8/2021', 'http://dummyimage.com/232x100.png/5fa2dd/ffffff', 'Female', '18510 Porter Hill', 'none', '85', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '310-452-5814', '756-216-0810', '230-333-3367'),
(56, 'http://dummyimage.com/198x100.png/cc0000/ffffff', 'Rena', 'Wayne', 'Cuffe', '10/9/2021', 'http://dummyimage.com/193x100.png/5fa2dd/ffffff', 'Female', '381 Miller Circle', 'none', '48', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '666-168-6074', '337-469-5579', '598-842-0971'),
(57, 'http://dummyimage.com/132x100.png/ff4444/ffffff', 'Malissa', 'Robin', 'Senten', '2/16/2022', 'http://dummyimage.com/195x100.png/5fa2dd/ffffff', 'Female', '5 Brentwood Drive', 'none', '8', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '984-319-1953', '684-617-8568', '365-716-2012'),
(58, 'http://dummyimage.com/159x100.png/5fa2dd/ffffff', 'Miguelita', 'Bordie', 'Phythian', '1/12/2022', 'http://dummyimage.com/119x100.png/dddddd/000000', 'Female', '9034 Brickson Park Crossing', 'none', '5119', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '170-263-9169', '541-915-9613', '769-330-7798'),
(59, 'http://dummyimage.com/180x100.png/ff4444/ffffff', 'Gaspar', 'Sigvard', 'Arthur', '12/18/2021', 'http://dummyimage.com/172x100.png/ff4444/ffffff', 'Male', '7310 Norway Maple Junction', 'none', '11496', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '314-946-3007', '937-797-5915', '564-808-7867'),
(60, 'http://dummyimage.com/213x100.png/ff4444/ffffff', 'Tye', 'Balduin', 'Laidlow', '7/19/2021', 'http://dummyimage.com/133x100.png/cc0000/ffffff', 'Male', '0 Southridge Place', 'none', '79', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '748-589-5714', '591-920-8587', '435-532-5155'),
(61, 'http://dummyimage.com/199x100.png/ff4444/ffffff', 'Talbert', 'Talbot', 'Kavanagh', '4/28/2021', 'http://dummyimage.com/117x100.png/5fa2dd/ffffff', 'Male', '756 Becker Pass', 'none', '6', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '350-587-1668', '409-983-6314', '516-371-1159'),
(62, 'http://dummyimage.com/205x100.png/5fa2dd/ffffff', 'Frankie', 'Reilly', 'Meco', '12/12/2021', 'http://dummyimage.com/178x100.png/ff4444/ffffff', 'Male', '874 Tennessee Park', 'none', '24781', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '927-892-4200', '716-922-8268', '384-678-9221'),
(63, 'http://dummyimage.com/224x100.png/cc0000/ffffff', 'Courtenay', 'Moshe', 'Gabites', '6/30/2021', 'http://dummyimage.com/112x100.png/cc0000/ffffff', 'Female', '400 Namekagon Pass', 'none', '4', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '857-276-1241', '780-803-0800', '768-983-5535'),
(64, 'http://dummyimage.com/115x100.png/cc0000/ffffff', 'Susy', 'Ewan', 'Byrnes', '4/17/2021', 'http://dummyimage.com/141x100.png/cc0000/ffffff', 'Female', '619 Reinke Parkway', 'none', '60', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '859-841-4609', '369-476-5136', '601-346-3026'),
(65, 'http://dummyimage.com/203x100.png/dddddd/000000', 'Zelig', 'Jed', 'Clinning', '6/16/2021', 'http://dummyimage.com/177x100.png/dddddd/000000', 'Male', '2824 Cody Lane', 'none', '1673', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '268-895-3254', '102-395-3105', '647-720-2547'),
(66, 'http://dummyimage.com/206x100.png/ff4444/ffffff', 'Ricki', 'Sully', 'Gerren', '12/18/2021', 'http://dummyimage.com/108x100.png/ff4444/ffffff', 'Male', '27966 Service Crossing', 'none', '19081', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '533-271-9689', '768-579-2212', '240-615-3463'),
(67, 'http://dummyimage.com/179x100.png/cc0000/ffffff', 'Cathi', 'Wye', 'Faro', '9/26/2021', 'http://dummyimage.com/201x100.png/dddddd/000000', 'Female', '1 Crownhardt Road', 'none', '122', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '253-104-9600', '747-665-0983', '773-957-1674'),
(68, 'http://dummyimage.com/218x100.png/cc0000/ffffff', 'Marven', 'Marlowe', 'Hentzeler', '2/7/2022', 'http://dummyimage.com/191x100.png/dddddd/000000', 'Male', '59565 Parkside Alley', 'none', '91469', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '373-586-3053', '512-115-8503', '113-146-4955'),
(69, 'http://dummyimage.com/110x100.png/cc0000/ffffff', 'Osbourne', 'Ange', 'Fordyce', '3/18/2022', 'http://dummyimage.com/210x100.png/dddddd/000000', 'Male', '55 Portage Road', 'none', '77', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '945-703-6066', '314-613-7303', '409-942-2651'),
(70, 'http://dummyimage.com/201x100.png/cc0000/ffffff', 'Germayne', 'Reynold', 'Capstick', '10/3/2021', 'http://dummyimage.com/250x100.png/cc0000/ffffff', 'Male', '8 Springview Place', 'none', '964', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '552-345-3298', '615-219-6558', '669-102-6762'),
(71, 'http://dummyimage.com/125x100.png/dddddd/000000', 'Korie', 'Moise', 'Manthroppe', '9/28/2021', 'http://dummyimage.com/154x100.png/5fa2dd/ffffff', 'Female', '855 Stuart Trail', 'none', '08', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '989-472-8678', '350-923-4060', '304-860-2365'),
(72, 'http://dummyimage.com/190x100.png/5fa2dd/ffffff', 'Lyn', 'Inglebert', 'Fochs', '10/4/2021', 'http://dummyimage.com/106x100.png/5fa2dd/ffffff', 'Male', '4 Ramsey Terrace', 'none', '51', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '517-960-5626', '157-559-8970', '688-891-7153'),
(73, 'http://dummyimage.com/101x100.png/cc0000/ffffff', 'Lesli', 'Sigfrid', 'Quantick', '5/19/2021', 'http://dummyimage.com/120x100.png/5fa2dd/ffffff', 'Female', '95 Talisman Center', 'none', '44', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '202-471-2118', '565-255-6113', '579-472-2674'),
(74, 'http://dummyimage.com/114x100.png/5fa2dd/ffffff', 'Pauly', 'Skye', 'Scudders', '12/9/2021', 'http://dummyimage.com/247x100.png/dddddd/000000', 'Male', '9 Cambridge Place', 'none', '50', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '476-842-9574', '872-678-6340', '937-257-5606'),
(75, 'http://dummyimage.com/225x100.png/ff4444/ffffff', 'Dedie', 'Cameron', 'Beggi', '12/8/2021', 'http://dummyimage.com/224x100.png/ff4444/ffffff', 'Female', '52604 Grim Trail', 'none', '47', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '113-422-7424', '372-246-2088', '682-666-4441'),
(76, 'http://dummyimage.com/192x100.png/cc0000/ffffff', 'Perl', 'Salvatore', 'Gumby', '3/18/2022', 'http://dummyimage.com/128x100.png/5fa2dd/ffffff', 'Female', '558 Express Trail', 'none', '7', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '249-240-6217', '790-617-2809', '965-887-8960'),
(77, 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', 'Costa', 'Freddy', 'Gerrie', '8/19/2021', 'http://dummyimage.com/159x100.png/5fa2dd/ffffff', 'Male', '531 Kinsman Road', 'none', '76', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '267-389-3734', '874-377-3865', '448-565-5356'),
(78, 'http://dummyimage.com/173x100.png/cc0000/ffffff', 'Bay', 'Ode', 'Moroney', '5/23/2021', 'http://dummyimage.com/214x100.png/ff4444/ffffff', 'Male', '8 Fremont Road', 'none', '252', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '279-820-8348', '647-790-9141', '137-369-5869'),
(79, 'http://dummyimage.com/157x100.png/dddddd/000000', 'Dame', 'Thaddus', 'Manntschke', '11/10/2021', 'http://dummyimage.com/122x100.png/dddddd/000000', 'Male', '00741 Bunting Park', 'none', '0416', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '829-816-3891', '229-573-7787', '105-343-6781'),
(80, 'http://dummyimage.com/178x100.png/5fa2dd/ffffff', 'Philip', 'Fonz', 'Tesauro', '9/21/2021', 'http://dummyimage.com/228x100.png/5fa2dd/ffffff', 'Male', '82351 Glendale Alley', 'none', '33', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '340-910-9449', '842-619-2505', '961-418-7537'),
(81, 'http://dummyimage.com/149x100.png/ff4444/ffffff', 'Kalina', 'Emmy', 'Stimpson', '6/8/2021', 'http://dummyimage.com/237x100.png/dddddd/000000', 'Female', '72 Mesta Drive', 'none', '8', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '989-256-4560', '947-298-6592', '636-144-4244'),
(82, 'http://dummyimage.com/147x100.png/cc0000/ffffff', 'Wit', 'Christoffer', 'Maybury', '3/5/2022', 'http://dummyimage.com/170x100.png/dddddd/000000', 'Male', '4 Bultman Circle', 'none', '1', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '438-435-7873', '445-105-4742', '962-442-0294'),
(83, 'http://dummyimage.com/218x100.png/cc0000/ffffff', 'Maurie', 'Major', 'Hammarberg', '12/30/2021', 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Male', '4 Gale Avenue', 'none', '754', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '600-208-3114', '464-678-2865', '229-866-8846'),
(84, 'http://dummyimage.com/213x100.png/5fa2dd/ffffff', 'Shepperd', 'Cole', 'Dunk', '2/23/2022', 'http://dummyimage.com/187x100.png/cc0000/ffffff', 'Male', '594 East Parkway', 'none', '3', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '993-943-6529', '839-207-8357', '459-278-7491'),
(85, 'http://dummyimage.com/149x100.png/5fa2dd/ffffff', 'Loni', 'Ham', 'Sive', '6/24/2021', 'http://dummyimage.com/101x100.png/dddddd/000000', 'Female', '8 Forest Dale Street', 'none', '36', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '456-718-6769', '869-864-7632', '814-330-4037'),
(86, 'http://dummyimage.com/211x100.png/cc0000/ffffff', 'Garvin', 'Damon', 'Sheaf', '7/14/2021', 'http://dummyimage.com/209x100.png/5fa2dd/ffffff', 'Male', '888 Lawn Way', 'none', '7053', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '438-634-3211', '540-267-5840', '109-589-8970'),
(87, 'http://dummyimage.com/109x100.png/ff4444/ffffff', 'Melosa', 'Flem', 'Iiannone', '2/11/2022', 'http://dummyimage.com/219x100.png/cc0000/ffffff', 'Female', '656 Calypso Junction', 'none', '547', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '216-342-4226', '190-836-3304', '442-430-7749'),
(88, 'http://dummyimage.com/169x100.png/5fa2dd/ffffff', 'Stephana', 'Ross', 'Tatchell', '7/5/2021', 'http://dummyimage.com/141x100.png/cc0000/ffffff', 'Female', '594 North Circle', 'none', '3053', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '375-966-0292', '429-335-7168', '890-214-4250'),
(89, 'http://dummyimage.com/160x100.png/ff4444/ffffff', 'Michal', 'Cobby', 'Dmitrievski', '5/23/2021', 'http://dummyimage.com/207x100.png/5fa2dd/ffffff', 'Male', '81374 Lindbergh Plaza', 'none', '8964', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '179-611-2409', '975-227-4560', '210-683-4247'),
(90, 'http://dummyimage.com/159x100.png/dddddd/000000', 'Peyton', 'Billie', 'Sullens', '6/15/2021', 'http://dummyimage.com/190x100.png/5fa2dd/ffffff', 'Male', '2 Havey Drive', 'none', '5640', 'Mumbai', 'Maharashtra', 'India', 'freakstar03@gmail.com', '979-373-6193', '157-604-3141', '291-683-5606'),
(91, 'http://dummyimage.com/110x100.png/dddddd/000000', 'Johnathon', 'Bruno', 'Tackell', '1/17/2022', 'http://dummyimage.com/187x100.png/cc0000/ffffff', 'Male', '094 Summer Ridge Road', 'none', '731', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '595-732-1176', '699-762-0598', '780-382-1552'),
(92, 'http://dummyimage.com/163x100.png/ff4444/ffffff', 'Xerxes', 'Raphael', 'McKague', '1/22/2022', 'http://dummyimage.com/144x100.png/ff4444/ffffff', 'Male', '0313 Ramsey Street', 'none', '6', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '938-761-7023', '167-200-3909', '663-625-8696'),
(93, 'http://dummyimage.com/209x100.png/dddddd/000000', 'Kip', 'Che', 'Rapps', '11/14/2021', 'http://dummyimage.com/233x100.png/dddddd/000000', 'Male', '97 Sherman Junction', 'none', '07699', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '593-356-5316', '367-544-8669', '507-651-8450'),
(94, 'http://dummyimage.com/154x100.png/dddddd/000000', 'Kip', 'Thaine', 'Sarten', '11/17/2021', 'http://dummyimage.com/170x100.png/cc0000/ffffff', 'Male', '6824 Farragut Junction', 'none', '908', 'Mumbai', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '678-933-8781', '118-576-9701', '986-386-9735'),
(95, 'http://dummyimage.com/200x100.png/ff4444/ffffff', 'Eugenio', 'Melvin', 'Kuhle', '9/8/2021', 'http://dummyimage.com/245x100.png/ff4444/ffffff', 'Male', '61343 Kingsford Avenue', 'none', '2', 'Kalyan', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '231-267-4515', '609-117-7912', '648-429-6363'),
(96, 'http://dummyimage.com/165x100.png/5fa2dd/ffffff', 'Nataniel', 'Nickola', 'Brozek', '2/26/2022', 'http://dummyimage.com/111x100.png/ff4444/ffffff', 'Male', '9902 Quincy Junction', 'none', '40', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '960-416-3712', '725-981-4831', '578-828-2670'),
(97, 'http://dummyimage.com/234x100.png/5fa2dd/ffffff', 'Breena', 'Huey', 'Klimochkin', '11/14/2021', 'http://dummyimage.com/142x100.png/5fa2dd/ffffff', 'Female', '688 Doe Crossing Circle', 'none', '3188', 'Thane', 'Maharashtra', 'India', 'freakstar03@gmail.com', '839-352-6746', '204-166-3015', '744-956-9830'),
(98, 'http://dummyimage.com/246x100.png/dddddd/000000', 'Orlando', 'Lorin', 'Treen', '9/13/2021', 'http://dummyimage.com/174x100.png/cc0000/ffffff', 'Male', '574 Rockefeller Avenue', 'none', '557', 'Thane', 'Maharashtra', 'India', '20104034.chirag.padyal@gmail.com', '212-214-8488', '748-335-6825', '295-634-3198'),
(99, 'http://dummyimage.com/232x100.png/5fa2dd/ffffff', 'Grissel', 'Beniamino', 'Melesk', '8/26/2021', 'http://dummyimage.com/168x100.png/ff4444/ffffff', 'Female', '9 Monterey Drive', 'none', '6', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '105-278-1114', '955-837-0445', '889-217-8730'),
(100, 'http://dummyimage.com/103x100.png/ff4444/ffffff', 'Far', 'Germayne', 'Guillotin', '10/8/2021', 'http://dummyimage.com/239x100.png/cc0000/ffffff', 'Male', '7 Talisman Parkway', 'none', '8574', 'Kalyan', 'Maharashtra', 'India', 'freakstar03@gmail.com', '668-235-3960', '163-797-4168', '877-556-4519');

-- --------------------------------------------------------

--
-- Table structure for table `Branch_details`
--

CREATE TABLE `Branch_details` (
  `Std_ID` int NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `PaymentMethod` varchar(30) NOT NULL,
  `AcademicYear` varchar(30) NOT NULL,
  `Course` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Branch_details`
--

INSERT INTO `Branch_details` (`Std_ID`, `Branch`, `PaymentMethod`, `AcademicYear`, `Course`) VALUES
(1, 'Mechanical Engineering', 'Cash', '2022-2023', 'D.S.E'),
(2, 'Mechanical Engineering', 'Cash', '2022-2023', 'D.S.E'),
(3, 'Civil Engineering', 'GPay', '2022-2023', 'F.E'),
(4, 'Information Technology', 'Cheque', '2022-2023', 'D.S.E'),
(5, 'Mechanical Engineering', 'PayPal', '2022-2023', 'D.S.E'),
(6, 'Computer Science', 'Cash', '2022-2023', 'D.S.E'),
(7, 'Mechanical Engineering', 'Cash', '2023-2024', 'F.E'),
(8, 'Mechanical Engineering', 'Cheque', '2022-2023', 'D.S.E'),
(9, 'Mechanical Engineering', 'GPay', '2023-2024', 'D.S.E'),
(10, 'Information Technology', 'PayPal', '2022-2023', 'F.E'),
(11, 'Civil Engineering', 'Cash', '2022-2023', 'D.S.E'),
(12, 'Mechanical Engineering', 'Cash', '2022-2023', 'F.E'),
(13, 'Mechanical Engineering', 'GPay', '2022-2023', 'D.S.E'),
(14, 'Information Technology', 'GPay', '2022-2023', 'F.E'),
(15, 'Computer Science', 'GPay', '2022-2023', 'D.S.E'),
(16, 'Mechanical Engineering', 'GPay', '2022-2023', 'F.E'),
(17, 'Mechanical Engineering', 'GPay', '2023-2024', 'F.E'),
(18, 'Mechanical Engineering', 'Cash', '2022-2023', 'D.S.E'),
(19, 'Civil Engineering', 'PayPal', '2023-2024', 'F.E'),
(20, 'Computer Science', 'PayPal', '2023-2024', 'F.E'),
(21, 'Civil Engineering', 'GPay', '2023-2024', 'F.E'),
(22, 'Computer Science', 'Cash', '2022-2023', 'D.S.E'),
(23, 'Civil Engineering', 'Cash', '2022-2023', 'F.E'),
(24, 'Mechanical Engineering', 'GPay', '2022-2023', 'D.S.E'),
(25, 'Computer Science', 'Cheque', '2022-2023', 'D.S.E'),
(26, 'Civil Engineering', 'PayPal', '2022-2023', 'D.S.E'),
(27, 'Civil Engineering', 'Cheque', '2022-2023', 'F.E'),
(28, 'Mechanical Engineering', 'Cash', '2023-2024', 'D.S.E'),
(29, 'Mechanical Engineering', 'GPay', '2022-2023', 'F.E'),
(30, 'Computer Science', 'Cheque', '2023-2024', 'D.S.E'),
(31, 'Civil Engineering', 'Cash', '2022-2023', 'D.S.E'),
(32, 'Mechanical Engineering', 'GPay', '2022-2023', 'D.S.E'),
(33, 'Information Technology', 'GPay', '2022-2023', 'F.E'),
(34, 'Computer Science', 'Cash', '2022-2023', 'F.E'),
(35, 'Mechanical Engineering', 'Cash', '2023-2024', 'D.S.E'),
(36, 'Mechanical Engineering', 'Cash', '2022-2023', 'D.S.E'),
(37, 'Information Technology', 'PayPal', '2022-2023', 'D.S.E'),
(38, 'Information Technology', 'Cash', '2022-2023', 'F.E'),
(39, 'Civil Engineering', 'PayPal', '2022-2023', 'D.S.E'),
(40, 'Computer Science', 'GPay', '2022-2023', 'D.S.E'),
(41, 'Mechanical Engineering', 'GPay', '2022-2023', 'D.S.E'),
(42, 'Information Technology', 'PayPal', '2022-2023', 'F.E'),
(43, 'Civil Engineering', 'PayPal', '2022-2023', 'D.S.E'),
(44, 'Computer Science', 'Cheque', '2023-2024', 'D.S.E'),
(45, 'Mechanical Engineering', 'Cheque', '2022-2023', 'F.E'),
(46, 'Computer Science', 'GPay', '2022-2023', 'F.E'),
(47, 'Information Technology', 'PayPal', '2023-2024', 'D.S.E'),
(48, 'Mechanical Engineering', 'GPay', '2022-2023', 'F.E'),
(49, 'Computer Science', 'Cash', '2023-2024', 'F.E'),
(50, 'Computer Science', 'PayPal', '2022-2023', 'F.E'),
(51, 'Information Technology', 'Cheque', '2022-2023', 'D.S.E'),
(52, 'Information Technology', 'Cash', '2022-2023', 'F.E'),
(53, 'Computer Science', 'Cheque', '2022-2023', 'F.E'),
(54, 'Information Technology', 'Cheque', '2023-2024', 'D.S.E'),
(55, 'Civil Engineering', 'Cash', '2023-2024', 'D.S.E'),
(56, 'Computer Science', 'PayPal', '2022-2023', 'F.E'),
(57, 'Civil Engineering', 'Cheque', '2022-2023', 'F.E'),
(58, 'Information Technology', 'Cheque', '2023-2024', 'D.S.E'),
(59, 'Computer Science', 'Cheque', '2022-2023', 'F.E'),
(60, 'Computer Science', 'GPay', '2023-2024', 'D.S.E'),
(61, 'Information Technology', 'PayPal', '2022-2023', 'D.S.E'),
(62, 'Civil Engineering', 'GPay', '2023-2024', 'D.S.E'),
(63, 'Computer Science', 'Cheque', '2022-2023', 'F.E'),
(64, 'Information Technology', 'Cash', '2023-2024', 'D.S.E'),
(65, 'Information Technology', 'Cheque', '2022-2023', 'F.E'),
(66, 'Computer Science', 'Cheque', '2022-2023', 'D.S.E'),
(67, 'Civil Engineering', 'GPay', '2022-2023', 'F.E'),
(68, 'Civil Engineering', 'Cheque', '2022-2023', 'F.E'),
(69, 'Computer Science', 'Cheque', '2023-2024', 'D.S.E'),
(70, 'Civil Engineering', 'PayPal', '2023-2024', 'D.S.E'),
(71, 'Information Technology', 'Cheque', '2023-2024', 'D.S.E'),
(72, 'Civil Engineering', 'GPay', '2022-2023', 'F.E'),
(73, 'Civil Engineering', 'Cash', '2022-2023', 'D.S.E'),
(74, 'Information Technology', 'PayPal', '2022-2023', 'D.S.E'),
(75, 'Information Technology', 'PayPal', '2023-2024', 'F.E'),
(76, 'Computer Science', 'Cash', '2023-2024', 'F.E'),
(77, 'Information Technology', 'Cheque', '2022-2023', 'F.E'),
(78, 'Computer Science', 'Cash', '2023-2024', 'F.E'),
(79, 'Information Technology', 'Cheque', '2023-2024', 'D.S.E'),
(80, 'Information Technology', 'Cash', '2023-2024', 'D.S.E'),
(81, 'Information Technology', 'Cash', '2022-2023', 'D.S.E'),
(82, 'Mechanical Engineering', 'GPay', '2023-2024', 'F.E'),
(83, 'Mechanical Engineering', 'PayPal', '2023-2024', 'F.E'),
(84, 'Mechanical Engineering', 'GPay', '2023-2024', 'D.S.E'),
(85, 'Civil Engineering', 'PayPal', '2023-2024', 'F.E'),
(86, 'Information Technology', 'GPay', '2023-2024', 'F.E'),
(87, 'Information Technology', 'Cash', '2023-2024', 'F.E'),
(88, 'Information Technology', 'Cash', '2022-2023', 'F.E'),
(89, 'Information Technology', 'GPay', '2022-2023', 'F.E'),
(90, 'Information Technology', 'Cheque', '2022-2023', 'D.S.E'),
(91, 'Computer Science', 'Cheque', '2023-2024', 'D.S.E'),
(92, 'Computer Science', 'Cheque', '2023-2024', 'F.E'),
(93, 'Civil Engineering', 'Cheque', '2023-2024', 'F.E'),
(94, 'Mechanical Engineering', 'Cheque', '2023-2024', 'F.E'),
(95, 'Information Technology', 'Cheque', '2023-2024', 'D.S.E'),
(96, 'Civil Engineering', 'Cheque', '2022-2023', 'D.S.E'),
(97, 'Mechanical Engineering', 'Cash', '2022-2023', 'D.S.E'),
(98, 'Mechanical Engineering', 'PayPal', '2023-2024', 'F.E'),
(99, 'Mechanical Engineering', 'PayPal', '2022-2023', 'F.E'),
(100, 'Civil Engineering', 'Cash', '2023-2024', 'D.S.E');

-- --------------------------------------------------------

--
-- Table structure for table `Login_details`
--

CREATE TABLE `Login_details` (
  `Srno.` int NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `ProfilePicture` varchar(500) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `AdmissionTaken` int NOT NULL,
  `StaffId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Login_details`
--

INSERT INTO `Login_details` (`Srno.`, `FirstName`, `LastName`, `ProfilePicture`, `Username`, `Password`, `AdmissionTaken`, `StaffId`) VALUES
(1, 'Hari', 'Joe', 'images/admin.jpeg', 'Hari', '1234', 0, '101'),
(2, 'Manish', 'Kor', 'images/Admin2.jpeg', 'Manish', '1234', 0, '102'),
(3, 'Leon', 'Ion', 'images/Admin3.jpeg', 'Leon', '1234', 0, '103');

-- --------------------------------------------------------

--
-- Table structure for table `Notice_Board`
--

CREATE TABLE `Notice_Board` (
  `NoticeID` int NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Prioirty` varchar(50) NOT NULL,
  `Body` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Notice_Board`
--

INSERT INTO `Notice_Board` (`NoticeID`, `Title`, `Prioirty`, `Body`) VALUES
(3, 'dawd', 'Important', 'awdwfdawd'),
(4, 'Final Exam Report!!!!', 'Casual', 'the finale will conduct on 27 jan , hahahhahahha!!!!'),
(5, 'dawdas', 'Important', 'dzcszdvcvzcszdvcvzcszdvcvzcszdvcv'),
(6, 'king', 'Important', 'kingkingkingkingking'),
(7, 'Amir', 'Casual', 'Amir is a great boi'),
(8, 'Amir', 'Important', 'Amir is a great boi'),
(9, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(10, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(11, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(12, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(13, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(14, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(15, 'lopn', 'Important', 'lopn lopn lopn lopn'),
(16, 'joker', 'Casual', 'wadwad'),
(17, 'joker is dead', 'Casual', 'awd'),
(18, 'dawd', 'Casual', 'dawdw'),
(19, 'dawd', 'Important', 'dawdw'),
(20, 'dawd', 'Important', 'awdswad'),
(29, 'awdda', 'Casual', 'dawd'),
(30, 'awdda', 'Casual', 'dawd'),
(31, 'awdda', 'Important', 'dawd'),
(32, 'dasds', 'Important', 'dsxdc'),
(33, 'dasds', 'Casual', 'dsxdc'),
(34, 'dasds', 'Important', 'dsxdc'),
(35, 'check', 'Important', 'check'),
(36, 'check', 'Casual', 'check'),
(37, 'dawd', 'Important', 'awdw'),
(38, 'dawd', 'Important', 'awdw'),
(39, 'dawd', 'Casual', 'awdw'),
(40, 'joker', 'Important', '123'),
(41, 'joker', 'Casual', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Academic_Details`
--
ALTER TABLE `Academic_Details`
  ADD KEY `Std_ID` (`Std_ID`);

--
-- Indexes for table `Admission_Details`
--
ALTER TABLE `Admission_Details`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `Branch_details`
--
ALTER TABLE `Branch_details`
  ADD KEY `Std_ID` (`Std_ID`);

--
-- Indexes for table `Login_details`
--
ALTER TABLE `Login_details`
  ADD PRIMARY KEY (`Srno.`);

--
-- Indexes for table `Notice_Board`
--
ALTER TABLE `Notice_Board`
  ADD PRIMARY KEY (`NoticeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admission_Details`
--
ALTER TABLE `Admission_Details`
  MODIFY `StudentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `Login_details`
--
ALTER TABLE `Login_details`
  MODIFY `Srno.` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Notice_Board`
--
ALTER TABLE `Notice_Board`
  MODIFY `NoticeID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Academic_Details`
--
ALTER TABLE `Academic_Details`
  ADD CONSTRAINT `Academic_Details_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `Admission_Details` (`StudentID`);

--
-- Constraints for table `Branch_details`
--
ALTER TABLE `Branch_details`
  ADD CONSTRAINT `Branch_details_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `Admission_Details` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
