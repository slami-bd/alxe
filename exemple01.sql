-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 19 fév. 2020 à 21:12
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exemple01`
--

-- --------------------------------------------------------

--
-- Structure de la table `adminstrateur`
--

CREATE TABLE `adminstrateur` (
  `id_admin` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `niveau` enum('editeur','admin','moderateur','analyst') NOT NULL,
  `mot_pass` varchar(50) NOT NULL,
  `genre` varchar(10) NOT NULL DEFAULT 'admin',
  `photo` varchar(50) NOT NULL DEFAULT 'admin.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `adminstrateur`
--

INSERT INTO `adminstrateur` (`id_admin`, `nom`, `niveau`, `mot_pass`, `genre`, `photo`) VALUES
(1, 'slami', 'admin', '1234', 'admin', 'Jase-transparent-square-300x300@2x.png'),
(2, 'yazid', 'editeur', '1234', 'admin', 'admin.png'),
(3, 'moh', 'editeur', '1234', 'admin', 'card-profile2-square.jpg'),
(46, 'aaa', 'editeur', 'aa', 'admin', 'admin.png'),
(47, 'zzzz', 'editeur', 'aa', 'admin', 'card-profile2-square.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `benevol`
--

CREATE TABLE `benevol` (
  `id_benevol` int(11) NOT NULL,
  `nom_b` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date_n` date DEFAULT NULL,
  `mot_pass` varchar(50) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `num_tele` int(10) DEFAULT NULL,
  `sexe` enum('homme','femme','autre') DEFAULT NULL,
  `photo` varchar(100) NOT NULL DEFAULT 'admin.png',
  `description` varchar(200) NOT NULL DEFAULT 'About you',
  `specialite` enum('dentist','General Medicine','Specialist medicine','other') NOT NULL DEFAULT 'other',
  `validation` enum('oui','non') NOT NULL DEFAULT 'non',
  `genre` varchar(10) NOT NULL DEFAULT 'benevol'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `benevol`
--

INSERT INTO `benevol` (`id_benevol`, `nom_b`, `prenom`, `email`, `date_n`, `mot_pass`, `adresse`, `num_tele`, `sexe`, `photo`, `description`, `specialite`, `validation`, `genre`) VALUES
(1, 'salim', 'gggg', 'aaaa@kopyo', '2000-02-15', '1', 'aaaa', 2147483647, 'autre', 'card-profile1-square.jpg', 'a', 'other', 'oui', 'benevol'),
(2, 'amina', 'smah', 'qqqq@gmail.fr', '1993-01-10', '12', 'zabana ', 2147483647, 'homme', 'avatar.jpg', 'a', 'other', 'oui', 'benevol'),
(3, 'salim', 'dani', 'salim@hotmail.fr', '2000-12-12', '1234', 'zabana blida', 661898589, 'homme', 'BryceLuff_thumb.webp', 'a', 'other', 'non', 'benevol'),
(4, 'rabia', 'khaira', 'rabia@hotmail.fr', '1993-04-15', '1234', 'zabana blida', 661898589, 'femme', 'admin.png', 'a', 'Specialist medicine', 'non', 'benevol'),
(102, 'Eugene', 'Kopyova', 'eugene@kopyov.com', '2000-01-01', '1234', 'zabana blida', 2147483647, 'homme', 'new_logo.png', 'uoil', 'Specialist medicine', 'non', 'benevol'),
(103, 'zzz', 'aaa', 'eugene@kopyov.aa', '1999-02-02', '1234', 'aaa', 2147483647, 'homme', 'cover.jpg', 'eyrjn', 'Specialist medicine', 'non', 'benevol');

-- --------------------------------------------------------

--
-- Structure de la table `ensginants`
--

CREATE TABLE `ensginants` (
  `id_ensginan` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `num_tele` int(10) NOT NULL,
  `spicialite` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL DEFAULT 'admin.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ensginants`
--

INSERT INTO `ensginants` (`id_ensginan`, `nom`, `prenom`, `num_tele`, `spicialite`, `photo`) VALUES
(1, 'amine', 'ben gasam', 1111, 'Anglaise', 'new_logo.png'),
(2, 'salim', 'dani', 2147483647, 'arab', 'admin.png'),
(3, 'ahemdzzz', 'rida', 2147483647, 'algo', 'marc.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `etudier`
--

CREATE TABLE `etudier` (
  `id_formation` int(11) NOT NULL,
  `id_ensginan` int(11) NOT NULL,
  `date_etude` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudier`
--

INSERT INTO `etudier` (`id_formation`, `id_ensginan`, `date_etude`) VALUES
(2, 2, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id_formation` int(11) NOT NULL,
  `desscription` varchar(500) DEFAULT NULL,
  `nom_f` varchar(50) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id_formation`, `desscription`, `nom_f`, `date_debut`, `date_fin`) VALUES
(1, 'a', 'formation 1', '2020-01-01', '2020-01-02'),
(2, 'b', 'formation 2', '2020-01-17', '2020-01-18'),
(3, 'c...', 'formation 3', '2020-01-15', '2020-01-31'),
(4, 'd', 'formation 4	', '2020-01-11', '2020-01-11');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_benevol` int(11) DEFAULT NULL,
  `id_formation_in` int(11) DEFAULT NULL,
  `date_insc` date DEFAULT NULL,
  `valider` enum('oui','non') NOT NULL DEFAULT 'non'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_benevol`, `id_formation_in`, `date_insc`, `valider`) VALUES
(1, 1, '2020-02-13', 'non'),
(1, 4, '2020-02-13', 'non'),
(103, 3, '2020-02-13', 'oui'),
(2, 1, '2020-02-14', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `message_admin`
--

CREATE TABLE `message_admin` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `content` varchar(100) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message_admin`
--

INSERT INTO `message_admin` (`id`, `date`, `content`, `id_admin`) VALUES
(1, '2020-02-18 11:21:51', 'ipùikù', 1),
(2, '2020-02-18 11:25:51', 'salam ', 1);

-- --------------------------------------------------------

--
-- Structure de la table `message_b`
--

CREATE TABLE `message_b` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `content` varchar(100) NOT NULL,
  `id_benevol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `message_b`
--

INSERT INTO `message_b` (`id`, `date`, `content`, `id_benevol`) VALUES
(5, '2020-02-15 00:00:00', 'etyjhjy', 2),
(6, '2020-02-16 00:00:00', 'scsc', 1),
(20, '2020-02-16 01:01:41', 'ihm', 1),
(22, '2020-02-18 10:54:40', 'o_m', 2),
(23, '2020-02-18 10:57:29', 'ééééééééé', 2),
(24, '2020-02-18 11:09:56', '_', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adminstrateur`
--
ALTER TABLE `adminstrateur`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `benevol`
--
ALTER TABLE `benevol`
  ADD PRIMARY KEY (`id_benevol`),
  ADD KEY `prenom` (`prenom`),
  ADD KEY `nom` (`nom_b`),
  ADD KEY `prenom_2` (`prenom`);

--
-- Index pour la table `ensginants`
--
ALTER TABLE `ensginants`
  ADD PRIMARY KEY (`id_ensginan`);

--
-- Index pour la table `etudier`
--
ALTER TABLE `etudier`
  ADD KEY `id_formation` (`id_formation`),
  ADD KEY `id_ensginan` (`id_ensginan`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD KEY `inscription` (`id_benevol`) USING BTREE,
  ADD KEY `id_formation` (`id_formation_in`);

--
-- Index pour la table `message_admin`
--
ALTER TABLE `message_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Index pour la table `message_b`
--
ALTER TABLE `message_b`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_benevol` (`id_benevol`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adminstrateur`
--
ALTER TABLE `adminstrateur`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `benevol`
--
ALTER TABLE `benevol`
  MODIFY `id_benevol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT pour la table `ensginants`
--
ALTER TABLE `ensginants`
  MODIFY `id_ensginan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `message_admin`
--
ALTER TABLE `message_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `message_b`
--
ALTER TABLE `message_b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudier`
--
ALTER TABLE `etudier`
  ADD CONSTRAINT `etudier_ibfk_1` FOREIGN KEY (`id_formation`) REFERENCES `formations` (`id_formation`),
  ADD CONSTRAINT `etudier_ibfk_2` FOREIGN KEY (`id_ensginan`) REFERENCES `ensginants` (`id_ensginan`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`id_formation_in`) REFERENCES `formations` (`id_formation`),
  ADD CONSTRAINT `inscrition` FOREIGN KEY (`id_benevol`) REFERENCES `benevol` (`id_benevol`);

--
-- Contraintes pour la table `message_admin`
--
ALTER TABLE `message_admin`
  ADD CONSTRAINT `message_admin_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `adminstrateur` (`id_admin`);

--
-- Contraintes pour la table `message_b`
--
ALTER TABLE `message_b`
  ADD CONSTRAINT `message_b_ibfk_1` FOREIGN KEY (`id_benevol`) REFERENCES `benevol` (`id_benevol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
