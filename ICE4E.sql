-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2018 at 01:51 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ICE4E`
--

-- --------------------------------------------------------

--
-- Table structure for table `courseinfo`
--

CREATE TABLE `courseinfo` (
  `id` int(11) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `coursecode` varchar(100) NOT NULL,
  `profname` varchar(100) NOT NULL,
  `classtime` varchar(100) NOT NULL,
  `coursedesc` varchar(500) NOT NULL,
  `coursecontent` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courseinfo`
--

INSERT INTO `courseinfo` (`id`, `coursename`, `coursecode`, `profname`, `classtime`, `coursedesc`, `coursecontent`) VALUES
(1, 'Oil & Gas', 'BCU-1001', 'Fname Lname', 'Tues 1PM, Fri 9AM', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus incidunt provident officiis eligendi excepturi dolor perspiciatis amet, cupiditate soluta similique culpa possimus magnam molestias natus mollitia, repellat aliquid, quisquam! Numquam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid similique dolor, repudiandae quo quae voluptatibus ipsa, doloribus possimus ratione natus dicta voluptatem distinctio.', 'Lecture Materials, Tutorials & Labs, Quizzes, Discussion Groups');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursename` (`coursename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courseinfo`
--
ALTER TABLE `courseinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
