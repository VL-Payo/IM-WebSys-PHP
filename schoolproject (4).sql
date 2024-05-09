-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2024 at 12:15 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `usertype` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `usertype`) VALUES
(1, 'admin', '12345', 'admin');

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
(1036, 'asdasdasd', 'ninjawar123@gmail.com', 9166748241, 'dsadsasasdfasdfhfgdhjgfhjhgjkll'),
(1037, 'Kurt Fadrigo', 'ninjawar123@gmail.com', 9166748242, 'dfgfgddfgdfggfdgfd');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `announcement_title` varchar(60) DEFAULT NULL,
  `announcement_text` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `announcement_title`, `announcement_text`) VALUES
(1, NULL, 'hjghjgghj'),
(2, 'ykujhj', 'ghjghj'),
(3, 'kjhdfkljgsdirhjkgflkdhsa', 'baksdjf');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(20) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL,
  `level` varchar(40) DEFAULT NULL,
  `schedule` varchar(40) DEFAULT NULL,
  `instructor` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `level`, `schedule`, `instructor`) VALUES
(7, 'U.S. History', 'IT is a home economics subject washing d', '4', '12:30-14:00', '0'),
(8, 'English Language Arts', 'asdasdsa', '3', 'inactive', '0'),
(9, 'World History', 'asdasdasd', '3', '15:30-17:00', 'dasdasdasd'),
(10, 'Economics', 'lkasjdflasdf', '2', '11:00-12:30', 'Christian cadiz'),
(11, 'Science', 'jhjhkhjk', '3', '12:30-14:00', 'Christian cadiz');

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
(1, 'seratjkh', 'kl;asdjhfsdfadf', '../image/Mufasa_Lion_King_.webp'),
(16, 'migga', 'asdasasd', '../image/teacher1.jpg.jpg');

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
(15, 'kurt david fadrigo', 9166748245, 'zencypher12@gmail.com', 'student', '1234', '15', 'male', ''),
(17, 'kurt ', 9166748241, 'zencypher12@gmail.com', 'student', '1234', NULL, NULL, ''),
(18, 'kean', 982739882, 'lurt@gmail.com', 'student', '1234', '15', 'male', NULL),
(22, 'kaka', 9223372036854775807, 'ninjawar123@gmail.com', 'student', '12345', '18', 'female', ''),
(23, 'zaza', 9166748241, 'jirehjan_m@yahoo.com', 'student', '1234', '18', 'male', 'teacher1.jpg.jpg'),
(37, 'Ken Cy', 9166748241, 'ninjakurt123@gmail.com', 'student', '$2y$10$yH6hQCQnL2XpTcMOW8pjaeA4/1IXP1f.lSlCJCgOf7n', '16', 'female', ''),
(39, 'Kean Janaban Fadrigo', 9166123988, 'ninjakurt123@gmailasdasdasdasd123312.com', 'student', '$2y$10$VHI8GILp/K3rMQ832JlbNePwbPXFOGY0jjHAzUNpF36', '12', 'male', '1x1 teacher.jpg'),
(42, 'kurtdfs haha', 9166748241, 'ninjakurt123@gmail.oasd', 'student', '$2y$10$jKfi.TlUIt9DlACk4gwWSO10bidKNGgnJiDatcZx.rb', '16', 'male', ''),
(44, 'asdad', 9166748241, 'sdfasdf@gmail.com', 'student', '$2y$10$q8Xt6wWhmZ9YzDbM5CtBQe1rrmyfUzfJLLk/DcMc5ZK', '15', 'female', '1x1 teacher.jpg'),
(45, 'EDRIANNE PALALES', 9166748241, 'asd@gmail.com', 'student', '$2y$10$CtGZqcXFHzHhy3BMOdQlF.pyT7uGXKhs168mkfX/nb7', '16', 'male', ''),
(46, 'lkjsadlkf haha', 9166748241, 'asd@gmail.com', 'student', '$2y$10$kwjnEvkKSWcZXHWywEZ5meVHNss1i4GiGITnV22aGDy', '16', 'male', ''),
(47, 'Kurt Fadrigo', 9166748241, 'ninjawar123@gmail.com', 'student', '$2y$10$tr0lJhRag1UecwLnGveRIOu//exnwfJ8.BrlY.zT/Ec', '16', 'female', 'Mufasa_Lion_King_.webp'),
(48, 'laskdfja dada', 9166748241, 'zencypher12@gmail.com', 'student', '$2y$10$fMhoistYc9GJ.SQZOBBAeu5vwzX3UNfbxV2DniBssOC', '15', 'male', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(80) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
