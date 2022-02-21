-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 21 2022 г., 16:18
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vkr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_faculty` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `departments`
--

INSERT INTO `departments` (`id`, `name_d`, `id_faculty`, `created_at`, `updated_at`) VALUES
(1, 'Кафедра таможенного дела и мировой экономики (ТДиМЭ)', 1, NULL, NULL),
(2, 'Кафедра международных отношений и государственного управления (МОГУ)', 1, NULL, NULL),
(3, 'Кафедра товароведения, технологии и экспертизы товаров (кафедра ТТиЭТ)', 1, NULL, NULL),
(4, 'Кафедра высшей математики (кафедра ВМ)', 2, NULL, NULL),
(5, 'Кафедра механики, мехатроники и робототехники (кафедра ММиР)', 2, NULL, NULL),
(6, 'Кафедра нанотехнологий, микроэлектроники, общей и прикладной физики (кафедра НМОиПФ)', 2, NULL, NULL),
(7, 'Кафедра фундаментальной химии и химической технологии (кафедра ФХиХТ)', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_f` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `faculties`
--

INSERT INTO `faculties` (`id`, `name_f`, `created_at`, `updated_at`) VALUES
(1, 'Факультет государственного управления и международных отношений (ФГУиМО)', NULL, NULL),
(2, 'Естественно-научный факультет (ЕНФ)', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `file_managers`
--

CREATE TABLE `file_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_from` int(20) DEFAULT NULL,
  `id_to` int(20) DEFAULT NULL,
  `id_1` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `file_managers`
--

INSERT INTO `file_managers` (`id`, `text`, `href`, `id_from`, `id_to`, `id_1`, `created_at`, `updated_at`) VALUES
(114, 'норм', '0', 26, 17, 67, '2022-02-03 23:12:24', '2022-02-03 23:12:24'),
(117, 'Проверка', '0', 17, 18, 69, '2022-02-04 07:36:58', '2022-02-04 07:36:58'),
(118, 'Успешно', '0', 18, 17, 69, '2022-02-04 07:38:32', '2022-02-04 07:38:32'),
(119, NULL, '0', 17, NULL, NULL, '2022-02-21 10:04:55', '2022-02-21 10:04:55'),
(120, NULL, '0', 17, NULL, NULL, '2022-02-21 10:04:57', '2022-02-21 10:04:57'),
(121, 'Точно?', '0', 17, 18, 69, '2022-02-21 10:19:13', '2022-02-21 10:19:13'),
(122, 'Все работает?', '0', 17, 18, 71, '2022-02-21 12:15:44', '2022-02-21 12:15:44');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2021_11_10_170358_add_lol_to_users', 2),
(102, '2021_11_12_123124_create_faculties_table', 3),
(103, '2021_11_12_123155_create_departments_table', 3),
(106, '2014_10_12_000000_create_users_table', 4),
(107, '2014_10_12_100000_create_password_resets_table', 4),
(108, '2014_10_12_200000_add_two_factor_columns_to_users_table', 4),
(109, '2019_08_19_000000_create_failed_jobs_table', 4),
(110, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(111, '2020_05_21_100000_create_teams_table', 4),
(112, '2020_05_21_200000_create_team_user_table', 4),
(113, '2020_05_21_300000_create_team_invitations_table', 4),
(114, '2021_11_10_122705_create_sessions_table', 4),
(115, '2021_11_11_093052_create_aboutusers_table', 4),
(116, '2021_11_12_125447_create_countries_table', 4),
(117, '2021_11_12_125455_create_cities_table', 4),
(118, '2021_11_12_131753_create_faculties_table', 4),
(119, '2021_11_12_131816_create_departments_table', 4),
(120, '2021_11_15_132152_create_downloads_table', 5),
(121, '2021_11_15_132707_create_downloadable_table', 5),
(123, '2021_11_15_163019_create_file_managers_table', 6),
(124, '2021_11_19_134918_create_quests_table', 7),
(126, '2021_11_29_144317_create_news_table', 8),
(128, '2021_12_08_124851_add_hreffornews_to_news', 9),
(129, '0000_00_00_000000_create_websockets_statistics_entries_table', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_owner` int(10) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_for` int(10) UNSIGNED DEFAULT NULL,
  `id_for_department` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hreffornews` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `id_owner`, `text`, `id_for`, `id_for_department`, `created_at`, `updated_at`, `hreffornews`) VALUES
(54, 18, 'Тестовое объявление для факультета', 1, NULL, '2021-12-24 09:05:03', '2021-12-24 09:05:03', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('2@yandex.ru', '$2y$10$Nzn6rZiR4vOINe.PY69Sh.ata3EcjgTES1PHfjQ08SMu/9h6g0QsC', '2021-11-25 17:54:15');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `quests`
--

CREATE TABLE `quests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_from` int(20) DEFAULT NULL,
  `id_to` int(20) DEFAULT NULL,
  `id_11` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `quests`
--

INSERT INTO `quests` (`id`, `subject`, `id_from`, `id_to`, `id_11`, `created_at`, `updated_at`) VALUES
(69, 'Тестовое задание', 17, 18, 1, '2022-02-04 07:36:18', '2022-02-04 07:36:18'),
(70, 'тест', 17, 18, 1, '2022-02-04 07:36:33', '2022-02-04 07:36:33'),
(71, 'Новое задание', 17, 18, 0, '2022-02-21 12:15:34', '2022-02-21 12:15:34');

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TE6l9m5JlasK2ht4Vt6yLb19SEHEAmuwXuwo5GII', 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36 Edg/98.0.1108.56', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMkVzS3JWSHdSSkRYcUE2dkRXZFZnZ21BUFhXY2kzSDdpR1E0aktXeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93b3Jrd2l0aHVzZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNztzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGVIZlNqYjdORFBVdndWamlhbm9IQmV6OVpNaWdtL05LVVRBazY4anZQWU4zR3paTDI5WHVDIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRlSGZTamI3TkRQVXZ3VmppYW5vSEJlejlaTWlnbS9OS1VUQWs2OGp2UFlOM0d6WkwyOVh1QyI7fQ==', 1645449407);

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin\'s Team', 1, '2021-11-12 10:40:43', '2021-11-12 10:40:43'),
(2, 2, 'Lanos\'s Team', 1, '2021-11-12 13:45:04', '2021-11-12 13:45:04'),
(3, 3, 'lel\'s Team', 1, '2021-11-12 16:02:07', '2021-11-12 16:02:07'),
(4, 4, 'adkadk\'s Team', 1, '2021-11-17 06:16:14', '2021-11-17 06:16:14'),
(5, 5, '1\'s Team', 1, '2021-11-18 09:39:18', '2021-11-18 09:39:18'),
(6, 6, '2\'s Team', 1, '2021-11-18 09:40:34', '2021-11-18 09:40:34'),
(7, 7, '3\'s Team', 1, '2021-11-18 09:41:41', '2021-11-18 09:41:41'),
(8, 8, '4\'s Team', 1, '2021-11-18 09:43:13', '2021-11-18 09:43:13'),
(9, 9, 'pak\'s Team', 1, '2021-11-18 12:57:55', '2021-11-18 12:57:55'),
(10, 10, '10\'s Team', 1, '2021-11-21 12:21:51', '2021-11-21 12:21:51'),
(11, 11, 'general\'s Team', 1, '2021-11-22 16:17:09', '2021-11-22 16:17:09'),
(12, 12, '222\'s Team', 1, '2021-11-25 09:37:45', '2021-11-25 09:37:45'),
(13, 13, 'Ivanov\'s Team', 1, '2021-11-25 10:15:48', '2021-11-25 10:15:48'),
(14, 14, '111\'s Team', 1, '2021-11-25 17:37:21', '2021-11-25 17:37:21'),
(15, 15, '2222\'s Team', 1, '2021-11-25 17:38:14', '2021-11-25 17:38:14'),
(16, 16, '3\'s Team', 1, '2021-11-25 17:38:53', '2021-11-25 17:38:53'),
(17, 17, '22\'s Team', 1, '2021-11-25 17:55:04', '2021-11-25 17:55:04'),
(18, 18, 'DEkan\'s Team', 1, '2021-11-29 11:37:23', '2021-11-29 11:37:23'),
(19, 19, '111\'s Team', 1, '2021-11-29 14:00:59', '2021-11-29 14:00:59'),
(20, 20, 'Ivanov\'s Team', 1, '2021-12-02 11:10:22', '2021-12-02 11:10:22'),
(21, 21, '33\'s Team', 1, '2021-12-03 08:57:15', '2021-12-03 08:57:15'),
(22, 22, 'goodboy\'s Team', 1, '2021-12-07 18:54:40', '2021-12-07 18:54:40'),
(23, 23, '333\'s Team', 1, '2021-12-10 10:52:04', '2021-12-10 10:52:04'),
(24, 24, '44\'s Team', 1, '2021-12-10 15:35:13', '2021-12-10 15:35:13'),
(25, 25, '3332\'s Team', 1, '2022-02-03 20:29:08', '2022-02-03 20:29:08'),
(26, 26, '22222\'s Team', 1, '2022-02-03 20:32:19', '2022-02-03 20:32:19');

-- --------------------------------------------------------

--
-- Структура таблицы `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `FIO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `faculty` int(20) NOT NULL DEFAULT 1,
  `department` int(20) NOT NULL DEFAULT 1,
  `id1` int(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `FIO`, `role`, `faculty`, `department`, `id1`) VALUES
(1, 'Admin', 'Perch46@yandex.ru', NULL, '$2y$10$hbaWJ1ruHCnHFauoAqiOre2e2nY8qB1Rz30pd.Ys5MMBKsc/OcU8W', NULL, NULL, NULL, 1, NULL, '2021-11-12 10:40:43', '2021-11-12 10:40:43', 'Перьков Сергей Андреевич', 'Администратор', 0, 0, 3),
(17, '22', '22@yandex.ru', NULL, '$2y$10$eHfSjb7NDPUvwVjianoHBez9ZMigm/NKUTAk68jvPYN3GzZL29XuC', NULL, NULL, NULL, 17, NULL, '2021-11-25 17:55:04', '2021-11-25 17:55:24', 'Аркадий Аркадьевич', 'Заведующий кафедрой', 1, 2, 3),
(18, 'DEkan', 'dekan@yandex.ru', NULL, '$2y$10$tdKyGXEgaDjDiVFb06UA6u9da9kDRoBNIxJnDoUP9U0BILcO/JFAC', NULL, NULL, NULL, 18, NULL, '2021-11-29 11:37:23', '2021-11-29 11:38:01', 'Петр Петрович Петров', 'Декан', 1, 2, 3),
(19, '111', '1@yandex.ru', NULL, '$2y$10$f.7jYz0Sx57gBtGzAyT5aePFSLi2xD3HdKYKRpkhou0o786bO31JS', NULL, NULL, NULL, 19, NULL, '2021-11-29 14:00:59', '2021-11-29 14:01:37', 'Аркадий Аркадьевич', 'профессорско-преподавательский состав', 1, 2, 3),
(20, 'Ivanov', 'Ivanov@yandex.ru', NULL, '$2y$10$vmUSyoo52DGHcWus99XyT.fsMmwcT70PZw7KfbbpuiPXN39dyWrUi', NULL, NULL, NULL, 20, NULL, '2021-12-02 11:10:22', '2021-12-02 11:29:38', 'Иванов Иван Иванович', 'профессорско-преподавательский состав', 1, 2, 3),
(21, '33', '33@yandex.ru', NULL, '$2y$10$RdxaZTsJCH5zfKy76oNcdeOSS6KqvpaUGMhGhIE9jQJpZzrLRYlQ.', NULL, NULL, NULL, 21, NULL, '2021-12-03 08:57:15', '2021-12-03 08:57:48', 'Иванов', 'профессорско-преподавательский состав', 1, 2, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_faculty` (`id_faculty`);

--
-- Индексы таблицы `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `file_managers`
--
ALTER TABLE `file_managers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_owner` (`id_owner`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Индексы таблицы `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Индексы таблицы `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `quests`
--
ALTER TABLE `quests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
