-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Gen 11, 2019 alle 22:48
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
-- Database: `aboutmepage`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `introductions`
--

DROP TABLE IF EXISTS `introductions`;
CREATE TABLE IF NOT EXISTS `introductions` (
  `text` text NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `introductions`
--

INSERT INTO `introductions` (`text`, `id`) VALUES
('<b>Dopo aver terminato la laurea in Scienze e Tecniche Psicologiche presso l\'UNIFI, decido di trasferirmi a Milano, per poter frequentare un corso di laurea incentrato sulla Tutela dell\'Infanzia. <br> Durante il percorso di studi sono stati trattati - con esercitazioni pratiche - temi come: l\'audizione dei minori; il trattamento degli autori di reati sessuali; la valutazione delle competenze genitoriali.</b><br> \r\n        <hr>\r\n        <i>A Luglio 2015, ho conseguito la laurea in Psicologia dello Sviluppo e della Comunicazione, discutendo la tesi \"Riconoscere il Disagio Infantile, attraverso i Segni Grafici. Uno Studio Sulle Vittime del Maltrattamento\", frutto di due anni di ricerca, che intendeva verificare se vi erano differenze significative tra l\'espressione del disagio, sia nelle rappresentazioni grafiche che nel comportamento, dei minori vittime di maltrattamento residenti in comunità, e dei i coetanei non segnalati presso il Tribunale.<br>\r\n        Ho, in seguito, svolto il tirocinio post-lauream prima presso l\'Istituto di Terapia Familiare di Siena specializzato in Psicologia Giuridica e poi presso il Centro Famiglie, Affidi e Adozioni \"Baobab\" di Colle di Val d\'Elsa (SI).</i><br>\r\n        <hr>\r\n        <h1>Sono iscritta all\'albo degli Psicologi della Toscana, n° 8001, a partire da Febbraio 2017.<br></h1>\r\n        <hr>\r\n        <a>Sono inoltre, da sempre, interessata all\'utilizzo dei test grafici e dei reattivi psicologici in generale. In entrambe le tesi ho infatti utilizzato sia i test grafici (disegno della famiglia, disegno del bambino sotto la pioggia e disegno della Figura Umana) che questionari per valutare i comportamenti dei minori (CBCL e PROPS). Ho quindi deciso di incrementare la mia formazione frequentando un Master biennale in Psicodiagnostica Clinica e Forense, per l\'utilizzo dei più importanti reattivi psicodiagnostici (Rorschach, TAT, MMPI 2, SCIID, WISC, WAIS ... ).<br> \r\n        Ed infine, ho seguito un corso professionalizzante per la figura di Consulente Tecnico in ambito Psicologico (CTU, CTP), poiché sono particolarmente interessata all\'ambito giuridico-peritale.</a>', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
