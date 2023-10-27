-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 05:43 PM
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
-- Database: `atn_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Lego'),
(2, 'Rubik');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `phone`) VALUES
(1, 'Dinh Khoi', 'Ca Mau', 256148753),
(2, 'Nhut Truong', 'Ben Tre', 444777888);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` varchar(30) NOT NULL,
  `birthday` date NOT NULL,
  `phone` int(10) NOT NULL,
  `shop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `account`, `pass`, `gender`, `address`, `birthday`, `phone`, `shop_id`) VALUES
(1, 'Dinh Dinh Khoi', 'dinhkhoi15', 'khoi123', 0, 'Ca Mau', '2003-01-15', 913444222, 1),
(2, 'Pham Vo Nhut Truong', 'nhuttruong03', 'nhuttruong03', 0, 'Ben Tre', '2003-02-27', 1234567890, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `date` date NOT NULL,
  `pro_img` varchar(100) NOT NULL,
  `origin_price` decimal(10,0) NOT NULL,
  `sale_price` decimal(10,0) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_cat`, `date`, `pro_img`, `origin_price`, `sale_price`, `supplier_id`, `employee_id`, `s_id`) VALUES
(11, 'The Ninja Lloy', 1, '2023-10-01', 'Lloy.jpg', 300000, 350000, 1, 2, 2),
(12, 'The Ninja Guy', 1, '2023-10-01', 'Guy.jpg', 200000, 250000, 1, 2, 1),
(13, 'The Ninja Cole', 1, '2023-10-09', 'cole.jpg', 200000, 250000, 1, 2, 4),
(14, 'The Ninja Zane', 1, '2023-10-06', 'Zane.jpg', 300000, 350000, 1, 1, 2),
(15, 'Classic 3x3 Rubik', 2, '2023-10-12', 'rubik3x3.jpg', 200000, 250000, 2, 1, 2),
(16, 'Megamix Rubik', 2, '2023-10-10', 'megaminx-300x278.jpg', 200000, 250000, 2, 2, 2),
(17, 'Skewb Rubik', 2, '2023-10-11', 'Skewb.jpg', 200000, 250000, 2, 1, 1),
(18, 'The Rubik 2x2x2', 2, '2023-10-11', '2x2x2-rubik.jpg', 300000, 350000, 2, 1, 3),
(21, 'The update name', 1, '2023-10-01', 'Kai.jpg', 200000, 250000, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `city`, `address`) VALUES
(1, 'ATNCanTho', 'Can Tho', 'Ninh Kieu'),
(2, 'ATNSaiGon', 'Sai Gon', 'Thu Duc'),
(3, 'ATNCaMau', 'Ca Mau', 'Dam Doi'),
(4, 'ATNBenTre', 'Ben Tre', 'Thanh Phu');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `address`) VALUES
(1, 'Lego Industry', 'Ha Noi'),
(2, 'Rubik Company', 'Sai Gon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `shop_fk` (`shop_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `employee_fk` (`employee_id`),
  ADD KEY `cat_fk` (`product_cat`),
  ADD KEY `sup_fk` (`supplier_id`),
  ADD KEY `sid_fk` (`s_id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `shop_fk` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`shop_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `cat_fk` FOREIGN KEY (`product_cat`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `employee_fk` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `sid_fk` FOREIGN KEY (`s_id`) REFERENCES `shop` (`shop_id`),
  ADD CONSTRAINT `sup_fk` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
