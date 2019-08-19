-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2019 at 08:29 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsenaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `competitions_id` varchar(10) NOT NULL,
  `competitions_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fixtures`
--

CREATE TABLE `fixtures` (
  `match_id` int(10) NOT NULL,
  `round` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `hometeam` varchar(100) DEFAULT NULL,
  `awayteam` varchar(100) DEFAULT NULL,
  `stadium` varchar(100) DEFAULT NULL,
  `scorehometeam` int(11) DEFAULT NULL,
  `scoreawayteam` int(11) DEFAULT NULL,
  `competitions` varchar(10) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fixtures`
--

INSERT INTO `fixtures` (`match_id`, `round`, `date`, `time`, `hometeam`, `awayteam`, `stadium`, `scorehometeam`, `scoreawayteam`, `competitions`, `updated_at`, `created_at`) VALUES
(1, NULL, '2019-08-11', '20:00:00', 'Newcastle United', 'Arsenal', 'St.James Park', 0, 1, 'EPL', '2019-08-16 20:01:02', '2019-08-16 20:01:02'),
(2, NULL, '2019-08-17', '18:30:00', 'Arsenal', 'Burnley', 'Emirates Stadium', 2, 1, 'EPL', '2019-08-18 12:14:09', '2019-08-18 12:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` ( 
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_12_28_091421_create_players_table', 1),
(2, '2013_04_09_062329_create_backpack_revisions_table', 2),
(3, '2014_10_12_000000_create_users_table', 2),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2015_08_04_130507_create_article_tag_table', 2),
(6, '2015_08_04_130520_create_articles_table', 2),
(7, '2015_08_04_130551_create_categories_table', 2),
(8, '2015_08_04_131614_create_settings_table', 2),
(9, '2015_08_04_131626_create_tags_table', 2),
(10, '2016_05_05_115641_create_menu_items_table', 2),
(11, '2016_05_25_121918_create_pages_table', 2),
(12, '2016_07_24_060017_add_slug_to_categories_table', 2),
(13, '2016_07_24_060101_add_slug_to_tags_table', 2),
(14, '2017_04_20_100848_create_monsters_table', 2),
(15, '2017_04_21_052454_create_monster_tag_table', 2),
(16, '2017_04_21_052455_create_monster_articles_table', 2),
(17, '2017_04_21_052456_create_monster_category_table', 2),
(18, '2017_12_18_075638_create_icons_table', 2),
(21, '2019_07_29_082719_create_password_resets_table', 3),
(22, '2019_07_29_082719_create_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signsince` year(4) NOT NULL,
  `picture` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/Photo-Missing.png',
  `shirtpicture` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `fname`, `lname`, `birthdate`, `position`, `signsince`, `picture`, `shirtpicture`, `updated_at`, `created_at`) VALUES
(1, 'Bernd', 'Leno', '2018-01-01', 'GK', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p80201.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/M75322407_pl?patches=patches_M75322407-pl&name=CECH&numbers=pl-home-gk__2018-19--1&h=814', '2019-08-18 11:37:24', '2018-12-28 13:04:37'),
(2, 'Hector', 'Bellerin', '1995-03-19', 'DF', 2012, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p98745.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=BELLERIN&numbers=pl-home__2019-20--2&h=814', '2019-07-31 03:15:24', '2019-01-01 05:10:22'),
(4, 'Mohamed', 'Elneny', '2019-01-01', 'MF', 2016, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p153256.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=M.ELNENY&numbers=pl-home__2019-20--4&h=814', '2019-07-31 07:24:57', '2019-01-04 15:40:02'),
(5, 'Sokratis', 'Papasthathopoulos', '2019-01-01', 'DF', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p39476.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=SOKRATIS&numbers=pl-home__2019-20--5&h=814', '2019-07-31 07:25:02', '2019-01-05 07:23:53'),
(7, 'Henrikh', 'Mkhitaryan', '1989-01-21', 'MF', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p57249.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=MKHITARYAN&numbers=pl-home__2019-20--7&h=814', '2019-07-31 07:25:12', '2019-07-20 09:27:01'),
(8, 'Dani', 'Ceballos', '1996-08-07', 'MF', 2019, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p182539.png', NULL, '2019-08-15 03:26:33', '2019-08-15 03:26:33'),
(9, 'Alexandre', 'Lacazette', '1991-05-28', 'FW', 2017, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p59966.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=LACAZETTE&numbers=pl-home__2019-20--9&h=814', '2019-07-31 08:35:56', '2019-07-20 11:22:06'),
(10, 'Mesut', 'Ozil', '1988-10-15', 'MF', 2013, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p37605.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=%C3%96ZIL&numbers=pl-home__2019-20--10&h=814', '2019-07-31 07:25:21', '2019-07-20 11:28:06'),
(11, 'Lucas', 'Torreira', '1996-02-11', 'MF', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p198849.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=TORREIRA&numbers=pl-home__2019-20--11&h=814', '2019-07-31 07:25:33', '2019-07-20 11:32:01'),
(14, 'Pierre Emerick', 'Aubameyang', '1989-06-18', 'FW', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p54694.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=AUBAMEYANG&numbers=pl-home__2019-20--14&h=814', '2019-07-31 07:25:39', '2019-07-20 11:34:41'),
(15, 'Ainsley', 'Maitland-Niles', '1997-08-29', 'DF', 2014, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p154043.png', NULL, '2019-07-31 08:42:42', '2019-07-31 08:42:42'),
(16, 'Rob', 'Holding', '1995-09-20', 'DF', 2016, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p156074.png', 'https://x1.adis.ws/v1/media/graphics/i/ArsenalDirect/MEH5637_pl?patches=patches_MEH5637-pl&name=HOLDING&numbers=pl-home__2019-20--16&h=814', '2019-07-31 07:25:44', '2019-07-20 15:55:57'),
(18, 'Nacho', 'Monreal', '2019-01-02', 'DF', 2013, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p38411.png', NULL, '2019-07-31 01:19:31', '2019-07-31 01:19:31'),
(20, 'Shkodran', 'Mustafi', '1992-04-17', 'DF', 2016, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p69140.png', NULL, '2019-07-31 03:01:03', '2019-07-31 03:01:03'),
(23, 'David', 'Luiz', '1987-04-24', 'DF', 2019, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p41270.png', NULL, '2019-08-15 02:31:20', '2019-08-15 02:31:20'),
(24, 'Reiss', 'Nelson', '1999-12-10', 'FW', 2017, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p200641.png', NULL, '2019-07-31 03:32:12', '2019-07-31 03:32:12'),
(26, 'Emiliano', 'Martinez', '1992-09-02', 'GK', 2011, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p98980.png', NULL, '2019-07-31 03:36:48', '2019-07-31 03:36:48'),
(27, 'Konstatinos', 'Mavropanos', '1997-12-11', 'DF', 2016, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p233963.png', NULL, '2019-07-31 08:37:38', '2019-07-31 08:37:38'),
(28, 'Joe', 'Willock', '1999-08-20', 'MF', 2017, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p200089.png', NULL, '2019-07-31 08:41:21', '2019-07-31 08:41:21'),
(29, 'Matteo', 'Guendouzi', '1999-04-14', 'MF', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p242166.png', NULL, '2019-07-31 08:40:25', '2019-07-31 08:40:25'),
(30, 'Eddie', 'Nketiah', '1999-05-30', 'FW', 2017, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p205533.png', NULL, '2019-07-31 08:44:00', '2019-07-31 08:44:00'),
(31, 'Sead', 'Kolasinac', '1993-06-20', 'DF', 2017, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p111457.png', NULL, '2019-07-31 08:38:51', '2019-07-31 08:38:51'),
(32, 'Emile', 'Smith Rowe', '2000-07-28', 'MF', 2018, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p209289.png', NULL, '2019-07-31 08:52:01', '2019-07-31 08:52:01'),
(33, 'Matt', 'Macey', '1994-09-09', 'GK', 2014, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p113534.png', NULL, '2019-07-31 08:53:51', '2019-07-31 08:53:51'),
(34, 'Granit', 'Xhaka', '1992-09-27', 'MF', 2016, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p84450.png', NULL, '2019-07-31 08:54:54', '2019-07-31 08:54:54'),
(35, 'Gabriel', 'Martinelli', '2001-06-18', 'FW', 2019, 'https://premierleague-static-files.s3.amazonaws.com/premierleague/photos/players/250x250/p444145.png', NULL, '2019-08-16 08:00:04', '2019-08-16 07:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `match_id` int(11) NOT NULL,
  `match_result` varchar(3) DEFAULT NULL,
  `goalscore` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`match_id`, `match_result`, `goalscore`) VALUES
(1, 'W', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `match_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
