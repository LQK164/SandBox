-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2022 at 11:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Mobile', 1),
(2, 'Tablet', 1),
(3, 'Laptop', 1),
(4, 'Tv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'John', 'john@gmail.com', '9876543210', 'Testing', '2021-11-05 09:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 4, 'LG LED Smart TV (55 inch)', 75000, 57990, 5, '973338751_LG-139cm.jpg', '139 cm / Ultra HD (4K) / 55%OFF', '', '', '', '', 1),
(2, 4, 'LG LED Smart TV (43 inch)', 40990, 33990, 5, '960410002_LG-108cm.jpg', '108 cm / Full HD / 17%OFF', '', '', '', '', 1),
(3, 4, 'LG LED Smart TV (32 inch)', 21990, 17999, 5, '303148021_LG-80.jpg', '80 cm / HD Ready / 18%OFF', '', '', '', '', 1),
(4, 4, 'Mi 4A (40 inch)', 29999, 24999, 5, '513512761_Mi-4A.jpg', '100 cm / Full HD LED / 16%OFF', '', '', '', '', 1),
(5, 4, 'SAMSUNG Crystal (43 inch)', 52900, 38990, 5, '579341039_SAMSUNG-Crystal-4K-108cm.jpg', '108 cm / Ultra HD (4K) / 26%OFF', '', '', '', '', 1),
(6, 4, 'SAMSUNG Series 7 (75 inch)', 394900, 239999, 5, '748913576_SAMSUNG-Series7.jpg', '189 cm / Ultra HD (4K) / 39%OFF', '', '', '', '', 1),
(7, 4, 'SONY BRAVIA (55 inch)', 94900, 69999, 5, '669927559_SONY-BRAVIA-X7400H.jpg', '138.8 cm / Ultra HD (4K) / 26%OFF', '', '', '', '', 1),
(8, 4, 'SONY Series (49 inch)', 69900, 49999, 5, '618266821_SONY-W800G-Series.jpg', '123.2 cm / Full HD / 28%OFF', '', '', '', '', 1),
(9, 2, 'Lenovo Tab M10', 13900, 10493, 5, '343717260_Lenovo-Tab-M10.jpg', '2 GB RAM / 32 GB ROM / Slate Black / 24%OFF', '', '', '', '', 1),
(10, 2, 'Lenovo Tab P11 Pro', 60000, 44990, 5, '794584676_Lenovo-Tab-P11-Pro.jpg', '6 GB RAM / 128 GB ROM / Slate Grey / 25%OFF', '', '', '', '', 1),
(11, 2, 'SAMSUNG Galaxy Tab A7', 21999, 18999, 5, '492872912_SAMSUNG-Galaxy-TabA7.jpg', '3 GB RAM / 64 GB ROM / Dark Grey / 13%OFF', '', '', '', '', 1),
(12, 2, 'SAMSUNG Galaxy Tab S7', 76999, 71999, 5, '342801990_SAMSUNG-Galaxy-TabS7.jpg', '6 GB RAM / 128 GB ROM / Mystic Black / 6%OFF', '', '', '', '', 1),
(13, 3, 'HP Pavilion', 77141, 66990, 5, '914704118_HP-Pavilion.jpg', 'Core i5 11th Gen\r\n(16 GB/512 GB SSD/Natural Silver) \r\n13%OFF', '', '', '', '', 1),
(14, 3, 'HP 15s', 48756, 46990, 5, '852702399_HP-15s.jpg', 'Core i3 11th Gen\r\n(8 GB/512 GB SSD/Windows 10 Home/Jet Black)\r\n3%OFF', '', '', '', '', 1),
(15, 3, 'HP 14s', 45892, 40000, 5, '225993337_HP-14s.jpg', 'Core i3 11th Gen\r\n(8 GB/256 GB SSD/Windows 10 Home/Natural Silver)\r\n12% OFF', '', '', '', '', 1),
(16, 3, 'DELL Inspiron Ryzen', 49551, 39990, 5, '180164372_DELL-Inspiron-Ryzen.jpg', '3 Dual Core\r\n(8 GB/1 TB HDD/Windows 10/Softmint)\r\n19% OFF', '', '', '', '', 1),
(17, 3, 'DELL G15', 78324, 69690, 5, '348740139_DELL-G15.jpg', 'Core i5 10th Gen\r\n(8 GB/512 GB SSD/Windows 10/4 GB Graphics/Dark Shadow Grey)\r\n11% OFF', '', '', '', '', 1),
(18, 3, 'APPLE MacBook Pro M1', 122900, 112990, 5, '657014417_APPLE-MacBook-Pro-M1.jpg', 'Core i3 11th Gen\r\n(8 GB/256 GB SSD/Windows 10 Home/Natural Silver)\r\n8% OFF', '', '', '', '', 1),
(19, 3, 'APPLE MacBook Air M1', 92900, 88990, 5, '800395565_APPLE-MacBook-Air-M1.jpg', '8-core CPU and 7-core GPU\r\n(8 GB/256 GB SSD/Mac OS Big Sur/Space Grey)\r\n4% OFF', '', '', '', '', 1),
(20, 3, 'APPLE MacBook Pro', 199900, 179990, 5, '747252516_APPLE-MacBook-Pro.jpg', 'Core i7 9th Gen\r\n(16 GB/512 GB SSD/Mac OS Catalina/4 GB Graphics/Silver)\r\n9% OFF', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Shazia', 'shazia', 'shazia@gmail.com', '9988776655', '2021-11-05 09:11:01'),
(2, 'Zoya', 'zoya', 'zoya@gmail.com', '9112233445', '2021-11-05 09:12:04'),
(3, 'Mohd Sakib', 'mohdsakib', 'mohdsakib@gmail.com', '9999988888', '2021-11-05 09:13:22'),
(4, 'Mudassir', 'mudassir', 'mudassir@gmail.com', '8888899999', '2021-11-05 09:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(4, 1, 7, '2021-11-06 07:35:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
