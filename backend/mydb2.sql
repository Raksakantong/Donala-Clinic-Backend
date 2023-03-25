-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 22, 2023 at 03:53 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `number_id` varchar(15) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `drugAllergy` varchar(255) NOT NULL,
  `congenitalDisease` varchar(255) NOT NULL,
  `etcNote` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`number_id`, `fname`, `lname`, `phone_number`, `sex`, `blood`, `drugAllergy`, `congenitalDisease`, `etcNote`) VALUES
('00000000000678', 'Natinan', 'Sriphut.', '0949268524', 'female', 'B', 'ไม่มี', 'ไม่มี', 'ไม่มี'),
('1111111111231', 'samai', 'siri', '0612345678', 'male', 'O', 'พารา', 'ไข้หวัด2', 'คนประหลด เอ้ยประหลาด'),
('1111111111256', 'samai', 'siri', '0612345678', 'male', 'O', 'พารา', 'ไข้หวัด', 'คนประหลด เอ้ยประหลาด'),
('1234567654567', 'แจ่มใส', 'ร่าเริง', '0612345671', 'female', 'AB', 'ไม่มี', 'ไม่มี', '-');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `number_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`number_id`, `fname`, `lname`, `password`, `specialist`, `role`) VALUES
(1, 'หมอเอ', 'รุ่งเรือง', '00000001', '', '2'),
(5, 'somchay06', 'ร่าเริงจังนะ', '1', '', '2'),
(6, '2', '2', '2', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `number_id` varchar(15) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `height` int(20) NOT NULL,
  `weight` int(20) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `role` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`number_id`, `fname`, `lname`, `start_date`, `date_of_birth`, `age`, `sex`, `height`, `weight`, `blood`, `role`, `password`) VALUES
('1', 'somchay1', 'sumruey', '7/11/2022', '12/12/1999', 23, 'male', 174, 88, 'A+', '1', '1'),
('1234567890121', 'somsee', 'naka', '7/11/2022', '12/12/1999', 23, 'male', 174, 88, 'O', '1', '12'),
('1234567890122', 'somsee01', 'sumruey', '7/11/2022', '12/12/1999', 23, 'male', 174, 88, 'O', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `ower`
--

CREATE TABLE `ower` (
  `number_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ower`
--

INSERT INTO `ower` (`number_id`, `fname`, `lname`, `password`, `role`) VALUES
('0', 'B2', 'ตัวชง', '2', '0'),
('1111111111111', 'เจ้าของคลินิกมาเอง', 'หน้าตาดี', '12345678', '0');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `case_id` int(11) NOT NULL,
  `case_name` varchar(255) NOT NULL,
  `customer_id` varchar(15) NOT NULL,
  `case_detail` varchar(255) NOT NULL,
  `price` int(7) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`case_id`, `case_name`, `customer_id`, `case_detail`, `price`, `date`) VALUES
(1, 'เสริมจมูก', '0000000000001', 'เสริมจมูกแบบใช้ซิลิโคนโดยใช้เนื้อเยื่อหลังหูรองปลายจมูก', 60000, '24/12/65'),
(2, 'เสริมจมูก', '0000000000001', 'เสริมจมูกแบบใช้ซิลิโคนโดยใช้เนื้อเยื่อหลังหูรองปลายจมูก', 60000, '24/12/65');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`number_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`number_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`number_id`);

--
-- Indexes for table `ower`
--
ALTER TABLE `ower`
  ADD PRIMARY KEY (`number_id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`case_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
