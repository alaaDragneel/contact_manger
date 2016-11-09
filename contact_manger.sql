-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2016 at 12:11 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

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
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `group_id`, `name`, `company`, `email`, `phone`, `address`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jeanette Buckridge', 'Green, Miller and Reichert', 'alaina.boyle@stiedemann.com', '537-273-6415 x51515', 'Lexie Burg 65438 South Cary', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(2, 1, 'Dorothy Bernhard III', 'Bruen, Breitenberg and Senger', 'zane.hammes@hotmail.com', '1-804-842-3597', 'Ashley Drives 06703-4638 West Bud', 'assets/img/avatar5.png', 1, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(3, 3, 'Sanford Casper IV', 'Gleason-Thompson', 'roberto62@gmail.com', '227-926-5478', 'Orn Junctions 20548 Corbinhaven', 'assets/img/avatar5.png', 3, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(4, 2, 'Alexandrine Ruecker DVM', 'Kuhic LLC', 'hessel.jess@witting.com', '398-879-1320', 'Schinner Brook 09359-4167 North Emoryton', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(5, 1, 'Cindy Schuppe I', 'Gerlach LLC', 'marquis41@schmidt.org', '1-539-519-1201 x1080', 'Danielle Underpass 14137-4060 East Estefania', 'assets/img/avatar5.png', 3, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(6, 2, 'Prof. Dallas Pagac', 'Robel Group', 'littel.baby@gerhold.com', '1-657-261-3651', 'Katelin Wells 25037 Baumbachchester', 'assets/img/avatar5.png', 3, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(7, 2, 'Prof. Wendell Bahringer', 'Wolff and Sons', 'rbreitenberg@gmail.com', '1-710-719-6996 x314', 'Karli Fall 64786 Port Curtton', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(8, 3, 'Creola Lindgren V', 'Metz-Collins', 'dibbert.dawson@hessel.com', '812.928.8785 x4409', 'Rogahn Meadow 69393-3460 South Elvis', 'assets/img/avatar5.png', 1, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(9, 1, 'Roxane Swaniawski', 'Kiehn-Greenfelder', 'jbogisich@yahoo.com', '(931) 678-4470', 'Magdalena Wells 65466 Port Mariliehaven', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(10, 1, 'Leatha Flatley', 'Satterfield-Schmeler', 'kling.leonardo@kerluke.com', '896.747.2798', 'Abagail Estates 22858 West Lilian', 'assets/img/avatar5.png', 3, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(11, 3, 'Jazmin Sauer', 'Beer Group', 'kale.weissnat@bernhard.com', '293-320-4184 x8527', 'DuBuque Valleys 15808-8345 Runolfssonmouth', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(12, 2, 'Prof. Percy Roob III', 'Gleichner PLC', 'jo.orn@herzog.com', '1-212-798-4715 x864', 'Veum Junctions 44160-5691 East Candido', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(13, 1, 'Boyd Cronin', 'Wisozk Inc', 'sasha.ohara@yahoo.com', '489.488.9691', 'Heidenreich Street 91785-4918 Shieldshaven', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(14, 1, 'Darron Volkman DVM', 'Beer Group', 'rasheed32@yahoo.com', '557.594.8033', 'Cummerata Cove 06405-7865 East Arthur', 'assets/img/avatar5.png', 3, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(15, 2, 'Karianne Swaniawski', 'Kuphal PLC', 'leann55@hotmail.com', '628-371-3871', 'Lemke Circle 52966 Lake Paula', 'assets/img/avatar5.png', 1, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(16, 3, 'Miss Agustina Terry Jr.', 'Schmitt, Bosco and Mayer', 'suzanne43@strosin.org', '+1 (843) 368-5189', 'Kristian Neck 55338-0216 Geovanymouth', 'assets/img/avatar5.png', 1, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(17, 3, 'Ben Kessler', 'Prohaska LLC', 'reichert.mia@osinski.com', '292-850-8954', 'Noemie Locks 09560-8402 West Antonemouth', 'assets/img/avatar5.png', 3, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(18, 3, 'Ms. Palma Collier', 'Jacobi, Hane and Bosco', 'hlemke@weimann.info', '(508) 693-0780 x49175', 'Mona Burg 98198-4521 Lindville', 'assets/img/avatar5.png', 2, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(19, 2, 'Deanna Johnston', 'Skiles-Kshlerin', 'harvey.alexandrine@ebert.info', '+1 (527) 881-6815', 'Irma Landing 72025-3488 Lake Jaylanhaven', 'assets/img/avatar5.png', 1, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(20, 2, 'Margarita Turcotte', 'Kohler-Bechtelar', 'ndickens@hotmail.com', '+1-425-947-0488', 'Brown Isle 65345 West Alfredville', 'assets/img/avatar5.png', 1, '2016-11-09 07:47:46', '2016-11-09 07:47:46'),
(21, 2, 'testName', 'testCompany', 'testEmail@email.com', 'testPhone', 'test Adress', 'assets/img/avatar5.png', 3, '2016-11-09 08:35:07', '2016-11-09 08:35:07');

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
(1, 'Family', '2016-11-09 07:47:44', '2016-11-09 07:47:44'),
(2, 'Friends', '2016-11-09 07:47:44', '2016-11-09 07:47:44'),
(3, 'Clients', '2016-11-09 07:47:44', '2016-11-09 07:47:44');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user0', 'user0@gmail.com', '$2y$10$McTXRcfgaU.RzBXvhK9VkOVS7W2byQGgv.8WD3BTaCx90.kB/cDfK', 'z1kFW0FoTx020mtpYfgZagF6b7nYI1PnVwCAqQIaHAauabwthv2IzjTaooFm', NULL, '2016-11-09 08:30:50'),
(2, 'user1', 'user1@gmail.com', '$2y$10$OGe0vF129aal9BVphfhb5ejILKUskNvqeyVncyn1kwyRo49/uLtp2', NULL, NULL, NULL),
(3, 'user2', 'user2@gmail.com', '$2y$10$1KZHDxj8b8jd4FQ5szQZAOyapciYbnZOjQlkdBx/ST0IBpBWCT54q', 'W3K5VnQsPx0Jcy1Fdjtyx6blUgVedkCJo9o2bMPLFObuzFrec48ImLtPyfFk', NULL, '2016-11-09 08:59:23'),
(4, 'user3', 'user3@gmail.com', '$2y$10$BgEnCtefcAMWXbzTHr6QgOIptgaz7U0c0KrmoUh2AO1gIQgRFXQ4C', NULL, NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
