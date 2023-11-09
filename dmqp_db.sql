-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 06:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmqp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) DEFAULT NULL,
  `Roll_No` int(11) DEFAULT NULL,
  `activity_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `Roll_No`, `activity_type`) VALUES
(100, 50, 'cultural_activities'),
(200, 51, 'research_paper_publication');

-- --------------------------------------------------------

--
-- Table structure for table `cultural_activities`
--

CREATE TABLE `cultural_activities` (
  `Academic_year` date NOT NULL,
  `Type_of_event` varchar(255) NOT NULL,
  `Level_of_event` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Organized_by` varchar(255) NOT NULL,
  `No_of_students` int(11) NOT NULL,
  `Prizes_won` varchar(255) NOT NULL,
  `Roll_No` int(11) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'cultural_activities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cultural_activities`
--

INSERT INTO `cultural_activities` (`Academic_year`, `Type_of_event`, `Level_of_event`, `Date`, `Organized_by`, `No_of_students`, `Prizes_won`, `Roll_No`, `activity_type`) VALUES
('0000-00-00', 'Seminar', 'National', '2022-08-15', 'University XYZ', 100, 'First Prize', 50, 'cultural_activities');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `Fname` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `department`, `Fname`, `Lname`) VALUES
(100, 'Comp', 'John', 'D'),
(200, 'Comp', 'Sam', 'W'),
(201, 'Comp', 'Rajesh', 'Kumar'),
(202, 'Comp', 'Sneha', 'Sharma'),
(203, 'Comp', 'Amit', 'Verma'),
(204, 'Comp', 'Pooja', 'Patel'),
(205, 'Comp', 'Vikas', 'Singh'),
(206, 'Comp', 'Kavita', 'Jain'),
(207, 'Comp', 'Arun', 'Gupta'),
(208, 'Comp', 'Anita', 'Yadav'),
(209, 'Comp', 'Rakesh', 'Mishra'),
(210, 'Comp', 'Neha', 'Pandey');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_visit`
--

CREATE TABLE `industrial_visit` (
  `Auth_ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Industry` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `Roll_No` int(11) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'industrial_visit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password_s` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password_s`) VALUES
('user1', '123');

-- --------------------------------------------------------

--
-- Table structure for table `research_paper_publication`
--

CREATE TABLE `research_paper_publication` (
  `DOI` date NOT NULL,
  `ID` int(11) NOT NULL,
  `Roll_No` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Journal name` varchar(255) NOT NULL,
  `Volume` int(11) NOT NULL,
  `Series` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `Domain` varchar(255) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'research_paper_publication'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_paper_publication`
--

INSERT INTO `research_paper_publication` (`DOI`, `ID`, `Roll_No`, `Title`, `Journal name`, `Volume`, `Series`, `Year`, `Domain`, `activity_type`) VALUES
('0000-00-00', 21, 32, 'teeth', 'insp', 2, 'three', 2023, 'ny', 'research_paper_publication'),
('0000-00-00', 200, 51, 'ddd', 'www', 3, 'ggg', 2023, 'rrr', 'research_paper_publication');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `Academic_year` date NOT NULL,
  `Type_of_sport` int(11) NOT NULL,
  `Level_of_sport` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Organized_by` varchar(255) NOT NULL,
  `No_of_students` int(11) NOT NULL,
  `Prizes_won` varchar(255) NOT NULL,
  `Roll_No` int(11) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'sports'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Roll_No` int(11) NOT NULL,
  `Fname` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll_No`, `Fname`, `Lname`, `department`) VALUES
(50, 'Ved', 'K', 'Comp'),
(51, 'Vedant', 'G', 'Comp'),
(52, 'John', 'Doe', 'Computer'),
(53, 'Alice', 'Smith', 'Computer'),
(54, 'Bob', 'Johnson', 'Computer'),
(55, 'Eva', 'Brown', 'Computer'),
(56, 'Michael', 'Williams', 'Computer'),
(57, 'Sophia', 'Davis', 'Computer'),
(58, 'David', 'Miller', 'Computer'),
(59, 'Olivia', 'Wilson', 'Computer'),
(60, 'James', 'Jones', 'Computer'),
(61, 'Emma', 'Harris', 'Computer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_type`),
  ADD KEY `id` (`id`),
  ADD KEY `Roll_No` (`Roll_No`);

--
-- Indexes for table `cultural_activities`
--
ALTER TABLE `cultural_activities`
  ADD KEY `Roll_No` (`Roll_No`),
  ADD KEY `activity_type` (`activity_type`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD KEY `Roll_No` (`Roll_No`),
  ADD KEY `ID` (`ID`),
  ADD KEY `activity_type` (`activity_type`);

--
-- Indexes for table `research_paper_publication`
--
ALTER TABLE `research_paper_publication`
  ADD KEY `Roll_No` (`Roll_No`),
  ADD KEY `ID` (`ID`),
  ADD KEY `activity_type` (`activity_type`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD KEY `Roll_No` (`Roll_No`),
  ADD KEY `activity_type` (`activity_type`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Roll_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Roll_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`);

--
-- Constraints for table `cultural_activities`
--
ALTER TABLE `cultural_activities`
  ADD CONSTRAINT `cultural_activities_ibfk_1` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`),
  ADD CONSTRAINT `cultural_activities_ibfk_2` FOREIGN KEY (`activity_type`) REFERENCES `activity` (`activity_type`);

--
-- Constraints for table `industrial_visit`
--
ALTER TABLE `industrial_visit`
  ADD CONSTRAINT `industrial_visit_ibfk_1` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`),
  ADD CONSTRAINT `industrial_visit_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `industrial_visit_ibfk_3` FOREIGN KEY (`activity_type`) REFERENCES `activity` (`activity_type`);

--
-- Constraints for table `research_paper_publication`
--
ALTER TABLE `research_paper_publication`
  ADD CONSTRAINT `research_paper_publication_ibfk_1` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`),
  ADD CONSTRAINT `research_paper_publication_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `research_paper_publication_ibfk_3` FOREIGN KEY (`activity_type`) REFERENCES `activity` (`activity_type`);

--
-- Constraints for table `sports`
--
ALTER TABLE `sports`
  ADD CONSTRAINT `sports_ibfk_1` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`),
  ADD CONSTRAINT `sports_ibfk_2` FOREIGN KEY (`activity_type`) REFERENCES `activity` (`activity_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
