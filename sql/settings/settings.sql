-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Apr 08, 2019 alle 19:26
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `settings`
--

INSERT INTO `settings` (`id`, `section`, `name`, `value`) VALUES
(1, 'home', 'image', 'https://firebasestorage.googleapis.com/v0/b/lisa-psychology.appspot.com/o/about-me-image.jpg?alt=media&token=d7acc650-88b5-496e-83e5-6db37aaf4d10'),
(3, 'home', 'image-text', '<h3 style=\"text-align: center;\"><span style=\"color: #999999;\">Salve sono</span></h3>\r\n<h2 style=\"text-align: center;\"><strong>Lisa Battisti</strong></h2>\r\n<p style=\"text-align: center;\"><span style=\"color: #333333;\"><em>Sono una Psicologa, ho conseguito due lauree, la prima in Scienze e Tecniche Psicologiche presso l\'Universit&agrave; degli studi di Firenze, la seconda in Psicologia dello Sviluppo e della Comunicazione presso Universit&agrave; Cattolica del Sacro Cuore di Milano.</em></span></p>'),
(5, 'home', 'bg-about-me', 'https://firebasestorage.googleapis.com/v0/b/lisa-psychology.appspot.com/o/home-about-me.jpeg?alt=media&token=a716cdd8-189a-4167-b60d-74df001b5951'),
(6, 'about-me', 'image', 'https://firebasestorage.googleapis.com/v0/b/lisa-psychology.appspot.com/o/about-me-image.jpg?alt=media&token=d7acc650-88b5-496e-83e5-6db37aaf4d10'),
(7, 'about-me', 'introduction', '<b>Dopo aver terminato la laurea in Scienze e Tecniche Psicologiche presso l\'UNIFI, decido di trasferirmi a Milano, per poter frequentare un corso di laurea incentrato sulla Tutela dell\'Infanzia. <br> Durante il percorso di studi sono stati trattati - con esercitazioni pratiche - temi come: l\'audizione dei minori; il trattamento degli autori di reati sessuali; la valutazione delle competenze genitoriali.</b><br> \r\n        <hr>\r\n        <i>A Luglio 2015, ho conseguito la laurea in Psicologia dello Sviluppo e della Comunicazione, discutendo la tesi \"Riconoscere il Disagio Infantile, attraverso i Segni Grafici. Uno Studio Sulle Vittime del Maltrattamento\", frutto di due anni di ricerca, che intendeva verificare se vi erano differenze significative tra l\'espressione del disagio, sia nelle rappresentazioni grafiche che nel comportamento, dei minori vittime di maltrattamento residenti in comunità, e dei i coetanei non segnalati presso il Tribunale.<br>\r\n        Ho, in seguito, svolto il tirocinio post-lauream prima presso l\'Istituto di Terapia Familiare di Siena specializzato in Psicologia Giuridica e poi presso il Centro Famiglie, Affidi e Adozioni \"Baobab\" di Colle di Val d\'Elsa (SI).</i><br>\r\n        <hr>\r\n        <h1>Sono iscritta all\'albo degli Psicologi della Toscana, n° 8001, a partire da Febbraio 2017.<br></h1>\r\n        <hr>\r\n        <a>Sono inoltre, da sempre, interessata all\'utilizzo dei test grafici e dei reattivi psicologici in generale. In entrambe le tesi ho infatti utilizzato sia i test grafici (disegno della famiglia, disegno del bambino sotto la pioggia e disegno della Figura Umana) che questionari per valutare i comportamenti dei minori (CBCL e PROPS). Ho quindi deciso di incrementare la mia formazione frequentando un Master biennale in Psicodiagnostica Clinica e Forense, per l\'utilizzo dei più importanti reattivi psicodiagnostici (Rorschach, TAT, MMPI 2, SCIID, WISC, WAIS ... ).<br> \r\n        Ed infine, ho seguito un corso professionalizzante per la figura di Consulente Tecnico in ambito Psicologico (CTU, CTP), poiché sono particolarmente interessata all\'ambito giuridico-peritale.</a>'),
(8, 'about-my-work', 'bg-introduction', 'https://firebasestorage.googleapis.com/v0/b/lisa-psychology.appspot.com/o/introduction-image.jpg?alt=media&token=d6e39070-0eb5-4d2b-8d04-c8d17850da3a'),
(9, 'about-my-work', 'bg-services', 'https://firebasestorage.googleapis.com/v0/b/lisa-psychology.appspot.com/o/services-part-image.jpeg?alt=media&token=7b5e5a95-45a3-4fba-a2f3-0c0c77977d1f'),
(13, 'contacts', 'bg-image', 'https://firebasestorage.googleapis.com/v0/b/lisa-psychology.appspot.com/o/contacts-page-background.jpg?alt=media&token=05aa0f0d-5801-4a9a-9cb9-c96ba3bf4f17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
