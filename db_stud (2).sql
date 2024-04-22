-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2019 at 10:57 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stud`
--

-- --------------------------------------------------------

--
-- Table structure for table `acheivement`
--

CREATE TABLE `acheivement` (
  `aid` int(11) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `descr` varchar(500) NOT NULL,
  `school` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acheivement`
--

INSERT INTO `acheivement` (`aid`, `sub`, `descr`, `school`) VALUES
(1, '2019- acheivement for A+ accrediate', 'got 2019 a+ accreadate from mg university', 'IHRD'),
(2, 'Sports', 'annual sport parcipated by 200 of student', 'IHRD');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `school` varchar(150) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`pid`, `pname`, `phno`, `school`, `uname`, `password`, `image`) VALUES
(1, 'shyam', '9633710717', 'IHRD', 'shyam', 'sa', ''),
(6, 'anjana', '7458963210', 'mar', 'anjana', 'anjana', '/media/edit%20forms%20data_iV5Ecbv.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `etc`
--

CREATE TABLE `etc` (
  `eid` int(11) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `descr` varchar(500) NOT NULL,
  `school` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etc`
--

INSERT INTO `etc` (`eid`, `sub`, `descr`, `school`, `image`) VALUES
(1, 'Sports', 'annual sport parcipated by 200 of student', 'IHRD', ''),
(2, 'Ncc', 'ncc data 2019', 'IHRD', '/media/Annotation%202019-09-02%20105917_QpyTzng.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fid` int(11) NOT NULL,
  `adno` int(11) NOT NULL,
  `term` varchar(50) NOT NULL,
  `fee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fid`, `adno`, `term`, `fee`) VALUES
(1, 1245, '1st', '2500');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `hid` int(11) NOT NULL,
  `fees` varchar(100) NOT NULL,
  `food` varchar(250) NOT NULL,
  `school` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hid`, `fees`, `food`, `school`, `image`) VALUES
(5, '3500', 'dwfe\r\nr\r\ngr\r\ng\r\neg\r\net\r\ng', 'IHRD', '/media/Annotation%202019-11-27%20144037_obERRtt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `password`, `type`) VALUES
('shyam', 'sa', 'admin'),
('anjana', 'anjana', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `marklist`
--

CREATE TABLE `marklist` (
  `mid` int(11) NOT NULL,
  `adno` int(11) NOT NULL,
  `exam` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marklist`
--

INSERT INTO `marklist` (`mid`, `adno`, `exam`, `image`) VALUES
(3, 1245, 'Quaterly', '/media/setup%20url%20direct%3Bly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `sid` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`sid`, `sname`, `address`, `email`, `type`, `phno`, `image`) VALUES
(1, 'IHRD', 'Ihrd kuttikanam', 'ihrd@ktknm.com', 'CBSE', '9874563210', ''),
(2, 'ST mathews', 'wallardie', 'st@mathews.com', 'CBSE', '7896541230', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `sid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `name`, `age`, `gender`, `course`, `email`, `phno`, `address`, `school`) VALUES
(1, 'sanju', '35', 'Male', 'cs', 'sanju@gmail.com', '741258963', '10\r\nidukki', 'IHRD');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `clas` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `adno` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `school` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `clas`, `age`, `gender`, `parent`, `email`, `phno`, `adno`, `address`, `school`) VALUES
(1, 'sonu', '10', '22', 'Male', 'sach', 'sonu@gmail.com', '7854123690', '1245', 'advfdasgvfdsa', 'IHRD');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `bid` int(11) NOT NULL,
  `bno` varchar(50) NOT NULL,
  `route` varchar(100) NOT NULL,
  `btype` varchar(50) NOT NULL,
  `image` varchar(150) NOT NULL,
  `school` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`bid`, `bno`, `route`, `btype`, `image`, `school`) VALUES
(1, 'a1', 'klr\r\nedply\r\nalva', 'Ac', '/media/Annotation%202019-10-01%20210400_7wPCLYv.jpg', 'IHRD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acheivement`
--
ALTER TABLE `acheivement`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `etc`
--
ALTER TABLE `etc`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `marklist`
--
ALTER TABLE `marklist`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acheivement`
--
ALTER TABLE `acheivement`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `etc`
--
ALTER TABLE `etc`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marklist`
--
ALTER TABLE `marklist`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
