-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telshop`
--

-- --------------------------------------------------------

--
-- Table structure for table`panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id_article` int(11) NOT NULL,
  `marque_article` varchar(200) NOT NULL,
  `nom_article` varchar(255) NOT NULL,
  `prix_article` double(10,3) NOT NULL,
  `image_article` varchar(255) NOT NULL,
  `enrégistrement_article` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id_article`, `marque_article`, `nom_article`, `prix_article`, `image_article`, `enrégistrement_article`) VALUES
(1, 'Samsung', 'Samsung Galaxy NOte10', 400.000, './images/produits/samsung/1.webp', '2020-03-28 11:08:57'), -- NOW()
(2, 'Samsung', 'Samsung Galaxy S20+', 476.000, './images/produits/samsung/2.webp', '2020-03-28 11:08:57'),
(3, 'Samsung', 'Samsung Galaxy Galaxy Z Fold2', 750.000, './images/produits/samsung/3.webp', '2020-03webp-28 11:08:57'),
(4, 'Samsung', 'Samsung Galaxy S21 Ultra', 600.000, './images/produits/samsung/4.webp', '2020-03-28 11:08:57'),
(5, 'Samsung', 'Samsung Galaxy S8', 122.000, './images/produits/samsung/5.webp', '2020-03-28 11:08:57'),
(6, 'Samsung', 'Samsung Galaxy S9', 150.000, './images/produits/samsung/6.webp', '2020-03-28 11:08:57'),
(7, 'Samsung', 'Samsung Galaxy S20', 425.000, './images/produits/samsung/7.webp', '2020-03-28 11:08:57'),
(8, 'Samsung', 'Samsung Galaxy A42', 200.000, './images/produits/samsung/10.webp', '2020-03-28 11:08:57'),
(9, 'Samsung', 'Samsung Galaxy A40', 175.000, './images/produits/samsung/9.webp', '2020-03-28 11:08:57'),
(10, 'Samsung', 'Samsung Galaxy A31', 145.000, './images/produits/12.webp', '2020-03-28 11:08:57'),
(11, 'Xiaomi', 'Xiaomi Redmi 9', 152.000, './images/produits/xiaomi/1.webp', '2020-03-28 11:08:57'),
(12, 'Xiaomi', 'Xiaomi Redmi Note10 Pro', 300.000, './images/produits/xiaomi/2.webp', '2020-03-28 11:08:57'),
(13, 'Xiaomi', 'Xiaomi Poco X3', 200.000, './images/produits/xiaomi/3.webp', '2020-03-28 11:08:57'),
(14, 'Xiaomi', 'Xiaomi Black Shark 3', 132.000, './images/produits/xiaomi/4.webp', '2020-03-28 11:08:57'),
(15, 'Xiaomi', 'Xiaomi Redmi Poco M3', 152.000, './images/produits/xiaomi/5.webp', '2020-03-28 11:08:57'),
(16, 'Xiaomi', 'Xiaomi MI 10 Pro ', 600.000, './images/produits/xiaomi/6.webp', '2020-03-28 11:08:57'),
(17, 'Xiaomi', 'Xiaomi Redmi Note9', 350.000, './images/produits/xiaomi/7.webp', '2020-03-28 11:08:57'),
(18, 'Xiaomi', 'Xiaomi Redmi 9T', 400.0000, './images/produits/xiaomi/8.webp', '2020-03-28 11:08:57'),
(19, 'Xiaomi', 'Xiaomi Redmi Note8', 300.000, './images/produits/xiaomi/9.webp', '2020-03-28 11:08:57'),
(20, 'Xiaomi', 'Xiaomi Redmi Note7', 250.000, './images/produits/xiaomi/10.webp', '2020-03-28 11:08:57'),
(21, 'Huawei', 'Huawei P40 Pro', 500.000, './images/produits/huawei/1.webp', '2020-03-28 11:08:57'),
(22, 'Huawei', 'Huawei PSmart 2021', 152.000, './images/produits/huawei/2.webp', '2020-03-28 11:08:57'),
(23, 'Huawei', 'Huawei Mate20 Pro', 700.000, './images/produits/huawei/3.webp', '2020-03-28 11:08:57'),
(24, 'Huawei', 'Huawei P10', 80.000, './images/produits/huawei/4.webp', '2020-03-28 11:08:57'),
(25, 'Huawei', 'HuaweiP20 Lite', 130.000, './images/produits/huawei/5.webp', '2020-03-28 11:08:57'),
(26, 'Huawei', 'Huawei Mate 20', 500.000, './images/produits/huawei/6.jpg', '2020-03-28 11:08:57'),
(27, 'Huawei', 'Huawei P30', 150.000, './images/produits/huawei/7.jpg', '2020-03-28 11:08:57'),
(28, 'Huawei', 'Huawei P30 Pro', 175.00, './images/produits/huawei/7.webp', '2020-03-28 11:08:57'),
(29, 'Huawei', 'Huawei Mate 20 lite', 450.000, './images/produits/huawei/8.webp', '2020-03-28 11:08:57'),
(30, 'Huawei', 'Huawei Honor 20', 3502.000, './images/produits/huawei/6.webp', '2020-03-28 11:08:57'),
(31, 'Apple', 'Apple iPhone 12 Pro Max', 900.000, './images/produits/apple/1.webp', '2020-03-28 11:08:57'),
(32, 'Apple', 'Apple iPhone X', 400.000, './images/produits/apple/2.webp', '2020-03-28 11:08:57'),
(33, 'Apple', 'Apple iPhone 8', 300.000, './images/produits/apple/3.webp', '2020-03-28 11:08:57'),
(34, 'Apple', 'Apple iPhone 11', 600.000, './images/produits/apple/4.webp', '2020-03-28 11:08:57'),
(35, 'Apple', 'Apple iPhone XS', 480.000, './images/produits/apple/5.webp', '2020-03-28 11:08:57'),
(36, 'Apple', 'Apple iPhone 11Pro', 700.000, './images/produits/apple/6.webp', '2020-03-28 11:08:57'),
(37, 'Apple', 'Apple iPhone SE', 250.000, './images/produits/apple/7.webp', '2020-03-28 11:08:57'),
(38, 'Apple', 'Apple iPhone 7', 150.000, './images/produits/apple/8.webp', '2020-03-28 11:08:57'),
(39, 'Apple', 'Apple iPhone 12 Pro', 850.000, './images/produits/apple/9.webp', '2020-03-28 11:08:57'),
(40, 'Apple', 'Apple iPhone 7+', 200.000, './images/produits/apple/10.webp', '2020-03-28 11:08:57'),
(41, 'Asus', 'Asus ROG PHONE', 152.000, './images/produits/asus/1.webp', '2020-03-28 11:08:57'),
(42, 'Asus', 'Asus ZenFone 6 ', 400.000, './images/produits/asus/2.webp', '2020-03-28 11:08:57'),
(43, 'Asus', 'Asus ZenFone7', 600.000, './images/produits/asus/3.webp', '2020-03-28 11:08:57'),
(44, 'Asus', 'Asus ZenFone4', 400.000, './images/produits/asus/4.webp', '2020-03-28 11:08:57'),
(45, 'Asus', 'Asus Rog Phone 3', 300.000, './images/produits/asus/5.webp', '2020-03-28 11:08:57'),
(46, 'Asus', 'Asus Rog Phone 5', 500.000, './images/produits/asus/6.webp', '2020-03-28 11:08:57'),
(47, 'Asus', 'Asus ZenFone 3', 400.000, './images/produits/asus/7.webp', '2020-03-28 11:08:57'),
(48, 'Asus', 'Asus ZenFone Live', 350.000, './images/produits/asus/8.webp', '2020-03-28 11:08:57'),
(49, 'Asus', 'Asus ZenFone 2', 200.000, './images/produits/asus/9.webp', '2020-03-28 11:08:57'),
(50, 'Asus', 'Asus ZenFone AR', 340.000, './images/produits/asus/10.webp', '2020-03-28 11:08:57'),
(51, 'Google', 'Google Pixel 3', 300.00, './images/produits/google/1.webp', '2020-03-28 11:08:57'),
(52, 'Google', 'Google Pixel 5', 500.00, './images/produits/google/2.webp', '2020-03-28 11:08:57'),
(53, 'Google', 'Google Pixel 4a', 450.000, './images/produits/google/3.webp', '2020-03-28 11:08:57'),
(54, 'Google', 'Google Pixel 3a', 350.000, './images/produits/google/4.webp', '2020-03-28 11:08:57'),
(55, 'Google', 'Google Pixel 3XL', 375.700, './images/produits/google/5.webp', '2020-03-28 11:08:57'),
(56, 'Google', 'Google Pixel 4', 400.000, './images/produits/google/6.webp', '2020-03-28 11:08:57'),
(57, 'Google', 'Google Pixel C', 770.000, './images/produits/google/7.webp', '2020-03-28 11:08:57'),
(58, 'Google', 'Google Pixel 2XL', 275.000, './images/produits/google/8.webp', '2020-03-28 11:08:57'),
(59, 'Google', 'Google Pixel XL', 100.000, './images/produits/google/9.webp', '2020-03-28 11:08:57'),
(60, 'Google', 'Google Pixel 2', 200.000, './images/produits/google/10.webp', '2020-03-28 11:08:57');


-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prénom` varchar(100) NOT NULL,
  `date_enrégistrement` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prénom`, `date_enrégistrement`) VALUES
(1, 'ADAM', 'Mohamed', '2020-03-28 13:07:17'),
(2, 'MED', 'Dam', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table`liste_de_souhait`
--

CREATE TABLE `liste_de_souhait` (
  `id_panier` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_article` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart` `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`);

--
-- Indexes for table  `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_article`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table  `utilisateur`
--
ALTER TABLE `utiliateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
