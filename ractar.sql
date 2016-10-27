-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2016 at 05:54 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ractar`
--

-- --------------------------------------------------------

--
-- Table structure for table `dependents`
--

CREATE TABLE IF NOT EXISTS `dependents` (
`d_id` int(100) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `d_age` int(100) NOT NULL,
  `d_notes` varchar(100) NOT NULL,
  `g_id` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dependents`
--

INSERT INTO `dependents` (`d_id`, `d_name`, `d_age`, `d_notes`, `g_id`) VALUES
(6, 'Irfan', 12, 'Sekolah', 3),
(7, 'Fikri', 14, 'Sekolah', 3),
(8, 'AYIM', 21, 'STUDY', 4),
(9, 'Munah Binti Ramli', 13, 'Study', 5),
(10, 'Mamat Bin Ramli', 19, 'Work', 5),
(11, 'Ramliah Binti Abdul', 11, 'Study', 5),
(12, 'Munah Binti Ramli', 12, 'Study', 6),
(13, 'Ayim Bin Rahman', 15, 'study', 6);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`e_id` int(100) NOT NULL,
  `e_name` varchar(100) NOT NULL,
  `e_date` date NOT NULL,
  `e_time` time NOT NULL,
  `e_venue` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `e_name`, `e_date`, `e_time`, `e_venue`) VALUES
(1, 'Gotong-royong', '2016-07-28', '10:00:00', 'Ractar'),
(2, 'Gotong-royong', '2016-07-31', '16:00:00', 'Sekolah Subang Jaya'),
(3, 'Makan malam', '2016-06-30', '20:00:00', 'UiTM'),
(4, 'raya', '2016-07-28', '08:29:10', 'usj8');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE IF NOT EXISTS `guardian` (
`g_id` int(100) NOT NULL,
  `g_username` varchar(100) NOT NULL,
  `g_password` varchar(100) NOT NULL,
  `g_name` varchar(100) NOT NULL,
  `g_ic` varchar(100) NOT NULL,
  `g_address` varchar(100) NOT NULL,
  `g_phone_no` varchar(100) NOT NULL,
  `g_job` varchar(100) NOT NULL,
  `g_job_address` varchar(100) NOT NULL,
  `g_job_phone_no` varchar(100) NOT NULL,
  `g_monthly_income` decimal(30,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`g_id`, `g_username`, `g_password`, `g_name`, `g_ic`, `g_address`, `g_phone_no`, `g_job`, `g_job_address`, `g_job_phone_no`, `g_monthly_income`) VALUES
(1, 'danial', '827ccb0eea8a706c4c34a16891f84e7b', 'Muhammad Danial', '', '', '', '', '', '', '0.00'),
(3, 'rahmannn', 'e10adc3949ba59abbe56e057f20f883e', 'Rahman Bin Abdul', '670901045367', '124 Kampung Berlari, 43200, Subang Jaya, Selangor', '0199571243', 'Petani', '-', '-', '1000.00'),
(4, 'EDDY', '25f9e794323b453885f5181f1b624d0b', 'ROSLI BIN HJ YUSUF', '611011035047', 'H2-03-04 GOODYEAR COURT 6 JALAN KEWAJIPAN 47610 SUBANG JAYA SELANGOR', '0163195517', 'BANK', '-', '-', '2000.00'),
(5, 'ramliahmad', 'e10adc3949ba59abbe56e057f20f883e', 'Ramli Bin Ahmad', '660901015421', 'No 31, Jalan Kebun 1/8A, Shah Alam, Selangor', '0175617126', 'Pekebun', '-', '-', '700.00'),
(6, 'rahman', 'fcea920f7412b5da7be0cf42b8c93759', 'Rahman Bin Abu', '560301115321', '123', '012319312', 'Petani', '-', '-', '1000.00');

-- --------------------------------------------------------

--
-- Table structure for table `heir`
--

CREATE TABLE IF NOT EXISTS `heir` (
`h_id` int(100) NOT NULL,
  `h_name` varchar(200) NOT NULL,
  `h_phoneNo` varchar(15) NOT NULL,
  `h_address` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `heir`
--

INSERT INTO `heir` (`h_id`, `h_name`, `h_phoneNo`, `h_address`) VALUES
(3, 'Leman', '01231324123', 'selengr'),
(4, 'Sadik', '0192341234', 'Melaka'),
(5, '-', '-', '-'),
(6, '-', '-', '-'),
(7, 'Mamat Bin Ramli', '0166134516', 'No 31, Jalan Kebun 1/8A, Shah Alam, Selangor'),
(8, 'Sakinah Binti Ahmad', '0123516471', 'No 9, Jalan Kebun 18/3C, Shah Alam, Selangor'),
(9, 'Mamat Bin Ramli', '0166134516', 'No 31, Jalan Kebun 1/8A, Shah Alam, Selangor'),
(10, '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `occupants`
--

CREATE TABLE IF NOT EXISTS `occupants` (
`o_id` int(100) NOT NULL,
  `o_name` varchar(100) NOT NULL,
  `o_ic` varchar(100) NOT NULL,
  `o_address` varchar(250) NOT NULL,
  `o_phone_no` varchar(15) NOT NULL,
  `o_email` varchar(100) NOT NULL,
  `o_birthdate` varchar(100) NOT NULL,
  `o_birthplace` varchar(100) NOT NULL,
  `o_gender` varchar(10) NOT NULL,
  `o_age` int(100) NOT NULL,
  `o_edu_level` varchar(100) NOT NULL,
  `o_no_of_sibling` int(100) NOT NULL,
  `o_old_school` varchar(100) NOT NULL,
  `o_category` varchar(100) NOT NULL,
  `o_disease` varchar(100) NOT NULL,
  `o_allergy` varchar(100) NOT NULL,
  `g_id` int(100) NOT NULL,
  `s_id` int(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `occupants`
--

INSERT INTO `occupants` (`o_id`, `o_name`, `o_ic`, `o_address`, `o_phone_no`, `o_email`, `o_birthdate`, `o_birthplace`, `o_gender`, `o_age`, `o_edu_level`, `o_no_of_sibling`, `o_old_school`, `o_category`, `o_disease`, `o_allergy`, `g_id`, `s_id`) VALUES
(1, 'Izzati Binti Khamis', '991213125422', 'Address', '0123212232', 'zety@gmail.com', '13/12/1999', 'Selangor', 'female', 17, '', 3, 'old school', 'Yatim', 'Tiada', 'Tiada', 1, 1),
(2, 'Fitrah Binti Said', '990323125412', 'Address', '0123212232', 'fitrah@gmail.com', '23/03/1999', 'Selangor', 'female', 17, '', 3, 'old school', 'Yatim', 'Tiada', 'Tiada', 1, 3),
(4, 'Minah Binti Sidek', '990401045334', '123 Kampung Berlari, 43200, Subang Jaya, Selangor', '0139412342', 'minah@gmail.com', '01/04/1999', 'Selangor', 'Female', 17, 'Form 5', 4, 'SMK Subang Jaya', 'Orphan', 'No', 'Yes', 3, 0),
(5, 'MOHAMAD RUSYAIDI BIN ROSLI', '950511035037', 'H2-03-04 GOODYEAR COURT 6 , JALAN KEWAJIPAN 47610 SUBANG JAYA SELANGOR', '017-3581791', 'rusyaidirosli11@gmail.com', '11/05/1995', 'HOSPITAL KOTA BHARU KKELANTAN', 'Female', 21, 'Form 5', 6, 'smk usj 8', 'Orphan', 'No', 'No', 4, 0),
(6, 'Minah Binti Ramli', '990501015566', 'No 31, Jalan Kebun 1/8A, Shah Alam, Selangor', '0145123141', 'minah@gmail.com', '01/05/1999', 'Selangor', 'Female', 17, 'Form 5', 4, 'SMK Jalan Kebun', 'Poor', 'No', 'No', 5, 0),
(7, 'Minah Binti Rahman', '990803115646', '123', '0132193121', 'minah@gmail.com', '03/08/1999', 'Terengganu', 'Female', 17, 'Form 5', 2, 'Smk ABC', 'Poor', 'No', 'No', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE IF NOT EXISTS `relationships` (
`r_id` int(100) NOT NULL,
  `o_id` int(100) NOT NULL,
  `h_id` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`r_id`, `o_id`, `h_id`) VALUES
(1, 4, 3),
(2, 4, 4),
(3, 5, 5),
(4, 5, 6),
(5, 6, 7),
(6, 6, 8),
(7, 7, 9),
(8, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
`sc_id` int(100) NOT NULL,
  `o_id` int(100) NOT NULL,
  `e_id` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sc_id`, `o_id`, `e_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
`s_id` int(100) NOT NULL,
  `s_username` varchar(100) NOT NULL,
  `s_password` varchar(100) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_phone` varchar(100) NOT NULL,
  `s_role` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `s_username`, `s_password`, `s_name`, `s_email`, `s_phone`, `s_role`) VALUES
(1, 'irfanfikri', '827ccb0eea8a706c4c34a16891f84e7b', 'Irfan Fikri Bin Azni', 'irfanfikry94@gmail.com', '0179726236', 'Administrator'),
(3, 'syadil', '827ccb0eea8a706c4c34a16891f84e7b', 'Syadil Hazriq', 'syadil@gmail.com', '0131212021', 'Manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dependents`
--
ALTER TABLE `dependents`
 ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
 ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `heir`
--
ALTER TABLE `heir`
 ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `occupants`
--
ALTER TABLE `occupants`
 ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
 ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
 ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dependents`
--
ALTER TABLE `dependents`
MODIFY `d_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
MODIFY `e_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `guardian`
--
ALTER TABLE `guardian`
MODIFY `g_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `heir`
--
ALTER TABLE `heir`
MODIFY `h_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `occupants`
--
ALTER TABLE `occupants`
MODIFY `o_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
MODIFY `r_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
MODIFY `sc_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
MODIFY `s_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
