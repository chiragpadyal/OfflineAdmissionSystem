-- phpMyAdmin SQL Dump
-- version 5.0.4deb2ubuntu5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2022 at 04:24 PM
-- Server version: 8.0.27-0ubuntu0.21.10.1
-- PHP Version: 8.0.8

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
(1, 'IT', '----', 455, 455, 5455, 455, '1/1/00', '1/1/00', '1/1/00', '1/1/00', '', '', '', ''),
(2, 'CS', 'IT', 10, 10, 10, 10, '1/1/00', '1/1/00', '1/1/00', '1/1/00', '/home/chirag/Documents/63_DivA_Chirag_Padyal_OracleJFOCertficate.pdf', '/home/chirag/Chirag Padyal_ML_Assignment.pdf', '/home/chirag/Quiz Experiment No 7.pdf', '/home/chirag/20104034_ChiragPadyal_SqlAndRelationDatabase101_Certificate.pdf'),
(3, 'IT', '----', 54, 42, 44, 24, '1/1/00', '1/1/00', '1/1/00', '1/1/00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Admission Details`
--

CREATE TABLE `Admission Details` (
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
  `PhoneNo1` int NOT NULL,
  `PhoneNo2` int NOT NULL,
  `TelePhoneNo` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Admission Details`
--

INSERT INTO `Admission Details` (`StudentID`, `ProfilePic`, `Firstname`, `Middlename`, `Lastname`, `DOB`, `IDProof`, `Gender`, `Address1`, `Address2`, `Zipcode`, `City`, `State`, `Country`, `EmailID`, `PhoneNo1`, `PhoneNo2`, `TelePhoneNo`) VALUES
(1, '/home/chirag/Pictures/Screenshot from 2021-11-08 19-29-05.png', 'hero', 'zer', 'daw', '01 January, 2000', '/home/chirag/Pictures/Screenshot from 2021-11-11 18-02-15.png', 'female', 'dawd', 'daw', '54', 'awd', 'wadw', 'daw', 'daw', 54, 48, 48),
(2, '/home/chirag/Pictures/Screenshot from 2021-11-08 19-29-05.png', 'Hero', 'go', 'is', '01 January, 2000', '/home/chirag/Pictures/Screenshot from 2021-11-11 18-01-54.png', 'male', 'daw', 'daw', '123', 'fish', 'goat', 'yeah', 'hero.com', 123456, 123745, 458485),
(3, '', '', '', '', '', '', 'male', '', '', '548', '', '', '', '', 548, 4585, 45);

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
(1, 'I.T Engineering', 'Credit/Debit', '2021-25', 'F.E'),
(2, 'Mechanical Engineering', 'Credit/Debit', '2021-25', 'D.S.E'),
(3, 'I.T Engineering', 'UPI', '2020-24', 'F.E');

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
-- Indexes for table `Admission Details`
--
ALTER TABLE `Admission Details`
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
-- AUTO_INCREMENT for table `Admission Details`
--
ALTER TABLE `Admission Details`
  MODIFY `StudentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `Academic_Details_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `Admission Details` (`StudentID`);

--
-- Constraints for table `Branch_details`
--
ALTER TABLE `Branch_details`
  ADD CONSTRAINT `Branch_details_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `Admission Details` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
