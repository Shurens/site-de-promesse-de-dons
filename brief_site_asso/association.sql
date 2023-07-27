-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : jeu. 27 juil. 2023 à 16:36
-- Version du serveur : 8.0.33
-- Version de PHP : 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `association`
--

-- --------------------------------------------------------

--
-- Structure de la table `donations`
--

CREATE TABLE `donations` (
  `id` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `don` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `donations`
--

INSERT INTO `donations` (`id`, `nom`, `prenom`, `adresse`, `email`, `don`) VALUES
(1, 'Jean', 'Hugue', '1 chemin du lorem ipsum', 'JH@gmail.com', 5000),
(2, 'Jean', 'Pierre', '2 chemin du lorem ipsum', 'JP@gmail.com', 2347),
(3, 'Jean', 'Marie', '3 chemin du lorem ipsum', 'JM@gmail.com', 21),
(4, 'Jean', 'Michel', '4 chemin du lorem ipsum', 'JM@gmail.com', 64),
(5, 'Jean', 'Edouard', '5 chemin du lorem ipsum', 'JE@gmail.com', 987),
(6, 'Genereux', 'Donateur', '1 chemin du lorem ipsum doré', 'GD@gmail.com', 5513287),
(7, 'Jean', 'Neymar', '2 chemin du Lorem Ipsum Doré', 'JN@gmail.com', 566451),
(8, 'Jean', 'Donateur', '1 chemin du lorem ipsum terne', 'JD@gmail.com', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
