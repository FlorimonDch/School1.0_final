-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 30 Avril 2018 à 21:09
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_school`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id_Cours` int(11) NOT NULL,
  `groupe` varchar(200) NOT NULL,
  `session` int(11) NOT NULL,
  `matiere` varchar(200) NOT NULL,
  `salle` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `heure_debut` varchar(200) NOT NULL,
  `heure_fin` varchar(200) NOT NULL,
  `enseignant` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`id_Cours`, `groupe`, `session`, `matiere`, `salle`, `date`, `heure_debut`, `heure_fin`, `enseignant`) VALUES
(1, 'Informatique1', 1, 'Bases de données', 'b-10', '2018-04-30', '8h', '10h', 'ens1 ens1'),
(2, 'Informatique1', 1, 'Réseaux', 'b-05', '2018-04-30', '9h', '12h', 'ens1 ens1'),
(3, 'Informatique1', 1, 'Anglais', 'b-500', '2018-04-30', '13h', '16h', 'ens1 ens1'),
(4, 'Informatique1', 1, 'IA', 'b-101', '2018-05-14', '8h', '12h', 'ens1 ens1'),
(5, 'Informatique1', 1, 'TOA', 'Amphi', '2018-05-04', '9h', '12h', 'ens1 ens1'),
(6, 'Informatique1', 1, 'Java', 'b-10', '2018-05-14', '8h', '12h', 'Balbali Balbali');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_Groupe` int(11) NOT NULL,
  `Libelle_Groupe` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`id_Groupe`, `Libelle_Groupe`) VALUES
(1, 'Informatique1'),
(2, 'Biologie1'),
(3, 'Mathématiques1'),
(4, 'Anglais1'),
(9, 'Informatique2');

-- --------------------------------------------------------

--
-- Structure de la table `individu`
--

CREATE TABLE `individu` (
  `idIndividu` int(11) NOT NULL,
  `nomInd` varchar(200) NOT NULL,
  `prenomInd` varchar(200) NOT NULL,
  `adresseInd` varchar(200) NOT NULL,
  `telInd` varchar(200) NOT NULL,
  `emailInd` varchar(200) NOT NULL,
  `statutInd` varchar(20) NOT NULL,
  `loginInd` varchar(200) NOT NULL,
  `mdpInd` varchar(200) NOT NULL,
  `groupe` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `individu`
--

INSERT INTO `individu` (`idIndividu`, `nomInd`, `prenomInd`, `adresseInd`, `telInd`, `emailInd`, `statutInd`, `loginInd`, `mdpInd`, `groupe`) VALUES
(1, 'root', 'root', 'evry', '0678901234', 'root@gmail.com', 'Administrateur', 'root', 'root', ''),
(11, 'secret', 'secret', 'segzrg', '055545', 'secret', 'Secrétaire', 'secret', 'secret', ''),
(27, 'Balbali', 'Balbali', 'evry', '8740666', 'efgr@gmail.com', 'Enseignant', 'balbali', 'balbali', ''),
(15, 'Secretaire', 'Secretaire', 'qziufs', '99999', 'rzge@gmail.com', 'Secrétaire', 'etu3', 'etu3', ''),
(20, 'BEN HASSEN', 'Hassen', 'sgdb2', '06517863', 'hbenh@gmail.com', 'Etudiant', 'hassen', 'hassen', 'Informatique1'),
(22, 'RAHMANI', 'Kouceila', 'maison alford', '065895632', 'kourah@gmail.com', 'Etudiant', 'yahia', 'yahia', 'Informatique1'),
(25, 'DANCHAU', 'florimon', 'evry2', '068496532', 'ezfrthj@gmail.com', 'Etudiant', 'florimon', 'florimon', 'Informatique1'),
(29, 'etu1', 'etu1', 'egefsg', '0516156', 'etu1@gmail.com', 'Etudiant', 'etu1', 'etu1', 'Biologie1'),
(30, 'etu2', 'etu2', 'gregeg', '51254', 'etu2@gmai.com', 'Etudiant', 'etu2', 'etu2', 'Mathématiques1'),
(31, 'etu3', 'etu3', 'dvbhjk', '948651320', 'etu3@gmail.com', 'Etudiant', 'etu3', 'etu3', 'Anglais1'),
(32, 'etu4', 'etu4', 'zqqergthy', '454512', 'etu4@gmail.com', 'Etudiant', 'etu4', 'etu4', 'Mathématiques1'),
(33, 'etu5', 'etu5', 'ebfhjfk', '4651320', 'etu5@gmail.com', 'Etudiant', 'etu5', 'etu5', 'Mathématiques1'),
(34, 'etu6', 'etu6', 'tyhjbk', '5412', 'etu6@gmail.com', 'Etudiant', 'etu6', 'etu6', 'Informatique2'),
(35, 'etu7', 'etu7', 'rjhkfds', '48512', 'etu7@gmail.com', 'Etudiant', 'etu7', 'etu7', 'Informatique2'),
(36, 'ens1', 'ens1', 'fefsdgb', '849512', 'ens1@gmail.com', 'Enseignant', 'ens1', 'ens1', NULL),
(37, 'directeur', 'directeur', 'directeur', '4605032', 'directeur@gmail.com', 'Directeur', 'direc', 'direc', NULL),
(38, 'directeur2', 'directeur2', 'fertfyj', '046515', 'efsergf@gmail.com', 'Directeur', 'direc2', 'direc2', NULL),
(39, 'ens2', 'ens2', 'zertyjg', '854210', 'ens2@gmail.com', 'Enseignant', 'ens2', 'ens2', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `idStatut` int(11) NOT NULL,
  `nomStatut` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `statut`
--

INSERT INTO `statut` (`idStatut`, `nomStatut`) VALUES
(1, 'Administrateur'),
(2, 'Etudiant'),
(3, 'Secrétaire'),
(4, 'Directeur'),
(5, 'Enseignant');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id_Cours`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_Groupe`);

--
-- Index pour la table `individu`
--
ALTER TABLE `individu`
  ADD PRIMARY KEY (`idIndividu`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`idStatut`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id_Cours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_Groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `individu`
--
ALTER TABLE `individu`
  MODIFY `idIndividu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `idStatut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
