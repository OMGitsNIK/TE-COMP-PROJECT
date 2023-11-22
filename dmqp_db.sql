-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 07:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `Roll_No`, `activity_type`) VALUES
(100, 50, 'cultural_activities'),
(204, 54, 'industrial_visit'),
(200, 51, 'research_paper_publication'),
(203, 53, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `cultural_activities`
--

CREATE TABLE `cultural_activities` (
  `Academic_year` varchar(50) DEFAULT NULL,
  `Type_of_event` varchar(255) NOT NULL,
  `Level_of_event` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Organized_by` varchar(255) NOT NULL,
  `No_of_students` int(11) NOT NULL,
  `Prizes_won` varchar(255) NOT NULL,
  `Roll_No` int(11) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'cultural_activities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cultural_activities`
--

INSERT INTO `cultural_activities` (`Academic_year`, `Type_of_event`, `Level_of_event`, `Date`, `Organized_by`, `No_of_students`, `Prizes_won`, `Roll_No`, `activity_type`) VALUES
('2022-2023', 'Dance Competition', 'Inter-School', '2022-09-15', 'School Dance Club', 50, '1st Place Trophy', 52, 'cultural_activities'),
('2022-2023', 'Music Fest', 'College', '2022-11-03', 'Music Department', 80, 'Best Vocalist Award', 53, 'cultural_activities'),
('2022-2023', 'Literary Symposium', 'University', '2022-10-22', 'English Society', 60, 'Outstanding Speaker', 54, 'cultural_activities'),
('2022-2023', 'Art Exhibition', 'School', '2022-12-05', 'Fine Arts Club', 45, 'Excellence in Painting', 55, 'cultural_activities'),
('2022-2023', 'Drama Festival', 'District', '2023-01-18', 'Drama Society', 70, 'Best Actor', 61, 'cultural_activities'),
('2022-2023', 'Quiz Competition', 'Inter-College', '2022-11-28', 'Quiz Club', 55, '2nd Place Certificate', 56, 'cultural_activities'),
('2022-2023', 'Traditional Dance Show', 'Cultural Fair', '2022-10-07', 'Cultural Committee', 40, 'Cultural Diversity Award', 57, 'cultural_activities'),
('2022-2023', 'Photography Contest', 'National', '2022-12-20', 'Photography Club', 25, 'Honorable Mention', 58, 'cultural_activities'),
('2022-2023', 'Debate Championship', 'State', '2023-02-08', 'Debate Society', 50, 'Best Debater', 59, 'cultural_activities'),
('2022-2023', 'Film Screening Event', 'College', '2022-11-15', 'Film Club', 30, 'Audience Choice Award', 60, 'cultural_activities');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `Fname` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `department`, `Fname`, `Lname`) VALUES
(100, 'Comp', 'John', 'De Souza'),
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

--
-- Triggers `faculty`
--
DELIMITER $$
CREATE TRIGGER `before_faculty_update` BEFORE UPDATE ON `faculty` FOR EACH ROW INSERT INTO faculty_audit (action, id, Fname, Lname, changedate)
VALUES ('update', OLD.id, OLD.Fname, OLD.Lname, NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_audit`
--

CREATE TABLE `faculty_audit` (
  `id` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `changedate` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_audit`
--

INSERT INTO `faculty_audit` (`id`, `Fname`, `Lname`, `changedate`, `action`) VALUES
(100, 'John', 'D', '2023-11-21 01:05:47', 'update');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industrial_visit`
--

INSERT INTO `industrial_visit` (`Auth_ID`, `Date`, `Industry`, `ID`, `Roll_No`, `activity_type`) VALUES
(1, '2022-08-10', 'Manufacturing Company A', 200, 51, 'industrial_visit'),
(2, '2022-09-05', 'Tech Startup B', 201, 52, 'industrial_visit'),
(3, '2022-10-20', 'Energy Plant C', 202, 53, 'industrial_visit'),
(4, '2022-11-15', 'Biotech Lab D', 203, 54, 'industrial_visit'),
(5, '2022-12-08', 'Automotive Plant E', 204, 55, 'industrial_visit'),
(6, '2023-01-25', 'Aerospace Facility F', 205, 56, 'industrial_visit'),
(7, '2023-02-18', 'Renewable Energy G', 206, 57, 'industrial_visit'),
(8, '2023-03-10', 'Food Processing H', 207, 58, 'industrial_visit'),
(9, '2023-04-05', 'Chemical Manufacturing I', 208, 59, 'industrial_visit'),
(10, '2023-05-22', 'Tech Research Center J', 209, 60, 'industrial_visit');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password_s` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Title` text NOT NULL,
  `Journal name` varchar(255) NOT NULL,
  `Volume` int(11) NOT NULL,
  `Series` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL,
  `Domain` varchar(255) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'research_paper_publication',
  `Roll_No` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research_paper_publication`
--

INSERT INTO `research_paper_publication` (`DOI`, `Title`, `Journal name`, `Volume`, `Series`, `Year`, `Domain`, `activity_type`, `Roll_No`, `ID`) VALUES
('2023-01-01', 'Paper 1', 'Journal A', 10, 'Series X', 2023, 'Science', 'research_paper_publication', 50, 100),
('2023-02-01', 'Paper 2', 'Journal B', 15, 'Series Y', 2023, 'Technology', 'research_paper_publication', 51, 200),
('2023-03-01', 'Paper 3', 'Journal C', 20, 'Series Z', 2023, 'Engineering', 'research_paper_publication', 52, 201),
('2023-04-01', 'Paper 4', 'Journal A', 12, 'Series X', 2023, 'Science', 'research_paper_publication', 53, 202),
('2023-05-01', 'Paper 5', 'Journal B', 18, 'Series Y', 2023, 'Technology', 'research_paper_publication', 54, 203),
('2023-06-01', 'Paper 6', 'Journal C', 25, 'Series Z', 2023, 'Engineering', 'research_paper_publication', 55, 204),
('2023-07-01', 'Paper 7', 'Journal A', 14, 'Series X', 2023, 'Science', 'research_paper_publication', 56, 205),
('2023-08-01', 'Paper 8', 'Journal B', 22, 'Series Y', 2023, 'Technology', 'research_paper_publication', 57, 206),
('2023-09-01', 'Paper 9', 'Journal C', 28, 'Series Z', 2023, 'Engineering', 'research_paper_publication', 58, 207),
('2023-10-01', 'Paper 10', 'Journal A', 16, 'Series X', 2023, 'Science', 'research_paper_publication', 59, 208);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `Academic_year` varchar(50) DEFAULT NULL,
  `Type_of_sport` varchar(30) DEFAULT NULL,
  `Level_of_sport` varchar(30) DEFAULT NULL,
  `Date` date NOT NULL,
  `Organized_by` varchar(255) NOT NULL,
  `No_of_students` int(11) NOT NULL,
  `Prizes_won` varchar(255) NOT NULL,
  `Roll_No` int(11) NOT NULL,
  `activity_type` varchar(255) DEFAULT 'sports'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`Academic_year`, `Type_of_sport`, `Level_of_sport`, `Date`, `Organized_by`, `No_of_students`, `Prizes_won`, `Roll_No`, `activity_type`) VALUES
('2022-2023', 'Football', 'Inter-School', '2022-09-10', 'School Sports Club', 60, 'Champion Trophy', 50, 'sports'),
('2022-2023', 'Basketball', 'College', '2022-11-05', 'College Sports Department', 40, '1st Place Medal', 51, 'sports'),
('2022-2023', 'Swimming', 'University', '2022-10-18', 'National Swimming Association', 30, 'Gold Medal', 52, 'sports'),
('2022-2023', 'Cricket', 'School', '2022-12-02', 'School Cricket Association', 50, 'Best Batsman Award', 53, 'sports'),
('2022-2023', 'Tennis', 'District', '2023-01-20', 'District Tennis Club', 25, 'Runner-up Trophy', 54, 'sports'),
('2022-2023', 'Athletics', 'Inter-College', '2022-11-25', 'College Athletics Club', 70, 'Most Valuable Player Award', 55, 'sports'),
('2022-2023', 'Volleyball', 'Cultural Fair', '2022-10-12', 'Cultural and Sports Committee', 35, 'Fair Play Award', 56, 'sports'),
('2022-2023', 'Badminton', 'National', '2022-12-28', 'National Badminton Association', 55, 'Silver Medal', 57, 'sports'),
('2022-2023', 'Hockey', 'State', '2023-02-15', 'State Hockey Federation', 45, 'Best Goalkeeper Award', 58, 'sports'),
('2022-2023', 'Table Tennis', 'College', '2022-11-08', 'College Table Tennis Club', 20, '3rd Place Certificate', 59, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Roll_No` int(11) NOT NULL,
  `Fname` varchar(255) DEFAULT NULL,
  `Lname` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll_No`, `Fname`, `Lname`, `department`) VALUES
(50, 'Ved', 'Kerkar', 'Comp'),
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
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `before_student_update` BEFORE UPDATE ON `student` FOR EACH ROW INSERT INTO student_audit (action, Roll_No, Fname, Lname, changedat)
VALUES ('update', OLD.Roll_No, OLD.Fname, OLD.Lname, NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `student_audit`
--

CREATE TABLE `student_audit` (
  `Roll_No` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `changedat` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_audit`
--

INSERT INTO `student_audit` (`Roll_No`, `Fname`, `Lname`, `changedat`, `action`) VALUES
(50, 'Ved', 'K', '2023-11-21 00:48:25', 'update');

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
-- Indexes for table `faculty_audit`
--
ALTER TABLE `faculty_audit`
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
  ADD KEY `activity_type` (`activity_type`),
  ADD KEY `Roll_No` (`Roll_No`),
  ADD KEY `ID` (`ID`);

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
-- Indexes for table `student_audit`
--
ALTER TABLE `student_audit`
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
  ADD CONSTRAINT `research_paper_publication_ibfk_1` FOREIGN KEY (`activity_type`) REFERENCES `activity` (`activity_type`),
  ADD CONSTRAINT `research_paper_publication_ibfk_2` FOREIGN KEY (`Roll_No`) REFERENCES `student` (`Roll_No`),
  ADD CONSTRAINT `research_paper_publication_ibfk_3` FOREIGN KEY (`ID`) REFERENCES `faculty` (`id`);

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
