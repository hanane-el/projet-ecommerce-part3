-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 16 avr. 2020 à 22:58
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP : 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id12823880_checommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `username` varchar(13) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`username`, `password`, `email`, `nom`, `prenom`, `tel`) VALUES
('hhhh', 'hhhh', 'hh@gmail.com', 'hhhh', 'hhhh', '9999999');

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `idproduit` int(11) DEFAULT NULL,
  `client` varchar(13) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `prix` float NOT NULL,
  `type` varchar(20) NOT NULL,
  `qte` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `photo`, `prix`, `type`, `qte`, `description`) VALUES
(3, 'img2/products/women-2.jpg', 185, 'nouveaute-vetements', 10, 'tricot en laine à manches longues.'),
(4, 'img2/products/women-1.jpg', 220, 'nouveaute-vetements', 8, 'tricot en laine à manches longues.'),
(5, 'img2/products/product-6.jpg', 199, 'nouveaute-vetements', 12, 'tricot en laine à manches longues.'),
(6, 'img2/products/w2.jpg', 248, 'vetements', 14, 'tricot laine'),
(7, 'img2/products/w3.jpg', 310, 'vetements', 10, 'tricot laine'),
(8, 'img2/products/w9.jpg', 689, 'vetements', 6, 'jacket fourrure'),
(9, 'img2/products/im8.jpg', 214, 'vetements', 9, 'pontalon droit'),
(10, 'img2/products/im6.jpg', 299, 'vetements', 12, 'robe'),
(11, 'img2/products/im5.jpg', 247, 'vetements', 9, 'robe'),
(12, 'img2/products/w4.jpg', 438, 'vetements', 8, 'blazzer'),
(13, 'img2/products/w6.jpg', 269, 'vetements', 16, 'jean'),
(14, 'img2/products/AC1.jpg', 89, 'accessoires', 18, 'boucles rose gold'),
(15, 'img2/products/AC2.jpg', 75, 'accessoires', 13, 'ensemble bracelets'),
(16, 'img2/products/AC3.jpg', 67, 'accessoires', 14, 'ensemble bracelets'),
(17, 'img2/products/AC4.jpg', 53, 'accessoires', 23, 'collier'),
(18, 'img2/products/AC6.jpeg', 350, 'accessoires', 11, 'chapeau'),
(19, 'img2/products/AC8.jpg', 299, 'accessoires', 15, 'chapeau'),
(20, 'img2/products/AC9.jpg', 312, 'accessoires', 17, 'chapeau'),
(29, 'img2/products/ACC.jpg', 55, 'accessoires', 16, 'casquette'),
(30, 'img2/products/SC1.jpg', 209, 'sacs', 9, 'sac'),
(31, 'img2/products/SC2.jpg', 302, 'sacs', 17, 'sac'),
(32, 'img2/products/SC3.jpg', 245, 'sacs', 13, 'sac'),
(33, 'img2/products/SC4.jpg', 309, 'sacs', 10, 'sac'),
(34, 'img2/products/SC6.jpg', 367, 'sacs', 13, 'sac à dos'),
(35, 'img2/products/SC8.jpg', 389, 'sacs', 9, 'sac à dos'),
(36, 'img2/products/SC5.jpg', 289, 'sacs', 10, 'sac'),
(37, 'img2/products/SC7.jpg', 374, 'sacs', 16, 'sac à dos'),
(46, 'img2/products/CH10.jpg', 218, 'chaussures', 9, 'ballerines'),
(47, 'img2/products/CH11.jpg', 349, 'chaussures', 8, 'sandales talon'),
(48, 'img2/products/CH3.jpg', 204, 'chaussures', 9, 'ballerines'),
(49, 'img2/products/CH4.jpg', 449, 'chaussures', 8, 'escarpins'),
(50, 'img2/products/CH6.jpg', 300, 'chaussures', 18, 'baskets'),
(51, 'img2/products/CH8.jpg', 320, 'chaussures', 10, 'sandales talon'),
(52, 'img2/products/CH5.jpg', 749, 'chaussures', 8, 'baskets'),
(53, 'img2/products/CH9.jpg', 220, 'chaussures', 9, 'escarpins');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
