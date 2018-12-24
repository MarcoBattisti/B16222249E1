-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Dic 24, 2018 alle 10:21
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
-- Database: `contactpage`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `contacts_subjects`
--

DROP TABLE IF EXISTS `contacts_subjects`;
CREATE TABLE IF NOT EXISTS `contacts_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `contacts_subjects`
--

INSERT INTO `contacts_subjects` (`id`, `value`) VALUES
(1, 'Predendere Appuntamento'),
(2, 'Chiedere Informazioni'),
(3, 'Altro..');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
