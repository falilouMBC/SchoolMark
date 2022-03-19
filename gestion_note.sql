-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 10 mars 2022 à 19:11
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_note`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`login`, `password`) VALUES
('falilou', 'passer123');

-- --------------------------------------------------------

--
-- Structure de la table `assistant`
--

CREATE TABLE `assistant` (
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `assistant`
--

INSERT INTO `assistant` (`login`, `password`) VALUES
('assist', '1234passer');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(11) NOT NULL,
  `nomclasse` varchar(50) NOT NULL,
  `id_filiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `nomclasse`, `id_filiere`) VALUES
(18, 'LPTI3 DAR', 1),
(19, 'LPTI3 ASR', 1),
(20, 'LPTI3 RT', 1),
(21, 'LIPMEN3', 2);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etu` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nomComplet` varchar(50) NOT NULL,
  `id_classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etu`, `login`, `password`, `nomComplet`, `id_classe`) VALUES
(1, 'ESMT1110', '5415594g', 'Falilou CISSE', 18),
(2, 'ESMT1111', '54155674g', 'Niambe Gueye', 18),
(3, 'ESMT1112', '5415674g', 'Diatou BEYE', 18),
(4, 'ESMT1113', '23456H', 'Fatou DIOP', 19),
(5, 'ESMT1114', '23456HFF', 'Fatou DIA', 19),
(6, 'ESMT1115', '23HFFFFF', 'Pathe BA', 19),
(7, 'ESMT1116', '123456', 'Yssouf Diatara', 20),
(8, 'ESMT1117', '123456jhjh', 'Khadija DIONGUE', 20),
(9, 'ESMT1118', '123456', 'Saliou FAYE', 20),
(13, 'ESMT1119', '1234567A', 'Marwan RABE', 18);

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id_filiere` int(11) NOT NULL,
  `nomFiliere` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `filiere`
--

INSERT INTO `filiere` (`id_filiere`, `nomFiliere`) VALUES
(1, 'Informatique'),
(2, 'Management');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id_matiere` int(11) NOT NULL,
  `intitule` varchar(50) NOT NULL,
  `id_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id_matiere`, `intitule`, `id_prof`) VALUES
(1, 'JAVA', 2),
(2, 'Jee et SOA', 1),
(4, 'Developpement Web', 3);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `login_etu` varchar(50) NOT NULL,
  `matiere` varchar(50) NOT NULL,
  `note` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `login_etu`, `matiere`, `note`) VALUES
(1, 'ESMT1110', 'JAVA', 13),
(2, 'ESMT1110', 'Jee et SOA', 15),
(3, 'ESMT1110', 'Developpement Web', 10),
(4, 'ESMT1111', 'JAVA', 19),
(5, 'ESMT1111', 'Jee et SOA', 18),
(6, 'ESMT1111', 'Developpement Web', 17),
(7, 'ESMT1112', 'JAVA', 17),
(8, 'ESMT1112', 'Jee et SOA', 19),
(9, 'ESMT1112', 'Developpement Web', 20),
(10, 'ESMT1115', 'JAVA', 12),
(11, 'ESMT1115', 'Jee et SOA', 14),
(12, 'ESMT1115', 'Developpement Web', 18),
(13, 'ESMT1118', 'Jee et SOA', 12);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id_prof` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nomComplet` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id_prof`, `login`, `password`, `nomComplet`) VALUES
(1, 'mDer@gmail.com', '1234', 'Moustapha DER'),
(2, 'ghislain.akinocho@esmt.etu', '12345', 'Guislain AKINOCHO'),
(3, 'JM.preira@esmt.etu', '123457', 'Jean Mari Preira'),
(4, 'Cissefalilou8@gmail.com ', '5415594', 'Falilou cissse');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profil` varchar(50) NOT NULL,
  `id_ens` int(11) NOT NULL,
  `id_etu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD UNIQUE KEY `indexLog` (`login`);

--
-- Index pour la table `assistant`
--
ALTER TABLE `assistant`
  ADD UNIQUE KEY `gjgj` (`login`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`),
  ADD KEY `indexFiliere` (`id_filiere`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etu`),
  ADD UNIQUE KEY `logEtu` (`login`),
  ADD KEY `id_classe` (`id_classe`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id_filiere`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id_matiere`),
  ADD UNIQUE KEY `intitule` (`intitule`),
  ADD KEY `indexEtu3` (`id_prof`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_etu` (`login_etu`),
  ADD KEY `matiere` (`matiere`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id_prof`),
  ADD UNIQUE KEY `uniqueLog` (`login`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `indexEns` (`id_ens`),
  ADD KEY `indexEtu` (`id_etu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id_filiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id_matiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `indexFiliere` FOREIGN KEY (`id_filiere`) REFERENCES `filiere` (`id_filiere`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`);

--
-- Contraintes pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD CONSTRAINT `indexEtu3` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`login_etu`) REFERENCES `etudiant` (`login`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`matiere`) REFERENCES `matiere` (`intitule`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `indexEtu` FOREIGN KEY (`id_etu`) REFERENCES `etudiant` (`id_etu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
