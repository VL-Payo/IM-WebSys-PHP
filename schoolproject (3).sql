-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2024 at 08:51 AM
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
-- Database: `schoolproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(80) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `message` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`id`, `name`, `email`, `phone`, `message`) VALUES
(16, 'kurt', 'kurtdavid45@yahoo.com', 9166748241, 'jkean agi agi agi agi'),
(17, 'kurt david fadrigo', 'ninjakurt123@gmail.com', 9166748241, 'sadklfjhasdffasd'),
(18, 'kurt fadrig', 'ninjakurt123@gmail.com', 9166748241, 'fghnfghnfgfghgfhfghgf pls let me in guys'),
(19, 'kurt129837890123', 'ninjakurt123@gmail.com', 9166748241, 'asasddasdas'),
(20, 'kurt6', 'asd@gmail.com', 9166748241, 'asddasasdasd'),
(21, 'Kean Elijah Janaban', 'janaban@gmail.com', 9166748241, 'can i join the academy pls ty');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `level` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `description`, `level`, `status`) VALUES
(1, 'Bachelor Of Science In information Techn', 'skadlfasjdlkf', '3', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'School will re-open', 'Consult your class teacher.', '2022-01-20 09:11:57'),
(2, 'Test Public Notice', 'This is for Testing\r\n', '2022-02-02 19:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `image` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `description`, `image`) VALUES
(1, 'seratjkh', 'kl;asdjhfsdfadf', 'image/Mufasa_Lion_King_.webp'),
(2, 'gaern', 'lp;fdgiouhl;dsfg', 'image/1x1.jpg'),
(3, 'kean janaban', 'bad teacher', 'image/teacher1.jpg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `image` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `phone`, `email`, `usertype`, `password`, `age`, `gender`, `image`) VALUES
(11, 'admin', 0, 'admin@gmail.com', 'admin', '1234', '', '', ''),
(15, 'kurt david fadrigo', 9166748245, 'zencypher12@gmail.com', 'student', '1234', '15', 'male', ''),
(17, 'kurt ', 9166748241, 'zencypher12@gmail.com', 'student', '1234', NULL, NULL, ''),
(18, 'kean', 982739882, 'lurt@gmail.com', 'student', '1234', '15', 'male', NULL),
(20, 'Kurty', 9234892856, 'zencypher12@gmail.com', 'student', '1234', '16', 'male', '1x1.jpg'),
(22, 'kaka', 91667482412, 'ninjawar123@gmail.com', 'student', '', '16', 'female', ''),
(23, 'zaza', 9166748241, 'jirehjan_m@yahoo.com', 'student', '1234', '18', 'male', 'teacher1.jpg.jpg'),
(24, 'kurt fadrigo', 9166748241, 'ninjakurt123@gmail.com', 'student', '1234', '15', 'female', 'Mufasa_Lion_King_.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
