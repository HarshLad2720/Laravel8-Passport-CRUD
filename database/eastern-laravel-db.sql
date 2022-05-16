-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 09:35 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eastern-laravel-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'states table id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 3, 'Surat', '2022-03-25 09:44:59', '2022-03-25 09:45:02', NULL, 2, 2),
(2, 4, 'Bharuch', '2022-03-25 09:45:05', '2022-03-22 00:41:41', NULL, 7, 7),
(3, 5, 'Udaypur', '2022-03-22 00:26:32', '2022-03-22 00:26:32', NULL, 7, 7),
(7, 11, 'Nehru Nagar', '2022-03-24 00:29:58', '2022-03-24 00:29:58', NULL, 2, 2),
(8, 4, 'Demo', '2022-03-24 00:35:56', '2022-03-24 00:41:08', NULL, 2, 2),
(9, 4, 'test', '2022-03-24 00:38:23', '2022-03-24 00:39:12', NULL, 2, 2),
(10, 4, 'demo', '2022-03-24 00:38:30', '2022-03-24 00:39:12', NULL, 2, 2),
(11, 14, 'demo tester', '2022-03-25 02:42:55', '2022-03-25 02:42:55', NULL, 1, 1),
(12, 14, 'tester', '2022-03-25 02:43:58', '2022-03-25 02:43:58', NULL, NULL, NULL),
(13, 15, 'demo testing', '2022-03-25 02:43:58', '2022-03-25 02:43:58', NULL, NULL, NULL),
(14, 16, 'rouse', '2022-03-25 02:43:58', '2022-03-25 02:43:58', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'India', '2022-03-25 09:43:39', '2022-03-25 09:43:49', NULL, 4, 4),
(2, 'Australia', '2022-03-25 09:43:52', '2022-03-25 09:43:56', NULL, NULL, NULL),
(3, 'England', '2022-03-21 22:32:07', '2022-03-21 22:32:07', NULL, 7, 7),
(4, 'Thailand', '2022-03-21 22:32:21', '2022-03-21 22:32:21', NULL, 7, 7),
(5, 'Scotland', '2022-03-21 22:32:42', '2022-03-21 22:32:42', NULL, 7, 7),
(6, 'America', '2022-03-21 22:33:02', '2022-03-22 00:42:45', NULL, 7, 7),
(11, 'Demo', '2022-03-22 02:43:56', '2022-03-25 00:15:27', NULL, 7, 7),
(12, 'Prague', '2022-03-23 02:49:43', '2022-03-23 02:49:43', NULL, 2, 2),
(13, 'Europe', '2022-03-24 00:04:57', '2022-03-24 00:04:57', NULL, 2, 2),
(14, 'Demo', '2022-03-24 00:12:01', '2022-03-25 00:15:27', NULL, 2, 2),
(15, 'Test', '2022-03-25 00:18:22', '2022-03-25 00:18:22', NULL, 1, 1),
(20, 'Berlin', '2022-03-25 01:49:21', '2022-03-25 01:49:21', NULL, NULL, NULL),
(21, 'Ukerian', '2022-03-25 01:49:21', '2022-03-25 01:49:21', NULL, NULL, NULL),
(22, 'Russia', '2022-03-25 01:49:21', '2022-03-25 01:49:21', NULL, NULL, NULL),
(23, 'Myanmaar', '2022-03-25 01:49:21', '2022-03-25 01:49:21', NULL, NULL, NULL),
(24, 'Afaganistan', '2022-03-26 03:05:32', '2022-03-26 03:05:32', NULL, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'Cricket', '2022-03-25 09:46:03', '2022-03-25 09:46:06', NULL, 2, 2),
(2, 'VollyBall', '2022-03-25 09:46:08', '2022-03-25 09:46:12', NULL, 4, 4),
(3, 'BasketBall', '2022-03-25 09:46:19', '2022-03-25 09:46:22', NULL, 4, 4),
(4, 'Tennis', '2022-03-21 06:28:28', '2022-03-21 06:28:28', NULL, 4, 4),
(5, 'Bedmintation', '2022-03-21 06:30:59', '2022-03-21 06:30:59', NULL, 7, 7),
(6, 'Rugby', '2022-03-21 21:50:22', '2022-03-22 00:45:27', NULL, 7, 7),
(7, 'Travelling', '2022-03-21 21:50:33', '2022-03-22 00:45:52', NULL, 7, 7),
(8, 'Coding', '2022-03-21 21:50:37', '2022-03-22 02:44:59', NULL, 7, 7),
(12, 'Football', '2022-03-25 02:37:20', '2022-03-25 02:37:20', NULL, NULL, NULL),
(13, 'Hockey', '2022-03-25 02:37:20', '2022-03-25 02:37:20', NULL, NULL, NULL),
(14, 'Rudy', '2022-03-25 02:37:20', '2022-03-25 02:37:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hobby_user`
--

CREATE TABLE `hobby_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'users table ID',
  `hobby_id` int(10) UNSIGNED NOT NULL COMMENT 'hobbies table ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobby_user`
--

INSERT INTO `hobby_user` (`user_id`, `hobby_id`) VALUES
(1, 1),
(1, 1),
(4, 1),
(4, 1),
(5, 1),
(5, 1),
(6, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `import_csv_logs`
--

CREATE TABLE `import_csv_logs` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_csv_logs`
--

INSERT INTO `import_csv_logs` (`id`, `filename`, `file_path`, `model_name`, `error_log`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_.csv', 'import/user/user_.csv', 'user', '[\"The selected 4 is invalid. on row 2\",\"The 7 must be an integer. on row 2\",\"The 8 must be an integer. on row 2\",\"The 9 must be an integer. on row 2\",\"The selected 4 is invalid. on row 3\",\"The 7 must be an integer. on row 3\",\"The 8 must be an integer. on row 3\",\"The 9 must be an integer. on row 3\"]', '2022-03-24 23:58:46', '2022-03-24 23:58:46', NULL),
(2, 'user_.csv', 'import/user/user_.csv', 'user', '[\"The selected 4 is invalid. on row 2\",\"The selected 8 is invalid. on row 2\",\"The 9 must be an integer. on row 2\",\"The selected 4 is invalid. on row 3\",\"The selected 8 is invalid. on row 3\",\"The 9 must be an integer. on row 3\"]', '2022-03-25 00:00:32', '2022-03-25 00:00:32', NULL),
(3, 'state_.csv', 'import/state/state_.csv', 'state', '[\"The selected 0 is invalid. on row 2\"]', '2022-03-25 00:39:10', '2022-03-25 00:39:10', NULL),
(4, 'state_.csv', 'import/state/state_.csv', 'state', '[\"The selected 0 is invalid. on row 2\"]', '2022-03-25 01:28:47', '2022-03-25 01:28:47', NULL),
(5, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The selected 0 is invalid. on row 3\"]', '2022-03-25 01:32:25', '2022-03-25 01:32:25', NULL),
(6, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The selected 0 is invalid. on row 3\"]', '2022-03-25 01:36:20', '2022-03-25 01:36:20', NULL),
(7, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The selected 0 is invalid. on row 3\",\"The selected 0 is invalid. on row 4\"]', '2022-03-25 01:36:54', '2022-03-25 01:36:54', NULL),
(8, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The selected 0 is invalid. on row 3\",\"The selected 0 is invalid. on row 4\"]', '2022-03-25 01:37:33', '2022-03-25 01:37:33', NULL),
(9, 'state_.csv', 'import/state/state_.csv', 'state', '[\"The selected 0 is invalid. on row 2\"]', '2022-03-25 01:43:14', '2022-03-25 01:43:14', NULL),
(10, 'country_.csv', 'import/country/country_.csv', 'country', '[\"Country is required on row 2\",\"Country is required on row 3\",\"Country is required on row 4\",\"Country is required on row 5\"]', '2022-03-25 01:48:02', '2022-03-25 01:48:02', NULL),
(11, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The 1 has already been taken. on row 3\"]', '2022-03-25 01:52:40', '2022-03-25 01:52:40', NULL),
(12, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The 1 has already been taken. on row 3\"]', '2022-03-25 01:53:42', '2022-03-25 01:53:42', NULL),
(13, 'hobby_.csv', 'hobby_.csv', 'hobby', '[\"The 0 has already been taken. on row 2\",\"The 0 has already been taken. on row 3\",\"The 0 has already been taken. on row 4\"]', '2022-03-25 02:38:33', '2022-03-25 02:38:33', NULL),
(14, 'city_.csv', 'import/city/city_.csv', 'city', '[\"The 1 has already been taken. on row 2\",\"The 1 has already been taken. on row 3\",\"The 1 has already been taken. on row 4\"]', '2022-03-25 02:44:38', '2022-03-25 02:44:38', NULL),
(15, 'user_.csv', 'import/user/user_.csv', 'user', '[\"The 1 has already been taken. on row 2\"]', '2022-03-25 02:55:54', '2022-03-25 02:55:54', NULL),
(16, 'permission_.csv', 'import/permission/permission_.csv', 'permission', '[{\"row\":2,\"error\":[\"The name field is required.\"]},{\"row\":3,\"error\":[\"The name field is required.\"]}]', '2022-03-26 01:06:41', '2022-03-26 01:06:41', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_03_21_044920_create_employees_table', 2),
(11, '2022_03_21_050000_countries', 3),
(12, '2022_03_21_050027_states', 3),
(13, '2022_03_21_050043_cities', 3),
(14, '2022_03_21_054005_hobbies', 4),
(15, '2022_03_21_072034_add_columns_users_table', 5),
(16, '2022_03_21_082326_user_galleries', 6),
(17, '2022_03_21_091836_create_hobby_user_table', 6),
(18, '2022_03_22_083049_create_import_csv_logs_table', 7),
(19, '2022_03_23_080612_add_created_by_users_table', 8),
(20, '2022_03_26_033034_create_roles_table', 9),
(21, '2022_03_26_050636_create_permission_role_table', 10),
(22, '2022_03_26_050702_create_permissions_table', 10),
(23, '2022_03_26_055824_add_role_id_users_table', 11),
(26, '2022_03_26_081909_add_permission_apply_permissions', 12),
(27, '2022_03_26_082050_add_insert_permission_role_permission_role', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('14ef9cb61421b00cf37a524ef115160393d6f045d78732d93837ce35c22591cd2ecb9e44bd8943e0', 1, 3, 'Personal Access Token', '[\"jenish\"]', 0, '2022-03-23 00:53:21', '2022-03-23 00:53:21', '2023-03-23 06:23:21'),
('16428d9e487977671d616712f3a06ea12e774e3cf1b393c24d8915e20ca1af1fb669802ec3557446', 1, 3, 'Personal Access Token', '[\"Harsh\",\"Chirag\",\"Jenish\"]', 0, '2022-03-21 04:50:45', '2022-03-21 04:50:45', '2023-03-21 10:20:45'),
('168cac78466fb0db9c5eb77cf025d28ce4a945e96dd609c868620fd654ac95069628a27eeb535822', 4, 3, 'Personal Access Token', '[]', 0, '2022-03-26 01:46:06', '2022-03-26 01:46:06', '2023-03-26 07:16:06'),
('1c7451d988e0d9c7aa987283d85788579730d0e3174b345adca522484b58388e878fbeddee96b180', 4, 3, 'Personal Access Token', '[]', 0, '2022-03-26 01:46:51', '2022-03-26 01:46:51', '2023-03-26 07:16:51'),
('23407bca345d7c36e70f14fe048c30ef496349d5c52cd707d2ae740f22f77d91d9886f7c2ef11f3d', 4, 3, 'Personal Access Token', '[\"Demo\",\"Kishan\",\"Kishan\"]', 0, '2022-03-25 03:36:56', '2022-03-25 03:36:56', '2023-03-25 09:06:56'),
('35d7498da546f4fd36a0a7e8673b4c22061efee49ac3d8a26cfa3d84ca7ef9d5ce847b7da937feab', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\"]', 0, '2022-03-21 06:05:46', '2022-03-21 06:05:46', '2023-03-21 11:35:46'),
('36b69f80d444359281b1178795455d58e7108e8d2a252f5ad0162c5dc7a9f403c6ec7c2ef3e6b4c3', 4, 3, 'Personal Access Token', '[]', 0, '2022-03-26 01:38:48', '2022-03-26 01:38:48', '2023-03-26 07:08:48'),
('3850cc228ec6b687722f32f0cf607723abdcd27d380d410e9963b7d8ca8855e073e2677c656f699e', 3, 3, 'Personal Access Token', '[\"Harsh\",\"Chirag\",\"Jenish\"]', 0, '2022-03-21 04:50:21', '2022-03-21 04:50:21', '2023-03-21 10:20:21'),
('3caabc8198e42c00c4f6347768c1b8ac72d26f2b8bbf512de18587ab76ba288685b6ca45f182a6bc', 3, 3, 'Personal Access Token', '[\"Harsh\",\"Chirag\",\"Jenish\"]', 0, '2022-03-21 04:50:04', '2022-03-21 04:50:04', '2023-03-21 10:20:04'),
('3dd8b0bcce6c22d3c8371e6a683c98ab8adef0995a1eac65699d7b4897b071ea37bff10b9d204b44', 2, 3, 'Personal Access Token', '[\"jenish\",\"jenish\"]', 0, '2022-03-23 00:54:13', '2022-03-23 00:54:13', '2023-03-23 06:24:13'),
('431b1f82fee94d4376c6b7cafa8c0a4f70f9d67567958f933a53c861e51cee6f7e5e1951b290e376', 1, 3, 'Personal Access Token', '[\"Demo\"]', 0, '2022-03-24 21:25:19', '2022-03-24 21:25:19', '2023-03-25 02:55:19'),
('4748dba84c3868eace8bf2c641aca57479dd1bf4e137290ccf2472cf4b9171b32c92ea37448b1b56', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\"]', 0, '2022-03-21 06:13:11', '2022-03-21 06:13:11', '2023-03-21 11:43:11'),
('4a50131e77f47e7dc9258337e392afdadf6f80e8a58c9f64042024e025bb18d45b4f29218b42edb0', 1, 3, 'Personal Access Token', '[\"Demo\"]', 0, '2022-03-25 00:52:30', '2022-03-25 00:52:30', '2023-03-25 06:22:30'),
('4aa23b8db990a86a0d1469e50926c206ba93dee3df9ba2acd3d8a7d15d956f368e608775e082a4e7', 2, 3, 'Personal Access Token', '[\"jenish\",\"jenish\"]', 0, '2022-03-23 01:03:07', '2022-03-23 01:03:07', '2023-03-23 06:33:07'),
('4f1086a02af71f7920dce472a09b2bd1954f9d9912ed5e471ebb10e00c2ae0b7c0f40fcf28df9191', 5, 3, 'Personal Access Token', '[\"my-users\",\"index-users\",\"show-users\",\"update-users\",\"destroy-users\",\"export-users\",\"importBulk-users\",\"my-countries\",\"store-countries\",\"index-countries\",\"show-countries\",\"update-countries\",\"destroy-countries\",\"export-countries\",\"importBulk-countries\",\"my-states\",\"store-states\",\"index-states\",\"show-states\",\"update-states\",\"destroy-states\",\"export-states\",\"importBulk-states\",\"my-cities\",\"store-cities\",\"index-cities\",\"show-cities\",\"update-cities\",\"destroy-cities\",\"export-cities\",\"importBulk-cities\",\"my-hobbies\",\"store-hobbies\",\"index-hobbies\",\"show-hobbies\",\"update-hobbies\",\"destroy-hobbies\",\"export-hobbies\",\"importBulk-hobbies\",\"my-roles\",\"store-roles\",\"index-roles\",\"show-roles\",\"update-roles\",\"destroy-roles\",\"export-roles\",\"getPermissionsByRole-roles\",\"my-permissions\",\"store-permissions\",\"index-permissions\",\"show-permissions\",\"update-permissions\",\"destroy-permissions\",\"export-permissions\",\"setUnsetPermissionToRole-permissions\",\"delete_gallery-users\",\"my-login\",\"changePassword-logincontroller\",\"logout-logincontroller\",\"logout-logincontroller\",\"deleteAll-users\",\"deleteAll-countries\",\"deleteAll-states\",\"deleteAll-cities\",\"deleteAll-roles\",\"deleteAll-hobbies\",\"deleteAll-permissions\",\"my-importcsvlogs\",\"index-importcsvlogs\",\"show-importcsvlogs\"]', 0, '2022-03-26 03:04:35', '2022-03-26 03:04:35', '2023-03-26 08:34:35'),
('5496de082895b6dc37e41785001b8e69a1fd01e5b4cbecb17387ea64f83080219c48b16103c3bc60', 2, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\"]', 0, '2022-03-21 04:56:59', '2022-03-21 04:56:59', '2023-03-21 10:26:59'),
('5ea3a3ecf329051d095cc2d2ab8fa927567e98fffed279aeb68fb2bc70bd970d40a688def2d52194', 4, 3, 'Personal Access Token', '[\"Demo\",\"Test\",\"Test Demo\",\"Testing\"]', 0, '2022-03-23 22:46:24', '2022-03-23 22:46:24', '2023-03-24 04:16:24'),
('5f5d0c35f7acc3562fb086a98f39fe434badd73f46bb1c5e8d8be6d7736823c23fcabe399d5d5e6b', 1, 3, 'Personal Access Token', '[\"Demo\",\"Test\"]', 0, '2022-03-23 22:22:49', '2022-03-23 22:22:49', '2023-03-24 03:52:49'),
('62fdebaad4e40696348095a5cf60bd15c0e73f3acc5c4fce93d0989897a943cfd0c5af4bed1e5937', 2, 3, 'Personal Access Token', '[\"jenish\",\"jenish\",\"Harsh\"]', 0, '2022-03-23 02:08:22', '2022-03-23 02:08:22', '2023-03-23 07:38:22'),
('65b49d48cd20dc006a942846f76e3d24bb83ba7c1be832a7a26fbdae7182b527fab2f0f8b39fdb8c', 6, 3, 'Personal Access Token', '[\"jenish\",\"Harsh\",\"Chirag\",\"Amit\",\"Demo\"]', 0, '2022-03-23 03:29:25', '2022-03-23 03:29:25', '2023-03-23 08:59:25'),
('6a0bd9b41fa36566569b4d04d9a6da591053d8c661a9b1bb120dc337a335791dfb3dfcc1eeedf99f', 3, 3, 'Personal Access Token', '[\"Demo\",\"Test\",\"Test Demo\"]', 0, '2022-03-23 22:45:22', '2022-03-23 22:45:22', '2023-03-24 04:15:22'),
('7077243c39a4ead3649eeeec5dd75fa2f210343798a35409941195fc0be66c2a7b228c88fa813e79', 3, 3, 'Personal Access Token', '[\"Harsh\",\"Chirag\",\"Jenish\"]', 0, '2022-03-21 04:49:23', '2022-03-21 04:49:23', '2023-03-21 10:19:23'),
('70ff8d4c0f8d9d78187b930e321489dcce3455a61440891493c5471ccec3a4531525c93ae18abcc5', 1, 3, 'Personal Access Token', '[\"Demo\"]', 0, '2022-03-24 04:33:50', '2022-03-24 04:33:50', '2023-03-24 10:03:50'),
('741c8c7d44f9b92c0030f550f2f3dbe67c6947304ed9db4aea9c3e73d51276e685a755b0833a1f94', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\"]', 0, '2022-03-21 06:11:59', '2022-03-21 06:11:59', '2023-03-21 11:41:59'),
('7a86ff123ba1bd10229ec241b1842fc402e4fe4a04bbc1b88514db3221119ddc31e08b285d306709', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\"]', 0, '2022-03-21 06:13:35', '2022-03-21 06:13:35', '2023-03-21 11:43:35'),
('8b86cc4064535e9ea86b4319cad994fec8ac1fe59ef2e51df93632ddc9d53f2f9dbdd4f1f53aae2d', 1, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\"]', 0, '2022-03-21 05:39:08', '2022-03-21 05:39:08', '2023-03-21 11:09:08'),
('8d00cb2237300a6354cbdc9cab7a0f50848dbb6bf0ffbca691aabc53aeb50618580b97dbf0a27d33', 2, 3, 'Personal Access Token', '[\"Demo\",\"Demoeee\"]', 0, '2022-03-24 22:43:46', '2022-03-24 22:43:46', '2023-03-25 04:13:46'),
('94535cac8bbae32eac3112aec4ab15bdec98d57b3ce12a9e6a7fdb50966e1d576be19017cf95eb8d', 1, 3, 'Personal Access Token', '[\"Demo\"]', 0, '2022-03-24 22:37:39', '2022-03-24 22:37:39', '2023-03-25 04:07:39'),
('9a11380c1e2fee5efa988ca31b90addb7e50c4a900b17fd928e63c871a7b597fb4a91b7d437700ae', 5, 3, 'Personal Access Token', '[\"jenish\",\"Harsh\",\"Chirag\",\"Amit\"]', 0, '2022-03-23 03:28:40', '2022-03-23 03:28:40', '2023-03-23 08:58:40'),
('9b63f3309f7d56ee165930efb1deaf1a74535803547fbd8d01d801a04112a08f3f2c1bf705aa6909', 2, 3, 'Personal Access Token', '[\"Demo\",\"Demoeee\"]', 0, '2022-03-24 23:01:14', '2022-03-24 23:01:14', '2023-03-25 04:31:14'),
('a11dd6e911f28281a99c8e977e46a3344897df415a88b18acf4c1eea5da74db49c0d7acab67e31f0', 1, 3, 'Personal Access Token', '[\"Harsh\",\"Jenish\"]', 0, '2022-03-23 03:43:34', '2022-03-23 03:43:34', '2023-03-23 09:13:34'),
('a6b5aac05bca7aaca7db387c52e749e1d7e4cdaf55fbe56e47b586e9ba42ebfd1b3f0bc4a4491b2e', 1, 3, 'Personal Access Token', '[\"Demo\"]', 0, '2022-03-24 23:19:19', '2022-03-24 23:19:19', '2023-03-25 04:49:19'),
('ae2e7e3f1d2b5f8737ce171241d0745da5285508a18fb6314adb7797ba7b00997f25fbc280761b68', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\",\"Rima\"]', 0, '2022-03-21 21:35:58', '2022-03-21 21:35:58', '2023-03-22 03:05:58'),
('b7eef9a039eba96095d2fcfe7fbca47b668fbd196e7b633f00f3591700c2b2832f2bebed057deb5f', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\",\"Rima\",\"Demo\",\"Ayushi\"]', 0, '2022-03-22 21:22:49', '2022-03-22 21:22:49', '2023-03-23 02:52:49'),
('ba1874a22d96f53fca574cf8214226c7f86a6cd5f64b5ab620c573cc7744df1b63a9bce02654cdb7', 2, 3, 'Personal Access Token', '[\"jenish\",\"Jenish\",\"Harsh\",\"Chirag\"]', 0, '2022-03-23 02:30:24', '2022-03-23 02:30:24', '2023-03-23 08:00:24'),
('c032d0e1c8cba4c1713d53d12d996001f0266f7b47900ca1719141ba16fa246033895d8f841c430d', 2, 3, 'Personal Access Token', '[\"Testing\",\"Demo\"]', 1, '2022-03-23 23:00:10', '2022-03-23 23:00:10', '2022-03-25 04:30:10'),
('c242a405a6bb9c45d18b7e47dea991c3e9aa9afa44fa8d4046fd0aedc11639fac565e4dbfe5b5212', 2, 3, 'Personal Access Token', '[\"Demo\",\"Demoeee\"]', 0, '2022-03-24 22:51:49', '2022-03-24 22:51:49', '2023-03-25 04:21:49'),
('c6964cbf0508be86bd9cd0cbd16e30e34f70763a736088311c7702b86ca94b9009a85bd3469d8b9d', 1, 3, 'Personal Access Token', '[\"Jenish\",\"Demo\",\"Demo Test\"]', 0, '2022-03-23 05:03:57', '2022-03-23 05:03:57', '2023-03-23 10:33:57'),
('c918ad0b486ea8e0809cc559f7797f05fe37098fb8a643edcf56b67f58a01a8ca437cfaae506abe4', 1, 3, 'Personal Access Token', '[\"Demo\",\"Kishan\",\"Kishan\"]', 0, '2022-03-25 03:36:19', '2022-03-25 03:36:19', '2023-03-25 09:06:19'),
('d08bd6923aa097e76d2904cb35d8871c2f4d1435a28b71d29387debca09f395c260b1dd0c357773b', 1, 3, 'Personal Access Token', '[\"Demo\"]', 0, '2022-03-25 01:17:29', '2022-03-25 01:17:29', '2023-03-25 06:47:29'),
('d437fbf8aaa79ff5ca500c506c04adc7c4bf472e6c7d5a567da23c95e903560d69abe452bebe86c3', 5, 3, 'Personal Access Token', '[\"chan-user\"]', 0, '2022-03-26 01:51:35', '2022-03-26 01:51:35', '2023-03-26 07:21:35'),
('d7a342e9e808cc558a055fae713dedbcdc298db19307507ca1a5be9bd15f300b366d3e2bf39fcf4c', 7, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\",\"Shrikha\",\"Amit\",\"Ankit\",\"Rima\"]', 0, '2022-03-21 06:28:59', '2022-03-21 06:28:59', '2023-03-21 11:58:59'),
('d9e0ea70ea61d6fa80be58d54f3283c79c3b12ccbe23bf5196fdf89dff272f4c2ded9d2d6bb83aff', 2, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\"]', 0, '2022-03-21 05:03:24', '2022-03-21 05:03:24', '2023-03-21 10:33:24'),
('da1ce91bde2536d5936b7f636ba62fe3333f5a45531586f55d5dab262e0c5cc4ae62b0b25c0d471e', 2, 3, 'Personal Access Token', '[\"Jenish\",\"Harsh\",\"Chirag\",\"Kishan\"]', 0, '2022-03-21 05:21:44', '2022-03-21 05:21:44', '2023-03-21 10:51:44'),
('daee7e6f020b06f0a654674096a0ac5c15a07fe986488bcc88212904e5bd63703b20df217fd7ed99', 2, 3, 'Personal Access Token', '[\"jenish\",\"jenish\"]', 0, '2022-03-23 01:05:35', '2022-03-23 01:05:35', '2023-03-23 06:35:35'),
('dd0200aa879d8a4dc50e6aa437e1f0790090e9640b95990f5d9e956dc5f844939f5b4abf22420e75', 3, 3, 'Personal Access Token', '[\"Testing\",\"Jenish\",\"Demo\"]', 0, '2022-03-24 01:13:17', '2022-03-24 01:13:17', '2023-03-24 06:43:17'),
('e1e85ec092105451bd2f6d3663effecbbf0849664ed39f7b76de11a8d65c35ad3bb7bc4608559dc5', 3, 3, 'Personal Access Token', '[\"Harsh\",\"Chirag\",\"Jenish\"]', 0, '2022-03-21 04:50:02', '2022-03-21 04:50:02', '2023-03-21 10:20:02'),
('e26eb9d1f82fa345f40b1a1651a250b4e19462eaff8ff39176d3b142f824c94e7077f8c77136682f', 1, 3, 'Personal Access Token', '[\"Demo\",\"Kishan\"]', 0, '2022-03-25 04:40:07', '2022-03-25 04:40:07', '2023-03-25 10:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5ckFafRGdeB0Focs5hH6rGxBAHxHgByzWxIM9MMh', NULL, 'http://localhost', 1, 0, 0, '2022-03-20 23:02:13', '2022-03-20 23:02:13'),
(2, NULL, 'Laravel Password Grant Client', 'iy1IziZXctr6WQ7xWSdhBuhrefLpnc9wQh3dfKzx', 'users', 'http://localhost', 0, 1, 0, '2022-03-20 23:02:13', '2022-03-20 23:02:13'),
(3, NULL, 'Laravel Personal Access Client', 'paan4GRGre4T9kJSsrYfZan7bZa1UcGhjNwZ4LQd', NULL, 'http://localhost', 1, 0, 0, '2022-03-21 00:54:10', '2022-03-21 00:54:10'),
(4, NULL, 'Laravel Password Grant Client', 'VRBLOpOCuIoGlMiD9rjbTFxE7iM7r9qqVWMFod8O', 'users', 'http://localhost', 0, 1, 0, '2022-03-21 00:54:10', '2022-03-21 00:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-20 23:02:13', '2022-03-20 23:02:13'),
(2, 3, '2022-03-21 00:54:10', '2022-03-21 00:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('Kishan12@gmail.com', '$2y$10$dGYE9sPEh2RavwDnWC/CvuZwk5HaZHFkkoKaINm1LQju.VLLSe/Hq', '2022-03-25 04:57:49'),
('demo@gmail.com', '$2y$10$zQLfG5TGB16SrlJQ2k4DsuzXGMYdUK5MPphmxe7ArB8i3cNqjf8.m', '2022-03-25 21:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'my-users', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(2, 'index-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(3, 'show-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(4, 'update-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(5, 'destroy-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(6, 'export-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(7, 'importBulk-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(8, 'my-countries', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(9, 'store-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(10, 'index-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(11, 'show-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(12, 'update-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(13, 'destroy-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(14, 'export-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(15, 'importBulk-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(16, 'my-states', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(17, 'store-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(18, 'index-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(19, 'show-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(20, 'update-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(21, 'destroy-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(22, 'export-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(23, 'importBulk-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(24, 'my-cities', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(25, 'store-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(26, 'index-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(27, 'show-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(28, 'update-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(29, 'destroy-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(30, 'export-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(31, 'importBulk-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(32, 'my-hobbies', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(33, 'store-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(34, 'index-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(35, 'show-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(36, 'update-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(37, 'destroy-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(38, 'export-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(39, 'importBulk-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(40, 'my-roles', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(41, 'store-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(42, 'index-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(43, 'show-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(44, 'update-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(45, 'destroy-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(46, 'export-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(47, 'getPermissionsByRole-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(48, 'my-permissions', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(49, 'store-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(50, 'index-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(51, 'show-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(52, 'update-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(53, 'destroy-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(54, 'export-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(55, 'setUnsetPermissionToRole-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(56, 'delete_gallery-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(57, 'my-login', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(58, 'changePassword-logincontroller', 'my-login', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(59, 'logout-logincontroller', 'my-login', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(60, 'deleteAll-users', 'my-users', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(61, 'deleteAll-countries', 'my-countries', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(62, 'deleteAll-states', 'my-states', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(63, 'deleteAll-cities', 'my-cities', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(64, 'deleteAll-roles', 'my-roles', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(65, 'deleteAll-hobbies', 'my-hobbies', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(66, 'deleteAll-permissions', 'my-permissions', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(67, 'my-importcsvlogs', 'root', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(68, 'index-importcsvlogs', 'my-importcsvlogs', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL),
(69, 'show-importcsvlogs', 'my-importcsvlogs', '2022-03-26 04:03:48', '2022-03-26 04:03:48', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Permissions table id',
  `role_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Roles table id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `deleted_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `landing_page`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Supplier', NULL, NULL, 1, 1, NULL, '2022-03-25 22:52:07', '2022-03-25 22:52:07', NULL),
(2, 'Admin', NULL, NULL, 1, 1, NULL, '2022-03-25 22:52:18', '2022-03-25 22:52:18', NULL),
(3, 'Super Admin', NULL, NULL, 1, 1, NULL, '2022-03-25 22:52:26', '2022-03-25 22:52:26', NULL),
(4, 'Manager', NULL, NULL, 1, 1, NULL, '2022-03-25 22:52:35', '2022-03-25 22:52:35', NULL),
(5, 'Sub Admin', NULL, NULL, 1, 1, NULL, '2022-03-25 22:52:41', '2022-03-25 23:18:05', NULL),
(6, 'Demo', NULL, NULL, 1, 1, NULL, '2022-03-25 22:52:45', '2022-03-25 23:21:55', '2022-03-25 23:21:55'),
(7, 'Test 4', NULL, NULL, 1, 1, NULL, '2022-03-25 22:54:58', '2022-03-25 23:21:55', '2022-03-25 23:21:55'),
(8, 'Sub Manager', NULL, NULL, NULL, NULL, NULL, '2022-03-26 01:14:12', '2022-03-26 01:14:12', NULL),
(9, 'Developer', NULL, NULL, NULL, NULL, NULL, '2022-03-26 01:14:12', '2022-03-26 01:14:12', NULL),
(10, 'Tester', NULL, NULL, NULL, NULL, NULL, '2022-03-26 01:14:12', '2022-03-26 01:14:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `country_id` int(10) UNSIGNED NOT NULL COMMENT 'countries table id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(3, 1, 'Gujarat', '2022-03-25 09:44:30', '2022-03-25 09:44:34', NULL, 2, 2),
(4, 2, 'Melborn', '2022-03-25 09:44:37', '2022-03-24 00:23:42', NULL, 2, 2),
(5, 1, 'Rajashthan', '2022-03-21 23:15:41', '2022-03-21 23:15:41', NULL, 7, 7),
(6, 2, 'Sydany', '2022-03-21 23:31:28', '2022-03-21 23:41:44', NULL, 7, 7),
(10, 1, 'Bharuch', '2022-03-22 00:40:53', '2022-03-22 00:40:53', NULL, 7, 7),
(11, 1, 'Ahemdabad', '2022-03-24 00:16:17', '2022-03-24 00:16:17', NULL, 2, 2),
(12, 1, 'Demo', '2022-03-25 00:25:40', '2022-03-25 00:44:42', NULL, 1, 1),
(13, 1, 'Test', '2022-03-25 00:25:49', '2022-03-25 00:26:50', NULL, 1, 1),
(14, 2, 'Demo', '2022-03-25 01:51:03', '2022-03-25 01:51:03', NULL, NULL, NULL),
(15, 2, 'Test', '2022-03-25 01:51:03', '2022-03-25 01:51:03', NULL, NULL, NULL),
(16, 2, 'Testing', '2022-03-25 01:51:03', '2022-03-25 01:51:03', NULL, NULL, NULL),
(17, 2, 'Demo Test', '2022-03-25 01:51:03', '2022-03-25 01:51:03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('0','1') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 - Female, 1 - Male',
  `dob` date DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'countries table id',
  `state_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'states table id',
  `city_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'cities table id',
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 - Inactive, 1 - Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `updated_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `deleted_by` int(10) UNSIGNED DEFAULT NULL COMMENT 'Users table ID',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'roles table id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `mobile_no`, `profile`, `gender`, `dob`, `country_id`, `state_id`, `city_id`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `role_id`) VALUES
(1, 'Demo', 'demo@gmail.com', '2022-03-24 05:33:32', '$2y$10$YOj6ZXzk9zIng84x1MCFjuz15MwNZtIPOpd6Aeid0h0iGOZnBFTa.', '7QOeIqFBgXTATAKhgBTBCbS6zyEOBkWL7Kd6sjHJePDJU1rX1PFggvbxG9es', '2022-03-24 04:33:21', '2022-03-25 01:17:14', '7410852976', 'user/1/JGPmBrEpqKr12ni0BzMnl1TohmkwiNdFF7IKTgax.png', '1', '1996-12-28', 1, 3, 1, 'Antroli', '1', NULL, NULL, NULL, NULL, 1),
(2, 'Demoeee', 'demo33@gmail.com', '2022-03-24 23:51:44', '$2y$10$SAjhYegt0Oy9oau9XEtyseU8/3JGV3.XwfjeoRijBsdpl4cij7fBK', NULL, '2022-03-24 22:39:47', '2022-03-24 23:12:53', '7410852979', 'user/2/u3c1RO6A7Iisyzbnvt7cvSKqpSHGB1zpYE6zzsBg.png', '1', '1996-12-28', 1, 3, 1, 'Antroli', '1', NULL, NULL, NULL, '2022-03-24 23:12:53', 1),
(3, 'Kishan', 'kishan@gmail.com', NULL, '$2y$10$Tqm.XcyzwWGpb7ziyIy2M.3HkvkaOgOH9FL6k5/BrZdWtfYSgKUk.', NULL, '2022-03-25 02:55:20', '2022-03-25 04:40:04', '7410852963', 'user/3/1', '1', '1994-06-16', 1, 3, 1, 'Surat', '1', NULL, NULL, NULL, '2022-03-25 04:40:04', 1),
(4, 'Kishan', 'Kishan12@gmail.com', '2022-03-25 02:55:54', '$2y$10$93guQIzKiYGF5uCJMZcliuJdtlpo293vFQOaAAMfwa1np.EhJh6S2', NULL, '2022-03-25 02:58:31', '2022-03-25 03:35:53', '7410852985', 'user/4/BiAJDeKN2BMzmKlNNTU90gCJZwzPesNIaCtQqJjC.png', '1', '1996-12-28', 1, 3, 1, 'Antroli', '1', NULL, NULL, NULL, NULL, 1),
(5, 'Jenish', 'jenish@gmail.com', '2022-03-26 01:14:12', '$2y$10$BFgNHWvAQS58vb7gentmZuF/Fi4Y1YoGRVBOHk3rxI2xbdpMRvp/2', NULL, '2022-03-26 01:29:43', '2022-03-26 01:51:07', '7408529785', 'user/5/Rb2EsjMzPhpGvwGcPyvBpyrjQMtVgXjCBxOkkGn9.png', '1', '1994-02-06', 1, 3, 1, 'Bardoli', '1', NULL, NULL, NULL, NULL, 1),
(6, 'Chirag', 'chirag@gmail.com', NULL, '$2y$10$YrLAs1RXjVj7FcM.00VuXOuSZ.9vauTw/jcUUncvmOberdVPQpUOO', NULL, '2022-03-26 02:57:12', '2022-03-26 02:57:12', '7408529796', 'user/6/UNjhUTo8qmvUWvhngd2j5Zmq3OvOUmcJ5WDhEhvY.png', '1', '1994-04-08', 1, 3, 1, 'Bardoli', '1', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_galleries`
--

CREATE TABLE `user_galleries` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'AUTO_INCREMENT',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Users table ID',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_galleries`
--

INSERT INTO `user_galleries` (`id`, `user_id`, `filename`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'user/1/mURe62Bfy5DOAcF5Ghs2G4rbD68mz2IVklhh1r4p.svg', '2022-03-24 04:33:21', '2022-03-24 04:33:21', NULL),
(2, 1, 'user/1/xNI1GYIvYfR8ONWxR9Wq4k1IDJSDsZJjSuP8cvdb.png', '2022-03-24 04:33:21', '2022-03-24 04:33:21', NULL),
(7, 4, 'user/4/F0HPmOBuEjZp3qezXQ2ok1EavwWTuY7NzWKWCW5N.png', '2022-03-25 02:58:31', '2022-03-25 02:58:31', NULL),
(8, 4, 'user/4/AvARmn5wERg802Lo0aSz26WxE9qNBsLwclLct0c8.png', '2022-03-25 02:58:31', '2022-03-25 02:58:31', NULL),
(9, 5, 'user/5/eQbZIIG1ouk7s9K2xSUpOw68HWnY9rSfFIBMgQpU.png', '2022-03-26 01:29:43', '2022-03-26 01:29:43', NULL),
(10, 5, 'user/5/nPwTqb7SqJ0dt4idmE6e9BeKOMuPgOKiKQhmfMjx.png', '2022-03-26 01:29:43', '2022-03-26 01:29:43', NULL),
(11, 6, 'user/6/CSJrFyMl2FzZHx18xUUt6nXodZWEtjXHCCL8Sr7m.png', '2022-03-26 02:57:12', '2022-03-26 02:57:12', NULL),
(12, 6, 'user/6/4JBsK901K2C1aJ8Z1NRWwbPUg0x37NAA5N32oCkB.png', '2022-03-26 02:57:12', '2022-03-26 02:57:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_id_index` (`id`),
  ADD KEY `cities_state_id_index` (`state_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id_index` (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hobbies_id_index` (`id`);

--
-- Indexes for table `import_csv_logs`
--
ALTER TABLE `import_csv_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_csv_logs_id_index` (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_id_index` (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_id_unique` (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_id_index` (`id`),
  ADD KEY `states_country_id_index` (`country_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_gender_index` (`gender`),
  ADD KEY `users_country_id_index` (`country_id`),
  ADD KEY `users_state_id_index` (`state_id`),
  ADD KEY `users_city_id_index` (`city_id`),
  ADD KEY `users_status_index` (`status`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `user_galleries`
--
ALTER TABLE `user_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_galleries_id_index` (`id`),
  ADD KEY `user_galleries_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `import_csv_logs`
--
ALTER TABLE `import_csv_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_galleries`
--
ALTER TABLE `user_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
