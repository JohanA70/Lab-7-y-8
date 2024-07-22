-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_tasks
CREATE DATABASE IF NOT EXISTS `db_tasks` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_tasks`;

-- Volcando estructura para tabla db_tasks.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.cache: ~2 rows (aproximadamente)
DELETE FROM `cache`;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('e1@gmail.com|127.0.0.1', 'i:1;', 1721612336),
	('e1@gmail.com|127.0.0.1:timer', 'i:1721612336;', 1721612336);

-- Volcando estructura para tabla db_tasks.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.cache_locks: ~0 rows (aproximadamente)
DELETE FROM `cache_locks`;

-- Volcando estructura para tabla db_tasks.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;

-- Volcando estructura para tabla db_tasks.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.jobs: ~0 rows (aproximadamente)
DELETE FROM `jobs`;

-- Volcando estructura para tabla db_tasks.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.job_batches: ~0 rows (aproximadamente)
DELETE FROM `job_batches`;

-- Volcando estructura para tabla db_tasks.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.migrations: ~5 rows (aproximadamente)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_06_20_002525_create_tasks_table', 1),
	(5, '2024_06_19_002400_create_priorities_table', 2);

-- Volcando estructura para tabla db_tasks.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.password_reset_tokens: ~0 rows (aproximadamente)
DELETE FROM `password_reset_tokens`;

-- Volcando estructura para tabla db_tasks.priorities
CREATE TABLE IF NOT EXISTS `priorities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.priorities: ~3 rows (aproximadamente)
DELETE FROM `priorities`;
INSERT INTO `priorities` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Alta', '2024-07-04 09:18:32', '2024-07-04 09:18:32'),
	(2, 'Media', '2024-07-04 09:18:32', '2024-07-04 09:18:32'),
	(3, 'Baja', '2024-07-04 09:18:32', '2024-07-04 09:18:32');

-- Volcando estructura para tabla db_tasks.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.sessions: ~5 rows (aproximadamente)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('BbYcMqqNfFCxIJQwcfCDggxBtGk5mRHaP33YRyLg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHJWNVJ5NGh5YnRaWTFXS1hhdlpnRHF0V2l5cUpVTWZIUmo2NnMzNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721266453),
	('edwaX7d4qltItHUMpR6hUzdiZSQghP3wOCtBaqqH', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Avast/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWxyazdSRG1yNHVtcnFOUnF5TEVZaVVja0x1Q00yUkt5dGQzdnBQdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1721521285),
	('FwECUtQzCXyEeR5YN2CbfyFhVpMusxtoI2IxUzEq', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Avast/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUGRLOE9FbWFqN2d5Vzg0V25MeEJWdjVzMzFxWkc4dFdBUkdyWHJaUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrcyI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1721612368),
	('SPi3ioY6BO7rz7NJiGoWr2vUBx2qGwTUkw9kwO2U', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Avast/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNmE2Z2p1MFo2ajFjOFk1TkFqd1VpTmNneDE2OE91ZUt4ckdCbklmYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90YXNrcyI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1721591403),
	('xuJiL2flbOocDolQ5iaNWWlSRGiqorlj3F9kXV9C', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Avast/126.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOTVoUzZ5UkhCQlMxSG1EMWVXdEVOV3UzbU9lNzlPZ0JXYW50eDdNVSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdGFza3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO30=', 1721497865);

-- Volcando estructura para tabla db_tasks.tags
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_tasks.tags: ~3 rows (aproximadamente)
DELETE FROM `tags`;
INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Urgente', '2024-07-09 20:22:38', '2024-07-09 20:22:38'),
	(2, 'Revisión', '2024-07-09 20:22:38', '2024-07-09 20:22:38'),
	(3, 'Finalizado', '2024-07-09 20:22:38', '2024-07-09 20:22:38');

-- Volcando estructura para tabla db_tasks.tag_task
CREATE TABLE IF NOT EXISTS `tag_task` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `tag_task_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_task_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla db_tasks.tag_task: ~9 rows (aproximadamente)
DELETE FROM `tag_task`;
INSERT INTO `tag_task` (`id`, `task_id`, `tag_id`, `created_at`, `updated_at`) VALUES
	(2, 3, 1, NULL, NULL),
	(3, 4, 2, NULL, NULL),
	(5, 2, 3, NULL, NULL),
	(6, 11, 3, NULL, NULL),
	(7, 12, 3, NULL, NULL),
	(8, 13, 2, NULL, NULL),
	(9, 14, 2, NULL, NULL),
	(10, 15, 1, NULL, NULL),
	(12, 17, 3, NULL, NULL);

-- Volcando estructura para tabla db_tasks.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.tasks: ~15 rows (aproximadamente)
DELETE FROM `tasks`;
INSERT INTO `tasks` (`id`, `name`, `description`, `completed`, `created_at`, `updated_at`, `priority_id`, `user_id`) VALUES
	(2, 'Danika Gutkowski', 'Quia voluptatum quas nobis voluptas porro tempore. Et alias consequatur maxime quidem omnis. Esse aperiam illo labore sunt rerum. Et reiciendis quis commodi labore quos pariatur.', 1, '2024-07-04 09:18:32', '2024-07-10 03:17:49', 1, 1),
	(3, 'Prof. Emmanuelle DuBuque II', 'Iusto beatae corporis autem corporis doloribus voluptatem. Provident est at in et non ipsum ea incidunt. Qui nostrum et temporibus qui aut.', 0, '2024-07-04 09:18:32', '2024-07-10 02:35:04', 1, 1),
	(4, 'Hannah Denesik', 'Esse iste maxime ut inventore quia qui. Ratione quis maxime sapiente magni id perferendis itaque. Asperiores rerum ut laboriosam debitis et.', 0, '2024-07-04 09:18:32', '2024-07-10 02:35:31', 1, 1),
	(5, 'Prof. Rylan Bergstrom Jr.', 'Quia repudiandae nihil modi minus qui non. Impedit quis deserunt labore commodi accusantium qui. Quia voluptatum ut minus autem animi autem eaque.', 0, '2024-07-04 09:18:32', '2024-07-04 09:18:32', 1, 0),
	(6, 'Sally Beatty', 'Dignissimos sed voluptatibus et molestiae qui voluptatibus. Pariatur rem voluptates ut nemo esse.', 0, '2024-07-04 09:18:32', '2024-07-04 09:18:32', 1, 0),
	(7, 'Marlen Zulauf', 'Qui omnis rerum ut modi rerum similique nobis. Magni amet nulla optio quasi. Nisi adipisci eos magni necessitatibus. Quibusdam consequatur porro magni error sapiente explicabo architecto.', 0, '2024-07-04 09:18:32', '2024-07-04 09:18:32', 1, 0),
	(8, 'Margarete Hansen', 'Vitae reiciendis et consequuntur doloribus sit mollitia et ab. Vero consequatur minus beatae blanditiis voluptatem eveniet quia impedit. Est a id alias. Quae debitis suscipit culpa veritatis laudantium.', 0, '2024-07-04 09:18:32', '2024-07-04 09:18:32', 1, 0),
	(9, 'Andrew Denesik', 'Eaque modi qui non et et laborum debitis saepe. Modi ex distinctio corrupti. Et expedita neque dolores labore atque omnis adipisci. Tempore et temporibus fugiat non dolorem aspernatur.', 0, '2024-07-04 09:18:32', '2024-07-04 09:18:32', 1, 0),
	(11, 'Tarea de Web II', 'Es mi tarea de Web', 1, '2024-07-04 09:41:27', '2024-07-10 03:23:46', 1, 1),
	(12, 'Tarea de Programación', 'Mi tarea de programación', 1, '2024-07-04 10:20:34', '2024-07-10 03:24:06', 1, 1),
	(13, 'Tarea de redes', 'Esta es una tarea de configuración', 1, '2024-07-10 03:26:07', '2024-07-11 04:07:56', 1, 2),
	(14, 'Lavar Platos', 'qwewwrwwcsd', 0, '2024-07-20 23:50:06', '2024-07-20 23:50:06', 1, 3),
	(15, 'Lavar Ropa', 'Si se puede', 0, '2024-07-20 23:50:21', '2024-07-20 23:50:55', 1, 3),
	(17, 'hollaaaaa', 'fqwfwfwfw', 0, '2024-07-22 07:38:23', '2024-07-22 07:38:23', 2, 3);

-- Volcando estructura para tabla db_tasks.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla db_tasks.users: ~2 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Test User', 'test@example.com', '2024-07-04 09:18:32', '$2y$12$I.tM9.r24EIkvdeSED8y/..lOsGhT6xYuV.lv.bsRv6XwT5sKrx8q', 'YJGtfHgtX9', '2024-07-04 09:18:32', '2024-07-04 09:18:32'),
	(2, 'User2', 'user@example.com', '2024-07-04 04:01:24', '$12$I.tM9.r24EIkvdeSED8y/..lOsGhT6xYuV.lv.bsRv6XwT5sKrx8q', NULL, '2024-07-04 04:01:38', '2024-07-04 04:01:40'),
	(3, 'Johan', 'jo25@gmail.com', NULL, '$2y$12$uHfmKEU1lOg9pNxgktn/aOjdoP01/pvMeMESgxoEqt3AY/8xvcD8i', NULL, '2024-07-20 23:49:44', '2024-07-20 23:49:44');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
