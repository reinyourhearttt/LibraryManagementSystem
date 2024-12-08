-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 08:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `admin_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `name`, `age`, `address`, `email`, `number`, `username`, `password`) VALUES
(NULL, 'Jerken Paul Calsado', '22', 'Koronadal City', 'jeeeerkeen18@gmail.com', '09482940053', 'reinyourheart', 'reireirei');

-- --------------------------------------------------------

--
-- Table structure for table `book_tbl`
--

CREATE TABLE `book_tbl` (
  `book_id` int(11) NOT NULL,
  `BookNumber` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `PublisherYear` varchar(255) NOT NULL,
  `quantityValue` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tbl`
--

INSERT INTO `book_tbl` (`book_id`, `BookNumber`, `Name`, `Publisher`, `PublisherYear`, `quantityValue`, `status`) VALUES
(1, '100', 'Math', 'Pythagoras', '2019', '8', 'Available'),
(2, '101', 'Filipino', 'Rizal', '2017', '8', 'Available'),
(3, '102', 'English', 'William Shakespeare', '2007', '7', 'Available'),
(4, '104', 'Science', 'Newton', '2022', '10', 'Available'),
(5, '105', 'Data Structure', 'Joseph', '2009', '8', 'Available'),
(6, '106', 'Programming 1', 'Weber', '2019', '0', 'Unavailable'),
(7, '109', 'Programming 2', 'Kleber', '2019', '5', 'Available'),
(8, '100', 'ICT ', 'Kevin', '2018', '5', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `issue_tbl`
--

CREATE TABLE `issue_tbl` (
  `issue_id` int(11) NOT NULL,
  `bookID` varchar(255) NOT NULL,
  `studentID` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `returnBook` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT current_timestamp(),
  `fineAmount` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_tbl`
--

INSERT INTO `issue_tbl` (`issue_id`, `bookID`, `studentID`, `issueDate`, `dueDate`, `returnBook`, `time`, `fineAmount`) VALUES
(1, '1', '1', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 01:34:20', 0.00),
(2, '1', '2', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 01:34:38', 0.00),
(3, '2', '3', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 01:34:56', 0.00),
(4, '4', '4', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 01:35:14', 0.00),
(5, '5', '5', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 01:35:31', 0.00),
(6, '5', '1', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 02:04:33', 0.00),
(7, '5', '4', '2024-12-05', '2024-12-06', 'No', '2024-12-05 02:08:47', 0.00),
(8, '5', '2', '2024-12-05', '2024-12-06', 'No', '2024-12-05 02:09:17', 0.00),
(9, '3', '2', '2024-12-05', '2024-12-08', 'No', '2024-12-05 02:10:00', 0.00),
(10, '1', '2', '2024-12-05', '2024-12-06', 'No', '2024-12-05 07:35:24', 0.00),
(11, '1', '3', '2024-12-05', '2024-12-06', 'No', '2024-12-05 07:36:03', 0.00),
(12, '2', '5', '2024-12-05', '2024-12-08', 'No', '2024-12-05 07:36:33', 0.00),
(13, '5', '3', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 07:43:17', 0.00),
(14, '3', '5', '2024-12-05', '2024-12-06', 'No', '2024-12-05 07:43:50', 0.00),
(15, '2', '4', '2024-12-05', '2024-12-06', 'No', '2024-12-05 07:45:10', 0.00),
(16, '6', '5', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 07:49:45', 0.00),
(18, '6', '3', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 08:02:22', 0.00),
(19, '6', '2', '2024-12-05', '2024-12-19', 'Yes', '2024-12-05 08:03:22', 0.00),
(20, '3', '1', '2024-12-05', '2024-12-09', 'No', '2024-12-05 09:07:22', 0.00),
(21, '7', '1', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 09:20:08', 0.00),
(22, '6', '1', '2024-12-05', '2024-12-06', 'Yes', '2024-12-05 09:22:05', 0.00),
(23, '6', '4', '2024-12-05', '2024-12-19', 'No', '2024-12-05 09:23:29', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_tbl`
--

CREATE TABLE `reservation_tbl` (
  `reservation_id` int(11) NOT NULL,
  `bookID` varchar(255) NOT NULL,
  `studentID` varchar(255) NOT NULL,
  `reservationDate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `student_id` int(11) NOT NULL,
  `StudentNumber` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Age` varchar(255) NOT NULL,
  `Course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_tbl`
--

INSERT INTO `student_tbl` (`student_id`, `StudentNumber`, `Name`, `Age`, `Course`) VALUES
(1, '2221600001', 'Jerken Paul Calsado', '22', 'BSIT'),
(2, '222160002', 'Deborah Leanne', '22', 'BSED'),
(3, '2221600003', 'Nikki Soliven', '21', 'BSBA'),
(4, '2221600001', 'Jake Rosaot', '19', 'BSCRIM'),
(5, '2221600007', 'Nami', '18', 'BSSW'),
(6, '2221600008', 'Earl Pugay', '20', 'BSIT'),
(7, '2221600091', 'Oliver Ortiz', '19', 'BSIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_tbl`
--
ALTER TABLE `book_tbl`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_tbl`
--
ALTER TABLE `issue_tbl`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `reservation_tbl`
--
ALTER TABLE `reservation_tbl`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_tbl`
--
ALTER TABLE `book_tbl`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `issue_tbl`
--
ALTER TABLE `issue_tbl`
  MODIFY `issue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reservation_tbl`
--
ALTER TABLE `reservation_tbl`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_tbl`
--
ALTER TABLE `student_tbl`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
