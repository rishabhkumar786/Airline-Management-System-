-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2021 at 08:23 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `airline_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE IF NOT EXISTS `cancellation` (
  `pnr_no` int(11) NOT NULL,
  `cancellation_no` int(11) NOT NULL,
  `cancellation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fli_code` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`pnr_no`, `cancellation_no`, `cancellation_date`, `fli_code`) VALUES
(200, 201, '2021-02-10 00:00:00', 'AI266'),
(300, 261, '2021-02-15 00:00:00', 'AI274'),
(812, 300, '2021-02-17 00:00:00', 'AI358'),
(633, 304, '2021-03-01 00:00:00', 'AI359'),
(624, 324, '2021-03-03 00:00:00', 'AI274'),
(213, 224, '2021-03-03 00:00:00', 'AI913'),
(843, 214, '2021-03-05 00:00:00', 'AI933'),
(123, 515, '2021-03-09 00:00:00', 'AI933'),
(623, 455, '2021-03-10 00:00:00', 'AI274'),
(333, 505, '2021-03-10 00:00:00', 'AI933'),
(144, 775, '2021-01-12 00:00:00', 'AI345'),
(444, 444, '0000-00-00 00:00:00', 'AI444'),
(555, 555, '2021-05-25 23:55:35', 'AI777'),
(666, 666, '2021-05-30 14:18:16', 'AI600'),
(444, 12645, '2021-05-30 17:05:17', 'AI500'),
(412, 234, '2021-05-30 19:38:00', 'AI400');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE IF NOT EXISTS `flight` (
  `f_code` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `dst` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`f_code`, `f_name`, `src`, `dst`) VALUES
('AI266', 'AIR INDIA-9', 'PATNA', 'DELHI'),
('AI274', 'AIR INDIA-3', 'HYDRABAD', 'CHENNAI'),
('AI358', 'AIR INDIA-7', 'DELHI', 'PATNA'),
('AI359', 'AIR INDIA-6', 'CHENNAI', 'PATNA'),
('AI913', 'AIR INDIA-10', 'MUMBAI', 'HYDRABAD'),
('AI933', 'AIR INDIA-8', 'BANGLORE', 'HYDRABAD'),
('AI924', 'AIR INDIA-4', 'BANGLORE', 'PATNA'),
('AI345', 'AIR INDIA-5', 'MUMBAI', 'CHENNAI'),
('AI322', 'AIR INDIA-1', 'MUMBAI', 'BANGLORE');

-- --------------------------------------------------------

--
-- Table structure for table `jrnydetails`
--

CREATE TABLE IF NOT EXISTS `jrnydetails` (
  `f_code` varchar(255) DEFAULT NULL,
  `jny_date` date NOT NULL,
  `jny_time` time NOT NULL,
  `src` varchar(100) NOT NULL,
  `dst` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jrnydetails`
--

INSERT INTO `jrnydetails` (`f_code`, `jny_date`, `jny_time`, `src`, `dst`) VALUES
('AI238', '2021-02-10', '00:00:11', 'DELHI', 'CHENNAI'),
('AI246', '2021-03-05', '15:00:00', 'MUMBAI', 'BANGALORE'),
('AI700', '2021-09-09', '00:00:15', 'DELHI', 'CHENNAI'),
('AI700', '2021-09-09', '00:00:15', 'DELHI', 'CHENNAI'),
('AI700', '2021-09-09', '00:00:15', 'DELHI', 'CHENNAI'),
('AI500', '2021-09-09', '00:00:15', 'DELHI', 'MUMBAI'),
('AI666', '2020-09-09', '09:09:09', 'DELHI', 'MUMBAI');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE IF NOT EXISTS `passenger` (
  `pnr_no` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ph_no` int(11) DEFAULT NULL,
  `passport_no` varchar(255) DEFAULT NULL,
  `fl_code` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pnr_no`, `address`, `nationality`, `name`, `gender`, `ph_no`, `passport_no`, `fl_code`) VALUES
(444, 'india', 'indian', 'Mukesh', 'male', 214748364, '22334455', 'AI444'),
(234, 'BalamNagar', 'Indian', 'Suresh', 'male', 2147483647, '2431215624', 'AI200'),
(145, 'samshan', 'Indian', 'Garun', 'Male', 998877123, '3645327543', 'AI144'),
(456, 'Dariya', 'Indian', 'Saloni', 'female', 364535475, '3456235412', 'AI444'),
(276, 'Himachal', 'Indian', 'Laxmi', 'female', 347532545, '3462543244', 'AI266'),
(442, 'goa', 'Indian', 'Danish', 'male', 346536452, '4635462354', 'AI266'),
(434, 'goa', 'Indian', 'suma', 'female', 346536423, '4635534355', 'AI266'),
(409, 'Shimla', 'Indian', 'sumnji', 'female', 156536423, '5342543661', 'AI266'),
(411, 'Shimla', 'Indian', 'Ragnin', 'female', 113376534, '2435143661', 'AI274'),
(465, 'Shimla', 'Indian', 'Hinesh', 'male', 245676534, '7835143661', 'AI274'),
(423, 'Daman', 'Indian', 'Hinesh tagri', 'male', 115739087, '7253544366', 'AI2358'),
(423, 'Daman', 'Indian', 'Hinesh tagri', 'male', 115739087, '7253544366', 'AI358'),
(155, 'fimani', 'Indian', 'Hilani', 'female', 165378097, '1376524357', 'AI358'),
(243, 'delhi', 'Indian', 'saman', 'male', 253416745, '8862435167', 'AI358'),
(444, 'INDIA', 'Inadi', 'sdwdee', 'male', 343445566, '444444444', 'AI444'),
(412, 'Navi Mumbai', 'Indian', 'Ravi', 'male', 996735409, '6653426354', 'AI400'),
(234, 'Hydrabad', 'Indian', 'Shalesh', 'male', 998734256, '25344656', 'AI200'),
(465, 'Navi Mumbai', 'Indian', 'Suresh', 'male', 998877424, '544243567', 'AI400');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `pnr_no` int(11) DEFAULT NULL,
  `ph_no` bigint(20) DEFAULT NULL,
  `cheque_no` int(11) DEFAULT NULL,
  `card_no` bigint(20) DEFAULT NULL,
  `paid_amt` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pnr_no`, `ph_no`, `cheque_no`, `card_no`, `paid_amt`, `pay_date`) VALUES
(256, 9933442456, 46234, 5195501955019, 15000, '2021-01-14 00:00:00'),
(225, 9956473887, 2341765, 238566178509, 12000, '2021-01-14 00:00:00'),
(444, 9988776658, 2343445, 1234344556, 13000, '2021-05-30 14:25:53'),
(245, 34345455, 33423445, 112343545, 20000, '2021-05-30 14:26:11'),
(298, 554436756, 87342673, 232334451, 28900, '2021-05-30 14:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `pnr_no` int(11) DEFAULT NULL,
  `ticket_id` varchar(255) DEFAULT NULL,
  `f_code` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`pnr_no`, `ticket_id`, `f_code`) VALUES
(400, 'AI23125', 'AI238'),
(243, 'AI246345', 'AI246'),
(234, 'AI777', 'AI700'),
(435, 'AI756', 'AI700'),
(876, 'AI734', 'AI700'),
(876, 'AI734', 'AI500'),
(666, 'AI666', 'AI666'),
(566, 'AI5666', 'AI500'),
(566, 'AI5666', 'AI500'),
(566, 'AI5666', 'AI500');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE IF NOT EXISTS `sector` (
  `flight_code` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `class_code` varchar(11) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`flight_code`, `capacity`, `class_code`, `class_name`) VALUES
('AI933', 700, 'F', 'FIRSTCLASS'),
('AI970', 400, 'A', 'FIRSTCLASSDISCOUNT'),
('AI234', 100, 'C', 'THIRDCLASS'),
('AI266', 200, 'B', 'BUSINESSCLASS'),
('AI266', 200, 'C', 'COACHCLASS'),
('AI266', 200, 'A', 'FIRSTCLASSDISCOUNT'),
('AI322', 200, 'C', 'THIRDCLASS'),
('AI322', 50, 'A', 'FIRSTCLASSDISCOUNT'),
('AI322', 100, 'B', 'BUSINESSCLASS');
