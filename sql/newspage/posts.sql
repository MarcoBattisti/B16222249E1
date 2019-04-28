-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Dic 24, 2018 alle 10:20
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
-- Database: `newspage`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_link` varchar(255) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(2000) NOT NULL,
  `author` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `main_topic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `posts`
--

INSERT INTO `posts` (`id`, `image_link`, `topic`, `title`, `body`, `author`, `date`, `main_topic`) VALUES
(1, './assets/Posts-Example/post1.jpg', 'Crescita Personale', 'La felicità in ogni momento. Incantarsi per le piccole cose. ', '\r\n\r\nSono stata al Tempo delle donne - iniziativa del Corriere della Sera il primo week end di settembre che aveva come tema: la felicità.\r\n\r\nIl tema si è sviluppato con il contributo di studiose, studiosi, intellettuali, artisti a 360 gradi. Ascoltando i preziosi contributi e rileggendo vecchi libri ho riflettuto anche io, da psicologa, su questo tema.\r\n\r\nIn realtà siamo circondati di comodità e benessere, abbiamo salute, case calde, acqua corrente, vestiti e confort di ogni tipo ma tutto questo non è certo scontato, basti vedere che chi non gode di tutte queste fortune è anche proprio vicino a noi, nelle nostre città, tipo nelle stazioni dove tantissimi senza tetto dormono per strada.\r\n\r\nGià iniziando ad essere grati per le fortune che abbiamo potrebbe essere un buon motivo per essere felici. Certo, la vita poi ci riserva dolori: malattie di persone care, separazioni dolorose, difficoltà lavorative, per citare solo alcuni dei motivi per cui le persone vengono a chiedermi consulenza.\r\n\r\nCerto, ci sono momenti molto difficili. Ma nella maggior parte dei casi il dolore si può superare.\r\n\r\nE allora? Come si fa ad essere felici? Avendo cura di noi, per esempio, del nostro corpo, delle nostre relazioni. Cercare di stare bene sul posto di lavoro, fare qualcosa o più cose che ci piacciono, cercare di ritagliarsi tempo per sè, per citare solo alcune delle preziose riflessioni ricavate al Tempo delle donne, che offrono spunti di riflessione per cercare questa felicità a cui tanto si anela.\r\n\r\nMa, le filosofie orientali suggeriscono anche altri tipi di ricerca. Armonia con l’ambiente, godere del verde, del cielo azzurro, del mare dell’acqua e delle piccole cose viste con lo stupore di un bambino che si incanta per un tramonto o perchè vede la luna. Che si incanta insomma per le piccole meraviglie del mondo e della vita. Forse questo può esser un buon punto di partenza per vivere pienamente.', 'Dr.ssaSerena Fuart', '2018-09-18', 1),
(2, './assets/Posts-Example/post2.jpg', 'Test', 'Esprimere l’emozione della rabbia', 'La rabbia è un’emozione che viene spesso etichettata come negativa, come qualcosa che va controllato, eliminato o, nel migliore dei casi, sfogato. Quando ciò avviene è alla manifestazione inappropriata dell’emozione della rabbia che ci si riferisce, non all’emozione in sé.\r\n\r\nIn realtà la rabbia è un’emozione umana normale e salutare. Si può facilmente immaginare la sua funzione positiva pensando ad una situazione in cui una persona riceve uno sgambetto e non reagisce. Quella persona non è in contatto con l’emozione della rabbia o la contatta ma non si permette di esprimerla. L’altro può pensare che sia “normale” o giusto fargli lo sgambetto e potrebbero aumentare le probabilità che accada nuovamente. La persona che non sta in contatto con l’emozione della rabbia non si da’ la possibilità di mettere confini né di affermarsi, di dire dei buoni “no” per proteggersi.\r\n\r\nLa rabbia è dunque un sentimento primordiale di base che è determinato dall’istinto di difendersi per sopravvivere nell’ambiente in cui ci si trova. Ha quindi una funziona adattiva. Senza rabbia si e’ privi di protezione, senza rabbia siamo alla mercé delle reazioni altrui e non possiamo mettere in atto strategie buone per evitare di ricevere “sgambetti”. La rabbia usata costruttivamente aiuta a sviluppare fiducia in se stessi.', 'Dr.ssaEliana Giavi', '2018-08-03', 1),
(3, './assets/Posts-Example/post3.jpg', 'Crescita Personale', 'Sulle ali della volontà ', 'Nel linguaggio comune spesso la parola volontà gode di una pubblicità negativa, come se il suo scopo fosse quella di farci compiere quelle azioni e tutto ciò che non avremmo il desiderio di fare, solitamente richiama una sensazione di “sforzo “ e di “dovere”.\r\n\r\nNiente di più lontano dal significato che le viene riconosciuto in terapia.\r\n\r\nAssagioli (fondatore della Psicosintesi) ha definito la volontà come la cenerentola della psicologia poiché per molti anni la psicologia ha ignorato lo studio dei processi volitivi, è infatti solo con la nascita della corrente umanistico esistenziale, che rivolge il suo interesse verso l’uomo, considerandone tutti gli aspetti e le dimensioni, che il tema della volontà ha ripreso interesse.\r\n\r\nTra queste correnti psicologiche la Psicosintesi ha partecipato alla riscoperta della volontà descrivendola nei suoi aspetti costitutivi e riaffermandone la centralità sia nella vita che nella psicologia.\r\n\r\nAssagioli nel suo libro “Atto di volontà” la introduce definendola come un’esperienza esistenziale, che si sostanzia di tre aspetti: il primo è dato dal riconoscimento che la volontà esiste, il secondo riguarda la consapevolezza di avere una volontà e il terzo riguarda la scoperta di essere una volontà.\r\n\r\nLa rivelazione della volontà può apparire come una luce che ispira e indica la strada ma che può divenire intermittente, “la consapevolezza nuova che essa genera infatti è facilmente sommersa dall’afflusso continuo di impulsi, desideri, emozioni ed idee” (Assagioli, 1977 pg. 15).', 'Dr.ssaMonica Guazzini', '2018-04-05', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
