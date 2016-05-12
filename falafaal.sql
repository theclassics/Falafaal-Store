-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2016 at 09:14 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `falafaal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminpanel`
--

CREATE TABLE `adminpanel` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminpanel`
--

INSERT INTO `adminpanel` (`id`, `username`, `password`, `email`, `date`) VALUES
(2, 'admin', 'admin', 'admin@gmail.com', '2016-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `fname` varchar(64) NOT NULL,
  `lname` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `fname`, `lname`, `email`, `username`, `password`) VALUES
(2, 'dhiraj', 'raj', 'dhiraj@gmail.com', 'dhiraj', 'raj'),
(8, 'satish', 'chaudhary', 'satish4link@gmail.com', 'satishc132', 'aaaaa'),
(10, 'aman', 'chaudhary', 'aman@gmail.com', 'aman1', 'aman'),
(11, 'william', 'lamichanne', 'asjgdh', 'william', 'william');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `prod_id`, `cust_name`, `prod_name`, `price`, `qty`, `total`) VALUES
(6, 16, 'aman1', 'Fish', 3, 6, 18),
(7, 9, 'aman1', 'Product 4', 2, 4, 8),
(8, 15, 'aman1', 'Blackforest', 5, 4, 20),
(9, 15, 'satishc132', 'Blackforest', 5, 5, 25),
(10, 9, 'satishc132', 'Product 4', 2, 6, 12),
(11, 9, 'aman1', 'Product 4', 2, 5, 10),
(12, 13, 'dhiraj', 'Chicken Wings', 4, 5, 20),
(13, 13, 'dhiraj', 'Chicken Wings', 4, 5, 20),
(14, 16, 'william', 'Fish', 3, 1, 3),
(15, 16, 'william', 'Fish', 3, 1, 3),
(16, 16, 'william', 'Fish', 3, 1, 3),
(17, 16, 'william', 'Fish', 3, 1, 3),
(18, 16, 'william', 'Fish', 3, 1, 3),
(19, 16, 'william', 'Fish', 3, 1, 3),
(20, 16, 'william', 'Fish', 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payment_gross` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_rate` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `shop_id`, `product_name`, `product_rate`, `product_image`, `description`) VALUES
(16, 12, 'Fish', 3, 'fishmonger.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet. Nam lacinia semper mi sed bibendum. Fusce scelerisque fermentum aliquet. Nulla nec dapibus dui. Nam eleifend lectus vitae tincidunt '),
(9, 13, 'Product 4', 2, 'bakery.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet. Nam lacinia semper mi sed bibendum. Fusce scelerisque fermentum aliquet. Nulla nec dapibus dui. Nam eleifend lectus vitae tincidunt '),
(15, 13, 'Blackforest', 5, 'blackforest.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet. Nam lacinia semper mi sed bibendum. Fusce scelerisque fermentum aliquet. Nulla nec dapibus dui. Nam eleifend lectus vitae tincidunt '),
(13, 10, 'Chicken Wings', 4, 'chickenwings.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet. Nam lacinia semper mi sed bibendum. Fusce scelerisque fermentum aliquet. Nulla nec dapibus dui. Nam eleifend lectus vitae tincidunt '),
(14, 11, 'Cauliflower', 2, 'cauli.jpg', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet. Nam lacinia semper mi sed bibendum. Fusce scelerisque fermentum aliquet. Nulla nec dapibus dui. Nam eleifend lectus vitae tincidunt ');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `traders_id` int(11) NOT NULL,
  `shop_name` varchar(255) NOT NULL,
  `shop_image` varchar(255) NOT NULL,
  `shop_status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `traders_id`, `shop_name`, `shop_image`, `shop_status`) VALUES
(11, 3, 'Greengrocer', 'greengrocer.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet.'),
(10, 4, 'Buchers Shop', 'buchershop.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet.'),
(12, 2, 'Fishmonger', 'fishmonger.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet.'),
(13, 1, 'Bakery', 'bakery.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet.'),
(14, 4, 'Delicatessen', 'delicatessen.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum elementum odio vel sem dignissim, nec porta purus aliquet.');

-- --------------------------------------------------------

--
-- Table structure for table `traders`
--

CREATE TABLE `traders` (
  `traders_id` int(11) NOT NULL,
  `full_name` varchar(128) NOT NULL,
  `t_username` varchar(32) NOT NULL,
  `t_password` varchar(32) NOT NULL,
  `t_email` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`traders_id`, `full_name`, `t_username`, `t_password`, `t_email`) VALUES
(1, 'Satish Chaudhary', 'satish4link', 'traders', 'satish4link@gmail.com'),
(2, 'Kujolhang Limbu', 'limbu123', 'traders', 'kujolhang@gmail.com'),
(3, 'Tapish Lochan Adhikari', 'lochan123', 'traders', 'tapish@gmail.com'),
(4, 'William Riwaj Lamichhane', 'riwaj123', 'traders', 'william@gmail.com'),
(5, 'Sagar Kafle', 'Kafle123', 'traders', 'sagar@gmail.com'),
(6, 'Amit Gurung', 'Gurung123', 'traders', 'amitgurung@gmail.com'),
(7, 'Ajhil Joshi', 'joshi123', 'traders', 'ajhiljoshi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminpanel`
--
ALTER TABLE `adminpanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `traders`
--
ALTER TABLE `traders`
  ADD PRIMARY KEY (`traders_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminpanel`
--
ALTER TABLE `adminpanel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `traders`
--
ALTER TABLE `traders`
  MODIFY `traders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
