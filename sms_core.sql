-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 05:13 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `class_status` enum('Active','Inactive') NOT NULL,
  `class_created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `class_created_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`class_id`, `class_name`, `class_status`, `class_created_date`, `class_created_by`) VALUES
(14, '5', 'Active', '2022-10-26 00:00:57', ''),
(17, '11', 'Active', '2022-10-27 14:06:54', ''),
(18, '12', 'Active', '2022-10-24 09:31:05', ''),
(60, '7', 'Active', '2022-10-24 18:51:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_score`
--

CREATE TABLE `tbl_score` (
  `score_id` int(11) NOT NULL,
  `score_std_id` int(11) NOT NULL,
  `score_sub_id` int(11) NOT NULL,
  `sub_score` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `sub_id` int(11) NOT NULL,
  `sub_class_id` int(11) NOT NULL,
  `sub_name` varchar(200) NOT NULL,
  `sub_created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sub_created_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`sub_id`, `sub_class_id`, `sub_name`, `sub_created_date`, `sub_created_by`) VALUES
(1, 14, 'Maths', '2022-10-27 14:06:24', ''),
(2, 17, 'Science', '2022-10-27 14:06:33', ''),
(3, 17, 'Chemistry', '2022-10-27 14:19:07', ''),
(4, 17, 'Sociology', '2022-10-27 14:19:18', ''),
(5, 18, 'Maths', '2022-10-27 14:17:40', ''),
(6, 18, 'English', '2022-10-27 14:17:45', ''),
(7, 18, 'Science', '2022-10-27 14:18:55', ''),
(8, 60, 'Sanskrit', '2022-10-27 14:19:30', ''),
(9, 60, 'Hindi', '2022-10-27 14:19:34', ''),
(10, 18, 'Biology', '2022-10-27 14:19:45', ''),
(11, 18, 'Chemistry', '2022-10-27 14:19:51', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `std_guardian_id` int(11) NOT NULL,
  `std_teacher_id` int(11) NOT NULL,
  `std_class_id` int(11) NOT NULL,
  `std_subject_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `doj` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `user_role` enum('P','T','G','S') NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `std_guardian_id`, `std_teacher_id`, `std_class_id`, `std_subject_id`, `user_name`, `user_password`, `name`, `email`, `dob`, `doj`, `mobile`, `gender`, `user_role`, `user_status`, `created_date`, `updated_date`) VALUES
(1, 0, 0, 0, '0', 'admin', '$2y$10$DOtVVxc5AJ6g13YxqJcsSuMsGt9U5BBd0lqPW31hc94WBBERIuBi.', 'Principal', 'princ@gmail.com', NULL, NULL, '989898988', NULL, 'P', 'Active', '2022-10-27 14:21:46', ''),
(57, 0, 0, 0, '', 'vijay6604', '$2y$10$8x0HFeAHDjFlCCXpaY0B.OkemJziFLf8W4pdlK3bOmRGidF9JaJsy', 'Vijay Sir', 'vijay@gmail.com', NULL, '1885-05-10', '9897958520', NULL, 'T', 'Active', '2022-10-27 14:04:19', ''),
(58, 0, 57, 17, '2,3,4', 'sures2000', '$2y$10$QyvXjmyIPEI9qlMkk96xb.Ti1ma924U8wPrMTKcJh/iFsQI3/SfAm', 'Suresh', 'suresh@gmail.com', '1998-05-10', NULL, '9897858520', 'M', 'S', 'Active', '2022-10-27 14:22:55', ''),
(59, 0, 0, 0, '', 'prash5193', '$2y$10$/EeF4.1Vt6XDgvH0rJcKauJR.UJW4f024ODZHYNF28F9nIj7CvSju', 'Prashant', 'prashant@gmail.com', NULL, NULL, '9897958527', NULL, 'G', 'Active', '2022-10-27 14:31:38', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_class`
--
ALTER TABLE `tbl_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
