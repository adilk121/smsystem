-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2022 at 12:58 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webkeyco_smsadil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `class_status` enum('Active','Inactive') NOT NULL,
  `class_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_created_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_class`
--

INSERT INTO `tbl_class` (`class_id`, `class_name`, `class_status`, `class_created_date`, `class_created_by`) VALUES
(62, '5', 'Active', '2022-10-27 17:45:55', ''),
(63, '6-A', 'Active', '2022-10-27 17:50:08', '');

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

--
-- Dumping data for table `tbl_score`
--

INSERT INTO `tbl_score` (`score_id`, `score_std_id`, `score_sub_id`, `sub_score`) VALUES
(1, 74, 3, '99'),
(2, 66, 5, '77'),
(3, 66, 6, '56'),
(4, 66, 7, '89'),
(5, 66, 10, '99'),
(6, 69, 2, '100'),
(7, 69, 3, '99'),
(8, 69, 4, '88'),
(9, 59, 12, '100'),
(10, 59, 13, '100'),
(11, 59, 15, '0'),
(12, 59, 16, '0'),
(13, 78, 18, '98'),
(14, 78, 19, '68'),
(15, 78, 23, '98'),
(16, 78, 24, '87'),
(17, 78, 25, '97'),
(18, 77, 20, '100'),
(19, 77, 21, '99'),
(20, 77, 22, '99'),
(21, 77, 26, '89'),
(22, 77, 27, '98');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `sub_id` int(11) NOT NULL,
  `sub_class_id` int(11) NOT NULL,
  `sub_name` varchar(200) NOT NULL,
  `sub_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sub_created_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`sub_id`, `sub_class_id`, `sub_name`, `sub_created_date`, `sub_created_by`) VALUES
(2, 17, 'Science', '2022-10-27 14:06:33', ''),
(3, 17, 'Chemistry', '2022-10-27 14:19:07', ''),
(4, 17, 'Sociology', '2022-10-27 14:19:18', ''),
(5, 18, 'Maths', '2022-10-27 14:17:40', ''),
(6, 18, 'English', '2022-10-27 14:17:45', ''),
(7, 18, 'Science', '2022-10-27 14:18:55', ''),
(8, 60, 'Sanskrit', '2022-10-27 14:19:30', ''),
(9, 60, 'Hindi', '2022-10-27 14:19:34', ''),
(10, 18, 'Biology', '2022-10-27 14:19:45', ''),
(11, 18, 'Chemistry', '2022-10-27 14:19:51', ''),
(12, 14, 'Englishh', '2022-10-27 16:26:08', ''),
(13, 14, 'Science', '2022-10-27 15:30:25', ''),
(15, 14, 'Hindi', '2022-10-27 15:31:50', ''),
(16, 14, 'Chemistry', '2022-10-27 15:40:50', ''),
(18, 62, 'Science', '2022-10-27 17:46:49', ''),
(19, 62, 'English', '2022-10-27 17:48:36', ''),
(20, 63, 'Math', '2022-10-27 17:47:07', ''),
(21, 63, 'English', '2022-10-27 17:47:16', ''),
(22, 63, 'Science', '2022-10-27 17:47:27', ''),
(23, 62, 'Math', '2022-10-27 17:48:13', ''),
(24, 62, 'Social Science', '2022-10-27 17:48:47', ''),
(25, 62, 'Computer', '2022-10-27 17:48:56', ''),
(26, 63, 'Social Science', '2022-10-27 17:49:33', ''),
(27, 63, 'Computer', '2022-10-27 17:49:47', '');

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `std_guardian_id`, `std_teacher_id`, `std_class_id`, `std_subject_id`, `user_name`, `user_password`, `name`, `email`, `dob`, `doj`, `mobile`, `gender`, `user_role`, `user_status`, `created_date`, `updated_date`) VALUES
(1, 0, 0, 0, '0', 'admin', '$2y$10$DOtVVxc5AJ6g13YxqJcsSuMsGt9U5BBd0lqPW31hc94WBBERIuBi.', 'Principal', 'princ@gmail.com', NULL, NULL, '989898988', NULL, 'P', 'Active', '2022-10-27 14:21:46', ''),
(77, 82, 80, 63, '20,21,22,26,27', 'abc_12202', '$2y$10$l9rBtW04rEEirNXrsGX7l.MjBhJtd8gZ9SDkwJsKsipwaJQq7CNQG', 'abc_1', 'abc@gmail.com', '1998-12-12', NULL, '9999999999', 'M', 'S', 'Active', '2022-10-27 17:50:46', ''),
(78, 81, 79, 62, '18,19,23,24,25', 'xyz_13483', '$2y$10$pHQlSnbLE59olHhOWAlsbOz1VoQozkc8B1RCk89/TZYQ1AWddmJUq', 'xyz_1', 'xyz@gmail.com', '1997-12-12', NULL, '8888888888', 'F', 'S', 'Active', '2022-10-27 17:50:31', ''),
(79, 0, 0, 0, '', 'teach1934', '$2y$10$hoomNxoTRZdvDOMO/Dkfe.Sj2cnrBwYE1GG39Pi2evuRPpQW58h8O', 'teach_1', 'teach1@gmail.com', NULL, '2022-10-27', '7878787878', NULL, 'T', 'Active', '2022-10-27 17:40:58', ''),
(80, 0, 0, 0, '', 'teach6704', '$2y$10$H1UeIq0p5tqTeeQsIPMKVOqU6GvcZQ08g0DK1cbfK/8fHfiLopkZS', 'teach_2', 'teach2@gmail.com', NULL, '2022-10-25', '9595959595', NULL, 'T', 'Active', '2022-10-27 17:41:39', ''),
(81, 0, 0, 0, '', 'guard9786', '$2y$10$U/UVfqlbe6vrLLsB7d9wF.EkVxmxTyrYX2k/.jtpNSF.u8uxHL04G', 'guard_1', 'g1@gmail.com', NULL, NULL, '6565656565', NULL, 'G', 'Active', '2022-10-27 17:43:19', ''),
(82, 0, 0, 0, '', 'guard5864', '$2y$10$rPSzXsI1KBInWLvzJpJmseI6lSMevfrqPaoqJuP/BeBOvAb1JFr5a', 'guard_2', 'g2@gmail.com', NULL, NULL, '8686868686', NULL, 'G', 'Active', '2022-10-27 17:43:57', '');

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
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
