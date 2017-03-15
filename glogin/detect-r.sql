-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2017 at 09:24 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detect-r`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `tracking_id` int(20) NOT NULL,
  `type` int(5) NOT NULL,
  `location` int(5) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `c_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forward_report`
--

CREATE TABLE `forward_report` (
  `HOD_name` varchar(20) NOT NULL,
  `guide_name` varchar(20) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `tracking_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `guide_name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`guide_name`, `email`, `username`, `password`) VALUES
('Prf SUMITA ARORA', 'SUMITA_ARORA@gmail.com', 'SUMITA_ARORA', '1237'),
('Prof M.S PATIL', 'M.S_PATIL@gmail.com', 'M.S_PATIL', '12348'),
('Proff H.C VERMA', 'H.C_VERMA@gmail.com', 'H.C_VERMA', '12346'),
('Proff R.D SHARMA', 'R.D_SHARMA@gmail.com', 'R.D_SHARMA', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `r_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `date_of_review` int(20) NOT NULL,
  `tracking_id` int(20) NOT NULL,
  `file_size` int(10) NOT NULL,
  `file_type` varchar(20) NOT NULL,
  `file_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`r_name`, `category`, `date_of_review`, `tracking_id`, `file_size`, `file_type`, `file_name`) VALUES
('gdfjgfj', 'fugfh', 0, 40, 129, 'application/pdf', '33469-admission-notice-2017.pdf'),
('pankaj', 'sundar ', 0, 41, 196, 'application/pdf', 'cast certificate.pdf'),
('sudheer', 'sundar ', 0, 42, 445, 'application/pdf', 'ch1-2.pdf'),
('pratap', 'fsdhgfjgf', 0, 43, 224, 'application/pdf', 'aswe16.pdf'),
('ruetyue', 'fgndghkj', 0, 44, 427, 'application/pdf', '05_msa_clustalw.pdf'),
('ipuiopyotir', 'kjdfssfgh', 0, 45, 10, 'application/pdf', 'Guide-forward.pdf'),
('santosh', 'suprabhat', 0, 46, 1399, 'application/pdf', 'Beginning Perl for Bioinformatics.pdf'),
('manish', 'samsher', 0, 47, 196, 'application/pdf', 'income certificate.pdf'),
('poiuytr', 'asdfghjk', 0, 48, 74, 'application/pdf', '05_OJP.pdf'),
('rtrt', 'ghgjkfg', 0, 49, 129, 'application/pdf', 'Admission-Notice-2017.pdf'),
('rtrt', 'ghgjkfg', 0, 50, 224, 'application/pdf', 'aswe16.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `submit_report`
--

CREATE TABLE `submit_report` (
  `date_of_upload` varchar(100) NOT NULL,
  `student_email` varchar(20) NOT NULL,
  `tracking_id` int(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `guide_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submit_report`
--

INSERT INTO `submit_report` (`date_of_upload`, `student_email`, `tracking_id`, `status`, `guide_name`) VALUES
('', '', 0, 'submitted', 'Prof M.S PATIL'),
('', '', 16, 'submitted', 'Prof M.S PATIL'),
('2017/03/10', '', 19, 'submitted', 'Proff H.C VERMA'),
('2017/03/10', '', 23, 'submitted', 'Proff R.D SHARMA'),
('2017/03/10', '', 27, 'submitted', 'Proff H.C VERMA'),
('2017/03/10', '', 28, 'submitted', 'Proff H.C VERMA'),
('2017/03/10', '', 29, 'submitted', 'Proff R.D SHARMA'),
('2017/03/10', '', 30, 'submitted', 'Proff H.C VERMA'),
('2017/03/11', '', 37, 'submitted', 'Proff R.D SHARMA'),
('2017/03/11', '', 38, 'submitted', 'Proff H.C VERMA'),
('2017/03/12', '', 39, 'submitted', 'Proff H.C VERMA'),
('2017/03/12', '', 40, 'submitted', 'Proff R.D SHARMA'),
('2017/03/12', '', 42, 'submitted', 'Proff H.C VERMA'),
('2017/03/12', '', 43, 'submitted', 'Proff R.D SHARMA'),
('2017/03/12', '', 44, 'submitted', 'Proff H.C VERMA'),
('2017/03/12', '', 45, 'submitted', 'Prof M.S PATIL'),
('2017/03/12', '', 46, 'submitted', 'Prf SUMITA ARORA'),
('2017/03/12', '', 47, 'submitted', 'Prof M.S PATIL'),
('2017/03/12', '', 48, 'submitted', 'Proff H.C VERMA'),
('2017/03/13', '', 50, 'submitted', 'Proff H.C VERMA');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gpluslink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`location`,`c_id`),
  ADD UNIQUE KEY `tracking_id` (`tracking_id`);

--
-- Indexes for table `forward_report`
--
ALTER TABLE `forward_report`
  ADD UNIQUE KEY `tracking_id` (`tracking_id`),
  ADD UNIQUE KEY `tracking_id_2` (`tracking_id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`guide_name`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`tracking_id`);

--
-- Indexes for table `submit_report`
--
ALTER TABLE `submit_report`
  ADD UNIQUE KEY `tracking_id` (`tracking_id`),
  ADD KEY `tracking_id_2` (`tracking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `tracking_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `forward_report`
--
ALTER TABLE `forward_report`
  ADD CONSTRAINT `forward_report` FOREIGN KEY (`tracking_id`) REFERENCES `submit_report` (`tracking_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submit_report`
--
ALTER TABLE `submit_report`
  ADD CONSTRAINT `report` FOREIGN KEY (`tracking_id`) REFERENCES `submit_report` (`tracking_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
