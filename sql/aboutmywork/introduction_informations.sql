-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Apr 10, 2019 alle 21:05
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
-- Database: `aboutmywork`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `introduction_informations`
--

DROP TABLE IF EXISTS `introduction_informations`;
CREATE TABLE IF NOT EXISTS `introduction_informations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL,
  `icon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `introduction_informations`
--

INSERT INTO `introduction_informations` (`id`, `name`, `value`, `icon`) VALUES
(1, 'PASSIONE', 'In tutto ciò che faccio metto l\'amore e la mia grande passione per la psicologia.', 'fa fa-heart'),
(2, 'ATTENZIONE', 'Il mio obiettivo è aiutare con cura e precisione.', 'fa fa-eye'),
(3, 'PROFESSIONALITÀ', 'Competenza ed efficienza, le due parole fondamentali nel mio operato.', 'fa fa-handshake-o');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
