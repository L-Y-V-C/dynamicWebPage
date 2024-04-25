-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 06:27 AM
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
-- Database: `dynwebpage`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(2) NOT NULL,
  `userid` int(2) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `career` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `userid`, `institution`, `career`) VALUES
(1, 44, 'ucsp', 'computacion'),
(2, 44, 'unsa', 'ing. perforaciones'),
(3, 45, 'iestp', 'secretariado ejecutivo');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(2) NOT NULL,
  `userid` int(2) NOT NULL,
  `organization` text NOT NULL,
  `job` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `userid`, `organization`, `job`) VALUES
(3, 44, 'Gloria', 'asistente'),
(4, 44, 'Abel SRL', 'supervisor'),
(5, 45, 'manrique SA', 'secretaria'),
(6, 45, 'bbva', 'cajera');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(2) NOT NULL,
  `userid` int(2) NOT NULL,
  `language` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `userid`, `language`, `level`) VALUES
(1, 44, 'aleman', 'fluido'),
(2, 44, 'ingles', 'avanzado'),
(3, 45, 'portugues', 'basico'),
(4, 45, 'ingles', 'medio');

-- --------------------------------------------------------

--
-- Table structure for table `maindata`
--

CREATE TABLE `maindata` (
  `id` int(2) NOT NULL,
  `names` varchar(50) NOT NULL,
  `surnames` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maindata`
--

INSERT INTO `maindata` (`id`, `names`, `surnames`, `email`, `phone`) VALUES
(44, 'Luigi Yamil', 'Valenzuela Calderon', 'lyvc@gmail.com', '999999999'),
(45, 'Anani', 'Luque', 'aluq@hotmail.com', '912345678');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(2) NOT NULL,
  `userid` int(2) NOT NULL,
  `skill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `userid`, `skill`) VALUES
(3, 44, 'Trabajo en equipo'),
(4, 44, 'Responsable'),
(5, 45, 'adaptabilidad'),
(6, 45, 'actitud positiva'),
(7, 45, 'dedicacion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint2` (`userid`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint1` (`userid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint3` (`userid`);

--
-- Indexes for table `maindata`
--
ALTER TABLE `maindata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `constraint4` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `maindata`
--
ALTER TABLE `maindata`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `constraint2` FOREIGN KEY (`userid`) REFERENCES `maindata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `constraint1` FOREIGN KEY (`userid`) REFERENCES `maindata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `constraint3` FOREIGN KEY (`userid`) REFERENCES `maindata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `constraint4` FOREIGN KEY (`userid`) REFERENCES `maindata` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
