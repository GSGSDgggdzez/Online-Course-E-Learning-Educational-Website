-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 11:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courses`
--

-- --------------------------------------------------------

--
-- Table structure for table `asks`
--

CREATE TABLE `asks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `User_id` bigint(20) UNSIGNED NOT NULL,
  `Question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `Chapters` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `lesson_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `course_id`, `Chapters`, `title`, `time`, `lesson_number`, `created_at`, `updated_at`) VALUES
(10, 1, '1', 'Introduction to HTML', '1 hour', '01', NULL, NULL),
(11, 1, '1', 'CSS Basics', '1 hour', '02', NULL, NULL),
(12, 1, '1', 'Responsive Design Principles', '1 hour', '03', NULL, NULL),
(13, 1, '2', 'JavaScript Fundamentals', '1 hour', '01', NULL, NULL),
(14, 1, '2', 'DOM Manipulation', '1 hour', '02', NULL, NULL),
(15, 1, '2', 'Web Accessibility', '1 hour', '03', NULL, NULL),
(16, 1, '3', 'Web Performance Optimization', '1 hour', '01', NULL, NULL),
(17, 1, '3', 'Version Control with Git', '1 hour', '02', NULL, NULL),
(18, 1, '3', 'Deploying Your First Website', '1 hour', '03', NULL, NULL),
(19, 2, '1', 'Introduction to UI/UX Design', '1 hour', '01', NULL, NULL),
(20, 2, '1', 'User Research Techniques', '1 hour', '02', NULL, NULL),
(21, 2, '1', 'Creating User Personas', '1 hour', '03', NULL, NULL),
(22, 2, '2', 'Information Architecture', '1 hour', '01', NULL, NULL),
(23, 2, '2', 'Wireframing and Prototyping', '1 hour', '02', NULL, NULL),
(24, 2, '2', 'Visual Design Principles', '1 hour', '03', NULL, NULL),
(25, 2, '3', 'Usability Testing', '1 hour', '01', NULL, NULL),
(26, 2, '3', 'Interaction Design', '1 hour', '02', NULL, NULL),
(27, 2, '3', 'Design Systems', '1 hour', '03', NULL, NULL),
(28, 3, '1', 'Mobile App Development Overview', '1 hour', '01', NULL, NULL),
(29, 3, '1', 'Native vs. Cross-Platform Development', '1 hour', '02', NULL, NULL),
(30, 3, '1', 'Setting Up Your Development Environment', '1 hour', '03', NULL, NULL),
(31, 3, '2', 'UI Design for Mobile Apps', '1 hour', '01', NULL, NULL),
(32, 3, '2', 'Data Storage and Management', '1 hour', '02', NULL, NULL),
(33, 3, '2', 'API Integration', '1 hour', '03', NULL, NULL),
(34, 3, '3', 'Push Notifications', '1 hour', '01', NULL, NULL),
(35, 3, '3', 'App Testing and Debugging', '1 hour', '02', NULL, NULL),
(36, 3, '3', 'Publishing Your App', '1 hour', '03', NULL, NULL),
(37, 4, '1', 'Introduction to Graphic Design', '1 hour', '01', NULL, NULL),
(38, 4, '1', 'Color Theory', '1 hour', '02', NULL, NULL),
(39, 4, '1', 'Typography Basics', '1 hour', '03', NULL, NULL),
(40, 4, '2', 'Layout and Composition', '1 hour', '01', NULL, NULL),
(41, 4, '2', 'Working with Images', '1 hour', '02', NULL, NULL),
(42, 4, '2', 'Vector Graphics', '1 hour', '03', NULL, NULL),
(43, 4, '3', 'Logo Design', '1 hour', '01', NULL, NULL),
(44, 4, '3', 'Branding Basics', '1 hour', '02', NULL, NULL),
(45, 4, '3', 'Print vs. Digital Design', '1 hour', '03', NULL, NULL),
(46, 5, '1', 'HTML5 and Semantic Markup', '1 hour', '01', NULL, NULL),
(47, 5, '1', 'CSS3 and Preprocessors', '1 hour', '02', NULL, NULL),
(48, 5, '1', 'JavaScript ES6+', '1 hour', '03', NULL, NULL),
(49, 5, '2', 'Front-End Frameworks (React, Vue, Angular)', '1 hour', '01', NULL, NULL),
(50, 5, '2', 'State Management', '1 hour', '02', NULL, NULL),
(51, 5, '2', 'RESTful APIs and AJAX', '1 hour', '03', NULL, NULL),
(52, 5, '3', 'Web Performance Optimization', '1 hour', '01', NULL, NULL),
(53, 5, '3', 'Progressive Web Apps', '1 hour', '02', NULL, NULL),
(54, 5, '3', 'Front-End Testing', '1 hour', '03', NULL, NULL),
(55, 6, '1', 'Server-Side Programming Languages', '1 hour', '01', NULL, NULL),
(56, 6, '1', 'Databases and SQL', '1 hour', '02', NULL, NULL),
(57, 6, '1', 'RESTful API Design', '1 hour', '03', NULL, NULL),
(58, 6, '2', 'Authentication and Authorization', '1 hour', '01', NULL, NULL),
(59, 6, '2', 'Server Deployment and DevOps', '1 hour', '02', NULL, NULL),
(60, 6, '2', 'Caching Strategies', '1 hour', '03', NULL, NULL),
(61, 6, '3', 'Microservices Architecture', '1 hour', '01', NULL, NULL),
(62, 6, '3', 'Message Queues and Task Scheduling', '1 hour', '02', NULL, NULL),
(63, 6, '3', 'Scalability and Performance Tuning', '1 hour', '03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contollers`
--

CREATE TABLE `contollers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) UNSIGNED NOT NULL,
  `User_id` bigint(20) UNSIGNED NOT NULL,
  `End` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Duration` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Videos_URL0` varchar(255) DEFAULT NULL,
  `Image_URL1` varchar(255) DEFAULT NULL,
  `Image_URL2` varchar(255) DEFAULT NULL,
  `Image_URL3` varchar(255) DEFAULT NULL,
  `Image_URL4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `Name`, `Duration`, `level`, `author`, `Description`, `Videos_URL0`, `Image_URL1`, `Image_URL2`, `Image_URL3`, `Image_URL4`, `created_at`, `updated_at`) VALUES
(1, 'Web Design Fundamentals', '4 Weeks', 'Beginner', 'John Smith', 'Learn the fundamentals of web design, including HTML, CSS, and responsive design principles. Develop the skills to create visually appealing and user-friendly websites.', 'iii/videos.mp4', 'iii/Image (23).svg', 'iii/WebDesign.svg', 'iii/Image (24).svg', 'iii/Image (23).svg', NULL, NULL),
(2, 'UI/UX Design', '6 Weeks', 'Intermediate', 'Emily Johnson', 'Master the art of creating intuitive user interfaces (UI) and enhancing user experiences (UX). Learn design principles, wireframing, prototyping, and usability testing techniques.', 'iii/videos.mp4', 'iii/Image (26).svg', 'iii/Image (27).svg', 'iii/Image (28).svg', 'iii/Image (26).svg', NULL, NULL),
(3, 'Mobile App Development', '8 Weeks', 'Intermediate', 'David Brown', 'Dive into the world of mobile app development. Learn to build native iOS and Android applications using industry-leading frameworks like Swift and Kotlin.', 'iii/videos.mp4', 'iii/Image (29).svg', 'iii/Image (31).svg', 'iii/Image (41).svg', 'iii/Image (31).svg', NULL, NULL),
(4, 'Graphic Design for Beginners', '10 Weeks', 'Beginner', 'Sarah Thompson', 'Discover the fundamentals of graphic design, including typography, color theory, layout design, and image manipulation techniques. Create visually stunning designs for print and digital media.', 'iii/videos.mp4', 'iii/Image (32).svg', 'iii/Image (33).svg', 'iii/Image (34).svg', 'iii/Image (34).svg', NULL, NULL),
(5, 'Front-End Web Development', '10 Weeks', 'Intermediate', 'Michael Adams', 'Become proficient in front-end web development. Learn HTML, CSS, JavaScript, and popular frameworks like Bootstrap and React. Build interactive and responsive websites.', 'iii/videos.mp4', 'iii/Image (35).svg', 'iii/Image (36).svg', 'iii/Image (37).svg', 'iii/Image (37).svg', NULL, NULL),
(6, 'Back-End Web Development', '12 week', 'Advance', 'Defree Harold', 'Become proficient in Back-end web development. Learn PHP, GO, JavaScript, and popular frameworks like LARAVEL and Alpin JS. Build interactive and responsive websites.', 'iii/videos.mp4', 'iii/Image (35).svg', 'iii/Image (36).svg', 'iii/Image (37).svg', 'iii/Image (37).svg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_11_115833_create_courses_table', 1),
(5, '2024_09_11_120949_create_chapters_table', 1),
(6, '2024_09_11_122003_create_contollers_table', 1),
(7, '2024_09_12_152440_add_profile_picture_to_users_table', 2),
(8, '2024_09_12_221911_add_profile_pictures_to_users_table', 3),
(9, '2024_09_16_120127_create_asks_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0Ds4UW1R5SMFdNzpfNxftF8CTpcHAxGms0KmgvIE', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQkZEbU9nZDNsNUUyN1RMd1VER01HaWFSQU5ENmJCOTZ3M0FsUUpRZiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL0NvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1726695028),
('VnnVEZ3Rh6puDLNEQKXqbnqKjRgQ3EqLAoex4OmJ', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYWZMRnNJbExXZGg5ZWZYUnZkRUZaeE12RjVvOERmRG9yVHJWaFhsTSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyODoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3ByaWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726655978);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `Testimonials` longtext DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_picture`, `email_verified_at`, `password`, `Testimonials`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'def harold', 'harolddefree15@gmail.com', 'p/Image (38).svg', NULL, '$2y$12$o0UHajKKuYiLulpHouGLIO3lfZvBe2aEz4d8Nq/GpafKEdVBj0zFC', 'The web design course provided a solid foundation for me. The instructors were knowledgeable and supportive, and the interactive learning environment was engaging. I highly recommend it!', NULL, '2024-09-12 04:18:49', '2024-09-12 04:18:49'),
(2, 'Zilson', 'jdjjhdkjzk@gmail.com', 'p/Image (39).svg', NULL, '$2y$12$ofKUS6KPvXDHD1toiDMQOOG61UZMTw/FiKC.TKzB7ehF8ThG3F/e6', 'The web design course provided a solid foundation for me. The instructors were knowledgeable and supportive, and the interactive learning environment was engaging. I highly recommend it!', NULL, '2024-09-12 14:08:13', '2024-09-12 14:08:13'),
(3, 'Oyan', 'deefef@gmail.com', 'p/Image (40).svg', NULL, '$2y$12$5q5Z/kvJlsmXAo5CknVUR.28qhNkwg4keXwXdmLmifSy0b03ATqHa', 'The web design course provided a solid foundation for me. The instructors were knowledgeable and supportive, and the interactive learning environment was engaging. I highly recommend it!', 'YUgvbSt5DnfV1HS95VVpB30bWnw2uZV0rGJWYq6bUklbmQ4k1SYQDJ1ReZgm', '2024-09-12 14:08:37', '2024-09-12 14:08:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asks`
--
ALTER TABLE `asks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asks_user_id_foreign` (`User_id`);

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
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapters_course_id_foreign` (`course_id`);

--
-- Indexes for table `contollers`
--
ALTER TABLE `contollers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contollers_course_id_foreign` (`course_id`),
  ADD KEY `contollers_chapter_id_foreign` (`chapter_id`),
  ADD KEY `contollers_user_id_foreign` (`User_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asks`
--
ALTER TABLE `asks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contollers`
--
ALTER TABLE `contollers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asks`
--
ALTER TABLE `asks`
  ADD CONSTRAINT `asks_user_id_foreign` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contollers`
--
ALTER TABLE `contollers`
  ADD CONSTRAINT `contollers_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contollers_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contollers_user_id_foreign` FOREIGN KEY (`User_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
