-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 04:25 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sec_Q` varchar(500) NOT NULL,
  `Answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('abir64', 'Ajmal Huda Abir', '123456', 'What is the name of your Institution?', 'AUST'),
('ayon65', 'Nafis Ayon', '12356', 'What is the name of your Institution?', 'AUST'),
('farhab68', 'Abdur Rafi Farhab', '123456', 'What is the name of your Institution?', 'AUST'),
('kb63', 'Kamrozzaman Bhuiyan', '13579', 'What is the name of your Institution?', 'AUST'),
('nishat62', 'Rownok Jahan Nishat', '123456', 'What is the name of your Institution?', 'AUST'),
('rakibul98', 'Rakibul Islam', '12345', 'What is your Hobby?', 'Reading Books'),
('rht69', 'Rahat Chowdhury', '2468', 'What is your favourite colour?', 'Pink');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` int(10) NOT NULL,
  `Book_Name` varchar(250) NOT NULL,
  `Edition` varchar(250) NOT NULL,
  `Author` varchar(250) NOT NULL,
  `Publisher` varchar(250) NOT NULL,
  `Price` int(10) NOT NULL,
  `Pages` int(10) NOT NULL,
  `Copies` int(10) NOT NULL,
  `Rating` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `Book_Name`, `Edition`, `Author`, `Publisher`, `Price`, `Pages`, `Copies`, `Rating`) VALUES
(54, 'Niyan', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 230, 126, 2, NULL),
(81, 'Dudh Cha Kheye Toke Guli Kore Debo', '3rd', 'Jahid Hossain', 'Batighor Prokashoni', 210, 256, 0, NULL),
(434, 'Himur Rupali Ratri', '1st', 'Humayun Ahmed', 'Gyankosh Prokashoni', 200, 142, 3, NULL),
(649, 'Momotadi', '1st', 'Manik BondhoPadhay', 'Raat-Din', 200, 350, 3, 6),
(650, 'Crenial', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 300, 180, 6, 7),
(799, 'Bibiana', '1st', 'Kingkor Ahsan', 'Onnesha Prokashon', 340, 320, 3, NULL),
(868, 'Valobashbo Bolei', '1st', 'Rudro Goswami', 'Onindo Prokash', 94, 64, 12, NULL),
(887, 'Amar Chelebela', '1st', 'Humayun Ahmed', 'Kakoli Prokashoni', 154, 95, 7, NULL),
(903, 'Cyclone', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 255, 160, 9, 4),
(916, 'Ebong Himu', '2nd', 'Humayun Ahmed', 'Shomoy Prokashon', 110, 80, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Book_ID` int(255) NOT NULL,
  `Book_Name` varchar(255) NOT NULL,
  `Edition` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Publisher` varchar(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `Pages` int(255) NOT NULL,
  `Reader_ID` int(255) NOT NULL,
  `Reader_Name` varchar(255) NOT NULL,
  `Mobile` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Occupation` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `DOI` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Book_ID`, `Book_Name`, `Edition`, `Author`, `Publisher`, `Price`, `Pages`, `Reader_ID`, `Reader_Name`, `Mobile`, `Email`, `Occupation`, `Gender`, `Address`, `DOI`) VALUES
(81, 'Dudh Cha Kheye Toke Guli Kore Debo', '3rd', 'Jahid Hossain', 'Batighor Prokashoni', 210, 256, 47, 'Abir', '0172*******', 'abir64@gmail.com', 'Professional', 'Male', 'Dhaka', 'Oct 8, 2019');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `Reader_ID` int(250) NOT NULL,
  `Reader_Name` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Occupation` varchar(250) NOT NULL,
  `Gender` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `Book_ID` int(250) NOT NULL,
  `Book_Name` varchar(250) NOT NULL,
  `Edition` varchar(250) NOT NULL,
  `Author` varchar(250) NOT NULL,
  `Publisher` varchar(250) NOT NULL,
  `Price` int(250) NOT NULL,
  `Pages` int(250) NOT NULL,
  `DOI` varchar(250) NOT NULL,
  `DOR` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`Reader_ID`, `Reader_Name`, `Mobile`, `Email`, `Occupation`, `Gender`, `Address`, `Book_ID`, `Book_Name`, `Edition`, `Author`, `Publisher`, `Price`, `Pages`, `DOI`, `DOR`) VALUES
(64, 'Abir', '01254', 'abbir@gmail.com', 'student', 'male', 'Dhaka', 903, 'Cyclone', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 255, 160, '11 Oct, 2019', '18 Oct, 2019'),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka', 649, 'Momotadi', '1st', 'Manik BondhoPadhay', 'Raat-Din', 200, 350, '', ''),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka', 649, 'Momotadi', '1st', 'Manik BondhoPadhay', 'Raat-Din', 200, 350, '', ''),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka', 649, 'Momotadi', '1st', 'Manik BondhoPadhay', 'Raat-Din', 200, 350, '', ''),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka', 903, 'Cyclone', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 255, 160, 'Oct 8, 2019', 'Oct 9, 2019'),
(492, 'Md. Rakibul Islam', '01521101691', 'rakibulislam.bd98@gmail.com', 'Student', 'Male', 'Dhaka', 650, 'Crenial', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 300, 180, 'Oct 8, 2019', 'Oct 9, 2019'),
(492, 'Md. Rakibul Islam', '01521101691', 'rakibulislam.bd98@gmail.com', 'Student', 'Male', 'Dhaka', 650, 'Crenial', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 300, 180, 'Oct 8, 2019', 'Oct 9, 2019'),
(492, 'Md. Rakibul Islam', '01521101691', 'rakibulislam.bd98@gmail.com', 'Student', 'Male', 'Dhaka', 903, 'Cyclone', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 255, 160, 'Oct 9, 2019', 'Oct 10, 2019'),
(492, 'Md. Rakibul Islam', '01521101691', 'rakibulislam.bd98@gmail.com', 'Student', 'Male', 'Dhaka', 649, 'Momotadi', '1st', 'Manik BondhoPadhay', 'Raat-Din', 200, 350, 'Oct 10, 2019', 'Oct 11, 2019'),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka', 903, 'Cyclone', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 255, 160, 'Oct 9, 2019', 'Oct 10, 2019'),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka', 903, 'Cyclone', '1st', 'Muhammad Zafar Iqbal', 'Tamrolipi', 255, 160, 'Oct 10, 2019', 'Oct 11, 2019');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Reader_ID` int(10) NOT NULL,
  `Reader_Name` varchar(250) NOT NULL,
  `Mobile` varchar(30) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Reader_ID`, `Reader_Name`, `Mobile`, `Email`, `Occupation`, `Gender`, `Address`) VALUES
(47, 'Abir', '0172*******', 'abir64@gmail.com', 'Professional', 'Male', 'Dhaka'),
(52, 'Ayon', '0182*******', 'ayon65@gmail.com', 'Student', 'Male', 'Shyamoli,Dhaka'),
(339, 'Nishat', '0151*******', 'nishat62@gmail.com', 'Student', 'Female', 'Dhaka'),
(478, 'Rahat', '01816163673', 'rht345@gmail.com', 'Student', 'Male', 'Dhaka'),
(492, 'Md. Rakibul Islam', '01521101691', 'rakibulislam.bd98@gmail.com', 'Student', 'Male', 'Dhaka'),
(647, 'Farhab', '0152*******', 'farhab68@yahoo,com', 'Professional', 'Male', 'Rajshahi'),
(940, 'Kamrozzaman', '01521335803', 'kb63@yahoo.com', 'Student', 'Male', 'Dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`Reader_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Reader_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
