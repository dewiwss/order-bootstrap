-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 01:11 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nanomarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `alamat` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`id`, `nama`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'DewiWs', 'dewiws@gmail.com', 'Sindangkasih', '2019-12-02 01:53:09', '0000-00-00 00:00:00'),
(2, 'Fitria', 'fitria@gmail.com', 'Ciamis', '2019-12-02 01:53:09', '0000-00-00 00:00:00'),
(3, 'Maemunah', 'mae@gmail.com', 'Cikarang', '2019-12-02 01:54:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_11_18_013101_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kasir_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `kode_transaksi`, `kasir_id`, `produk`, `total`, `created_at`, `updated_at`) VALUES
(6, 'A011', '3', 'Customcase', 124, '2019-11-17 23:52:15', '2019-11-17 23:54:17'),
(7, 'B002', '3', 'Customcase', 5, '2019-11-17 23:53:19', '2019-11-17 23:53:19'),
(8, 'A013', '2', 'Totebag', 124, '2019-11-18 00:05:57', '2019-11-18 00:05:57'),
(10, 'a012', '1', 'Totebag', 8, '2019-11-18 08:23:57', '2019-11-18 08:23:57'),
(11, 'A003', '3', 'Cangkir', 126, '2019-11-18 08:24:20', '2019-11-18 08:24:20'),
(12, 'B001', '2', 'Cangkir', 12, '2019-11-18 08:25:03', '2019-11-18 08:28:13'),
(14, 'C0012', '2', 'Cangkir', 90, '2019-11-28 05:41:36', '2019-11-28 05:51:07'),
(15, 'T001', '2', 'Customcase', 78, '2019-12-02 02:38:39', '2019-12-02 03:24:06'),
(16, 'T002', '3', 'Totebag', 7, '2019-12-02 02:39:07', '2019-12-02 02:39:07'),
(17, 'T003', '1', 'Cangkir', 56, '2019-12-02 06:25:48', '2019-12-02 06:25:48'),
(18, 'T011', '1', 'Cangkir', 7, '2019-12-03 00:48:02', '2019-12-03 00:48:02'),
(19, 'T020', '1', 'Totebag', 12, '2019-12-07 03:51:57', '2019-12-07 03:51:57'),
(20, 'T021', '2', 'Cangkir', 5, '2019-12-07 04:00:34', '2019-12-07 04:00:34'),
(21, 'T022', '1', 'Totebag', 6, '2019-12-07 23:19:19', '2019-12-07 23:19:19'),
(22, 'B0021', '1', 'Totebag', 121, '2019-12-08 00:18:48', '2019-12-08 00:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `orders_produk`
--

CREATE TABLE `orders_produk` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_produk`
--

INSERT INTO `orders_produk` (`id`, `order_id`, `produk_id`, `created_at`, `updated_at`) VALUES
(1, 6, 3, '2019-12-08 06:20:10', '0000-00-00 00:00:00'),
(2, 7, 3, '2019-12-08 06:20:22', '0000-00-00 00:00:00'),
(3, 8, 1, '2019-12-08 06:20:36', '0000-00-00 00:00:00'),
(4, 10, 1, '2019-12-08 06:20:47', '0000-00-00 00:00:00'),
(5, 11, 2, '2019-12-08 06:21:03', '0000-00-00 00:00:00'),
(6, 12, 2, '2019-12-08 06:21:17', '0000-00-00 00:00:00'),
(7, 14, 2, '2019-12-08 06:21:41', '0000-00-00 00:00:00'),
(8, 15, 3, '2019-12-08 06:22:07', '0000-00-00 00:00:00'),
(9, 16, 1, '2019-12-08 06:22:21', '0000-00-00 00:00:00'),
(10, 17, 2, '2019-12-08 06:22:31', '0000-00-00 00:00:00'),
(11, 18, 2, '2019-12-08 06:22:39', '0000-00-00 00:00:00'),
(12, 19, 1, '2019-12-08 06:22:48', '0000-00-00 00:00:00'),
(13, 20, 2, '2019-12-08 06:22:58', '0000-00-00 00:00:00'),
(14, 19, 2, '2019-12-07 23:58:19', '2019-12-08 06:58:19'),
(15, 6, 2, '2019-12-08 00:00:46', '2019-12-08 07:00:46'),
(16, 8, 2, '2019-12-08 00:06:28', '2019-12-08 07:06:28');

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
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `created_at`, `updated_at`) VALUES
(1, 'Totebag', 50000, '2019-12-03 01:12:07', '0000-00-00 00:00:00'),
(2, 'Cangkir', 25000, '2019-12-03 01:13:00', '0000-00-00 00:00:00'),
(3, 'Customcase', 95000, '2019-12-03 01:13:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dewi Wulan Sari', 'dewiws27@gmail.com', NULL, '$2y$10$GYg.1P81DQnYusEDk0.g4uSw485Ijbu7lygFyPDY23d.UtbN5ChCe', NULL, '2019-11-24 19:43:46', '2019-11-24 19:43:46'),
(2, 'admin', 'admin@admin.com', NULL, '$2y$10$yBfsIaHK0F9mhRh6eRhKkuqpnrJvhqa38pHm/RA48GNrh9Mot5Ch6', NULL, '2019-11-28 21:38:51', '2019-11-28 21:38:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_produk`
--
ALTER TABLE `orders_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
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
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders_produk`
--
ALTER TABLE `orders_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
