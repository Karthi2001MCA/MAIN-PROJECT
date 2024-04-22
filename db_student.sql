-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2024 at 04:08 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `acheivement`
--

CREATE TABLE IF NOT EXISTS `acheivement` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `sub` varchar(50) NOT NULL,
  `descr` varchar(500) NOT NULL,
  `school` varchar(50) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `acheivement`
--

INSERT INTO `acheivement` (`aid`, `sub`, `descr`, `school`) VALUES
(1, '2019- acheivement for A+ accrediate', 'got 2019 a+ accreadate from mg university', 'IHRD'),
(2, 'Sports', 'annual sport parcipated by 200 of student', 'IHRD'),
(3, '', '', 'Girijyothi Public School Idukki'),
(4, 'studies', '10 students got A1 \r\nin all subjects', 'Girijyothi Public School Idukki');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE IF NOT EXISTS `admin_reg` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `school` varchar(150) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `district` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `ifsc` varchar(50) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`pid`, `pname`, `phno`, `school`, `uname`, `password`, `image`, `district`, `account`, `branch`, `ifsc`) VALUES
(1, 'shyam', '9633710717', 'IHRD', 'shyam', 'sa', '/media/edit%20forms%20data_iV5Ecbv.jpg', 'Idukki', '', '', ''),
(6, 'anjana', '7458963210', 'mar', 'anjana', 'anjana', '/media/edit%20forms%20data_iV5Ecbv.jpg', 'Kottayam', '', '', ''),
(8, 'Fr.Biju vittukallal', '978684543', 'Girijyothi Public School Idukki', 'Fr.Biju vittukallul', '1234', '/media/giri_dZLjutE.jpg', '', '', '', ''),
(9, 'Fr.Biju vittukallal', '978684543', 'Girijyothi Public School Idukki', 'Fr.Biju vittukallul', '1234', '/media/giri_wEtDiEk.jpg', '', '', '', ''),
(10, 'Fr.Biju vittukallal', '978684543', 'Girijyothi Public School Idukki', 'Fr.Biju vittukallul', '1234', '/media/giri_3lOoyVs.jpg', '', '', '', ''),
(11, 'george', '9008080000', 'sghss', 'george', '123', '/media/hostel_SLolJQy.jpg', 'Ernakulam', '', '', ''),
(12, 'shukoor', '0987654323', 'by', 'shuk', '12345', '/media/etc_y5xSyag.gif', 'Wayanad', '', '', ''),
(13, 'Rajan TR', '9207535865', 'MKM H.S.S piravom', 'rajan', 'raj', '/media/blog1.jpg', 'Ernakulam', '123400058123', 'UNION BANK OF INDIA', 'UBIN000123456'),
(14, 'Karthik babu', '9605593686', 'Fathima matha school', 'Karthik babu', '1234', '/media/IMG_20220918_184746.jpg', 'Idukki', '1234', 'ubin', 'ubin');

-- --------------------------------------------------------

--
-- Table structure for table `etc`
--

CREATE TABLE IF NOT EXISTS `etc` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `sub` varchar(50) NOT NULL,
  `descr` varchar(500) NOT NULL,
  `school` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `etc`
--

INSERT INTO `etc` (`eid`, `sub`, `descr`, `school`, `image`) VALUES
(1, 'Sports', 'annual sport parcipated by 200 of student', 'IHRD', '/media/Annotation%202019-09-02%20105917_QpyTzng.jpg'),
(2, 'Ncc', 'ncc data 2019', 'IHRD', '/media/Annotation%202019-09-02%20105917_QpyTzng.jpg'),
(3, 'yoga', 'in every fridays yoga classes for students ', 'Girijyothi Public School Idukki', '/media/g2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `adno` int(11) NOT NULL,
  `term` varchar(50) NOT NULL,
  `fee` varchar(50) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fid`, `adno`, `term`, `fee`) VALUES
(1, 1245, '1st', '2500'),
(2, 1245, '1st', '600'),
(3, 1245, '1st', '600'),
(4, 1245, 'final', '25000'),
(5, 1245, '1st', '20000'),
(6, 1245, '1st', '20000'),
(7, 1245, '1st', '20000'),
(8, 456, '1st', '20000'),
(9, 1234, 'final', '25000'),
(10, 1234, '1st', '20000'),
(11, 456, '1st', '20000'),
(12, 456, '1st', '20000'),
(13, 1005, '1st', '20000'),
(14, 456, '1st', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `fees_data`
--

CREATE TABLE IF NOT EXISTS `fees_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `term` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `fees_data`
--

INSERT INTO `fees_data` (`id`, `amount`, `term`) VALUES
(1, 20000, '3rd'),
(2, 20000, '1st'),
(3, 25000, 'final');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `fees` varchar(100) NOT NULL,
  `food` varchar(250) NOT NULL,
  `school` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`hid`, `fees`, `food`, `school`, `image`) VALUES
(5, '3500', 'dwfe\r\nr\r\ngr\r\ng\r\neg\r\net\r\ng', 'IHRD', '/media/Annotation%202019-11-27%20144037_obERRtt.jpg'),
(6, '600', 'dosa,appam,rice,biriyani', 'Girijyothi Public School Idukki', '/media/g4.jpg'),
(7, '2000', 'dosa', 'Fathima matha school', '/media/Karthi_nhfLyqO.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `dis` varchar(50) NOT NULL,
  `application` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `name`, `dis`, `application`, `date`, `enddate`) VALUES
(1, 'craft trainer', 'no', '/media/hostel_SLolJQy_GNl1UIL.jpg', '2021-02-15', '2021-02-20'),
(2, 'speech therapist', 'speaking skills', '/media/blog3.jpg', '2022-05-17', '2022-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`uname`, `password`, `type`) VALUES
('shyam', 'sa', 'admin'),
('anjana', 'anjana', 'admin'),
('anju@gmail.com', '87654', 'staff'),
('Fr.Biju vittukallul', '1234', 'admin'),
('Fr.Biju vittukallul', '1234', 'admin'),
('Fr.Biju vittukallul', '1234', 'admin'),
('anu@gmail.com', 'anu', 'staff'),
('george', '123', 'admin'),
('ramu', 'ramu123', 'Sponser'),
('ramu', 'ramu123', 'Sponser'),
('raji@gmail.com', 'raji123', 'staff'),
('shuk', '12345', 'admin'),
('shana@gmail.com', 'shahna123', 'staff'),
('akhil@gmail.com', '9836474267', 'user'),
('gsfgh@gmail.com', '1234567890', 'user'),
('karthikbabu3026@gmail.com', '8921399746', 'user'),
('joyal@gmail.com', '1234567689', 'user'),
('babu', '123', 'Sponser'),
('rajan', 'raj', 'admin'),
('karthi', '1234', 'Sponser'),
('pt@gmail.com', '123', 'staff'),
('Karthik babu', '1234', 'admin'),
('ftma', '1234', 'Sponser'),
('karthikbabu3026@gmail.com', '12345', 'staff'),
('karthikbabu3026@gmail.com', '08921399746', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `marklist`
--

CREATE TABLE IF NOT EXISTS `marklist` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `adno` int(11) NOT NULL,
  `exam` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `marklist`
--

INSERT INTO `marklist` (`mid`, `adno`, `exam`, `image`) VALUES
(3, 1245, 'Quaterly', '/media/setup%20url%20direct%3Bly.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `marklist_staff`
--

CREATE TABLE IF NOT EXISTS `marklist_staff` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `adno` int(11) NOT NULL,
  `examdate` date NOT NULL,
  `exam` varchar(100) NOT NULL,
  `maths` int(50) NOT NULL,
  `english` int(50) NOT NULL,
  `malayalam` int(50) NOT NULL,
  `social` int(50) NOT NULL,
  `hindi` int(50) NOT NULL,
  `science` int(50) NOT NULL,
  `totalmarks` int(50) NOT NULL,
  `grade` varchar(50) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `marklist_staff`
--

INSERT INTO `marklist_staff` (`mid`, `adno`, `examdate`, `exam`, `maths`, `english`, `malayalam`, `social`, `hindi`, `science`, `totalmarks`, `grade`) VALUES
(1, 12, '0000-00-00', 'annual', 34, 35, 45, 35, 35, 35, 225, '0'),
(2, 12, '0000-00-00', 'annual', 34, 35, 45, 35, 35, 35, 225, '0'),
(3, 1245, '2019-12-12', 'Quarter', 45, 43, 43, 42, 35, 35, 225, '0'),
(4, 1245, '2019-12-17', 'half exam', 15, 8, 20, 11, 55, 62, 171, 'Fail'),
(6, 12, '2019-12-05', 'annual', 45, 43, 45, 35, 35, 50, 253, 'A Plus'),
(7, 10, '2020-01-23', 'annual', 35, 38, 39, 40, 44, 48, 244, 'A Plus');

-- --------------------------------------------------------

--
-- Table structure for table `newsevents`
--

CREATE TABLE IF NOT EXISTS `newsevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `discrib` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `newsevents`
--

INSERT INTO `newsevents` (`id`, `name`, `discrib`, `image`, `date`, `enddate`) VALUES
(1, 'Anual', 'differnt dance programs', '/media/g4_fO4trlr.jpg', '2021-02-15', '2021-02-19'),
(2, 'Anual', 'differnt dance programs', '/media/g4_X0huTdT.jpg', '2021-02-15', '2021-02-19'),
(3, 'Anual', 'differnt dance programs', '/media/g4_ic5lGRy.jpg', '2021-02-15', '2021-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`sid`, `sname`, `address`, `email`, `type`, `phno`, `image`) VALUES
(1, 'IHRD', 'Ihrd kuttikanam', 'ihrd@ktknm.com', 'CBSE', '9874563210', ''),
(2, 'ST mathews', 'wallardie', 'st@mathews.com', 'CBSE', '7896541230', '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `discrib` varchar(50) NOT NULL,
  `app` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `type`, `discrib`, `app`, `date`, `enddate`) VALUES
(1, 'pension', 'financial support', 'gfhfgyh', '/media/achiev_UopDGcD.jpg', '2021-02-15', '2021-02-02'),
(2, 'pension', 'financial support', 'gfhfgyh', '/media/achiev_jD0mFH2.jpg', '2021-02-15', '2021-02-02'),
(3, 'study materials', 'educational support', 'no', '/media/g2_LCQ8VEM.jpg', '2021-02-15', '2021-02-05'),
(4, 'nnn', 'nnn', 'nnn', '/media/2_w2VCGCA_p4RPnVs.jpg', '2021-02-15', '2021-02-18'),
(5, 'nnn', 'nnn', 'nnn', '/media/2_w2VCGCA_xHexKzX.jpg', '2021-02-15', '2021-02-18'),
(6, 'mjknjk', 'jknjkn', 'jknjn', '/media/achiev_2GdOPfM_b8VxJly.jpg', '2021-02-15', '2021-02-05'),
(7, 'speech therapist', 'gvzvdvsccccxxx', 'zazz', '/media/pic.jpg', '2022-11-18', '2022-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `sponserform`
--

CREATE TABLE IF NOT EXISTS `sponserform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `dis` varchar(50) NOT NULL,
  `form` varchar(500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sponserform`
--

INSERT INTO `sponserform` (`id`, `name`, `dis`, `form`, `date`) VALUES
(1, 'reg form', 'for registration', '/media/achiev_tvBSje0_hUMwn3L.jpg', '2021-02-15');

-- --------------------------------------------------------

--
-- Table structure for table `sponser_reg`
--

CREATE TABLE IF NOT EXISTS `sponser_reg` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `organization` varchar(150) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `district` varchar(50) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `sponser_reg`
--

INSERT INTO `sponser_reg` (`pid`, `pname`, `phno`, `organization`, `uname`, `password`, `image`, `district`) VALUES
(12, 'ramu', '9984575858', 'MY', 'ramu', 'ramu123', '/media/Screenshot%20(1).png', 'Ernakulam'),
(13, 'ramu', '9984575858', 'MY', 'ramu', 'ramu123', '/media/Screenshot%20(1)_LGBp7hv.png', 'Ernakulam'),
(14, 'Babu TR', '9447189603', 'MKM', 'babu', '123', '/media/1.jpg', 'Ernakulam'),
(15, 'Karthik babu', '8921399746', 'Fathima matha school', 'karthi', '1234', '/media/bg1.jpg', 'Ernakulam'),
(16, 'Karthik babu', '9605593686', 'Fathima matha school', 'ftma', '1234', '/media/Karthi.jpg', 'Idukki');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `name`, `age`, `gender`, `course`, `email`, `phno`, `address`, `school`, `password`) VALUES
(1, 'sanju', '35', 'Male', 'cs', 'sanju@gmail.com', '741258963', '10\r\nidukki', 'IHRD', ''),
(4, 'anju', '24', 'Female', 'english', 'anju@gmail.com', '978684543', 'wertyuio\r\nsdfghj\r\nxcvb', 'IHRD', '87654'),
(5, 'Anu', '24', 'Female', 'english', 'anu@gmail.com', '9786845860', 'koonammackal(H)\r\nrose villa\r\nernakulam', 'Girijyothi Public School Idukki', 'anu'),
(6, 'raji', '35', 'Female', 'english', 'raji@gmail.com', '9845367514', 'raji villa', 'IHRD', 'raji123'),
(7, 'shahna', '26', 'Female', 'malayalam', 'shana@gmail.com', '8796543215', 'shahna villa', 'by', 'shahna123'),
(8, 'pt', '24', 'Male', 'english', 'pt@gmail.com', '8921377946', 'Thachethukandathil(H) pazhoor east piravom p.o', 'IHRD', '123'),
(9, 'Karthik babu', '23', 'Male', 'english', 'karthikbabu3026@gmail.com', '9605593686', 'Thachethukandathil house pazhoor\r\npazhoor', 'Fathima matha school', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `clas` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phno` varchar(50) NOT NULL,
  `adno` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `school` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `name`, `clas`, `age`, `gender`, `parent`, `email`, `phno`, `adno`, `address`, `school`) VALUES
(2, 'sonu', '5', '10', 'Female', 'asdfghj', 'anju@gmail.com', '2345678', '456', 'oiuhgfd\r\nfghjk\r\nsdfghj', 'Girijyothi Public School Idukki'),
(3, 'Ani Paul', '5,A', '2020-01-16', 'Female', 'Paul Joseph', 'pauljoseph@gmail.com', '9080697800', '1234', 'Kallakunnel(H)\r\nPala\r\nThrissur', 'Girijyothi Public School Idukki'),
(4, 'dfghjk', '5', '2020-01-22', 'Male', 'zxc', 'sdfghjk', '3456789', '23453', 'sdfghj', 'IHRD'),
(5, 'dfghjk', '5', '2020-01-22', 'Male', 'zxc', 'sdfghjk', '3456789', '23453', 'sdfghj', 'IHRD'),
(6, 'dfghjk', '5', '2020-01-22', 'Male', 'zxc', 'sdfghjk', '3456789', '23453', 'sdfghj', 'IHRD'),
(7, 'oiuytre', '5', '2020-01-17', 'Male', 'swkjhgf', '87654', '09876543', '76', 'kjhgfds\r\nlkjhgf', 'IHRD'),
(8, 'anu', '5', '2009-02-07', 'Female', 'raju', 'anu@gmail.com', '987643578', '1001', 'anu home', 'IHRD'),
(9, 'ahkil', '8', '2000-02-01', 'Male', 'arjun', 'akhil@gmail.com', '9836474267', '1005', 'akhil villa', 'by'),
(10, 'hihi', '9', '2021-02-12', 'Male', 'haha', 'gsfgh', '1234567890', '1008', 'hahih', 'Girijyothi Public School Idukki'),
(11, 'hihi', '9', '2021-02-12', 'Male', 'haha', 'gsfgh@gmail.com', '1234567890', '1008', 'hahih', 'Girijyothi Public School Idukki'),
(12, 'hihi', '9', '2021-02-12', 'Male', 'haha', 'gsfgh@gmail.com', '1234567890', '1008', 'hahih', 'Girijyothi Public School Idukki'),
(13, 'meenu', '5', '2021-01-01', 'Female', 'm', 'meenu@gmail.com', '7907454292', '12584', 'kripa', 'IHRD'),
(14, 'meenu', '5', '2021-01-01', 'Female', 'm', 'meenu@gmail.com', '7907454292', '12584', 'kripa', 'IHRD'),
(15, 'Karthik Babu', '8', '2004-05-11', 'Male', 'Babu TR', 'karthikbabu3026@gmail.com', '8921399746', '123', 'Thachethukandathil(H) piravom p.o pazhoor', 'IHRD'),
(16, 'Joyal Aji', '8', '2004-06-16', 'Male', 'Aji', 'joyal@gmail.com', '1234567689', '234', 'madathiparambil (H)', 'IHRD'),
(17, 'sheena babu', '12', '2003-06-04', 'Female', 'Dhanalakshmi', 'sheena@gmail.com', '8921399746', '789', 'Athira (h) vadakenadayil kottayam', 'MKM H.S.S piravom'),
(18, 'ss', '10', '2022-05-09', 'Male', 'pp', 'ss@gmail.com', '8921399746', '1234', 'Thachethukandathil(H) pazhoor east piravom p.o', 'IHRD'),
(19, 'Karthik babu', '10', '2022-11-03', 'Male', 'babu', 'karthikbabu3026@gmail.com', '08921399746', '456', 'Thachethukandathil(H) pazhoor east piravom p.o', 'MKM H.S.S piravom');

-- --------------------------------------------------------

--
-- Table structure for table `student_travel`
--

CREATE TABLE IF NOT EXISTS `student_travel` (
  `adno` int(100) NOT NULL,
  `busno` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `clas` int(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `fees` int(50) NOT NULL,
  `phno` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_travel`
--

INSERT INTO `student_travel` (`adno`, `busno`, `name`, `parent`, `address`, `clas`, `location`, `fees`, `phno`) VALUES
(1246, 5, 'sonu', 'Paul Joseph', 'kijKIUJYHGuhygfdsa\r\nKJHBGF', 5, 'cochin', 600, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE IF NOT EXISTS `training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `dis` varchar(50) NOT NULL,
  `video` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `enddate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id`, `subject`, `dis`, `video`, `date`, `enddate`) VALUES
(1, 'speech therapy', 'no', '/media/g4_RPUTNPE.jpg', '2021-02-15', '2021-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE IF NOT EXISTS `travel` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bno` varchar(50) NOT NULL,
  `route` varchar(100) NOT NULL,
  `btype` varchar(50) NOT NULL,
  `image` varchar(150) NOT NULL,
  `school` varchar(50) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`bid`, `bno`, `route`, `btype`, `image`, `school`) VALUES
(1, 'a1', 'klr\r\nedply\r\nalva', 'Ac', '/media/Annotation%202019-10-01%20210400_7wPCLYv.jpg', 'IHRD'),
(2, '2', 'thodupuzha', 'Ac', '/media/2.jpg', 'Girijyothi Public School Idukki'),
(3, '5', 'painav,cherthony,thadianpadu,karimpan,upputhope', 'Both', '/media/giri_uMiBg5m.jpg', 'Girijyothi Public School Idukki'),
(4, '5', 'trissur to thozhiyur', 'Ac', '/media/travel_fwNzme4.png', 'IHRD'),
(5, '4', 'chavakkad', 'Ac', '/media/travel_Z8AAzQp.png', 'by');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `Video` varchar(500) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`, `type`, `Video`, `date`) VALUES
(1, 'motivation', 'edu', '/media/2_w2VCGCA.jpg', '2021-02-15'),
(2, 'speech therappy', 'fhgc', '/media/hostel_fHOr79E.jpg', '2021-02-15');
