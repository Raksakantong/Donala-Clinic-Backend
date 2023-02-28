-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 28, 2023 at 04:51 PM
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
('0000000000', 'test2', 'test2', '0949268525', 'female', 'A', 'ไม่มี', 'ชอบเธอ', 'ไข้ใจ2'),
('120', 'a', 'a', '0949268525', 'female', 'B', 'ไม่มี', '-', 'd');

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
(2, '2', '2', '2', '2', '2'),
(7, 'ผศ.นพ.เทพอุทิศ', 'กั้วสิทธิ์', '1', 'จมูก1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `number_id` varchar(15) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
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
('000000000099', '2', '4', '2023-01-27', '2023-01-27', 44, 'male', 174, 70, 'B', '1', '1234'),
('1', '2', '1', '2023-02-22', '2023-02-24', 1, '1', 1, 1, '1', '1', '1'),
('1459900891397', 'นตินันท์', 'รักษาก้านตง', '2023-01-27', '2023-01-27', 23, 'male', 165, 70, 'AB', '1', '1234'),
('8888888888888', 'มาเก๊า', '888', '2023-01-27', '2023-02-28', 44, 'female', 174, 75, 'O', '1', '0'),
('jkjkjkjkjkjk', '8', '8', '2023-01-27', '2023-01-27', 8, '8', 8, 8, '8', '1', '8');

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
('0', 'B2', 'ตัวชง', '0', '0'),
('44838', 'ศิริวุฒิ', 'จินาล่อง', '1234', '0');

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
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`case_id`, `case_name`, `customer_id`, `case_detail`, `price`, `date`) VALUES
(1, 'เสริมจมูก', '0000000000001', 'เสริมจมูกแบบใช้ซิลิโคนโดยใช้เนื้อเยื่อหลังหูรองปลายจมูก', 60000, '2019-12-12'),
(2, 'เสริมจมูก', '0000000000001', 'เสริมจมูกแบบใช้ซิลิโคนโดยใช้เนื้อเยื่อหลังหูรองปลายจมูก', 60000, '2022-01-15'),
(3, 'จมูก', '0000000000', 'เสริมจมูก', 20000, '2022-12-09'),
(4, 'จมูก', '0000000000003', 'เสริมจมูก', 20000, '2021-12-03'),
(5, 'จมูก', '0000000000003', 'เสริมจมูก', 50000, '2023-01-02'),
(6, 'จมูก', '000000000099', 'เสริมจมูก', 20000, '2023-02-02'),
(7, 'จมูก', '1234567890122', 'เสริมจมูก', 40000, '2023-01-26'),
(8, 'จมูก', '0000000000003', 'เสริมจมูก', 20000, '2023-02-26'),
(9, 'จมูก', '0000000000', 'เสริมจมูก', 20000, '2023-02-28'),
(10, 'เสริมจมูก', '0000000000', 'เสริมจมูกด้วยกระดูกอ่อนหลังหูรองปลายเนื้อเยื่อเทียม', 60000, '2023-02-27'),
(11, 'ปาก', '1234567890122', 'ปากมาสด้า', 20000, '2023-02-27'),
(12, 'ตา', '000000000099', 'ทำตาสองชั้น', 8000, '2023-01-27'),
(13, 'เคสแก้จมูก', '0000000000001', 'เสริมจมูก', 8000, '2023-02-28'),
(14, 'ปาก', '1234567890122', 'ปากมาสด้า', 20000, '2023-02-28');

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
  MODIFY `number_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
