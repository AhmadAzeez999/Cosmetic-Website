-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 08:09 AM
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
-- Database: `maindatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Code` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `Name`, `Code`, `Price`, `Image`) VALUES
(1, 'Body cream 1', 'bodycream01', 10, 'css_and_images\\images\\Product 1.jpg'),
(2, 'Body cream 2', 'bodycream02', 12, 'css_and_images\\images\\Product 2.jpg'),
(3, 'Body cream 3', 'bodycream03', 20, 'css_and_images\\images\\Product 3.jpg'),
(4, 'Body cream 4', 'bodycream04', 25, 'css_and_images\\images\\Product 4.jpg'),
(5, 'Body cream 5', 'bodycream05', 15, 'css_and_images\\images\\Product 5.jpg'),
(6, 'Body cream 6', 'bodycream06', 13, 'css_and_images\\images\\Product 6.webp'),
(7, 'Body cream 7', 'bodycream07', 17, 'css_and_images\\images\\Product 7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `password_hash`) VALUES
(1, 'Dave', 'davey@gmail.com', '$2y$10$BKTN.qIjaCOUYko7OmVD9eulrV9GyKiJYf9pX9QA5IrRGuRMVkYm6'),
(11, 'Ahmad Azeez', 'azeeztriplea10@gmail.com', '$2y$10$kjB.3f7pOYNLpRAPaRH6oeTnGyyt0fG3bbLAC59dbaijad7kj1t.u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Code` (`Code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
