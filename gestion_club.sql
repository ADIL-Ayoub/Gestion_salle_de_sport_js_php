-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 23 mai 2023 à 15:01
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_club`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idAdmin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `username`, `email`, `password`) VALUES
(1, 'admin1', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id_Inscription` int NOT NULL AUTO_INCREMENT,
  `id_Membre` int NOT NULL,
  `id_planInscription` int NOT NULL,
  `date_inscription` date NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_Inscription`),
  KEY `n2` (`id_planInscription`),
  KEY `n1` (`id_Membre`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_Inscription`, `id_Membre`, `id_planInscription`, `date_inscription`, `etat`) VALUES
(46, 38, 12, '2023-05-23', 'confirmé'),
(47, 38, 13, '2023-05-23', 'confirmé'),
(44, 38, 15, '2023-05-23', ' En attente'),
(48, 38, 14, '2023-05-23', 'confirmé');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

DROP TABLE IF EXISTS `membre`;
CREATE TABLE IF NOT EXISTS `membre` (
  `id_membre` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id_membre`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `nom`, `prenom`, `adresse`, `email`, `telephone`, `password`) VALUES
(35, 'aziz', 'mohammed', 'berkan', 'aziz@gmail.com', '061234', '[value-7]'),
(33, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]'),
(32, 'zedfvg', '[value-3]', '[value-4]', '[value-5]', '[value-6]', '[value-7]'),
(38, 'ADIL', 'Ayoub', '234', 'ayoub@gmail.com', '06543', 'ayoub');

-- --------------------------------------------------------

--
-- Structure de la table `planinscription`
--

DROP TABLE IF EXISTS `planinscription`;
CREATE TABLE IF NOT EXISTS `planinscription` (
  `idPlanInscription` int NOT NULL AUTO_INCREMENT,
  `nomPlanInscription` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` int NOT NULL,
  PRIMARY KEY (`idPlanInscription`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `planinscription`
--

INSERT INTO `planinscription` (`idPlanInscription`, `nomPlanInscription`, `description`, `prix`) VALUES
(16, 'natation', 'natation description', 7011),
(12, 'football', 'footbaaaaaall', 1),
(13, 'tennis', 'teenniiiisss', 2),
(14, 'box', 'boooox', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
