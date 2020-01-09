-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 08:38 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `Admin_id` int(255) NOT NULL,
  `Admin_email` varchar(255) NOT NULL,
  `Admin_name` varchar(255) NOT NULL,
  `Admin_pwd` varchar(255) NOT NULL,
  `Admin_phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`Admin_id`, `Admin_email`, `Admin_name`, `Admin_pwd`, `Admin_phone`) VALUES
(101, 'oliv@gmail.com', 'ram', '123@ram', 1234567890),
(102, 'naughtyannu@yahoo.in', 'Sita', '123456', 98992104);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `Cust_id` int(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  `show_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`Cust_id`, `fname`, `lname`, `uname`, `Gender`, `password`, `email`, `contact`, `address`, `activated`, `show_time`) VALUES
(1, 'ram', 'sharma', 'ram', '', 'ram@123', 'ram@ram.com', '1234567890', 'B-55/115 abnc ', '1', '0000-00-00 00:00:00.00'),
(2, 'Hirdesh', 'hariya', 'Hariya', '', '420', 'hariya@gmail.com', '1234567890', 'ASDFGHJKL; mukandpur', '1', '0000-00-00 00:00:00.00'),
(3, 'prakash', 'last', 'Prakash', '', '123456', 'papu@papu.com', '12345678', 'wjerjfoewpo', '1', '0000-00-00 00:00:00.00'),
(4, 'Lakhan', 'Sing', 'Lakhan12', 'M', '123456', 'lakhan@lakhan.com', '2222211111', 'rohini D-110085', '1', '0000-00-00 00:00:00.00'),
(8, 'Lio', 'ethn', 'Lakhan12', 'M', '1234567', 'lio@gmail.com', '122112121212', 'rohini D-110085', '1', '0000-00-00 00:00:00.00'),
(9, 'Francis', 'ro', 'francis', 'M', '1234567', 'francis@gmail.com', '9899280447', 'DC', '1', '0000-00-00 00:00:00.00'),
(12, 'robin', 'cank', 'robi1', 'M', 'ronin1@', 'robin@gmail.com', '22449833', 'conika', '1', '0000-00-00 00:00:00.00'),
(15, 'hatway', 'Sing', 'roni12', 'M', 'yahoo.@#', 'hatwa@gmil.com', '70986655', 'alska', '1', '1490328563'),
(16, 'sumiit', 'uniyal', 'uniyal33', 'M', 'uniyal235', 'sumint@yahoo.in', '420929999', 'nathu pura', '1', '1490331598'),
(17, 'anjali', 'chauhan', 'anjali123', 'F', '123anjali', 'anjali@hotmail.com', '8285982350', 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '1', '1490384089');

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `Order_id` int(255) NOT NULL,
  `Pro_id` int(255) NOT NULL,
  `Cust_id` int(255) NOT NULL,
  `Cust_name` varchar(255) NOT NULL,
  `Pro_name` varchar(40) NOT NULL,
  `Pro_price` float(255,2) NOT NULL,
  `Order_time` varchar(255) NOT NULL,
  `Pro_quantity` int(100) NOT NULL,
  `Delivery_add` varchar(255) NOT NULL,
  `Order_status` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`Order_id`, `Pro_id`, `Cust_id`, `Cust_name`, `Pro_name`, `Pro_price`, `Order_time`, `Pro_quantity`, `Delivery_add`, `Order_status`) VALUES
(2001, 3001, 0, '1', 'Peracitamole', 20.00, '2017-03-22 07:05:31.00', 1, 'B-55/115 abnc', '1'),
(2002, 3003, 8, 'Lio', 'Mucinex oral', 35.00, '2017-03-24 15:51:23.00', 6600, 'rohini D-110085', ''),
(2003, 3004, 8, 'Lio', 'Levsin oral', 50.00, '2017-03-24 15:52:04.00', 4, 'rohini D-110085', ''),
(2007, 3004, 8, 'Lio', 'Levsin oral', 50.00, '2017-03-24 15:55:41.00', 333, 'rohini D-110085', '0'),
(2009, 3002, 8, 'Lio', 'Hipen_P', 30.00, '2017-03-24 16:01:10.00', 6, 'rohini D-110085', '0'),
(2010, 0, 9, 'Francis', '', 0.00, '2017-03-24 16:08:09.00', 0, 'DC', '0'),
(2011, 3003, 9, 'Francis', 'Mucinex oral', 35.00, '2017-03-24 16:08:17.00', 3, 'DC', '0'),
(2012, 3004, 9, 'Francis', 'Levsin oral', 50.00, '2017-03-24 16:10:40.00', 8, 'DC', '0'),
(2063, 3001, 2, 'Hirdesh', 'Peracitamole', 20.00, '2017-03-24 19:00:16', 1, 'ASDFGHJKL; mukandpur', '0'),
(2064, 3001, 2, 'Hirdesh', 'Peracitamole', 20.00, '2017-03-24 19:00:30', 1, 'ASDFGHJKL; mukandpur', '0'),
(2065, 3001, 2, 'Hirdesh', 'Peracitamole', 20.00, '2017-03-24 19:11:31', 1, 'ASDFGHJKL; mukandpur', '0'),
(2066, 3001, 0, '', 'Peracitamole', 20.00, '2017-03-24 20:31:15', 1, '', '0'),
(2067, 3001, 0, '', 'Peracitamole', 20.00, '2017-03-24 20:31:55', 1, '', '0'),
(2068, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:49:17', 0, 'rohini D-110085', '0'),
(2069, 3002, 8, 'Lio', 'Hipen_P', 30.00, '2017-03-25 04:49:28', 6, 'rohini D-110085', '0'),
(2070, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:49:50', 0, 'rohini D-110085', '0'),
(2071, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:50:01', 0, 'rohini D-110085', '0'),
(2072, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:52:05', 0, 'rohini D-110085', '0'),
(2073, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:54:28', 0, 'rohini D-110085', '0'),
(2074, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:54:36', 0, 'rohini D-110085', '0'),
(2075, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:55:35', 0, 'rohini D-110085', '0'),
(2076, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:55:38', 0, 'rohini D-110085', '0'),
(2077, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:55:39', 0, 'rohini D-110085', '0'),
(2078, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:56:09', 0, 'rohini D-110085', '0'),
(2079, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:56:48', 0, 'rohini D-110085', '0'),
(2080, 0, 8, 'Lio', '', 0.00, '2017-03-25 04:56:51', 0, 'rohini D-110085', '0'),
(2081, 0, 17, 'anjali', '', 0.00, '2017-03-25 13:26:01', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2082, 0, 17, 'anjali', '', 0.00, '2017-03-25 14:02:00', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2083, 0, 17, 'anjali', '', 0.00, '2017-03-25 14:54:10', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2084, 0, 17, 'anjali', '', 0.00, '2017-03-25 16:59:20', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2085, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:01:01', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2086, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:01:57', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2087, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:04:38', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2088, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:06:38', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2089, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:06:41', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2090, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:08:14', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2091, 0, 0, '', '', 0.00, '2017-03-25 17:11:38', 0, '', '0'),
(2092, 0, 17, 'anjali', '', 0.00, '2017-03-25 17:12:30', 0, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2093, 3001, 17, 'anjali', 'Peracitamole', 20.00, '2017-03-25 17:12:38', 8, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2094, 3001, 17, 'anjali', 'Peracitamole', 20.00, '2017-03-25 17:16:02', 8, 'A-2233/115 Uttam Nagar Near Gurudwara Delhi-110084', '0'),
(2095, 3003, 16, 'sumiit', 'Mucinex oral', 35.00, '2017-03-25 17:28:29', 99, 'nathu pura', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `Pro_id` int(255) NOT NULL,
  `Pro_name` varchar(255) NOT NULL,
  `Pro_category` varchar(200) NOT NULL,
  `Pro_price` float(255,2) NOT NULL,
  `Pro_company` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`Pro_id`, `Pro_name`, `Pro_category`, `Pro_price`, `Pro_company`, `img`) VALUES
(3001, 'Peracitamole', 'Feaver', 20.00, 'Dabar', 'images/1.jpg'),
(3002, 'Hipen_P', 'complement', 30.00, 'cipla', 'images/2.jpg'),
(3003, 'Mucinex oral', 'cold', 35.00, 'OTC', 'image/3.gif'),
(3004, 'Levsin oral', 'diarrhea', 50.00, 'ITC', 'image/4.gif'),
(3005, 'Lupin', 'cold', 49.00, 'Himalya', 'images/3004.gif'),
(3006, 'Citrazin', 'Pain', 45.00, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_report`
--

CREATE TABLE `sales_report` (
  `Time` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `sales_report`
--

INSERT INTO `sales_report` (`Time`, `Pro_id`, `Pro_name`, `Pro_quantity`, `Total_amount`) VALUES
('2017-03-24 07:32:48.80', 3002, 'Hipen_P', 5, 150.0),
('2017-03-24 10:08:39.03', 3003, 'Mucinex oral', 2, 70.0),
('2017-03-24 10:22:04.73', 3004, 'Levsin oral', 4, 200.0),
('2017-03-24 10:25:41.09', 3004, 'Levsin oral', 9, 450.0),
('2017-03-24 10:26:18.72', 3002, 'Hipen_P', 6, 180.0),
('2017-03-24 10:31:09.90', 3002, 'Hipen_P', 6, 180.0),
('2017-03-24 16:25:07.14', 3003, 'Mucinex oral', 11, 385.0),
('2017-03-24 16:25:12.54', 3003, 'Mucinex oral', 11, 385.0),
('2017-03-24 16:27:11.42', 3003, 'Mucinex oral', 11, 385.0),
('2017-03-24 16:29:50.99', 3003, 'Mucinex oral', 11, 385.0),
('2017-03-25 03:49:28.84', 3002, 'Hipen_P', 6, 180.0),
('2017-03-25 16:12:38.66', 3001, 'Peracitamole', 8, 160.0),
('2017-03-25 16:16:01.92', 3001, 'Peracitamole', 8, 160.0),
('2017-03-25 16:28:29.02', 3003, 'Mucinex oral', 99, 3465.0),
('2017-03-28 09:35:10.69', 3002, 'Hipen_P', 0, 100.0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`Cust_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`Pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `Admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `Cust_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `Order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2096;
--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `Pro_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3007;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
