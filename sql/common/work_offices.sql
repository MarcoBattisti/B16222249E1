-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Dic 24, 2018 alle 10:22
-- Versione del server: 5.7.23
-- Versione PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `common`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `work_offices`
--

DROP TABLE IF EXISTS `work_offices`;
CREATE TABLE IF NOT EXISTS `work_offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) NOT NULL,
  `number` varchar(10) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(2) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `work_offices`
--

INSERT INTO `work_offices` (`id`, `street`, `number`, `post_code`, `city`, `province`, `phone_number`, `email`) VALUES
(1, 'Via PippoPluto', '999', '12345', 'PincoPalla', 'PL', '1234', '1234@live.it'),
(2, 'Via CipCiop', '999', '6789', 'CipCiop', 'CC', '1234', '1234@live.it');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
