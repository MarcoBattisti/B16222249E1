-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Mar 08, 2019 alle 18:09
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
-- Struttura della tabella `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(300) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `text`) VALUES
(1, 'http://langheroeromonferrato.net/sites/default/files/styles/completo/public/allontanamento_minori_famiglia_bl-768x400.jpg?itok=Yx9ZwAFG', 'Sostegno alla Genitorialità', 'E\' un intervento psicologico di accompagnamento per gli adulti che vivono delle difficoltà nel loro ruolo genitoriale. Mira a comprendere e migliorare la relazione con i figli, gli stili educativi ecc.'),
(2, 'https://www.amletopetrarca.com/wp-content/uploads/2017/02/consulente-tecnico-di-parte.jpg', 'Consulenza Tecnica di Parte', 'Sostegno,ascolto e accompagnamento durante le fasi della separazione che per sua natura è costellata da dolore,conflitto,rabbia e delusione,con l\'obiettivo di porre nuovamente l\'attenzione sui figli.'),
(3, 'https://www.psymed.it/media/k2/items/cache/d6086de322f98f66cc694f32ea284557_XL.jpg', 'Valutazione Psicodiagnostica', 'La valutazione psicodiagnostica si avvale di colloqui e test al fine di comprendere e conoscere come l\'individuo, la coppia o la famiglia affronta problemi e novità, individuando limiti e risorse.'),
(4, 'http://www.attive.org/wp-content/uploads/2016/07/supporto-psicologico-di-gruppo.jpg', 'Sostegno Psicologico', 'Si rivolge principalmente a coloro che si trovano in una fase critica o ad affrontare eventi che influiscono sul benessere psicologico. E\' utile quando si sperimenta un senso di sofferenza e disagio. '),
(5, 'https://www.spazio21scandicci.it/images/Psico-discipline.jpg', 'Consulenza Psicologica', 'Consulto durante il quale vengono esaminati e discussi alcuni aspetti della situazione problematica: l’origine e la sua evoluzione, la presumibile diagnosi, le risorse che è possibile attivare, ecc.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
