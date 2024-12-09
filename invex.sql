-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesinv`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `productID` int(50) NOT NULL,
  `supplierID` int(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productType` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `quantity` int(50) NOT NULL,
  `maxQuantity` int(20) NOT NULL,
  `unitCost` decimal(10,2) NOT NULL,
  `sellingPrice` decimal(10,2) NOT NULL,
  `supplierName` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  `dateUpdated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`productID`, `supplierID`, `productName`, `productType`, `brand`, `model`, `quantity`, `maxQuantity`, `unitCost`, `sellingPrice`, `supplierName`, `status`, `dateCreated`, `dateUpdated`) VALUES
(1, 1, 'HP Victus 16', 'Laptops', 'HP', '16-R0085TX', 5, 10, 5500.50, 6999.99, 'Skylar White', 'Defective', '2024-11-28 11:27:26.207024', '2024-12-09 17:20:51.209011'),
(2, 1, 'Lenovo ThinkPad X260', 'Laptops', 'Lenovo', 'ThinkPad X260', 33, 80, 5000.23, 8974.00, 'Skylar White', 'Functional', '2024-11-28 11:35:05.916901', '2024-12-09 17:12:50.891977'),
(3, 1, 'Flash Drive 16gb', 'Flash Drives', 'Transcend', '16gb Flash Drive', 49, 100, 100.50, 139.80, 'Skylar White', 'Functional', '2024-11-28 11:43:04.907785', '2024-12-09 17:12:50.891977'),
(4, 1, 'Rakk CPU case v2', 'Cpu Case', 'Rakk', '123ab-X2', 0, 15, 1500.00, 1899.00, 'Skylar White', 'Functional', '2024-12-08 01:30:53.804450', '2024-12-09 17:12:50.891977'),
(5, 2, 'Cooler Max', 'Fans', 'Corsair', 'X2-2', 8, 20, 400.00, 550.50, 'Mang Jojoay', 'Functional', '2024-12-08 01:45:01.838130', '2024-12-09 15:08:14.293471'),
(6, 2, 'Flash Drive 32gb', 'Flash Drives', 'Transcend', '32gb Flash Drive', 47, 100, 150.00, 240.00, 'Mang Jojoay', 'Functional', '2024-12-09 10:34:31.499615', '2024-12-09 15:08:14.293471'),
(7, 2, 'Flash Drive 64gb', 'Flash Drives', 'Transcend', '32gb Flash Drive', 50, 100, 250.00, 300.00, 'Mang Jojoay', 'Functional', '2024-12-09 10:37:42.735278', '2024-12-09 15:08:14.293471'),
(8, 1, 'HP Victus 15', 'Laptops', 'HP', '16-R0085TX', 5, 10, 5500.50, 6999.99, 'Skylar White', 'Functional', '2024-12-09 10:39:42.118916', '2024-12-09 17:12:50.891977');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `SellingPrice` decimal(10,2) NOT NULL,
  `UnitCost` decimal(10,2) NOT NULL,
  `SoldDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `discountValue` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `amountReceived` decimal(10,2) NOT NULL,
  `changeAmount` decimal(10,2) NOT NULL,
  `OrderDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` int(50) NOT NULL,
  `supplierName` varchar(50) NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  `dateUpdated` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `supplierName`, `contactNo`, `email`, `dateCreated`, `dateUpdated`) VALUES
(1, 'Skylar White', '09261356790', 'skylarwhite@gmail.com', '2024-11-28 01:43:16.592783', '2024-12-09 17:12:50.881672'),
(2, 'Mang Jojoay', '09736482738', 'jonnyPrime@gmail.com', '2024-11-28 02:16:23.501678', '2024-12-09 15:08:14.291167'),
(3, 'Xiao', '09263947512', 'rocketMan56@gmail.com', '2024-11-28 02:18:06.558595', '2024-12-08 02:03:52.962141');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `userSalt` varchar(255) NOT NULL,
  `userType` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `middleName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `dateCreated` varchar(20) NOT NULL,
  `dateUpdated` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userPass`, `userSalt`, `userType`, `firstName`, `middleName`, `lastName`, `status`, `dateCreated`, `dateUpdated`) VALUES
(9, 'admin', 'd4Fp/apWjqPT0wQMJsbIYHEfIX8044xKojU6VWeFZsOJTgYe', 'd4Fp/apWjqPT0wQMJsbIYA==', 'admin', 'Elon', 'James', 'Musk', 'Active', '2024-11-28 01:15:32.', ''),
(10, 'Jessica4ever', 'XS3MFwdh/XsWTpcGQ+7PR7EKYXuw4RpYeaFpK3HJbSWH/jM9', 'XS3MFwdh/XsWTpcGQ+7PRw==', 'Sales', 'Jessica', 'Reed', 'Lee', 'Active', '2024-11-28 01:30:32.', '2024-11-28 16:24:32.'),
(11, 'Jeremy68', 'uK4bxJA+tcm0r1yE2PO9bEW0J1sDFRm75FGhcMbkx1Q/GwiT', 'uK4bxJA+tcm0r1yE2PO9bA==', 'Inventory', 'Jeremy', 'Nawala', 'Nasud', 'Active', '2024-11-28 01:32:10.', '2024-11-28 01:32:28.'),
(12, 'JamesReid23', 'gnxI1b5Mio7KtYs43rCW3Ri1ETONb8fyuWSlc1pLA8WtGzfv', 'gnxI1b5Mio7KtYs43rCW3Q==', 'Sales', 'James', 'Smith', 'Reid', 'Active', '2024-11-28 02:19:12.', '2024-12-02 08:09:48.'),
(13, 'DeanWinchester', 'uFsdCwyPHjZeOoafE3sGWSFpT3xjxzIwf25oSt8V0mCIKZOy', 'uFsdCwyPHjZeOoafE3sGWQ==', 'Sales', 'Dean', 'Campbell', 'Winchester', 'Active', '2024-12-07 02:37:35.', '2024-12-07 02:37:58.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `productID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `inventory` (`productID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
