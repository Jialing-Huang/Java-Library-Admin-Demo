-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 09:32 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `booklending`
--

CREATE TABLE `booklending` (
  `id` int(11) NOT NULL,
  `bookid` varchar(10) NOT NULL,
  `memberid` varchar(10) DEFAULT NULL,
  `beingOut` tinyint(1) NOT NULL DEFAULT '1',
  `checkoutDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dueDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booklending`
--

INSERT INTO `booklending` (`id`, `bookid`, `memberid`, `beingOut`, `checkoutDate`, `dueDate`, `returnDate`) VALUES
(3, '4', NULL, 0, '2019-07-19 02:44:17', '2019-08-07', NULL),
(9, '3', NULL, 0, '2019-07-19 05:07:01', '2019-08-08', NULL),
(22, '5', NULL, 0, '2019-07-19 06:29:49', '2019-08-08', '2019-07-19'),
(23, '6', NULL, 0, '2019-07-19 06:30:27', '2019-08-08', '2019-07-19'),
(27, '5', NULL, 0, '2019-07-19 06:56:27', '2019-08-08', '2019-07-19'),
(28, '5', NULL, 0, '2019-07-19 06:57:24', '2019-08-08', '2019-07-19'),
(30, '6', '7', 1, '2019-07-19 07:42:01', '2019-08-08', NULL),
(31, '8', '3', 1, '2019-07-19 07:42:39', '2019-08-08', NULL),
(32, '3', '7', 1, '2019-07-19 07:43:14', '2019-08-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `rackNo` varchar(10) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `memberid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `subject`, `rackNo`, `isbn`, `publisher`, `memberid`) VALUES
(1, 'Tom', 'SciFi', '3453254', '123454646', 'AB', NULL),
(3, 'HarryPotter', 'Fiction', '2324', '735850896', 'English', NULL),
(5, 'Galaxy Legend', 'SciFi', '2414', '7895852523', 'Jap', NULL),
(6, 'Math', 'Education', '09650', '9067908543', 'US', NULL),
(7, 'War and Peace', 'Novel', '34532', '347538927', 'Russia', NULL),
(8, 'Lord of Rings', 'Novel', '23423', '43532642', 'England', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `family` varchar(50) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberid`, `name`, `family`, `age`) VALUES
(1, 'Jack', 'Smith', 23),
(2, 'Jack', 'London', 56),
(3, 'Mike', 'Donald', 34),
(4, 'Lockhead', 'Mac', 25),
(5, 'Martin', 'Gardna', 67),
(6, 'Susan', 'Boyer', 41),
(7, 'Janey', 'Boyer', 40),
(8, 'Jack', 'Smith', 47),
(9, 'Jacky', 'Ma', 56);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booklending`
--
ALTER TABLE `booklending`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `memberid` (`memberid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booklending`
--
ALTER TABLE `booklending`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
