-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 04, 2018 at 06:31 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram` int(11) NOT NULL,
  `ram_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `storage` int(11) NOT NULL,
  `storage_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_count` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(25) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`id`, `model`, `ram`, `ram_type`, `location`, `price`, `storage`, `storage_type`, `storage_count`, `currency`) VALUES
(2, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 119, 2000, 'SATA2', '8', '€'),
(3, 'HP DL380eG82x Intel Xeon E5-2420', 32, 'DDR3', 'AmsterdamAMS-01', 131.99, 2000, 'SATA2', '8', '€'),
(4, 'RH2288v32x Intel Xeon E5-2650V4', 128, 'DDR4', 'AmsterdamAMS-01', 227.99, 480, 'SSD', '4', '€'),
(5, 'RH2288v32x Intel Xeon E5-2620v4', 64, 'DDR4', 'AmsterdamAMS-01', 161.99, 2000, 'SATA2', '4', '€'),
(6, 'Dell R210-IIIntel Xeon E3-1230v2', 16, 'DDR3', 'AmsterdamAMS-01', 72.99, 2000, 'SATA2', '2', '€'),
(7, 'HP DL380pG82x Intel Xeon E5-2650', 64, 'DDR3', 'AmsterdamAMS-01', 179.99, 2000, 'SATA2', '8', '€'),
(8, 'IBM X36302x Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 106.99, 2000, 'SATA2', '8', '€'),
(9, 'HP DL120G7Intel G850', 4, 'DDR3', 'AmsterdamAMS-01', 39.99, 2000, 'SATA2', '4', '€'),
(10, 'Dell R730XD2x Intel Xeon E5-2667v4', 128, 'DDR4', 'AmsterdamAMS-01', 364.99, 120, 'SSD', '2', '€'),
(11, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'AmsterdamAMS-01', 364.99, 120, 'SSD', '2', '€'),
(12, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'AmsterdamAMS-01', 279.99, 480, 'SSD', '4', '€'),
(13, 'Dell R730XD2x Intel Xeon E5-2650v4', 128, 'DDR4', 'AmsterdamAMS-01', 286.99, 480, 'SSD', '4', '€'),
(14, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'AmsterdamAMS-01', 239.99, 480, 'SSD', '4', '€'),
(15, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 199.99, 120, 'SSD', '2', '€'),
(16, 'Dell R210-IIIntel G530', 4, 'DDR3', 'AmsterdamAMS-01', 35.99, 500, 'SATA2', '2', '€'),
(17, 'Dell R210-IIIntel Xeon E3-1220', 16, 'DDR3', 'AmsterdamAMS-01', 59.99, 2000, 'SATA2', '2', '€'),
(18, 'Dell R9304x Intel Xeon E7-4850v3', 64, 'DDR4', 'AmsterdamAMS-01', 1044.99, 120, 'SSD', '2', '€'),
(19, 'Dell R9304x Intel Xeon E7-4820v3', 64, 'DDR4', 'AmsterdamAMS-01', 756.99, 120, 'SSD', '2', '€'),
(20, 'Dell R9304x Intel Xeon E7-4830v3', 64, 'DDR4', 'AmsterdamAMS-01', 874.99, 120, 'SSD', '2', '€'),
(21, 'Dell R210-IIIntel Xeon E3-1270v2', 16, 'DDR3', 'AmsterdamAMS-01', 89.99, 1000, 'SATA2', '2', '€'),
(22, 'Supermicro SC846Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 199.99, 1000, 'SATA2', '24', '€'),
(23, 'HP DL120G91x Intel E5-1650v3', 64, 'DDR4', 'AmsterdamAMS-01', 154.99, 2000, 'SATA2', '4', '€'),
(24, 'HP DL120G7Intel Xeon E3-1230', 16, 'DDR3', 'AmsterdamAMS-01', 84.99, 1000, 'SATA2', '4', '€'),
(25, 'DL20G9Intel Xeon E3-1270v5', 16, 'DDR4', 'AmsterdamAMS-01', 112.99, 1000, 'SATA2', '2', '€'),
(26, 'HP DL120G91x Intel E5-1620v3', 32, 'DDR4', 'AmsterdamAMS-01', 119.99, 2000, 'SATA2', '4', '€'),
(27, 'HP DL380pG82x Intel Xeon E5-2620', 64, 'DDR3', 'AmsterdamAMS-01', 154.99, 2000, 'SATA2', '8', '€'),
(28, 'HP DL380eG82x Intel Xeon E5-2420', 32, 'DDR3', 'AmsterdamAMS-01', 142.99, 2000, 'SATA2', '8', '€'),
(29, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 209.99, 2000, 'SATA2', '4', '€'),
(30, 'RH2288v32x Intel Xeon E5-2650V4', 128, 'DDR4', 'AmsterdamAMS-01', 227.99, 480, 'SSD', '4', '€'),
(31, 'RH2288v32x Intel Xeon E5-2620v4', 64, 'DDR4', 'AmsterdamAMS-01', 161.99, 2000, 'SATA2', '4', '€'),
(32, 'Dell R730XD2x Intel Xeon E5-2620v4', 64, 'DDR4', 'AmsterdamAMS-01', 204.99, 2000, 'SATA2', '4', '€'),
(33, 'Dell R210-IIIntel Xeon E3-1230v2', 16, 'DDR3', 'AmsterdamAMS-01', 72.99, 2000, 'SATA2', '2', '€'),
(34, 'Dell R7202x Intel Xeon E5-2643', 32, 'DDR3', 'AmsterdamAMS-01', 221.99, 120, 'SSD', '2', '€'),
(35, 'HP DL180G62x Intel Xeon E5645', 32, 'DDR3', 'AmsterdamAMS-01', 129.99, 2000, 'SATA2', '8', '€'),
(36, 'Dell R6202x Intel Xeon E5-2650', 96, 'DDR3', 'AmsterdamAMS-01', 191.99, 120, 'SSD', '8', '€'),
(37, 'HP DL120G7Intel Xeon E3-1230', 16, 'DDR3', 'AmsterdamAMS-01', 195.99, 1000, 'SATA2', '4', '€'),
(38, 'HP DL380pG82x Intel Xeon E5-2620', 64, 'DDR3', 'AmsterdamAMS-01', 295.99, 2000, 'SATA2', '8', '€'),
(39, 'HP DL380pG82x Intel Xeon E5-2650', 64, 'DDR3', 'AmsterdamAMS-01', 355.99, 2000, 'SATA2', '8', '€'),
(40, 'HP DL120G7Intel G850', 4, 'DDR3', 'AmsterdamAMS-01', 163.99, 1000, 'SATA2', '4', '€'),
(41, 'Dell R210-IIIntel Xeon E3-1230v2', 16, 'DDR3', 'AmsterdamAMS-01', 119.99, 500, 'SATA2', '2', '€'),
(42, 'HP DL380pG82x Intel Xeon E5-2650', 64, 'DDR3', 'AmsterdamAMS-01', 272.99, 2000, 'SATA2', '8', '€'),
(43, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'AmsterdamAMS-01', 367.99, 480, 'SSD', '4', '€'),
(44, 'HP DL380pG82x Intel Xeon E5-2620', 64, 'DDR3', 'AmsterdamAMS-01', 212.99, 2000, 'SATA2', '8', '€'),
(45, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 277.99, 2000, 'SATA2', '4', '€'),
(46, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'AmsterdamAMS-01', 389.99, 120, 'SSD', '2', '€'),
(47, 'HP DL180G62x Intel Xeon E5645', 32, 'DDR3', 'AmsterdamAMS-01', 180.99, 2000, 'SATA2', '8', '€'),
(48, 'Dell R7202x Intel Xeon E5-2643', 32, 'DDR3', 'AmsterdamAMS-01', 246.99, 120, 'SSD', '2', '€'),
(49, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'AmsterdamAMS-01', 341.99, 480, 'SSD', '4', '€'),
(50, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 166.99, 2000, 'SATA2', '8', '€'),
(51, 'HP DL380eG82x Intel Xeon E5-2420', 64, 'DDR3', 'AmsterdamAMS-01', 304.99, 2000, 'SATA2', '8', '€'),
(52, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 279.99, 120, 'SSD', '2', '€'),
(53, 'Dell R210-IIIntel G530', 4, 'DDR3', 'AmsterdamAMS-01', 60.99, 500, 'SATA2', '2', '€'),
(54, 'Dell R210-IIIntel Xeon E3-1220', 16, 'DDR3', 'AmsterdamAMS-01', 110.99, 1000, 'SATA2', '2', '€'),
(55, 'Dell R210Intel Xeon X3440', 16, 'DDR3', 'AmsterdamAMS-01', 83.99, 2000, 'SATA2', '2', '€'),
(56, 'Dell R9304x Intel Xeon E7-4850v3', 64, 'DDR4', 'AmsterdamAMS-01', 1069.99, 120, 'SSD', '2', '€'),
(57, 'Dell R9304x Intel Xeon E7-4820v3', 64, 'DDR4', 'AmsterdamAMS-01', 781.99, 120, 'SSD', '2', '€'),
(58, 'Dell R9304x Intel Xeon E7-4830v3', 64, 'DDR4', 'AmsterdamAMS-01', 899.99, 120, 'SSD', '2', '€'),
(59, 'HP DL120G7Intel G850', 4, 'DDR3', 'AmsterdamAMS-01', 80.99, 1000, 'SATA2', '4', '€'),
(60, 'Supermicro SC846Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 224.99, 1000, 'SATA2', '2', '€'),
(61, 'HP DL120G91x Intel E5-1620v3', 32, 'DDR4', 'AmsterdamAMS-01', 143.99, 2000, 'SATA2', '4', '€'),
(62, 'HP DL380pG82x Intel Xeon E5-2650', 64, 'DDR3', 'AmsterdamAMS-01', 252.99, 2000, 'SATA2', '8', '€'),
(63, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'AmsterdamAMS-01', 347.99, 480, 'SSD', '4', '€'),
(64, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 146.99, 2000, 'SATA2', '8', '€'),
(65, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 257.99, 2000, 'SATA2', '4', '€'),
(66, 'HP DL380pG82x Intel Xeon E5-2620', 64, 'DDR3', 'AmsterdamAMS-01', 192.99, 2000, 'SATA2', '8', '€'),
(67, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'AmsterdamAMS-01', 369.99, 120, 'SSD', '2', '€'),
(68, 'Dell R7202x Intel Xeon E5-2643', 32, 'DDR3', 'AmsterdamAMS-01', 226.99, 120, 'SSD', '2', '€'),
(69, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'AmsterdamAMS-01', 321.99, 480, 'SSD', '4', '€'),
(70, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 259.99, 120, 'SSD', '2', '€'),
(71, 'Dell R9304x Intel Xeon E7-4830v3', 64, 'DDR4', 'AmsterdamAMS-01', 879.99, 120, 'SSD', '2', '€'),
(72, 'Dell R9304x Intel Xeon E7-4850v3', 64, 'DDR4', 'AmsterdamAMS-01', 1049.99, 120, 'SSD', '2', '€'),
(73, 'Dell R9304x Intel Xeon E7-4820v3', 64, 'DDR4', 'AmsterdamAMS-01', 761.99, 120, 'SSD', '2', '€'),
(74, 'Dell R210-IIIntel G530', 4, 'DDR3', 'AmsterdamAMS-01', 40.99, 500, 'SATA2', '2', '€'),
(75, 'Dell R210Intel Xeon X3440', 16, 'DDR3', 'AmsterdamAMS-01', 63.99, 2000, 'SATA2', '2', '€'),
(76, 'Dell R210-IIIntel Xeon E3-1220', 16, 'DDR3', 'AmsterdamAMS-01', 90.99, 1000, 'SATA2', '2', '€'),
(77, 'HP DL120G7Intel G850', 4, 'DDR3', 'AmsterdamAMS-01', 60.99, 1000, 'SATA2', '4', '€'),
(78, 'Supermicro SC846Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 355.99, 1000, 'SATA2', '24', '€'),
(79, 'HP DL380eG82x Intel Xeon E5-2420', 64, 'DDR3', 'AmsterdamAMS-01', 190.99, 2000, 'SATA2', '8', '€'),
(80, 'HP DL180G62x Intel Xeon E5645', 32, 'DDR3', 'AmsterdamAMS-01', 160.99, 2000, 'SATA2', '8', '€'),
(81, 'Dell R210Intel Xeon X3440', 16, 'DDR3', 'AmsterdamAMS-01', 197.99, 2000, 'SATA2', '2', '€'),
(82, 'HP DL380pG82x Intel Xeon E5-2650', 64, 'DDR3', 'AmsterdamAMS-01', 386.99, 2000, 'SATA2', '8', '€'),
(83, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'AmsterdamAMS-01', 481.99, 480, 'SSD', '4', '€'),
(84, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 280.99, 2000, 'SATA2', '8', '€'),
(85, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 391.99, 2000, 'SATA2', '4', '€'),
(86, 'HP DL380pG82x Intel Xeon E5-2620', 64, 'DDR3', 'AmsterdamAMS-01', 326.99, 2000, 'SATA2', '8', '€'),
(87, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'AmsterdamAMS-01', 503.99, 120, 'SSD', '2', '€'),
(88, 'Dell R7202x Intel Xeon E5-2643', 32, 'DDR3', 'AmsterdamAMS-01', 360.99, 120, 'SSD', '2', '€'),
(89, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'AmsterdamAMS-01', 455.99, 480, 'SSD', '4', '€'),
(90, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'AmsterdamAMS-01', 393.99, 120, 'SSD', '2', '€'),
(91, 'Dell R9304x Intel Xeon E7-4830v3', 64, 'DDR4', 'AmsterdamAMS-01', 1013.99, 120, 'SSD', '2', '€'),
(92, 'Dell R9304x Intel Xeon E7-4850v3', 64, 'DDR4', 'AmsterdamAMS-01', 1183.99, 120, 'SSD', '2', '€'),
(93, 'Dell R9304x Intel Xeon E7-4820v3', 64, 'DDR4', 'AmsterdamAMS-01', 895.99, 120, 'SSD', '2', '€'),
(94, 'Dell R210-IIIntel G530', 4, 'DDR3', 'AmsterdamAMS-01', 174.99, 500, 'SATA2', '2', '€'),
(95, 'Dell R210-IIIntel Xeon E3-1220', 16, 'DDR3', 'AmsterdamAMS-01', 224.99, 1000, 'SATA2', '2', '€'),
(96, 'HP DL120G7Intel G850', 4, 'DDR3', 'AmsterdamAMS-01', 194.99, 1000, 'SATA2', '4', '€'),
(97, 'Supermicro SC846Intel Xeon E5620', 32, 'DDR3', 'AmsterdamAMS-01', 489.99, 1000, 'SATA2', '24', '€'),
(98, 'HP DL380eG82x Intel Xeon E5-2420', 64, 'DDR3', 'AmsterdamAMS-01', 304.99, 2000, 'SATA2', '8', '€'),
(99, 'HP DL180G62x Intel Xeon E5645', 32, 'DDR3', 'AmsterdamAMS-01', 294.99, 2000, 'SATA2', '8', '€'),
(100, 'Dell R720XD2x Intel Xeon E5-2620', 8, 'DDR3', 'AmsterdamAMS-01', 1907.99, 1000, 'SATA2', '4', '€'),
(101, 'Dell R720XD2x Intel Xeon E5-2650', 8, 'DDR3', 'AmsterdamAMS-01', 1973.99, 1000, 'SATA2', '4', '€'),
(102, 'HP DL380pG82x Intel Xeon E5-2620', 8, 'DDR3', 'AmsterdamAMS-01', 1907.99, 1000, 'SATA2', '4', '€'),
(103, 'HP DL380pG82x Intel Xeon E5-2650', 8, 'DDR3', 'AmsterdamAMS-01', 1967.99, 1000, 'SATA2', '4', '€'),
(104, 'HP DL120G7Intel G850', 4, 'DDR3', 'AmsterdamAMS-01', 1775.99, 500, 'SATA2', '4', '€'),
(105, 'HP DL120G7Intel Xeon E3-1230', 8, 'DDR3', 'AmsterdamAMS-01', 1807.99, 500, 'SATA2', '4', '€'),
(106, 'HP DL120G7Intel Xeon E3-1240', 16, 'DDR3', 'Washington D.C.WDC-01', 105.99, 1000, 'SATA2', '4', '$'),
(107, 'Dell R210Intel Xeon X3430', 8, 'DDR3', 'Washington D.C.WDC-01', 55.99, 500, 'SATA2', '2', '$'),
(108, 'Dell R210-IIIntel Xeon E3-1270v2', 16, 'DDR3', 'San FranciscoSFO-12', 121.99, 1000, 'SATA2', '4', '$'),
(109, 'Dell R730XD2x Intel Xeon E5-2650V4', 128, 'DDR4', 'SingaporeSIN-11', 565.99, 480, 'SSD', '4', 'S$'),
(110, 'Dell R730XD2x Intel Xeon E5-2650v4', 128, 'DDR4', 'Washington D.C.WDC-01', 431.99, 480, 'SSD', '4', '$'),
(111, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'Washington D.C.WDC-01', 380.99, 480, 'SSD', '4', '$'),
(112, 'Dell R730XD2x Intel Xeon E5-2630v3', 128, 'DDR4', 'Washington D.C.WDC-01', 360.99, 120, 'SSD', '2', '$'),
(113, 'HP DL180 G92x Intel Xeon E5-2650v3', 128, 'DDR4', 'Washington D.C.WDC-01', 413.99, 120, 'SSD', '2', '$'),
(114, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'San FranciscoSFO-12', 305.99, 120, 'SSD', '2', '$'),
(115, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'San FranciscoSFO-12', 303.99, 120, 'SSD', '2', '$'),
(116, 'HP DL180 G92x Intel Xeon E5-2630v3', 128, 'DDR4', 'San FranciscoSFO-12', 362.99, 120, 'SSD', '2', '$'),
(117, 'Dell R730XD2x Intel Xeon E5-2630v3', 128, 'DDR4', 'San FranciscoSFO-12', 360.99, 120, 'SSD', '2', '$'),
(118, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'San FranciscoSFO-12', 380.99, 480, 'SSD', '4', '$'),
(119, 'HP DL180 G92x Intel Xeon E5-2650v3', 128, 'DDR4', 'San FranciscoSFO-12', 413.99, 120, 'SSD', '2', '$'),
(120, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'San FranciscoSFO-12', 411.99, 120, 'SSD', '2', '$'),
(121, 'Dell R730XD2x Intel Xeon E5-2650v4', 128, 'DDR4', 'San FranciscoSFO-12', 431.99, 480, 'SSD', '4', '$'),
(122, 'Dell R730XD2x Intel Xeon E5-2620v4', 64, 'DDR4', 'San FranciscoSFO-12', 319.99, 120, 'SSD', '2', '$'),
(123, 'Dell R730XD2x Intel Xeon E5-2620v4', 64, 'DDR4', 'Washington D.C.WDC-01', 319.99, 120, 'SSD', '2', '$'),
(124, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'DallasDAL-10', 170.99, 300, 'SAS', '8', '$'),
(125, 'Dell R5102x Intel Xeon E5620', 8, 'DDR3', 'DallasDAL-10', 165.99, 1000, 'SATA2', '2', '$'),
(126, 'HP DL380eG82x Intel Xeon E5-2420', 64, 'DDR3', 'DallasDAL-10', 199.99, 2000, 'SATA2', '8', '$'),
(127, 'HP DL380eG82x Intel Xeon E5-2420', 16, 'DDR3', 'DallasDAL-10', 206.99, 3000, 'SATA2', '8', '$'),
(128, 'IBM X3650M42x Intel Xeon E5-2620', 32, 'DDR3', 'DallasDAL-10', 220.99, 1000, 'SATA2', '2', '$'),
(129, 'HP DL380pG82x Intel Xeon E5-2620', 32, 'DDR3', 'DallasDAL-10', 225.99, 1000, 'SATA2', '2', '$'),
(130, 'HP DL380pG82x Intel Xeon E5-2650', 128, 'DDR3', 'DallasDAL-10', 297.99, 120, 'SSD', '1', '$'),
(131, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'Washington D.C.WDC-01', 170.99, 300, 'SAS', '8', '$'),
(132, 'HP DL380eG82x Intel Xeon E5-2420', 32, 'DDR3', 'Washington D.C.WDC-01', 199.99, 1000, 'SATA2', '2', '$'),
(133, 'IBM X3650M42x Intel Xeon E5-2620', 32, 'DDR3', 'Washington D.C.WDC-01', 220.99, 1000, 'SATA2', '2', '$'),
(134, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'SingaporeSIN-11', 228, 1000, 'SATA2', '2', 'S$'),
(135, 'Supermicro SC846Intel Xeon E5620', 32, 'DDR3', 'DallasDAL-10', 421.99, 1000, 'SATA2', '24', '$'),
(136, 'DL20G9Intel Xeon E3-1270v5', 16, 'DDR4', 'San FranciscoSFO-12', 135.99, 1000, 'SATA2', '2', '$'),
(137, 'Huawei RH1288v22x Intel Xeon E5-2650', 8, 'DDR3', 'SingaporeSIN-11', 269.99, 1000, 'SATA2', '2', 'S$'),
(138, 'Dell R730XD2x Intel Xeon E5-2620V4', 64, 'DDR4', 'SingaporeSIN-11', 421.99, 2000, 'SATA2', '4', 'S$'),
(139, 'Huawei RH2288V22x Intel Xeon E5-2620', 32, 'DDR3', 'SingaporeSIN-11', 239.99, 1000, 'SATA2', '2', 'S$'),
(140, 'Dell R730XD2x Intel Xeon E5-2650v4', 128, 'DDR4', 'FrankfurtFRA-10', 395.99, 480, 'SSD', '4', '€'),
(141, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'FrankfurtFRA-10', 252.99, 120, 'SSD', '2', '€'),
(142, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'FrankfurtFRA-10', 342.99, 120, 'SSD', '2', '€'),
(143, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'FrankfurtFRA-10', 364.99, 120, 'SSD', '2', '€'),
(144, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'Washington D.C.WDC-01', 437.99, 120, 'SSD', '2', '$'),
(145, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'DallasDAL-10', 303.99, 120, 'SSD', '2', '$'),
(146, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'DallasDAL-10', 411.99, 120, 'SSD', '2', '$'),
(147, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'FrankfurtFRA-10', 99, 2000, 'SATA2', '8', '€'),
(148, 'IBM X36302x Intel Xeon E5620', 32, 'DDR3', 'FrankfurtFRA-10', 99, 2000, 'SATA2', '8', '€'),
(149, 'IBM X3650M42x Intel Xeon E5-2620', 32, 'DDR3', 'FrankfurtFRA-10', 124.99, 1000, 'SATA2', '6', '€'),
(150, 'Dell R720XD2x Intel Xeon E5-2620', 32, 'DDR3', 'DallasDAL-10', 225.99, 1000, 'SATA2', '2', '$'),
(151, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'FrankfurtFRA-10', 187.99, 2000, 'SATA2', '8', '€'),
(152, 'HP DL380eG82x Intel Xeon E5-2420', 32, 'DDR3', 'FrankfurtFRA-10', 176.99, 300, 'SAS', '8', '€'),
(153, 'HP DL380eG82x Intel Xeon E5-2420', 8, 'DDR3', 'Washington D.C.WDC-01', 183.99, 1000, 'SATA2', '4', '$'),
(154, 'HP DL180G62x Intel Xeon E5620', 32, 'DDR3', 'Hong KongHKG-10', 228, 1000, 'SATA2', '2', 'S$'),
(155, 'HP DL180G62x Intel Xeon E5620', 8, 'DDR3', 'Washington D.C.WDC-01', 175.99, 1000, 'SATA2', '4', '$'),
(156, 'Dell R720XD2x Intel Xeon E5-2640v2', 64, 'DDR3', 'FrankfurtFRA-10', 249, 1000, 'SATA2', '64', '€'),
(157, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'FrankfurtFRA-10', 316.99, 480, 'SSD', '8', '€'),
(158, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'DallasDAL-10', 380.99, 480, 'SSD', '4', '$'),
(159, 'Dell R730XD2x Intel Xeon E5-2630v4', 128, 'DDR4', 'FrankfurtFRA-10', 362.99, 960, 'SSD', '4', '€'),
(160, 'Dell R730XD2x Intel Xeon E5-2650v4', 128, 'DDR4', 'FrankfurtFRA-10', 471.99, 960, 'SSD', '4', '€'),
(161, 'HP DL180G62x Intel Xeon E5645', 8, 'DDR4', 'Washington D.C.WDC-01', 187.99, 1000, 'SATA2', '4', '$'),
(162, 'Dell R720XD2x Intel Xeon E5-2620', 32, 'DDR3', 'Washington D.C.WDC-01', 225.99, 1000, 'SATA2', '2', '$'),
(163, 'Dell R730XD2x Intel Xeon E5-2650V3', 128, 'DDR4', 'SingaporeSIN-11', 545.99, 120, 'SSD', '2', 'S$'),
(164, 'Dell R730XD2x Intel Xeon E5-2620v3', 64, 'DDR4', 'Washington D.C.WDC-01', 303.99, 120, 'SSD', '2', '$'),
(165, 'Dell R730XD2x Intel Xeon E5-2650v3', 128, 'DDR4', 'Washington D.C.WDC-01', 411.99, 120, 'SSD', '2', '$'),
(166, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'FrankfurtFRA-10', 254.99, 120, 'SSD', '2', '€'),
(167, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'Washington D.C.WDC-01', 305.99, 120, 'SSD', '2', '$'),
(168, 'HP DL180 G92x Intel Xeon E5-2620v3', 64, 'DDR4', 'DallasDAL-10', 305.99, 120, 'SSD', '2', '$'),
(169, 'HP DL160 G92x Intel Xeon E5-2630v3', 128, 'DDR4', 'DallasDAL-10', 382.99, 120, 'SSD', '2', '$'),
(170, 'Dell R730XD2x Intel Xeon E5-2670v3', 128, 'DDR4', 'DallasDAL-10', 437.99, 120, 'SSD', '2', '$'),
(171, 'HP DL180 G92x Intel Xeon E5-2630v3', 128, 'DDR4', 'Washington D.C.WDC-01', 362.99, 120, 'SSD', '2', '$'),
(172, 'HP DL180 G92x Intel Xeon E5-2630v3', 128, 'DDR4', 'FrankfurtFRA-10', 318.99, 120, 'SSD', '2', '€'),
(173, 'Dell R6302x Intel Xeon E5-2650v3', 128, 'DDR4', 'SingaporeSIN-11', 555.99, 120, 'SSD', '2', 'S$'),
(174, 'HP DL120G7Intel Xeon E3-1230', 128, 'DDR3', 'San FranciscoSFO-12', 105.99, 500, 'SATA2', '2', '$'),
(175, 'HP DL120G7Intel Xeon E3-1230', 16, 'DDR3', 'Washington D.C.WDC-01', 105.99, 500, 'SATA2', '2', '$'),
(176, 'HP DL120G7Intel Xeon E3-1270', 16, 'DDR3', 'DallasDAL-10', 110.99, 500, 'SATA2', '2', '$'),
(177, 'HP DL120G7Intel Xeon E3-1230', 16, 'DDR3', 'DallasDAL-10', 105.99, 500, 'SATA2', '2', '$'),
(178, 'Dell R210-IIIntel Xeon E3-1270v2', 16, 'DDR3', 'DallasDAL-10', 121.99, 1000, 'SATA2', '2', '$'),
(179, 'HP DL120G6Intel G6950', 4, 'DDR3', 'Washington D.C.WDC-01', 49.99, 500, 'SATA2', '4', '$'),
(180, 'HP DL120G7Intel Xeon E3-1270', 16, 'DDR3', 'Washington D.C.WDC-01', 110.99, 1000, 'SATA2', '2', '$'),
(181, 'HP DL120G91x Intel E5-1650v3', 64, 'DDR4', 'San FranciscoSFO-12', 263.99, 120, 'SSD', '2', '$'),
(182, 'HP DL120G91x Intel E5-1650v3', 64, 'DDR4', 'DallasDAL-10', 263.99, 120, 'SSD', '2', '$'),
(183, 'HP DL120G9Intel Xeon E5-1650v3', 64, 'DDR4', 'Hong KongHKG-10', 368.99, 120, 'SSD', '2', 'S$'),
(184, 'HP DL120G9Intel Xeon E5-1650v3', 64, 'DDR4', 'SingaporeSIN-11', 368.99, 120, 'SSD', '2', 'S$');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
