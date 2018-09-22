-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 12:16 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_09_21_045628_create_survey_table', 1),
(2, '2018_09_21_072603_create_surveys_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey_option`
--

CREATE TABLE `survey_option` (
  `question_id` int(11) NOT NULL,
  `option_id` int(5) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_option`
--

INSERT INTO `survey_option` (`question_id`, `option_id`, `description`) VALUES
(1, 1, 'Superior'),
(1, 2, 'Very Satisfactory '),
(1, 3, '  \r\nAbout Average'),
(1, 4, 'Somewhat Unsatisfactory'),
(1, 5, 'Very Poor'),
(2, 1, 'Very Unsatisfactory '),
(2, 2, 'Somewhat Unsatisfactory '),
(2, 3, 'About Average '),
(2, 4, 'Somewhat Satisfactory '),
(2, 5, '  \r\nVery Satisfactory'),
(3, 1, 'Very Unsatisfactory'),
(3, 2, 'Somewhat Unsatisfactory'),
(3, 3, 'About Average'),
(3, 4, 'Somewhat Satisfactory'),
(3, 5, ' \r\nVery Satisfactory');

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `id` int(5) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `description`) VALUES
(1, '\r\n  \r\n \r\nIn thinking about your most recent experience with [COMPANY], how was the quality of customer service you received?'),
(2, 'The process for getting your concerns resolved was: '),
(3, 'Now please think about the features and benefits of the [PRODUCT] itself. How satisfied are you with the [PRODUCT]:');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
