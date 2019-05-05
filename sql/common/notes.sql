SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `notes` (`id`, `type`, `title`) VALUES
(17, 'toDo', 'Fare la spesa'),
(18, 'default', 'Sbobinare');
COMMIT;

DROP TABLE IF EXISTS `note_contents`;
CREATE TABLE `note_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `note_id` (`note_id`),
  CONSTRAINT `note_contents_ibfk_1` FOREIGN KEY (`note_id`) REFERENCES `notes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `note_contents` (`id`, `note_id`, `value`, `done`) VALUES
(15, 17, 'Cetrioli', 1),
(16, 17, 'Melanzane', 1),
(17, 17, 'Carciofi', 1),
(18, 18, 'L\'audio si trova nella USB arancione', 0);