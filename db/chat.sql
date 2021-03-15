-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 15 mars 2021 à 23:12
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chat`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` int NOT NULL,
  `outgoing_msg_id` int NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(7, 1230874424, 568042092, 'salut'),
(6, 568042092, 568042092, 'salut toi'),
(5, 1230874424, 568042092, 'salut'),
(8, 1230874424, 1230874424, 'sal'),
(9, 568042092, 1230874424, 'sal'),
(10, 568042092, 1230874424, 'bonsoir'),
(11, 1230874424, 1230874424, 'boir'),
(12, 1230874424, 1230874424, 'saks'),
(13, 568042092, 1230874424, 'sak'),
(14, 1230874424, 1230874424, 'sallll'),
(15, 1230874424, 568042092, 'bons'),
(16, 568042092, 1230874424, 'sava'),
(17, 1230874424, 568042092, 'Je suis khaly'),
(18, 568042092, 1230874424, 'Hello'),
(19, 1230874424, 568042092, 'hi'),
(20, 1230874424, 1230874424, 'Hello'),
(21, 568042092, 1230874424, 'bons'),
(22, 1230874424, 568042092, 'sa'),
(23, 568042092, 1230874424, 'slt'),
(24, 568042092, 1230874424, 'Allo Ngoye'),
(25, 568042092, 1230874424, 'salut Afiss'),
(26, 1230874424, 568042092, 'kdgfks'),
(27, 568042092, 1230874424, 'man'),
(28, 1252398470, 568042092, 'salut Dior'),
(29, 1230874424, 33426568, 'salut Nguoye');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `unique_id` int NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 568042092, 'khaly', 'Traore', 'khaly.dieng@estim.sn', 'passe', '161572047127545453_552999948383372_7184358006900197676_n.jpg', 'Active now'),
(2, 1230874424, 'Ngoye', 'Dia', 'nguoye@gmail.com', 'passe', '16157292881_.jpg', 'Active now'),
(3, 1434140025, 'Afiss', 'Dia', 'afiss@gmail.com', 'passe', '1615807136wallpaperflare.com_wallpaper (1).jpg', 'offine now'),
(5, 413647956, 'Joua', 'Diame', 'joua@gmail.com', 'passe', '16158465619.jpg', 'offine now'),
(4, 1252398470, 'DIOR', 'DIENG', 'dior@gmail.com', 'passe', '1615814980wallpaperflare.com_wallpaper.jpg', 'offine now'),
(6, 630542180, 'Amina', 'Sarr', 'amina@gmail.com', 'passe', '16158466627.jpg', 'offine now'),
(7, 33426568, 'Fatoumata korka', 'Ba', 'korka@gmail.com', 'passe', '16158467194.jpg', 'Active now');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
