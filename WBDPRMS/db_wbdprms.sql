-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 02:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wbdprms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_username`, `admin_password`, `created_at`) VALUES
(1, 'admin', 'admin', '2024-10-26 04:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcement`
--

CREATE TABLE `tbl_announcement` (
  `announcement_id` int(11) NOT NULL,
  `announcement_title` text,
  `announcement_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_announcement`
--

INSERT INTO `tbl_announcement` (`announcement_id`, `announcement_title`, `announcement_description`, `created_at`) VALUES
(1, 'haha', 'hehe', '2024-11-04 11:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `appointment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `appointment_reason` text NOT NULL,
  `appointment_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `appointment_status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`appointment_id`, `user_id`, `appointment_reason`, `appointment_date`, `created_at`, `appointment_status`) VALUES
(5, 4, 'wahaha', '2024-11-15', '2024-11-02 12:02:40', 'Approved'),
(6, 4, 'weew', '2024-11-22', '2024-11-02 12:02:57', 'Pending'),
(7, 4, 'dvsvsda', '2024-11-29', '2024-11-02 12:03:02', 'Pending'),
(8, 4, '321321fdsa', '2024-11-06', '2024-11-02 12:03:06', 'Declined'),
(9, 4, 'bfdsvcx', '2024-11-29', '2024-11-02 12:03:10', 'Pending'),
(10, 4, 'dpota?', '2024-11-14', '2024-11-02 12:03:43', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patients`
--

CREATE TABLE `tbl_patients` (
  `patient_id` int(11) NOT NULL,
  `patient_fName` varchar(50) NOT NULL,
  `patient_midInitial` char(1) DEFAULT NULL,
  `patient_lName` varchar(50) NOT NULL,
  `patient_suffix` varchar(10) DEFAULT NULL,
  `patient_age` int(11) NOT NULL,
  `patient_sex` enum('Male','Female') NOT NULL,
  `patient_address` varchar(255) NOT NULL,
  `patient_complaint` text NOT NULL,
  `patient_referral` text NOT NULL,
  `patient_remarks` text,
  `patient_status` enum('Pending','Approved','Declined') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_patients`
--

INSERT INTO `tbl_patients` (`patient_id`, `patient_fName`, `patient_midInitial`, `patient_lName`, `patient_suffix`, `patient_age`, `patient_sex`, `patient_address`, `patient_complaint`, `patient_referral`, `patient_remarks`, `patient_status`, `created_at`) VALUES
(1, 'jo', 'n', 'calvo', NULL, 31, 'Female', 'haha', 'hehe', 'haha', 'hoho', 'Declined', '2024-11-05 10:41:43'),
(2, 'Haha', 'H', 'Haha', NULL, 32, 'Male', 'hagdsa', 'fdsa', 'fjdksla', 'fjsdkal', 'Approved', '2024-11-05 10:43:26'),
(3, 'Fdsa', 'J', 'Hkjfsda', NULL, 32, 'Male', 'Fjdsalk', 'Fjsda', 'Jfsdka', 'Fdjsa', 'Pending', '2024-11-05 10:46:54'),
(4, 'Gdasfdsa', 'Q', 'Fdsa', NULL, 23, 'Male', 'Fdsa', 'Fdsja', 'Jfldsa', 'Fdsjkal', 'Pending', '2024-11-05 10:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_description` text,
  `post_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_description`, `post_image`, `created_at`) VALUES
(1, 'haha', '1730638325_background.jpg', '2024-11-03 12:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `staff_id` int(11) NOT NULL,
  `staff_username` varchar(50) NOT NULL,
  `staff_password` varchar(255) NOT NULL,
  `staff_firstName` varchar(100) NOT NULL,
  `staff_midInitial` char(1) DEFAULT NULL,
  `staff_lastName` varchar(100) NOT NULL,
  `staff_suffix` varchar(10) DEFAULT NULL,
  `staff_birthDate` date NOT NULL,
  `staff_contactNumber` varchar(15) NOT NULL,
  `staff_sex` enum('Male','Female') NOT NULL,
  `staff_address` text NOT NULL,
  `staff_photo` varchar(255) DEFAULT NULL,
  `staff_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `staff_username`, `staff_password`, `staff_firstName`, `staff_midInitial`, `staff_lastName`, `staff_suffix`, `staff_birthDate`, `staff_contactNumber`, `staff_sex`, `staff_address`, `staff_photo`, `staff_status`, `created_at`) VALUES
(1, 'username', '$2y$10$6nqY8rFicNi4hviYjG4tPeon8phkdVopeRyhxAcCOcE/amWRuWpHC', 'Ako', 'C', 'Maymay', NULL, '2001-05-13', '32131221', 'Male', 'secret', '../../pictures/staff/username_1729918233_mee.jpg', 'approved', '2024-10-26 04:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstName` varchar(100) NOT NULL,
  `user_midInitial` char(1) DEFAULT NULL,
  `user_lastName` varchar(100) NOT NULL,
  `user_suffix` varchar(10) DEFAULT NULL,
  `user_birthDate` date NOT NULL,
  `user_contactNumber` varchar(15) NOT NULL,
  `user_sex` enum('Male','Female') NOT NULL,
  `user_address` text NOT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `user_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_username`, `user_password`, `user_firstName`, `user_midInitial`, `user_lastName`, `user_suffix`, `user_birthDate`, `user_contactNumber`, `user_sex`, `user_address`, `user_photo`, `user_status`, `created_at`) VALUES
(3, '1', '$2y$10$xgCbDpMqwCGAJ.Vaa8uDyuF2PTr.9s12Ttv6Y44GIz9L8TbGCwpjG', '1', '1', '1', 'Jr', '2001-11-11', '1', 'Male', '1', '../../pictures/user/1_1730546605_261995744_3275898195967132_5283048878905601131_n.jpg', 'approved', '2024-11-02 11:23:25'),
(4, 'username', '$2y$10$14Mwq3gHWpPX/ibH0RC.m.VDiCFewjhds.68rA4LijhMNjxqUS2W.', 'Jo', 'N', 'Calvo', 'Jr', '2001-05-13', '32132132', 'Male', 'Taga sagay', '../../pictures/user/username_1730548864_1_17_87_87_0_17_0.png', 'approved', '2024-11-02 12:01:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_username` (`admin_username`);

--
-- Indexes for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_patients`
--
ALTER TABLE `tbl_patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_username` (`staff_username`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_username` (`user_username`),
  ADD UNIQUE KEY `idx_user_username` (`user_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_patients`
--
ALTER TABLE `tbl_patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD CONSTRAINT `tbl_appointment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;