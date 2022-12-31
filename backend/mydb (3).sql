-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2022 at 04:23 PM
-- Server version: 5.7.24
-- PHP Version: 8.1.12

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
('0000000000000', 'Natinan', 'R.', '0949268525', 'female', 'B', 'ไม่มี', 'ไม่มี', '-'),
('00000000000678', 'Natinan', 'Sriphut.', '0949268524', 'female', 'B', 'ไม่มี', 'ไม่มี', 'ชอบลูกชิ้นทอด1'),
('1111111111231', 'samai', 'siri', '0612345678', 'male', 'O', 'พารา', 'ไข้หวัด2', 'คนประหลด เอ้ยประหลาด'),
('1234567654567', 'แจ่มใส', 'ร่าเริง', '0612345671', 'female', 'AB', 'ไม่มี', 'ไม่มี', '-'),
('1234567890124', 'somsee56', 'sumruey2', '0612345678', 'male', 'O', 'ไม่มี', 'ขาดเธอไม่ได้', 'โดนัทยังมีรู แล้วเมื่อไหร่ยูจะมีใจ'),
('1341500313357', 'Teeranat', 'Sriphut', '011111111', 'female', 'B', 'ไม่มี', 'ไม่มี', 'ชอบพุดดิ้ง');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `fname`, `lname`, `password`) VALUES
(1, 'หมอเอ', 'รุ่งเรือง', '00000001');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) NOT NULL,
  `number_id` varchar(15) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `start_date` varchar(20) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `age` int(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `height` int(20) NOT NULL,
  `weight` int(20) NOT NULL,
  `blood` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `number_id`, `fname`, `lname`, `start_date`, `date_of_birth`, `age`, `sex`, `height`, `weight`, `blood`) VALUES
(1, '1341500313357', 'Natinan', 'Raksakantong', '6/12/2022', '5/12/2022', 1, 'female', 165, 42, 'B'),
(8, '1459900891397', 'นัวเนีย', 'สำรวย', '13/12/2020', '2/1/1998', 23, 'male', 150, 45, 'AB'),
(9, '1234567890123', 'somchay', 'sumruey', '7/11/2022', '12/12/1999', 23, 'male', 174, 88, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` int(11) NOT NULL,
  `case_id` int(15) NOT NULL,
  `case_name` varchar(255) NOT NULL,
  `price` int(7) NOT NULL,
  `customer_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
