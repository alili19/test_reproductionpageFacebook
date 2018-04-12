-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 12 Avril 2018 à 13:10
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test_sportsweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `prenomUtilisateur` varchar(255) COLLATE utf8_bin NOT NULL,
  `nomUtilisateur` varchar(255) COLLATE utf8_bin NOT NULL,
  `mdpUtilisateur` varchar(255) COLLATE utf8_bin NOT NULL,
  `sexeUtilisateur` int(1) NOT NULL,
  `naissanceUtilisateur` date NOT NULL,
  `loginUtilisateur` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `prenomUtilisateur`, `nomUtilisateur`, `mdpUtilisateur`, `sexeUtilisateur`, `naissanceUtilisateur`, `loginUtilisateur`) VALUES
(2, 'Alison', 'Koudossou Messan', 'alison1234', 0, '1998-11-19', '0987654321'),
(3, 'Maria', 'Hat', 'mariamaria', 0, '1971-11-17', 'maria.hat@gmail.com'),
(8, 'Benjamin', 'Lafit', 'lafitbenja', 1, '1989-04-22', '0987654312'),
(13, 'Jean', 'Nouveau', 'ali', 1, '1900-01-01', '123456789');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD UNIQUE KEY `U_utilisateur` (`nomUtilisateur`,`prenomUtilisateur`,`naissanceUtilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
