-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2026 at 04:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_voting_osis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision` text COLLATE utf8mb4_unicode_ci,
  `mission` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `gender`, `photo`, `vision`, `mission`, `created_at`, `updated_at`) VALUES
(1, 'M. Raja Habil Hilabil', 'L', 'paslon/paslon1Cowok.jpeg', 'Menjadikan OSIS yang aktif dan kreatif.', 'Mengadakan kegiatan sosial dan pengembangan siswa.', NULL, NULL),
(2, 'Errulin Syakila', 'P', 'paslon/paslon1Cewek.jpeg', 'Menjadikan OSIS yang aktif dan kreatif.', 'Mengadakan kegiatan sosial dan pengembangan siswa.', NULL, NULL),
(3, 'Muhibbul Bahri', 'L', 'paslon/paslon2Cowok.jpeg', 'Sekolah berkarakter dan berprestasi.', 'Memperkuat program akademik dan non-akademik.', NULL, NULL),
(4, 'Humaira Mulna', 'P', 'paslon/paslon2Cewek.jpeg', 'Sekolah berkarakter dan berprestasi.', 'Memperkuat program akademik dan non-akademik.', NULL, NULL),
(5, 'M. Sirazul Rafiul Z', 'L', 'paslon/paslon3Cowok.jpeg', 'Disiplin dan solidaritas siswa.', 'Menegakkan tata tertib dan kebersamaan.', NULL, NULL),
(6, 'Zakya Alfataya', 'P', 'paslon/paslon3Cewek.jpeg', 'Disiplin dan solidaritas siswa.', 'Menegakkan tata tertib dan kebersamaan.', NULL, NULL),
(7, 'Zul Isyrafi', 'L', 'paslon/paslon4Cowok.jpeg', 'OSIS yang berintegritas.', 'Meningkatkan kedisiplinan dan tanggung jawab.', NULL, NULL),
(8, 'Ninda Agustianda', 'P', 'paslon/paslon4Cewek.jpeg', 'OSIS yang berintegritas.', 'Meningkatkan kedisiplinan dan tanggung jawab.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_02_113805_add_role_to_users_table', 1),
(5, '2025_12_02_114225_create_candidates_table', 1),
(6, '2025_12_02_114243_create_votes_table', 1),
(7, '2025_12_02_184342_add_user_id_to_votes_table', 2),
(8, '2025_12_02_184533_remove_voted_by_from_votes_table', 3),
(9, '2025_12_02_184838_add_has_voted_to_users_table', 4),
(10, '2025_12_06_084015_add_role_to_users_table', 5),
(11, '2026_01_04_074959_add_has_voted_to_users', 6),
(12, '2026_01_04_075155_add_unique_user_to_votes', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `has_voted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `has_voted`) VALUES
(1, 'admin', 'admin@osis.com', NULL, '$2y$12$F6v4qHxIQDwPPcCFZlUI5OQD2XBnuJUPxYlc0P0W9hMdJTYv9ho2G', NULL, '2025-12-02 10:25:26', '2025-12-02 10:25:26', 'admin', 0),
(2, 'laptop1', 'laptop1@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2025-12-02 10:25:26', '2026-01-04 07:08:13', 'user', 0),
(3, 'laptop2', 'laptop2@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2025-12-02 10:25:26', '2026-01-04 07:08:13', 'user', 0),
(4, 'laptop3', 'laptop3@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2025-12-02 10:25:27', '2026-01-04 07:08:13', 'user', 0),
(5, 'User 001', 'user001@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(6, 'User 002', 'user002@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(7, 'User 003', 'user003@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(8, 'User 004', 'user004@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(9, 'User 005', 'user005@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(10, 'User 006', 'user006@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(11, 'User 007', 'user007@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(12, 'User 008', 'user008@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(13, 'User 009', 'user009@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(14, 'User 010', 'user010@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(15, 'User 011', 'user011@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(16, 'User 012', 'user012@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(17, 'User 013', 'user013@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(18, 'User 014', 'user014@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(19, 'User 015', 'user015@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(20, 'User 016', 'user016@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(21, 'User 017', 'user017@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(22, 'User 018', 'user018@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(23, 'User 019', 'user019@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(24, 'User 020', 'user020@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(25, 'User 021', 'user021@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(26, 'User 022', 'user022@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(27, 'User 023', 'user023@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(28, 'User 024', 'user024@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(29, 'User 025', 'user025@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(30, 'User 026', 'user026@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(31, 'User 027', 'user027@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(32, 'User 028', 'user028@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(33, 'User 029', 'user029@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(34, 'User 030', 'user030@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(35, 'User 031', 'user031@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(36, 'User 032', 'user032@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(37, 'User 033', 'user033@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(38, 'User 034', 'user034@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(39, 'User 035', 'user035@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(40, 'User 036', 'user036@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(41, 'User 037', 'user037@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(42, 'User 038', 'user038@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(43, 'User 039', 'user039@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(44, 'User 040', 'user040@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(45, 'User 041', 'user041@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(46, 'User 042', 'user042@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(47, 'User 043', 'user043@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(48, 'User 044', 'user044@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(49, 'User 045', 'user045@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(50, 'User 046', 'user046@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(51, 'User 047', 'user047@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(52, 'User 048', 'user048@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(53, 'User 049', 'user049@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(54, 'User 050', 'user050@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(55, 'User 051', 'user051@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(56, 'User 052', 'user052@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(57, 'User 053', 'user053@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(58, 'User 054', 'user054@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(59, 'User 055', 'user055@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(60, 'User 056', 'user056@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(61, 'User 057', 'user057@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(62, 'User 058', 'user058@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(63, 'User 059', 'user059@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(64, 'User 060', 'user060@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(65, 'User 061', 'user061@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(66, 'User 062', 'user062@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(67, 'User 063', 'user063@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(68, 'User 064', 'user064@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(69, 'User 065', 'user065@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(70, 'User 066', 'user066@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(71, 'User 067', 'user067@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(72, 'User 068', 'user068@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(73, 'User 069', 'user069@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(74, 'User 070', 'user070@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(75, 'User 071', 'user071@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(76, 'User 072', 'user072@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(77, 'User 073', 'user073@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(78, 'User 074', 'user074@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(79, 'User 075', 'user075@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(80, 'User 076', 'user076@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(81, 'User 077', 'user077@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(82, 'User 078', 'user078@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(83, 'User 079', 'user079@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(84, 'User 080', 'user080@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(85, 'User 081', 'user081@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(86, 'User 082', 'user082@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(87, 'User 083', 'user083@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(88, 'User 084', 'user084@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(89, 'User 085', 'user085@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(90, 'User 086', 'user086@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(91, 'User 087', 'user087@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(92, 'User 088', 'user088@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(93, 'User 089', 'user089@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(94, 'User 090', 'user090@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(95, 'User 091', 'user091@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(96, 'User 092', 'user092@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(97, 'User 093', 'user093@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(98, 'User 094', 'user094@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(99, 'User 095', 'user095@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(100, 'User 096', 'user096@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(101, 'User 097', 'user097@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(102, 'User 098', 'user098@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(103, 'User 099', 'user099@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(104, 'User 100', 'user100@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(105, 'User 101', 'user101@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(106, 'User 102', 'user102@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(107, 'User 103', 'user103@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(108, 'User 104', 'user104@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(109, 'User 105', 'user105@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(110, 'User 106', 'user106@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(111, 'User 107', 'user107@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(112, 'User 108', 'user108@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(113, 'User 109', 'user109@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(114, 'User 110', 'user110@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(115, 'User 111', 'user111@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(116, 'User 112', 'user112@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(117, 'User 113', 'user113@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(118, 'User 114', 'user114@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(119, 'User 115', 'user115@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(120, 'User 116', 'user116@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(121, 'User 117', 'user117@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(122, 'User 118', 'user118@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(123, 'User 119', 'user119@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(124, 'User 120', 'user120@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(125, 'User 121', 'user121@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(126, 'User 122', 'user122@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(127, 'User 123', 'user123@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(128, 'User 124', 'user124@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(129, 'User 125', 'user125@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(130, 'User 126', 'user126@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(131, 'User 127', 'user127@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(132, 'User 128', 'user128@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(133, 'User 129', 'user129@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(134, 'User 130', 'user130@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(135, 'User 131', 'user131@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(136, 'User 132', 'user132@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(137, 'User 133', 'user133@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(138, 'User 134', 'user134@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(139, 'User 135', 'user135@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(140, 'User 136', 'user136@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(141, 'User 137', 'user137@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(142, 'User 138', 'user138@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(143, 'User 139', 'user139@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(144, 'User 140', 'user140@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(145, 'User 141', 'user141@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(146, 'User 142', 'user142@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(147, 'User 143', 'user143@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(148, 'User 144', 'user144@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(149, 'User 145', 'user145@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(150, 'User 146', 'user146@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(151, 'User 147', 'user147@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(152, 'User 148', 'user148@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(153, 'User 149', 'user149@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(154, 'User 150', 'user150@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(155, 'User 151', 'user151@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(156, 'User 152', 'user152@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(157, 'User 153', 'user153@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(158, 'User 154', 'user154@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(159, 'User 155', 'user155@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(160, 'User 156', 'user156@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(161, 'User 157', 'user157@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(162, 'User 158', 'user158@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(163, 'User 159', 'user159@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(164, 'User 160', 'user160@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(165, 'User 161', 'user161@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(166, 'User 162', 'user162@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(167, 'User 163', 'user163@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(168, 'User 164', 'user164@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(169, 'User 165', 'user165@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(170, 'User 166', 'user166@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(171, 'User 167', 'user167@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(172, 'User 168', 'user168@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(173, 'User 169', 'user169@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(174, 'User 170', 'user170@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(175, 'User 171', 'user171@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(176, 'User 172', 'user172@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(177, 'User 173', 'user173@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(178, 'User 174', 'user174@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(179, 'User 175', 'user175@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(180, 'User 176', 'user176@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(181, 'User 177', 'user177@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(182, 'User 178', 'user178@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(183, 'User 179', 'user179@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(184, 'User 180', 'user180@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(185, 'User 181', 'user181@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(186, 'User 182', 'user182@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(187, 'User 183', 'user183@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(188, 'User 184', 'user184@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(189, 'User 185', 'user185@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(190, 'User 186', 'user186@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(191, 'User 187', 'user187@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(192, 'User 188', 'user188@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(193, 'User 189', 'user189@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(194, 'User 190', 'user190@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(195, 'User 191', 'user191@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(196, 'User 192', 'user192@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(197, 'User 193', 'user193@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(198, 'User 194', 'user194@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(199, 'User 195', 'user195@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(200, 'User 196', 'user196@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(201, 'User 197', 'user197@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(202, 'User 198', 'user198@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(203, 'User 199', 'user199@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(204, 'User 200', 'user200@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(205, 'User 201', 'user201@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(206, 'User 202', 'user202@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(207, 'User 203', 'user203@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(208, 'User 204', 'user204@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(209, 'User 205', 'user205@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(210, 'User 206', 'user206@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(211, 'User 207', 'user207@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(212, 'User 208', 'user208@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(213, 'User 209', 'user209@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(214, 'User 210', 'user210@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(215, 'User 211', 'user211@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(216, 'User 212', 'user212@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(217, 'User 213', 'user213@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(218, 'User 214', 'user214@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(219, 'User 215', 'user215@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(220, 'User 216', 'user216@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(221, 'User 217', 'user217@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(222, 'User 218', 'user218@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(223, 'User 219', 'user219@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(224, 'User 220', 'user220@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(225, 'User 221', 'user221@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(226, 'User 222', 'user222@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(227, 'User 223', 'user223@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(228, 'User 224', 'user224@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(229, 'User 225', 'user225@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(230, 'User 226', 'user226@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(231, 'User 227', 'user227@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(232, 'User 228', 'user228@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(233, 'User 229', 'user229@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(234, 'User 230', 'user230@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(235, 'User 231', 'user231@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(236, 'User 232', 'user232@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(237, 'User 233', 'user233@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(238, 'User 234', 'user234@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(239, 'User 235', 'user235@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(240, 'User 236', 'user236@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(241, 'User 237', 'user237@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(242, 'User 238', 'user238@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(243, 'User 239', 'user239@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(244, 'User 240', 'user240@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(245, 'User 241', 'user241@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(246, 'User 242', 'user242@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(247, 'User 243', 'user243@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(248, 'User 244', 'user244@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(249, 'User 245', 'user245@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(250, 'User 246', 'user246@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(251, 'User 247', 'user247@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(252, 'User 248', 'user248@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(253, 'User 249', 'user249@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(254, 'User 250', 'user250@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(255, 'User 251', 'user251@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(256, 'User 252', 'user252@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(257, 'User 253', 'user253@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(258, 'User 254', 'user254@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(259, 'User 255', 'user255@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(260, 'User 256', 'user256@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(261, 'User 257', 'user257@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(262, 'User 258', 'user258@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(263, 'User 259', 'user259@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(264, 'User 260', 'user260@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(265, 'User 261', 'user261@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(266, 'User 262', 'user262@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(267, 'User 263', 'user263@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(268, 'User 264', 'user264@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(269, 'User 265', 'user265@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(270, 'User 266', 'user266@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(271, 'User 267', 'user267@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(272, 'User 268', 'user268@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(273, 'User 269', 'user269@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(274, 'User 270', 'user270@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(275, 'User 271', 'user271@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(276, 'User 272', 'user272@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(277, 'User 273', 'user273@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(278, 'User 274', 'user274@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(279, 'User 275', 'user275@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(280, 'User 276', 'user276@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(281, 'User 277', 'user277@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(282, 'User 278', 'user278@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(283, 'User 279', 'user279@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(284, 'User 280', 'user280@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(285, 'User 281', 'user281@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(286, 'User 282', 'user282@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(287, 'User 283', 'user283@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(288, 'User 284', 'user284@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(289, 'User 285', 'user285@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(290, 'User 286', 'user286@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(291, 'User 287', 'user287@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(292, 'User 288', 'user288@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(293, 'User 289', 'user289@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `has_voted`) VALUES
(294, 'User 290', 'user290@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(295, 'User 291', 'user291@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(296, 'User 292', 'user292@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(297, 'User 293', 'user293@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(298, 'User 294', 'user294@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(299, 'User 295', 'user295@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(300, 'User 296', 'user296@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(301, 'User 297', 'user297@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(302, 'User 298', 'user298@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(303, 'User 299', 'user299@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(304, 'User 300', 'user300@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(305, 'User 301', 'user301@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(306, 'User 302', 'user302@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(307, 'User 303', 'user303@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(308, 'User 304', 'user304@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(309, 'User 305', 'user305@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(310, 'User 306', 'user306@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(311, 'User 307', 'user307@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(312, 'User 308', 'user308@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(313, 'User 309', 'user309@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(314, 'User 310', 'user310@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(315, 'User 311', 'user311@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(316, 'User 312', 'user312@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(317, 'User 313', 'user313@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(318, 'User 314', 'user314@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(319, 'User 315', 'user315@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(320, 'User 316', 'user316@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(321, 'User 317', 'user317@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(322, 'User 318', 'user318@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(323, 'User 319', 'user319@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(324, 'User 320', 'user320@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(325, 'User 321', 'user321@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(326, 'User 322', 'user322@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(327, 'User 323', 'user323@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(328, 'User 324', 'user324@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(329, 'User 325', 'user325@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(330, 'User 326', 'user326@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(331, 'User 327', 'user327@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(332, 'User 328', 'user328@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(333, 'User 329', 'user329@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(334, 'User 330', 'user330@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(335, 'User 331', 'user331@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(336, 'User 332', 'user332@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(337, 'User 333', 'user333@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(338, 'User 334', 'user334@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(339, 'User 335', 'user335@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(340, 'User 336', 'user336@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(341, 'User 337', 'user337@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(342, 'User 338', 'user338@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(343, 'User 339', 'user339@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(344, 'User 340', 'user340@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(345, 'User 341', 'user341@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(346, 'User 342', 'user342@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(347, 'User 343', 'user343@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(348, 'User 344', 'user344@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(349, 'User 345', 'user345@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(350, 'User 346', 'user346@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(351, 'User 347', 'user347@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(352, 'User 348', 'user348@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(353, 'User 349', 'user349@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(354, 'User 350', 'user350@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(355, 'User 351', 'user351@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(356, 'User 352', 'user352@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(357, 'User 353', 'user353@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(358, 'User 354', 'user354@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(359, 'User 355', 'user355@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(360, 'User 356', 'user356@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(361, 'User 357', 'user357@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(362, 'User 358', 'user358@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(363, 'User 359', 'user359@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(364, 'User 360', 'user360@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(365, 'User 361', 'user361@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(366, 'User 362', 'user362@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(367, 'User 363', 'user363@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(368, 'User 364', 'user364@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(369, 'User 365', 'user365@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(370, 'User 366', 'user366@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(371, 'User 367', 'user367@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(372, 'User 368', 'user368@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(373, 'User 369', 'user369@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(374, 'User 370', 'user370@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(375, 'User 371', 'user371@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(376, 'User 372', 'user372@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(377, 'User 373', 'user373@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(378, 'User 374', 'user374@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(379, 'User 375', 'user375@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(380, 'User 376', 'user376@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(381, 'User 377', 'user377@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(382, 'User 378', 'user378@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(383, 'User 379', 'user379@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(384, 'User 380', 'user380@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(385, 'User 381', 'user381@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(386, 'User 382', 'user382@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(387, 'User 383', 'user383@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(388, 'User 384', 'user384@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(389, 'User 385', 'user385@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(390, 'User 386', 'user386@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(391, 'User 387', 'user387@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(392, 'User 388', 'user388@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(393, 'User 389', 'user389@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(394, 'User 390', 'user390@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(395, 'User 391', 'user391@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(396, 'User 392', 'user392@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(397, 'User 393', 'user393@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(398, 'User 394', 'user394@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(399, 'User 395', 'user395@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(400, 'User 396', 'user396@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(401, 'User 397', 'user397@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(402, 'User 398', 'user398@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(403, 'User 399', 'user399@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0),
(404, 'User 400', 'user400@osis.com', NULL, '$2y$12$FhB/sHxzQ0J6g1HAYvq4ZeRbn3Bij2qf87AXEz5FBM5cTUBj32Ia.', NULL, '2026-01-04 07:59:12', '2026-01-04 07:08:13', 'user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `candidate_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `has_voted_idx` (`has_voted`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_candidate_id_foreign` (`candidate_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
