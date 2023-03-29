-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2023 at 04:42 PM
-- Server version: 10.6.7-MariaDB-3
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-01 10:30:57'),
(2, 'sharad', 'af7363820c5f5fd1f6433cddc3b5a7a8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(2, 'Second', 2, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(4, 'Fourth', 4, 'C', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(5, 'Sixth', 6, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(6, 'Sixth', 6, 'B', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(7, 'Seventh', 7, 'B', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(8, 'Eight', 8, 'A', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(9, 'Tenth', 10, 'A', '2022-01-01 15:17:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(2, 'Notice regarding result Delearation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit ut aliquam purus. Vel risus commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas sed. Cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam. Vel pharetra vel turpis nunc eget lorem dolor sed. Velit ut tortor pretium viverra suspendisse. In ornare quam viverra orci sagittis eu. Viverra tellus in hac habitasse. Donec massa sapien faucibus et molestie. Libero justo laoreet sit amet cursus sit amet dictum. Dignissim diam quis enim lobortis scelerisque fermentum dui.\r\n\r\nEget nulla facilisi etiam dignissim. Quisque non tellus orci ac. Amet cursus sit amet dictum sit amet justo donec. Interdum velit euismod in pellentesque massa. Condimentum lacinia quis vel eros donec ac odio. Magna eget est lorem ipsum dolor. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Massa tincidunt dui ut ornare lectus sit amet est placerat. Nisi quis eleifend quam adipiscing vitae.', '2022-01-01 14:34:58'),
(3, 'Test Notice', 'This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  ', '2022-01-01 14:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `PA1` int(11) NOT NULL,
  `Note_Book` int(11) NOT NULL,
  `SubEnrich` int(11) NOT NULL,
  `HalfYearlyExam` int(11) NOT NULL,
  `II_PA2` int(11) NOT NULL,
  `II_NoteBook` int(11) NOT NULL,
  `II_SubEnrich` int(11) NOT NULL,
  `II_HalfYearlyExam` int(11) NOT NULL,
  `II_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`, `PA1`, `Note_Book`, `SubEnrich`, `HalfYearlyExam`, `II_PA2`, `II_NoteBook`, `II_SubEnrich`, `II_HalfYearlyExam`, `II_total`) VALUES
(2, 1, 1, 2, 100, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 1, 1, 80, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 1, 5, 78, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 1, 4, 60, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 2, 4, 2, 90, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 2, 4, 1, 75, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 2, 4, 5, 56, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 2, 4, 4, 80, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 4, 7, 2, 54, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 4, 7, 1, 85, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 4, 7, 5, 55, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 4, 7, 7, 65, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 5, 8, 2, 75, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 5, 8, 1, 56, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 5, 8, 5, 52, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 5, 8, 4, 80, '2022-01-01 10:30:57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 6, 9, 8, 80, '2022-01-01 15:20:18', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 6, 9, 8, 70, '2022-01-01 15:20:18', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 6, 9, 2, 90, '2022-01-01 15:20:18', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 6, 9, 1, 60, '2022-01-01 15:20:18', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 7, 1, 2, 68, '2023-03-27 20:20:16', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 7, 1, 5, 75, '2023-03-27 20:20:16', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 7, 1, 4, 85, '2023-03-27 20:20:16', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 11, 9, 8, 87, '2023-03-28 07:44:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 11, 9, 8, 74, '2023-03-28 07:44:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 11, 9, 2, 86, '2023-03-28 07:44:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 11, 9, 1, 77, '2023-03-28 07:44:54', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 9, 2, 5, 88, '2023-03-28 11:12:22', NULL, 5, 5, 5, 75, 0, 0, 0, 0, 0),
(30, 12, 2, 5, 88, '2023-03-28 11:17:17', NULL, 9, 4, 4, 71, 0, 0, 0, 0, 0),
(31, 10, 9, 8, 79, '2023-03-28 11:29:31', NULL, 10, 4, 5, 60, 0, 0, 0, 0, 0),
(32, 10, 9, 8, 89, '2023-03-28 11:29:31', NULL, 10, 5, 4, 70, 0, 0, 0, 0, 0),
(33, 10, 9, 2, 69, '2023-03-28 11:29:31', NULL, 10, 5, 4, 50, 0, 0, 0, 0, 0),
(34, 10, 9, 1, 59, '2023-03-28 11:29:31', NULL, 10, 5, 4, 40, 0, 0, 0, 0, 0),
(35, 10, 20, 1, 80, '2023-03-29 10:41:56', NULL, 10, 5, 5, 50, 20, 60, 50, 20, 70),
(36, 13, 2, 5, 90, '2023-03-29 10:42:42', NULL, 10, 5, 5, 70, 10, 5, 5, 60, 80),
(37, 14, 9, 8, 80, '2023-03-29 11:11:09', NULL, 10, 5, 5, 60, 10, 5, 5, 67, 87),
(38, 14, 9, 8, 98, '2023-03-29 11:11:09', NULL, 8, 5, 5, 80, 8, 5, 5, 60, 78),
(39, 14, 9, 2, 85, '2023-03-29 11:11:09', NULL, 7, 4, 4, 60, 7, 4, 4, 60, 84),
(40, 14, 9, 1, 60, '2023-03-29 11:11:09', NULL, 7, 4, 4, 40, 6, 4, 4, 50, 54);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `FatherName` varchar(100) NOT NULL,
  `Contact` varchar(13) NOT NULL,
  `Address` text NOT NULL,
  `MotherName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`, `FatherName`, `Contact`, `Address`, `MotherName`) VALUES
(14, 'Parveen', '111', 'nbajwa@meka.in', 'Male', '2007-02-10', 9, '2023-03-29 11:08:19', NULL, 1, 'Chandabhai', '9467497313', '24, QabeelPur, New Delhi - 309945', 'manishaben');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2022-01-01 10:30:57', NULL),
(4, 1, 2, 1, '2022-01-01 10:30:57', NULL),
(5, 1, 4, 1, '2022-01-01 10:30:57', NULL),
(6, 1, 5, 1, '2022-01-01 10:30:57', NULL),
(8, 4, 4, 1, '2022-01-01 10:30:57', NULL),
(10, 4, 1, 1, '2022-01-01 10:30:57', NULL),
(12, 4, 2, 1, '2022-01-01 10:30:57', NULL),
(13, 4, 5, 1, '2022-01-01 10:30:57', NULL),
(14, 6, 1, 1, '2022-01-01 10:30:57', NULL),
(15, 6, 2, 1, '2022-01-01 10:30:57', NULL),
(16, 6, 4, 1, '2022-01-01 10:30:57', NULL),
(17, 6, 6, 1, '2022-01-01 10:30:57', NULL),
(18, 7, 1, 1, '2022-01-01 10:30:57', NULL),
(19, 7, 7, 1, '2022-01-01 10:30:57', NULL),
(20, 7, 2, 1, '2022-01-01 10:30:57', NULL),
(21, 7, 6, 1, '2022-01-01 10:30:57', NULL),
(22, 7, 5, 0, '2022-01-01 10:30:57', NULL),
(23, 8, 1, 1, '2022-01-01 10:30:57', NULL),
(24, 8, 2, 1, '2022-01-01 10:30:57', NULL),
(25, 8, 4, 1, '2022-01-01 10:30:57', NULL),
(26, 8, 6, 1, '2022-01-01 10:30:57', NULL),
(27, 8, 5, 0, '2022-01-01 10:30:57', NULL),
(28, 9, 1, 1, '2022-01-01 15:18:40', NULL),
(29, 9, 2, 1, '2022-01-01 15:18:43', NULL),
(30, 9, 8, 1, '2022-01-01 15:18:48', NULL),
(31, 9, 8, 1, '2022-01-01 15:18:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2022-01-01 10:30:57', NULL),
(2, 'English', 'ENG11', '2022-01-01 10:30:57', NULL),
(4, 'Science', 'SC1', '2022-01-01 10:30:57', NULL),
(5, 'Music', 'MS', '2022-01-01 10:30:57', NULL),
(6, 'Social Studies', 'SS08', '2022-01-01 10:30:57', NULL),
(7, 'Physics', 'PH03', '2022-01-01 10:30:57', NULL),
(8, 'Chemistry', 'CH65', '2022-01-01 10:30:57', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
