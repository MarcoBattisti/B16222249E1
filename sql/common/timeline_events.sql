-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Gen 10, 2019 alle 23:40
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
-- Struttura della tabella `timeline_events`
--

DROP TABLE IF EXISTS `timeline_events`;
CREATE TABLE IF NOT EXISTS `timeline_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  `title` varchar(150) NOT NULL,
  `text` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL,
  `icon` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `timeline_events`
--

INSERT INTO `timeline_events` (`id`, `year`, `title`, `text`, `color`, `icon`) VALUES
(1, 0, 'Laurea Triennale', 'Nel 2013 mi sono laureata in Scienze e Tecniche Psicologiche, presso l\'Università degli Studi di Firenze.', '#d9534f', 'fa fa-graduation-cap'),
(2, 0, 'Laurea Magistrale', 'Nel 2015 ho conseguito la laurea magistrale in Processi di Sviluppo e Tutela dell\'Infanzia, presso l\'Università Cattolica del Sacro Cuore di Milano.', '#3f903f', 'fa fa-graduation-cap'),
(3, 0, 'Master Post Laurea', 'Nel 2017 mi sono specializzata con un master in Psicodiagnostica Clinica e Forense, Psicologia Giuridica.', '#00009C', 'fa fa-book'),
(4, 0, 'Psicologa e Psicodiagnosta Clinica e Forense', 'Adesso lavoro come psicologa competente nei processi di promozione delle risorse in bambini, adolescenti e adulti. <br> <a href=\'/about-my-work\'>Clicca qui per saperne di più sulle mie attività..</a>', '#ff9fdf', 'fa fa-briefcase');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
