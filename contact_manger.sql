-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 06:55 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_manger`
--
CREATE DATABASE IF NOT EXISTS `contact_manger` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `contact_manger`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `group_id`, `name`, `company`, `email`, `phone`, `address`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 'Jordy Legros', 'Swift-Friesen', 'ndickinson@hotmail.com', '475.279.8000', 'McCullough Spring 42502 New Rashawn', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(2, 2, 'Miss Amber McGlynn', 'VonRueden, Dach and Lakin', 'lindsay.will@gmail.com', '(705) 708-6908 x7552', 'Flatley Stream 30856-8963 Javontemouth', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(3, 1, 'Emmanuel Smitham Sr.', 'Flatley, Schuster and Lueilwitz', 'predovic.jazmin@hotmail.com', '689-836-5583 x6708', 'Brielle Skyway 78494 West Adelatown', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(4, 3, 'Triston Doyle', 'Koepp, Wisozk and Johnston', 'dpredovic@crona.com', '576-200-2365', 'Axel Trace 67771 North Marina', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(5, 3, 'Isabell Stehr', 'Daniel-Hoppe', 'angelica50@boehm.com', '1-360-607-7299 x189', 'Harris Estate 85448 Madilyntown', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(6, 3, 'Marshall Bosco', 'Toy, Reinger and Walker', 'dulce00@hotmail.com', '(465) 800-2651 x13549', 'Towne Terrace 75135-2143 Hauckshire', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(7, 1, 'Brenden Doyle V', 'D''Amore-Hermiston', 'beahan.renee@hotmail.com', '+18546867439', 'Gibson Forges 91648-3031 Lake Jarrett', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(8, 3, 'Dr. Amari Ledner Jr.', 'Marquardt, Mueller and Gutkowski', 'kari.pfeffer@mclaughlin.net', '512-808-3298 x802', 'Tremblay Glens 63792 Adelabury', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(9, 3, 'Nikki Runolfsdottir', 'Ondricka LLC', 'bvon@kessler.com', '828-856-9490 x200', 'Carolyne Turnpike 59681 Franciscoberg', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(10, 1, 'alaa Hauck', 'Bradtke and Sons', 'ferry.kayli@yahoo.com', '669-222-1761', 'Lupe Glens 85894-1254 Strackemouth', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-06 14:41:31'),
(11, 2, 'Jaclyn Cronin MD', 'Tromp PLC', 'tre.zemlak@oconnell.biz', '1-719-903-8944 x448', 'Lilla Harbor 11814 South Orion', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(12, 1, 'Prof. Horacio Boyle', 'Welch Group', 'clarabelle66@yahoo.com', '274-600-7751 x76618', 'Jaskolski Overpass 54618 Emmanuelville', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(13, 1, 'Shanna Heathcote', 'Prohaska, Ratke and Gerhold', 'maxie.emmerich@emmerich.com', '532.740.7277 x987', 'Pfeffer Mount 88310 Coleview', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(14, 2, 'Ibrahim Rogahn', 'Wunsch PLC', 'christine09@yahoo.com', '907-512-6727 x25015', 'Pollich Centers 17902 Port Kameronton', 'assets/img/avatar5.png', '2016-11-04 12:55:22', '2016-11-04 12:55:22'),
(15, 1, 'Peter Grant II', 'Jacobi, Abshire and Kutch', 'demetrius.stark@volkman.com', '+1-741-700-8419', 'Evalyn Common 54370-1077 Port Salmashire', 'assets/img/2016-11-04-06-43-48_955c01f49c446bf8617f5d176c33f2202a94f53a.jpg', '2016-11-04 12:55:22', '2016-11-04 16:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Family', '2016-11-04 12:55:21', '2016-11-04 12:55:21'),
(2, 'Friends', '2016-11-04 12:55:21', '2016-11-04 12:55:21'),
(3, 'Clients', '2016-11-04 12:55:21', '2016-11-04 12:55:21'),
(4, 'sexy', '2016-11-06 15:40:41', '2016-11-06 15:40:41'),
(9, 'phones', '2016-11-06 15:53:04', '2016-11-06 15:53:04'),
(10, 'work', '2016-11-06 15:54:18', '2016-11-06 15:54:18'),
(11, 'home', '2016-11-06 15:54:49', '2016-11-06 15:54:49'),
(12, 'text', '2016-11-06 15:55:17', '2016-11-06 15:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_03_195628_create_groups_and_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_group_id_foreign` (`group_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
