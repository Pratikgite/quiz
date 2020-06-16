-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2020 at 08:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT 0,
  `question_id` int(11) NOT NULL DEFAULT 0,
  `options` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `subject_id`, `question_id`, `options`, `correct_answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PHP: Hypertext Preprocessor', 'PHP: Hypertext Preprocessor', '2020-06-13 07:34:43', '2020-06-13 07:38:36'),
(2, 1, 1, 'Personal Hypertext Processor', 'PHP: Hypertext Preprocessor', '2020-06-13 07:34:43', '2020-06-13 07:34:43'),
(6, 1, 2, '$_COOKIE variable', 'isset() function', '2020-06-13 07:43:57', '2020-06-13 07:43:57'),
(7, 1, 2, 'isset() function', 'isset() function', '2020-06-13 07:43:57', '2020-06-13 07:43:57'),
(9, 1, 3, 'define', 'define', '2020-06-13 07:43:57', '2020-06-13 07:43:57'),
(10, 1, 3, 'const', 'define', '2020-06-13 07:43:57', '2020-06-13 07:43:57'),
(11, 1, 4, '/* commented code here */', '/* commented code here */', '2020-06-13 07:50:45', '2020-06-13 07:50:45'),
(12, 1, 4, '** commented code to end of line **', '/* commented code here */', '2020-06-13 07:50:45', '2020-06-13 07:50:45'),
(13, 1, 5, '<>', '<=>', '2020-06-13 07:51:57', '2020-06-13 07:51:57'),
(14, 1, 5, '<=>', '<=>', '2020-06-13 07:51:57', '2020-06-13 07:51:57'),
(15, 2, 6, 'Forward Tag', 'Starting Tag', '2020-06-13 08:02:05', '2020-06-13 08:02:05'),
(16, 2, 6, 'Starting Tag', 'Starting Tag', '2020-06-13 08:02:05', '2020-06-13 08:02:06'),
(17, 2, 7, 'Hyper Text Markup Language', 'Hyper Text Markup Language', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(18, 2, 7, 'Hyper Text Makeup Language', 'Hyper Text Markup Language', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(19, 2, 8, '.html', '.html', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(20, 2, 8, '.htlm', '.html', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(21, 2, 9, 'Yes', 'No', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(22, 2, 9, 'No', 'No', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(23, 2, 10, 'False', 'True', '2020-06-13 08:02:06', '2020-06-13 08:02:06'),
(24, 2, 10, 'True', 'True', '2020-06-13 08:02:06', '2020-06-13 08:02:06');

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
(3, '2020_06_13_064730_create_questions_table', 1),
(4, '2020_06_13_065001_create_answers_table', 1),
(5, '2020_06_13_071306_create_subjects_table', 1),
(6, '2020_06_14_152434_create_results_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 'What does PHP stand for?', 1, '2020-06-13 07:33:51', '2020-06-13 07:33:51'),
(2, 'Which of the following is used to check that a cookie is set or not?', 1, '2020-06-13 07:33:51', '2020-06-13 07:33:51'),
(3, 'Which of the following is used to declare a constant?', 1, '2020-06-13 07:33:51', '2020-06-13 07:33:51'),
(4, 'Which of the following is the way to create comments in PHP?', 1, '2020-06-13 07:41:43', '2020-06-13 07:41:43'),
(5, 'Which of the following is NOT a valid PHP comparison operator?', 1, '2020-06-13 07:41:43', '2020-06-13 07:41:43'),
(6, 'Opening Tag of HTML Tag is called as ________.', 2, '2020-06-13 07:58:33', '2020-06-13 07:58:33'),
(7, 'HTML stands for ________.', 2, '2020-06-13 07:58:33', '2020-06-13 07:58:33'),
(8, 'HTML program is saved using _________ extension.', 2, '2020-06-13 07:58:33', '2020-06-13 07:58:33'),
(9, 'Is width=”100” and width=”100%” the same?', 2, '2020-06-13 07:58:33', '2020-06-13 07:58:33'),
(10, '<meta> tag cannot be defined in the <head> tag.', 2, '2020-06-13 07:58:33', '2020-06-13 07:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '2020-06-13 02:01:50', '2020-06-13 02:01:50'),
(2, 'HTML', '2020-06-13 02:01:50', '2020-06-13 02:01:50');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
