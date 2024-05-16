-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 02:17 PM
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
-- Database: `task1`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `NICID` int(5) NOT NULL,
  `NIC` varchar(13) NOT NULL,
  `Birthday` date NOT NULL,
  `Age` int(10) NOT NULL,
  `Gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`NICID`, `NIC`, `Birthday`, `Age`, `Gender`) VALUES
(1, '900123456V', '1990-01-12', 34, 'Male'),
(2, '950987654X', '1995-04-08', 29, 'Male'),
(3, '870112233V', '1987-01-11', 37, 'Male'),
(4, '200132604010', '2001-11-21', 23, 'Male'),
(5, '200026200265', '2000-09-18', 24, 'Male'),
(6, '200152801672', '2001-01-28', 23, 'Female'),
(7, '200322000244', '2003-08-07', 21, 'Male'),
(8, '900123456V', '1990-01-12', 34, 'Male'),
(9, '950987654X', '1995-04-08', 29, 'Male'),
(10, '870112233V', '1987-01-11', 37, 'Male'),
(11, '200132604010', '2001-11-21', 23, 'Male'),
(12, '200026200265', '2000-09-18', 24, 'Male'),
(13, '200152801672', '2001-01-28', 23, 'Female'),
(14, '200322000244', '2003-08-07', 21, 'Male'),
(15, '900123456V', '1990-01-12', 34, 'Male'),
(16, '950987654X', '1995-04-08', 29, 'Male'),
(17, '870112233V', '1987-01-11', 37, 'Male'),
(18, '200132604010', '2001-11-21', 23, 'Male'),
(19, '200026200265', '2000-09-18', 24, 'Male'),
(20, '200152801672', '2001-01-28', 23, 'Female'),
(21, '200322000244', '2003-08-07', 21, 'Male'),
(22, '900123456V', '1990-01-12', 34, 'Male'),
(23, '950987654X', '1995-04-08', 29, 'Male'),
(24, '870112233V', '1987-01-11', 37, 'Male'),
(25, '200132604010', '2001-11-21', 23, 'Male'),
(26, '200026200265', '2000-09-18', 24, 'Male'),
(27, '200152801672', '2001-01-28', 23, 'Female'),
(28, '200322000244', '2003-08-07', 21, 'Male'),
(29, '200271501472', '2002-08-02', 22, 'Female'),
(30, '991611410v', '1999-06-09', 25, 'Male'),
(31, '200026200265', '2000-09-18', 24, 'Male'),
(32, '200152801672', '2001-01-28', 23, 'Female'),
(33, '590561231v', '1959-02-25', 65, 'Male'),
(34, '726600341v', '1972-06-08', 52, 'Female'),
(35, '200132604010', '2001-11-21', 23, 'Male'),
(36, '991372105v', '1999-05-16', 25, 'Male'),
(37, '199930711970', '1999-11-02', 25, 'Male'),
(38, '990540519v', '1999-02-22', 25, 'Male'),
(39, '962653132v', '1996-09-21', 28, 'Male'),
(40, '962623132v', '1996-09-18', 28, 'Male'),
(41, '200126212345', '2001-09-18', 23, 'Male'),
(42, '992621289v', '1999-09-18', 25, 'Male'),
(43, '200232650212', '2002-11-21', 22, 'Male'),
(44, '200271501472', '2002-08-02', 22, 'Female'),
(45, '199930711970', '1999-11-02', 25, 'Male'),
(46, '975180417v', '1997-01-18', 27, 'Female'),
(47, '200271501472', '2002-08-02', 22, 'Female'),
(48, '991611410v', '1999-06-09', 25, 'Male'),
(49, '200026200265', '2000-09-18', 24, 'Male'),
(50, '200152801672', '2001-01-28', 23, 'Female'),
(51, '590561231v', '1959-02-25', 65, 'Male'),
(52, '726600341v', '1972-06-08', 52, 'Female'),
(53, '200132604010', '2001-11-21', 23, 'Male'),
(54, '991372105v', '1999-05-16', 25, 'Male'),
(55, '199930711970', '1999-11-02', 25, 'Male'),
(56, '990540519v', '1999-02-22', 25, 'Male'),
(57, '962653132v', '1996-09-21', 28, 'Male'),
(58, '962623132v', '1996-09-18', 28, 'Male'),
(59, '200126212345', '2001-09-18', 23, 'Male'),
(60, '992621289v', '1999-09-18', 25, 'Male'),
(61, '200232650212', '2002-11-21', 22, 'Male'),
(62, '200271501472', '2002-08-02', 22, 'Female'),
(63, '199930711970', '1999-11-02', 25, 'Male'),
(64, '975180417v', '1997-01-18', 27, 'Female'),
(65, '200271501472', '2002-08-02', 22, 'Female'),
(66, '991611410v', '1999-06-09', 25, 'Male'),
(67, '200026200265', '2000-09-18', 24, 'Male'),
(68, '200152801672', '2001-01-28', 23, 'Female'),
(69, '590561231v', '1959-02-25', 65, 'Male'),
(70, '726600341v', '1972-06-08', 52, 'Female'),
(71, '200132604010', '2001-11-21', 23, 'Male'),
(72, '991372105v', '1999-05-16', 25, 'Male'),
(73, '199930711970', '1999-11-02', 25, 'Male'),
(74, '990540519v', '1999-02-22', 25, 'Male'),
(75, '962653132v', '1996-09-21', 28, 'Male'),
(76, '962623132v', '1996-09-18', 28, 'Male'),
(77, '200126212345', '2001-09-18', 23, 'Male'),
(78, '992621289v', '1999-09-18', 25, 'Male'),
(79, '200232650212', '2002-11-21', 22, 'Male'),
(80, '200271501472', '2002-08-02', 22, 'Female'),
(81, '199930711970', '1999-11-02', 25, 'Male'),
(82, '975180417v', '1997-01-18', 27, 'Female'),
(83, '900123456V', '1990-01-12', 34, 'Male'),
(84, '950987654X', '1995-04-08', 29, 'Male'),
(85, '870112233V', '1987-01-11', 37, 'Male'),
(86, '200132604010', '2001-11-21', 23, 'Male'),
(87, '200026200265', '2000-09-18', 24, 'Male'),
(88, '200152801672', '2001-01-28', 23, 'Female'),
(89, '200322000244', '2003-08-07', 21, 'Male'),
(90, '200271501472', '2002-08-02', 22, 'Female'),
(91, '991611410v', '1999-06-09', 25, 'Male'),
(92, '200026200265', '2000-09-18', 24, 'Male'),
(93, '200152801672', '2001-01-28', 23, 'Female'),
(94, '590561231v', '1959-02-25', 65, 'Male'),
(95, '726600341v', '1972-06-08', 52, 'Female'),
(96, '200132604010', '2001-11-21', 23, 'Male'),
(97, '991372105v', '1999-05-16', 25, 'Male'),
(98, '199930711970', '1999-11-02', 25, 'Male'),
(99, '990540519v', '1999-02-22', 25, 'Male'),
(100, '962653132v', '1996-09-21', 28, 'Male'),
(101, '962623132v', '1996-09-18', 28, 'Male'),
(102, '200126212345', '2001-09-18', 23, 'Male'),
(103, '992621289v', '1999-09-18', 25, 'Male'),
(104, '200232650212', '2002-11-21', 22, 'Male'),
(105, '200271501472', '2002-08-02', 22, 'Female'),
(106, '199930711970', '1999-11-02', 25, 'Male'),
(107, '975180417v', '1997-01-18', 27, 'Female'),
(108, '900123456V', '1990-01-12', 34, 'Male'),
(109, '950987654X', '1995-04-08', 29, 'Male'),
(110, '870112233V', '1987-01-11', 37, 'Male'),
(111, '200132604010', '2001-11-21', 23, 'Male'),
(112, '200026200265', '2000-09-18', 24, 'Male'),
(113, '200152801672', '2001-01-28', 23, 'Female'),
(114, '200322000244', '2003-08-07', 21, 'Male'),
(115, '200271501472', '2002-08-02', 22, 'Female'),
(116, '991611410v', '1999-06-09', 25, 'Male'),
(117, '200026200265', '2000-09-18', 24, 'Male'),
(118, '200152801672', '2001-01-28', 23, 'Female'),
(119, '590561231v', '1959-02-25', 65, 'Male'),
(120, '726600341v', '1972-06-08', 52, 'Female'),
(121, '200132604010', '2001-11-21', 23, 'Male'),
(122, '991372105v', '1999-05-16', 25, 'Male'),
(123, '199930711970', '1999-11-02', 25, 'Male'),
(124, '990540519v', '1999-02-22', 25, 'Male'),
(125, '962653132v', '1996-09-21', 28, 'Male'),
(126, '962623132v', '1996-09-18', 28, 'Male'),
(127, '200126212345', '2001-09-18', 23, 'Male'),
(128, '992621289v', '1999-09-18', 25, 'Male'),
(129, '200232650212', '2002-11-21', 22, 'Male'),
(130, '200271501472', '2002-08-02', 22, 'Female'),
(131, '199930711970', '1999-11-02', 25, 'Male'),
(132, '975180417v', '1997-01-18', 27, 'Female'),
(133, '900123456V', '1990-01-12', 34, 'Male'),
(134, '950987654X', '1995-04-08', 29, 'Male'),
(135, '870112233V', '1987-01-11', 37, 'Male'),
(136, '200132604010', '2001-11-21', 23, 'Male'),
(137, '200026200265', '2000-09-18', 24, 'Male'),
(138, '200152801672', '2001-01-28', 23, 'Female'),
(139, '200322000244', '2003-08-07', 21, 'Male'),
(140, '900123456V', '1990-01-12', 34, 'Male'),
(141, '950987654X', '1995-04-08', 29, 'Male'),
(142, '870112233V', '1987-01-11', 37, 'Male'),
(143, '200132604010', '2001-11-21', 23, 'Male'),
(144, '200026200265', '2000-09-18', 24, 'Male'),
(145, '200152801672', '2001-01-28', 23, 'Female'),
(146, '200322000244', '2003-08-07', 21, 'Male'),
(147, '900123456V', '1990-01-12', 34, 'Male'),
(148, '950987654X', '1995-04-08', 29, 'Male'),
(149, '870112233V', '1987-01-11', 37, 'Male'),
(150, '200132604010', '2001-11-21', 23, 'Male'),
(151, '200026200265', '2000-09-18', 24, 'Male'),
(152, '200152801672', '2001-01-28', 23, 'Female'),
(153, '200322000244', '2003-08-07', 21, 'Male'),
(154, '900123456V', '1990-01-12', 34, 'Male'),
(155, '950987654X', '1995-04-08', 29, 'Male'),
(156, '870112233V', '1987-01-11', 37, 'Male'),
(157, '200132604010', '2001-11-21', 23, 'Male'),
(158, '200026200265', '2000-09-18', 24, 'Male'),
(159, '200152801672', '2001-01-28', 23, 'Female'),
(160, '200322000244', '2003-08-07', 21, 'Male'),
(161, '900123456V', '1990-01-12', 34, 'Male'),
(162, '950987654X', '1995-04-08', 29, 'Male'),
(163, '870112233V', '1987-01-11', 37, 'Male'),
(164, '200132604010', '2001-11-21', 23, 'Male'),
(165, '200026200265', '2000-09-18', 24, 'Male'),
(166, '200152801672', '2001-01-28', 23, 'Female'),
(167, '200322000244', '2003-08-07', 21, 'Male'),
(168, '900123456V', '1990-01-12', 34, 'Male'),
(169, '950987654X', '1995-04-08', 29, 'Male'),
(170, '870112233V', '1987-01-11', 37, 'Male'),
(171, '200132604010', '2001-11-21', 23, 'Male'),
(172, '200026200265', '2000-09-18', 24, 'Male'),
(173, '200152801672', '2001-01-28', 23, 'Female'),
(174, '200322000244', '2003-08-07', 21, 'Male'),
(175, '900123456V', '1990-01-12', 34, 'Male'),
(176, '950987654X', '1995-04-08', 29, 'Male'),
(177, '870112233V', '1987-01-11', 37, 'Male'),
(178, '200132604010', '2001-11-21', 23, 'Male'),
(179, '200026200265', '2000-09-18', 24, 'Male'),
(180, '200152801672', '2001-01-28', 23, 'Female'),
(181, '200322000244', '2003-08-07', 21, 'Male'),
(182, '995875667v', '1999-03-27', 25, 'Female'),
(183, '996773117v', '1999-06-25', 25, 'Female'),
(184, '933173313v', '1993-11-13', 31, 'Male'),
(185, '726600341v', '1972-06-08', 52, 'Female'),
(186, '200132604010', '2001-11-21', 23, 'Male'),
(187, '991372105v', '1999-05-16', 25, 'Male'),
(188, '199930711970', '1999-11-02', 25, 'Male'),
(189, '990540519v', '1999-02-22', 25, 'Male'),
(190, '962653132v', '1996-09-21', 28, 'Male'),
(191, '882345675x', '1988-08-21', 36, 'Male'),
(192, '197925323274', '1979-09-10', 45, 'Male'),
(193, '199930711970', '1999-11-02', 25, 'Male'),
(194, '200489652163', '2005-01-30', 20, 'Female'),
(195, '200745135469', '2008-03-25', 17, 'Male'),
(196, '975180417v', '1997-01-18', 27, 'Female'),
(197, '995875667v', '1999-03-27', 25, 'Female'),
(198, '996773117v', '1999-06-25', 25, 'Female'),
(199, '933173313v', '1993-11-13', 31, 'Male'),
(200, '726600341v', '1972-06-08', 52, 'Female'),
(201, '200132604010', '2001-11-21', 23, 'Male'),
(202, '991372105v', '1999-05-16', 25, 'Male'),
(203, '199930711970', '1999-11-02', 25, 'Male'),
(204, '990540519v', '1999-02-22', 25, 'Male'),
(205, '962653132v', '1996-09-21', 28, 'Male'),
(206, '882345675x', '1988-08-21', 36, 'Male'),
(207, '197925323274', '1979-09-10', 45, 'Male'),
(208, '199930711970', '1999-11-02', 25, 'Male'),
(209, '200489652163', '2005-01-30', 20, 'Female'),
(210, '200745135469', '2008-03-25', 17, 'Male'),
(211, '975180417v', '1997-01-18', 27, 'Female'),
(212, '900123456V', '1990-01-12', 34, 'Male'),
(213, '950987654X', '1995-04-08', 29, 'Male'),
(214, '870112233V', '1987-01-11', 37, 'Male'),
(215, '200132604010', '2001-11-21', 23, 'Male'),
(216, '200026200265', '2000-09-18', 24, 'Male'),
(217, '200152801672', '2001-01-28', 23, 'Female'),
(218, '200322000244', '2003-08-07', 21, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `FirstName`, `LastName`, `Email`, `Password`) VALUES
(1, 'janani', 'wijayantha', 'janani@gmail.com', 'j@123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`NICID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `NICID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
