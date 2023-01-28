-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 28, 2023 at 03:23 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(120) NOT NULL,
  `institute_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `field_name` varchar(100) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `criteria` varchar(500) NOT NULL,
  `language` varchar(100) NOT NULL,
  `institute_image` varchar(200) NOT NULL,
  `course_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive',
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `institute_name`, `level`, `field_name`, `duration`, `criteria`, `language`, `institute_image`, `course_status`) VALUES
(1, 'Bachelor of Arts (General)', 'University of Colombo', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English/Sinhala ', 'img_clmb', '1'),
(2, 'Bachelor of Arts (General)', 'Univerisity of Peradeniya', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English/Sinhala ', 'img_prdnya', '1'),
(3, 'Bachelor of Arts (General)', 'University of Sri Jayewardenepura', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English/Sinhala ', 'img_jywrdana', '1'),
(4, 'Bachelor of Arts (General)', 'University of Kelaniya', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English/Sinhala ', 'img_klny', '1'),
(5, 'Bachelor of Arts (General)', 'University of Jaffna', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English/Tamil', 'img_jaf', '1'),
(6, 'Bachelor of Arts (General)', 'University of Ruhuna', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_rhnu', '1'),
(7, 'Bachelor of Arts (General)', 'Eastern University, Sri Lanka', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_eastrn', '1'),
(8, 'Bachelor of Arts (General)', 'South Eastern University', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_southeast', '1'),
(9, 'Bachelor of Arts (General)', 'Rajarata University of Sri Lanka', 'BA', 'Arts', '3 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_rajarata', '1'),
(10, 'B.A. Honours Degree in Performing Arts', 'University of Colombo', 'BA Hons', 'Arts', '4 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_clmb', '1'),
(11, 'B.A. Honours Degree in Mass Media', 'University of Colombo', 'BA Hons', 'Mass Media', '4 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_clmb', '1'),
(12, 'B.A. in Arabic Language', 'South Eastern University', 'BA ', 'Arabic Language', '3 Years', '2S from any 2 subjects in Arts Stream and S from Arabic', 'English', 'img_southeast', '1'),
(13, 'B.A. in Islamic Studies', 'South Eastern University', 'BA ', 'Islamic Studies', '3 Years', '2S from any 2 subjects in Arts Stream and S from Islam/Islamic Civilization', 'English', 'img_southeast', '1'),
(14, 'B.A Honours in Peace and Conflict Resolution', 'University of Kelaniya', 'BA Hons', 'Peace and Conflict Resolution', '4 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_klny', '1'),
(15, 'B.A. in TESL (Honours).', 'University of Sri Jayewardenepura', 'BA Hons', 'Teaching English as a Second Language', '4 Years', '2S from any 2 subjects in Arts Stream and S from English', 'English', 'img_jywrdana', '1'),
(16, 'B.A. in TESL (Honours).', 'University of Kelaniya', 'BA Hons', 'Teaching English as a Second Language', '4 Years', '2S from any 2 subjects in Arts Stream and S from English    ', 'English', 'img_klny', '1'),
(17, 'Bachelor of Social Work Honours', 'Univerisity of Peradeniya', 'BA', 'Social Works', '4 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_prdnya', '1'),
(18, 'Bachelor of Arts Honours in Information Technology', 'University of Sri Jayewardenepura', 'BA', 'Communication Studies', '4 Years', '3S from any 3 subjects in Arts Sream', 'English', 'img_jywrdana', '1'),
(21, 'Business Information Systems (Honours) (BIS)', 'University of Sri Jayewardenepura', 'BIS Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jywrdana', '1'),
(22, 'Bachelor of Business Management Honours ', 'University of Kelaniya', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_klny', '1'),
(23, 'Bachelor of Business Administration Honours', 'University of Colombo', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_clmb', '1'),
(24, 'Bachelor of Business Administration Honours', 'Univerisity of Peradeniya', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_prdnya', '1'),
(25, 'Bachelor of Business Administration Honours', 'University of Sri Jayewardenepura', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jywrdana', '1'),
(26, 'Bachelor of Business Administration Honours', 'University of Kelaniya', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_klny', '1'),
(27, 'Bachelor of Business Administration Honours', 'University of Jaffna', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jaf', '1'),
(28, 'Bachelor of Business Administration Honours', 'University of Ruhuna', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_rhnu', '1'),
(29, 'Bachelor of Business Administration Honours', 'Eastern University, Sri Lanka', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_eastrn', '1'),
(30, 'Bachelor of Business Administration Honours', 'South Eastern University', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_southeast', '1'),
(31, 'Bachelor of Business Administration Honours', 'Rajarata University of Sri Lanka', 'BBA Hons', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_rajarata', '1'),
(32, 'Bachelor of Commerce Honours', 'University of Sri Jayewardenepura', 'B.Com', 'Commerce', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jywrdana', '1'),
(33, 'Bachelor of Commerce Honours', 'University of Kelaniya', 'B.Com', 'Commerce', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_klny', '1'),
(34, 'Bachelor of Commerce Honours', 'University of Jaffna', 'B.Com', 'Commerce', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jaf', '1'),
(35, 'Bachelor of Commerce Honours', 'Eastern University, Sri Lanka', 'B.Com', 'Commerce', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_eastrn', '1'),
(36, 'Bachelor of Commerce Honours', 'South Eastern University', 'B.Com', 'Commerce', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_southeast', '1'),
(39, 'B.Sc. Estate Management & Valuation (Honours)', 'University of Sri Jayewardenepura', 'B.Sc in Management ', 'Estate Management & Valuation', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jywrdana', '1'),
(40, 'B.Sc. Management (Public) Honours', 'University of Sri Jayewardenepura', 'B.Sc in Management ', 'Management', '4 Years ', 'S from Accounting, S from Economic or Bussiness Studies, S from Bussiness Statics or ICT', 'English', 'img_jywrdana', '1'),
(41, 'Bachelor of Medicine (MBBS)', 'University of Colombo', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_clmb', '1'),
(42, 'Bachelor of Medicine (MBBS)', 'Univerisity of Peradeniya', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(43, 'Bachelor of Medicine (MBBS)', 'University of Sri Jayewardenepura', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_jywrdana', '1'),
(44, 'Bachelor of Medicine (MBBS)', 'University of Kelaniya', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_klny', '1'),
(45, 'Bachelor of Medicine (MBBS)', 'University of Jaffna', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_jaf', '1'),
(46, 'Bachelor of Medicine (MBBS)', 'University of Ruhuna', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_rhnu', '1'),
(47, 'Bachelor of Medicine (MBBS)', 'Eastern University, Sri Lanka', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_eastrn', '1'),
(48, 'Bachelor of Medicine (MBBS)', 'South Eastern University', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_southeast', '1'),
(49, 'Bachelor of Medicine (MBBS)', 'Rajarata University of Sri Lanka', 'MBBS', 'Medicine', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_rajarata', '1'),
(50, 'Bachelor of Dental Surgery', 'Univerisity of Peradeniya', 'B.Sc in Dental', 'Dental Surgery', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(51, 'Bachelor of Dental Surgery', 'University of Sri Jayewardenepura', 'B.Sc in Dental', 'Dental Surgery', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_jywrdana', '1'),
(52, 'Batchelor of Veterinary Science', 'Univerisity of Peradeniya', 'B.SC IN Veterinary', 'Veterinary Science', '5 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(53, 'B.Sc. in Agricultural Technology & Management', 'Univerisity of Peradeniya', 'B.Sc in Agri', 'Agricultural Technology & Management', '4 Years', 'S from Biology or Mathametics , S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_prdnya', '1'),
(54, 'Bachelor of Science in Agriculture', 'University of Jaffna', 'B.Sc in Agri', 'Agriculture', '4 Years', 'S from Biology or Mathametics , S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_jaf', '1'),
(55, 'Bachelor of Science in Agriculture', 'Eastern University, Sri Lanka', 'B.Sc in Agri', 'Agriculture', '4 Years', 'S from Biology or Mathametics , S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_eastrn', '1'),
(56, 'Bachelor of Science in Agriculture', 'Rajarata University of Sri Lanka', 'B.Sc in Agri', 'Agriculture', '4 Years', 'S from Biology or Mathametics , S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_rajarata', '1'),
(57, 'B.Sc. Honours in Food Science & Technology', 'Univerisity of Peradeniya', 'B.Sc Hons in food & Nutri', 'Food Science & Technology', '4 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(58, 'B.Sc. Honours in Food Science & Technology', 'University of Sri Jayewardenepura', 'B.Sc Hons in food & Nutri', 'Food Science & Technology', '4 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_jywrdana', '1'),
(59, 'Bachelor of Siddha Medicine and Surgery (B.S.M.S.)', 'University of Jaffna', 'B.S.M.S', 'Siddha Medicine', '6 Years', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_jaf', '1'),
(60, 'Bachelor of Siddha Medicine and Surgery (B.S.M.S.)', 'Eastern University, Sri Lanka', 'B.S.M.S', 'Siddha Medicine', '6 Years ', 'S from Biology, S from Physics, S from Chemistry', 'English', 'img_eastrn', '1'),
(61, 'B.Sc. in Biological Science', 'University of Colombo', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_clmb', '1'),
(62, 'B.Sc. in Biological Science', 'Univerisity of Peradeniya', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_prdnya', '1'),
(63, 'B.Sc. in Biological Science', 'University of Sri Jayewardenepura', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_jywrdana', '1'),
(64, 'B.Sc. in Biological Science', 'University of Kelaniya', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_klny', '1'),
(65, 'B.Sc. in Biological Science', 'University of Jaffna', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_jaf', '1'),
(66, 'B.Sc. in Biological Science', 'University of Ruhuna', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_rhnu', '1'),
(67, 'B.Sc. in Biological Science', 'Eastern University, Sri Lanka', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_eastrn', '1'),
(68, 'B.Sc. in Biological Science', 'South Eastern University', 'B.Sc', 'Biological Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_southeast', '1'),
(69, 'B.Sc. in Applied Sciences(Biological Scienec)', 'Rajarata University of Sri Lanka', 'B.Sc', 'Applied Science', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_rajarata', '1'),
(70, 'B.Sc. in Health Promotion', 'Rajarata University of Sri Lanka', 'B.Sc', 'Health Promotion', '3 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_rajarata', '1'),
(71, 'B.Sc. in Nursing', 'University of Colombo', 'B.Sc', 'Nursing', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_clmb', '1'),
(72, 'B.Sc. in Nursing', 'Univerisity of Peradeniya', 'B.Sc', 'Nursing', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_prdnya', '1'),
(73, 'B.Sc. in Nursing', 'University of Sri Jayewardenepura', 'B.Sc', 'Nursing', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_jywrdana', '1'),
(74, 'B.Sc. in Nursing', 'University of Jaffna', 'B.Sc', 'Nursing', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_jaf', '1'),
(75, 'B.Sc. in Nursing', 'University of Ruhuna', 'B.Sc', 'Nursing', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_rhnu', '1'),
(76, 'B.Sc. in Nursing', 'Eastern University, Sri Lanka', 'B.Sc', 'Nursing', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_eastrn', '1'),
(77, 'B.Sc. in Pharmacy', 'Univerisity of Peradeniya', 'B.Sc', 'Pharmacy', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_prdnya', '1'),
(78, 'B.Sc. in Pharmacy', 'University of Sri Jayewardenepura', 'B.Sc', 'Pharmacy', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_jywrdana', '1'),
(79, 'B.Sc. in Pharmacy', 'University of Jaffna', 'B.Sc', 'Pharmacy', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_jaf', '1'),
(80, 'B.Sc. in Pharmacy', 'University of Ruhuna', 'B.Sc', 'Pharmacy', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_rhnu', '1'),
(81, 'B.Sc. in Medical Laboratory Science', 'Univerisity of Peradeniya', 'B.Sc', 'Medical Laboratory Science', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_prdnya', '1'),
(82, 'B.Sc. in Medical Laboratory Science', 'University of Sri Jayewardenepura', 'B.Sc', 'Medical Laboratory Science', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_jywrdana', '1'),
(83, 'B.Sc. in Medical Laboratory Science', 'University of Jaffna', 'B.Sc', 'Medical Laboratory Science', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_jaf', '1'),
(84, 'B.Sc. in Medical Laboratory Science', 'University of Ruhuna', 'B.Sc', 'Medical Laboratory Science', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_rhnu', '1'),
(85, 'B.Sc. in Radiography', 'Univerisity of Peradeniya', 'B.Sc', 'Radiography', '4 Years', 'S from Biology, S from Physics, C from Chemistry', 'English', 'img_prdnya', '1'),
(86, 'Physiotherapy', 'Univerisity of Peradeniya', 'B.Sc', 'Physiotheraphy', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(87, 'Physiotherapy', 'University of Colombo', 'B.Sc', 'Physiotheraphy', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_clmb', '1'),
(88, 'B.Sc. (Biochemistry & Molecular Biology)', 'University of Colombo', 'B.Sc', 'Biochemistry & Molecular Biology', '3 Years', 'S from Biology,S from Physics, S from Chemistry', 'English', 'img_clmb', '1'),
(89, 'B.Sc. Honours in Fisheries and Marine Sciences', 'University of Ruhuna', 'B.Sc Hons', 'Fisheries & Marine Sciences', '4 Years', 'S from Biology,S from Physics, S from Chemistry', 'English', 'img_rhnu', '1'),
(90, 'Environmental Conservation & Management', 'University of Kelaniya', 'B.Sc Hons', 'Environmental Conservation & Management', '4 Years', 'S from Biology,S from Physics, S from Chemistry', 'English', 'img_klny', '1'),
(91, 'B.Sc. in Animal Science & Fisheries', 'Univerisity of Peradeniya', 'B.Sc', 'Animal Science & Fisheries', '4 Years', 'S from Biology,S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(92, 'B.Sc. in Agricultural Resource Management & Technology', 'University of Ruhuna', 'B.Sc', 'Agricultural Resource Management and Technology', '4 Years', 'S from Biology,S from Physics, S from Chemistry', 'English', 'img_rhnu', '1'),
(93, 'B.Sc. in Agribusiness Management', 'University of Ruhuna', 'B.Sc', 'Agribusiness Management', '4 Years', 'S from Biology, S fromPhysics or Food Technology or Bio Resource Technology or Agro Technology, S from Chemistry', 'English', 'img_rhnu', '1'),
(94, 'Bachelor of Science Honours in Applied Chemistry', 'University of Kelaniya', 'B.Sc Hons', ' Applied Chemistry', '4 Years', 'S from Biology or Mathametics or Higher Mathamatics or Combine Mathamatics,S from Physics or Agricultural Science, S from Chemistry', 'English', 'img_klny', '1'),
(97, 'B.Sc in Engineering', 'Univerisity of Peradeniya', 'B.Sc in Eng', 'Engineering ', '4 Years', 'S from Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_prdnya', '1'),
(98, 'B.Sc in Engineering', 'University of Sri Jayewardenepura', 'B.Sc in Eng', 'Engineering ', '4 Years', 'S from Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_jywrdana', '1'),
(99, 'B.Sc in Engineering', 'University of Jaffna', 'B.Sc in Eng', 'Engineering ', '4 Years', 'S from Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_jaf', '1'),
(100, 'B.Sc in Engineering', 'University of Ruhuna', 'B.Sc in Eng', 'Engineering ', '4 Years', 'S from Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_rhnu', '1'),
(101, 'B.Sc in Engineering', 'University Of Moratuwa', 'B.Sc in Eng', 'Engineering ', '4 Years', 'S from Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_morat', '1'),
(102, 'B.Sc in Engineering', 'South Eastern University', 'B.Sc in Eng', 'Engineering ', '4 Years', 'S from Combine Mathamatics, S from Physics, S from Chemistry', 'English', 'img_southeast', '1'),
(103, 'B.Sc. in Physical Science', 'University of Colombo', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_clmb', '1'),
(104, 'B.Sc. in Physical Science', 'Univerisity of Peradeniya', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_prdnya', '1'),
(105, 'B.Sc. in Physical Science', 'University of Sri Jayewardenepura', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_jywrdana', '1'),
(106, 'B.Sc. in Physical Science', 'University of Kelaniya', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_klny', '1'),
(107, 'B.Sc. in Physical Science', 'University of Jaffna', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_jaf', '1'),
(108, 'B.Sc. in Physical Science', 'University of Ruhuna', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_rhnu', '1'),
(109, 'B.Sc. in Physical Science', 'Eastern University, Sri Lanka', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_eastrn', '1'),
(110, 'B.Sc. in Physical Science', 'South Eastern University', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_southeast', '1'),
(111, 'B.Sc. in Computer Science', 'University of Sri Jayewardenepura', 'B.Sc', 'Computer Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology, S from Physics or Agriculture Science, S from Chemistry', 'English', 'img_jywrdana', '1'),
(112, 'B.Sc. in Computer Science', 'University of Kelaniya', 'B.Sc', 'Computer Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology', 'English', 'img_klny', '1'),
(113, 'B.Sc. in Computer Science', 'University of Jaffna', 'B.Sc', 'Computer Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology', 'English', 'img_jaf', '1'),
(114, 'B.Sc. in Computer Science', 'University of Ruhuna', 'B.Sc', 'Computer Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology', 'English', 'img_rhnu', '1'),
(115, 'B.Sc. in Computer Science', 'Eastern University, Sri Lanka', 'B.Sc', 'Computer Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics or Biology', 'English', 'img_eastrn', '1'),
(116, 'B.Sc. (General Degree', 'University of Colombo', 'B.Sc', 'Physical Science', '3 Years', 'S from Combine Mathamatics or Higher Mathamatics ', 'English', 'img_clmb', '1'),
(117, 'Bachelor of Science Honours in Artificial Intelligence', 'University Of Moratuwa', 'B.Sc', 'Artificial Interlligence', '4 Years ', 'C from Combine Mathamatics or Higher Mathamatics ', 'English', 'img_morat', '1'),
(118, 'Bachelor of Science in Electronics and Computer Science', 'University of Kelaniya', 'B.Sc', 'Electronic and Computer Science', '3 Years', 'C from Combine Mathamatics or Higher Mathamatics ', 'English', 'img_klny', '1'),
(119, 'Bachelor of Engineering Technology Honours', 'University of Colombo', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_clmb', '1'),
(120, 'Bachelor of Engineering Technology Honours', 'University of Sri Jayewardenepura', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_jywrdana', '1'),
(121, 'Bachelor of Engineering Technology Honours', 'University of Kelaniya', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_klny', '1'),
(122, 'Bachelor of Engineering Technology Honours', 'University of Jaffna', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_jaf', '1'),
(123, 'Bachelor of Engineering Technology Honours', 'University of Ruhuna', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_rhnu', '1'),
(124, 'Bachelor of Engineering Technology Honours', 'Rajarata University of Sri Lanka', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_rajarata', '1'),
(125, 'Bachelor of Engineering Technology Honours in Instrumentation and Automation', 'University of Colombo', 'BET(Hons)', 'Engineering Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_clmb', '1'),
(126, 'Bachelor of Biosystems Technology Honours', 'University of Colombo', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_clmb', '1'),
(127, 'Bachelor of Biosystems Technology Honours', 'University of Sri Jayewardenepura', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_jywrdana', '1'),
(128, 'Bachelor of Biosystems Technology Honours', 'University of Kelaniya', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_klny', '1'),
(129, 'Bachelor of Biosystems Technology Honours', 'University of Jaffna', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_jaf', '1'),
(130, 'Bachelor of Biosystems Technology Honours', 'University of Ruhuna', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_rhnu', '1'),
(131, 'Bachelor of Biosystems Technology Honours', 'Eastern University, Sri Lanka', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_eastrn', '1'),
(132, 'Bachelor of Biosystems Technology Honours', 'South Eastern University', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_southeast', '1'),
(133, 'Bachelor of Biosystems Technology Honours', 'Rajarata University of Sri Lanka', 'BBST(Hons)', 'Biosystem Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_rajarata', '1'),
(134, 'Bachelor of Information and Communication Technology Honours', 'University of Colombo', 'BICT(Hons)', 'Information and Communication Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_clmb', '1'),
(135, 'Bachelor of Information and Communication Technology Honours', 'University of Sri Jayewardenepura', 'BICT(Hons)', 'Information and Communication Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_jywrdana', '1'),
(136, 'Bachelor of Information and Communication Technology Honours', 'University of Kelaniya', 'BICT(Hons)', 'Information and Communication Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_klny', '1'),
(137, 'Bachelor of Information and Communication Technology Honours', 'Rajarata University of Sri Lanka', 'BICT(Hons)', 'Information and Communication Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_rajarata', '1'),
(138, 'Bachelor of Information and Communication Technology Honours', 'South Eastern University', 'BICT(Hons)', 'Information and Communication Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_southeast', '1'),
(139, 'B.Sc. (Hons) in Information Technology', 'University Of Moratuwa', 'B.Sc. (Hons)', 'Information Technology', '4 Years', 'S from Combine Mathamatics or Higher Mathamatics , S from Physics, S from any other subject', 'English', 'img_morat', '1'),
(140, 'Bachelor of Information and Communication Technology Honours', 'University of Ruhuna', 'BICT(Hons)', 'Information and Communication Technology', '4 Years', 'Engineering Technology, Science for Technology, Economic or Home Economic or Geography or English or Communication & Media Studies or ICT or Art or Bussiness Studies, or Agricultural Science or Accountancy or Mathamatics', 'English', 'img_rhnu', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
