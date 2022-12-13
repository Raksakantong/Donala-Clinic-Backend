-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2022 at 03:32 PM
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
(2, '1111111111111', 'Teeranat', 'Sriphut', '6/12/2022', 'ุ6/12/2022', 2, 'male', 171, 70, 'B'),
(3, '2222222222222', 'Natty', 'Natty', '7/11/2022', '12/12/1999', 23, 'male', 180, 75, 'B'),
(4, '33333333333333', 'Natty', 'Natty', '7/11/2022', '12/12/1999', 23, 'male', 180, 75, 'B'),
(5, '444444444444', 'Natty', 'Natty', '7/11/2022', '12/12/1999', 23, 'male', 180, 75, 'B'),
(6, '1234567890123', 'somsee', 'sumruey', '7/11/2022', '12/12/1999', 23, 'male', 174, 88, 'O'),
(7, '1212121212121', 't', 't', '13/12/2020', '12/12/2020', 2, 'male', 171, 45, 'A'),
(8, '1212121212121', 't', '01', '13/12/2020', '12/12/2020', 2, 'male', 171, 45, 'A'),
(9, '1010101010101', 'tan', '02', '15/12/2020', '14/12/2020', 2, 'female', 201, 80, 'AB'),
(10, '1010101010102', 'tan', '02', '15/12/2020', '14/12/2020', 2, 'female', 190, 80, 'AB'),
(11, '1010101010102', 'tan', '02', '15/12/2020', '14/12/2020', 2, 'female', 190, 80, 'AB'),
(12, '2233445566771', 'tan', '04', '15/12/2020', '14/12/2020', 2, 'female', 181, 75, 'AB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
