-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 13, 2022 at 02:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `pkstyle`
--

-- --------------------------------------------------------

--
-- Table structure for table `pk_actionscheduler_actions`
--

CREATE TABLE `pk_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_actionscheduler_actions`
--

INSERT INTO `pk_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(7, 'action_scheduler/migration_hook', 'complete', '2022-08-04 18:21:17', '2022-08-04 18:21:17', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659637277;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659637277;}', 1, 1, '2022-08-04 18:21:26', '2022-08-04 21:21:26', 0, NULL),
(8, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-04 18:20:20', '2022-08-04 18:20:20', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1659637220;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1659637220;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-04 18:21:26', '2022-08-04 21:21:26', 0, NULL),
(9, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-05 18:21:26', '2022-08-05 18:21:26', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1659723686;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1659723686;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-05 19:04:56', '2022-08-05 22:04:56', 0, NULL),
(10, 'action_scheduler/migration_hook', 'complete', '2022-08-04 18:22:26', '2022-08-04 18:22:26', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659637346;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659637346;}', 1, 1, '2022-08-04 18:23:15', '2022-08-04 21:23:15', 0, NULL),
(11, 'wc-admin_import_customers', 'complete', '2022-08-05 14:19:30', '2022-08-05 14:19:30', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659709170;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659709170;}', 2, 1, '2022-08-05 14:20:17', '2022-08-05 17:20:17', 0, NULL),
(12, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 0, 1, '2022-08-05 14:46:15', '2022-08-05 17:46:15', 0, NULL),
(13, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-08-05 14:46:12', '2022-08-05 14:46:12', '[26,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659710772;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659710772;}', 3, 1, '2022-08-05 14:46:15', '2022-08-05 17:46:15', 0, NULL),
(14, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-08-05 14:48:51', '2022-08-05 14:48:51', '[26,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659710931;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659710931;}', 3, 1, '2022-08-05 14:49:17', '2022-08-05 17:49:17', 0, NULL),
(15, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-08-05 15:45:36', '2022-08-05 15:45:36', '[28,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659714336;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659714336;}', 3, 1, '2022-08-05 15:45:49', '2022-08-05 18:45:49', 0, NULL),
(16, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-06 19:04:56', '2022-08-06 19:04:56', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1659812696;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1659812696;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-07 18:05:01', '2022-08-07 21:05:01', 0, NULL),
(17, 'wc-admin_import_customers', 'complete', '2022-08-06 09:46:54', '2022-08-06 09:46:54', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659779214;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659779214;}', 2, 1, '2022-08-06 09:47:11', '2022-08-06 12:47:11', 0, NULL),
(18, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-08 18:05:01', '2022-08-08 18:05:01', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1659981901;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1659981901;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-08 19:05:12', '2022-08-08 22:05:12', 0, NULL),
(19, 'wc-admin_import_customers', 'complete', '2022-08-07 18:18:30', '2022-08-07 18:18:30', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659896310;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659896310;}', 2, 1, '2022-08-07 18:19:38', '2022-08-07 21:19:38', 0, NULL),
(20, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-08-07 18:18:41', '2022-08-07 18:18:41', '[28,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659896321;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659896321;}', 3, 1, '2022-08-07 18:19:38', '2022-08-07 21:19:38', 0, NULL),
(21, 'wc-admin_import_customers', 'complete', '2022-08-08 15:54:11', '2022-08-08 15:54:11', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1659974051;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1659974051;}', 2, 1, '2022-08-08 15:55:06', '2022-08-08 18:55:06', 0, NULL),
(22, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-09 19:05:12', '2022-08-09 19:05:12', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1660071912;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1660071912;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-09 19:05:40', '2022-08-09 22:05:40', 0, NULL),
(23, 'wc-admin_import_customers', 'complete', '2022-08-09 18:38:01', '2022-08-09 18:38:01', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660070281;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660070281;}', 2, 1, '2022-08-09 18:38:51', '2022-08-09 21:38:51', 0, NULL),
(24, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-08-09 18:39:12', '2022-08-09 18:39:12', '[48,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660070352;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660070352;}', 3, 1, '2022-08-09 18:39:15', '2022-08-09 21:39:15', 0, NULL),
(25, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-10 19:05:40', '2022-08-10 19:05:40', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1660158340;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1660158340;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-10 19:06:28', '2022-08-10 22:06:28', 0, NULL),
(26, 'wc-admin_import_customers', 'complete', '2022-08-10 17:51:09', '2022-08-10 17:51:09', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660153869;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660153869;}', 2, 1, '2022-08-10 17:51:22', '2022-08-10 20:51:22', 0, NULL),
(27, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-11 19:06:28', '2022-08-11 19:06:28', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1660244788;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1660244788;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-11 19:24:38', '2022-08-11 22:24:38', 0, NULL),
(28, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-08-10 20:58:23', '2022-08-10 20:58:23', '[26,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660165103;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660165103;}', 3, 1, '2022-08-10 20:59:28', '2022-08-10 23:59:28', 0, NULL),
(29, 'wc-admin_import_customers', 'complete', '2022-08-11 08:24:23', '2022-08-11 08:24:23', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660206263;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660206263;}', 2, 1, '2022-08-11 08:25:41', '2022-08-11 11:25:41', 0, NULL),
(30, 'woocommerce_cleanup_draft_orders', 'complete', '2022-08-12 19:24:38', '2022-08-12 19:24:38', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1660332278;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1660332278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-08-13 07:29:46', '2022-08-13 10:29:46', 0, NULL),
(31, 'wc-admin_import_customers', 'complete', '2022-08-12 09:34:32', '2022-08-12 09:34:32', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660296872;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660296872;}', 2, 1, '2022-08-12 15:06:10', '2022-08-12 18:06:10', 0, NULL),
(32, 'woocommerce_cleanup_draft_orders', 'pending', '2022-08-14 07:29:46', '2022-08-14 07:29:46', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1660462186;s:18:\"\0*\0first_timestamp\";i:1659637220;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1660462186;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(33, 'wc-admin_import_customers', 'complete', '2022-08-13 09:56:08', '2022-08-13 09:56:08', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1660384568;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1660384568;}', 2, 1, '2022-08-13 09:56:20', '2022-08-13 12:56:20', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pk_actionscheduler_claims`
--

CREATE TABLE `pk_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_actionscheduler_groups`
--

CREATE TABLE `pk_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_actionscheduler_groups`
--

INSERT INTO `pk_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data'),
(3, 'woocommerce-db-updates');

-- --------------------------------------------------------

--
-- Table structure for table `pk_actionscheduler_logs`
--

CREATE TABLE `pk_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_actionscheduler_logs`
--

INSERT INTO `pk_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 7, 'действие создано', '2022-08-04 18:20:17', '2022-08-04 18:20:17'),
(2, 8, 'действие создано', '2022-08-04 18:20:20', '2022-08-04 18:20:20'),
(3, 8, 'действие началось через WP Cron', '2022-08-04 18:21:26', '2022-08-04 18:21:26'),
(4, 8, 'действие завершено через WP Cron', '2022-08-04 18:21:26', '2022-08-04 18:21:26'),
(5, 9, 'действие создано', '2022-08-04 18:21:26', '2022-08-04 18:21:26'),
(6, 7, 'действие началось через WP Cron', '2022-08-04 18:21:26', '2022-08-04 18:21:26'),
(7, 7, 'действие завершено через WP Cron', '2022-08-04 18:21:26', '2022-08-04 18:21:26'),
(8, 10, 'действие создано', '2022-08-04 18:21:26', '2022-08-04 18:21:26'),
(9, 10, 'действие началось через WP Cron', '2022-08-04 18:23:15', '2022-08-04 18:23:15'),
(10, 10, 'действие завершено через WP Cron', '2022-08-04 18:23:15', '2022-08-04 18:23:15'),
(11, 11, 'действие создано', '2022-08-05 14:19:25', '2022-08-05 14:19:25'),
(12, 11, 'действие началось через WP Cron', '2022-08-05 14:20:17', '2022-08-05 14:20:17'),
(13, 11, 'действие завершено через WP Cron', '2022-08-05 14:20:17', '2022-08-05 14:20:17'),
(14, 12, 'действие создано', '2022-08-05 14:46:11', '2022-08-05 14:46:11'),
(15, 13, 'действие создано', '2022-08-05 14:46:11', '2022-08-05 14:46:11'),
(16, 12, 'действие началось через WP Cron', '2022-08-05 14:46:15', '2022-08-05 14:46:15'),
(17, 12, 'действие завершено через WP Cron', '2022-08-05 14:46:15', '2022-08-05 14:46:15'),
(18, 13, 'действие началось через WP Cron', '2022-08-05 14:46:15', '2022-08-05 14:46:15'),
(19, 13, 'действие завершено через WP Cron', '2022-08-05 14:46:15', '2022-08-05 14:46:15'),
(20, 14, 'действие создано', '2022-08-05 14:48:50', '2022-08-05 14:48:50'),
(21, 14, 'действие началось через WP Cron', '2022-08-05 14:49:17', '2022-08-05 14:49:17'),
(22, 14, 'действие завершено через WP Cron', '2022-08-05 14:49:17', '2022-08-05 14:49:17'),
(23, 15, 'действие создано', '2022-08-05 15:45:35', '2022-08-05 15:45:35'),
(24, 15, 'действие началось через Async Request', '2022-08-05 15:45:49', '2022-08-05 15:45:49'),
(25, 15, 'действие завершено через Async Request', '2022-08-05 15:45:49', '2022-08-05 15:45:49'),
(26, 9, 'действие началось через WP Cron', '2022-08-05 19:04:56', '2022-08-05 19:04:56'),
(27, 9, 'действие завершено через WP Cron', '2022-08-05 19:04:56', '2022-08-05 19:04:56'),
(28, 16, 'действие создано', '2022-08-05 19:04:56', '2022-08-05 19:04:56'),
(29, 17, 'действие создано', '2022-08-06 09:46:49', '2022-08-06 09:46:49'),
(30, 17, 'действие началось через Async Request', '2022-08-06 09:47:11', '2022-08-06 09:47:11'),
(31, 17, 'действие завершено через Async Request', '2022-08-06 09:47:11', '2022-08-06 09:47:11'),
(32, 16, 'действие началось через WP Cron', '2022-08-07 18:05:01', '2022-08-07 18:05:01'),
(33, 16, 'действие завершено через WP Cron', '2022-08-07 18:05:01', '2022-08-07 18:05:01'),
(34, 18, 'действие создано', '2022-08-07 18:05:01', '2022-08-07 18:05:01'),
(35, 19, 'действие создано', '2022-08-07 18:18:25', '2022-08-07 18:18:25'),
(36, 20, 'действие создано', '2022-08-07 18:18:40', '2022-08-07 18:18:40'),
(37, 19, 'действие началось через WP Cron', '2022-08-07 18:19:38', '2022-08-07 18:19:38'),
(38, 19, 'действие завершено через WP Cron', '2022-08-07 18:19:38', '2022-08-07 18:19:38'),
(39, 20, 'действие началось через WP Cron', '2022-08-07 18:19:38', '2022-08-07 18:19:38'),
(40, 20, 'действие завершено через WP Cron', '2022-08-07 18:19:38', '2022-08-07 18:19:38'),
(41, 21, 'действие создано', '2022-08-08 15:54:06', '2022-08-08 15:54:06'),
(42, 21, 'действие началось через WP Cron', '2022-08-08 15:55:06', '2022-08-08 15:55:06'),
(43, 21, 'действие завершено через WP Cron', '2022-08-08 15:55:06', '2022-08-08 15:55:06'),
(44, 18, 'действие началось через WP Cron', '2022-08-08 19:05:12', '2022-08-08 19:05:12'),
(45, 18, 'действие завершено через WP Cron', '2022-08-08 19:05:12', '2022-08-08 19:05:12'),
(46, 22, 'действие создано', '2022-08-08 19:05:12', '2022-08-08 19:05:12'),
(47, 23, 'действие создано', '2022-08-09 18:37:56', '2022-08-09 18:37:56'),
(48, 23, 'действие началось через WP Cron', '2022-08-09 18:38:51', '2022-08-09 18:38:51'),
(49, 23, 'действие завершено через WP Cron', '2022-08-09 18:38:51', '2022-08-09 18:38:51'),
(50, 24, 'действие создано', '2022-08-09 18:39:11', '2022-08-09 18:39:11'),
(51, 24, 'действие началось через WP Cron', '2022-08-09 18:39:15', '2022-08-09 18:39:15'),
(52, 24, 'действие завершено через WP Cron', '2022-08-09 18:39:15', '2022-08-09 18:39:15'),
(53, 22, 'действие началось через WP Cron', '2022-08-09 19:05:40', '2022-08-09 19:05:40'),
(54, 22, 'действие завершено через WP Cron', '2022-08-09 19:05:40', '2022-08-09 19:05:40'),
(55, 25, 'действие создано', '2022-08-09 19:05:40', '2022-08-09 19:05:40'),
(56, 26, 'действие создано', '2022-08-10 17:51:04', '2022-08-10 17:51:04'),
(57, 26, 'действие началось через WP Cron', '2022-08-10 17:51:22', '2022-08-10 17:51:22'),
(58, 26, 'действие завершено через WP Cron', '2022-08-10 17:51:22', '2022-08-10 17:51:22'),
(59, 25, 'действие началось через WP Cron', '2022-08-10 19:06:28', '2022-08-10 19:06:28'),
(60, 25, 'действие завершено через WP Cron', '2022-08-10 19:06:28', '2022-08-10 19:06:28'),
(61, 27, 'действие создано', '2022-08-10 19:06:28', '2022-08-10 19:06:28'),
(62, 28, 'действие создано', '2022-08-10 20:58:22', '2022-08-10 20:58:22'),
(63, 28, 'действие началось через WP Cron', '2022-08-10 20:59:28', '2022-08-10 20:59:28'),
(64, 28, 'действие завершено через WP Cron', '2022-08-10 20:59:28', '2022-08-10 20:59:28'),
(65, 29, 'действие создано', '2022-08-11 08:24:18', '2022-08-11 08:24:18'),
(66, 29, 'действие началось через WP Cron', '2022-08-11 08:25:41', '2022-08-11 08:25:41'),
(67, 29, 'действие завершено через WP Cron', '2022-08-11 08:25:41', '2022-08-11 08:25:41'),
(68, 27, 'действие началось через WP Cron', '2022-08-11 19:24:38', '2022-08-11 19:24:38'),
(69, 27, 'действие завершено через WP Cron', '2022-08-11 19:24:38', '2022-08-11 19:24:38'),
(70, 30, 'действие создано', '2022-08-11 19:24:38', '2022-08-11 19:24:38'),
(71, 31, 'действие создано', '2022-08-12 09:34:27', '2022-08-12 09:34:27'),
(72, 31, 'действие началось через WP Cron', '2022-08-12 15:06:10', '2022-08-12 15:06:10'),
(73, 31, 'действие завершено через WP Cron', '2022-08-12 15:06:10', '2022-08-12 15:06:10'),
(74, 30, 'действие началось через Async Request', '2022-08-13 07:29:46', '2022-08-13 07:29:46'),
(75, 30, 'действие завершено через Async Request', '2022-08-13 07:29:46', '2022-08-13 07:29:46'),
(76, 32, 'действие создано', '2022-08-13 07:29:46', '2022-08-13 07:29:46'),
(77, 33, 'действие создано', '2022-08-13 09:56:03', '2022-08-13 09:56:03'),
(78, 33, 'действие началось через WP Cron', '2022-08-13 09:56:20', '2022-08-13 09:56:20'),
(79, 33, 'действие завершено через WP Cron', '2022-08-13 09:56:20', '2022-08-13 09:56:20');

-- --------------------------------------------------------

--
-- Table structure for table `pk_commentmeta`
--

CREATE TABLE `pk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_comments`
--

CREATE TABLE `pk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_comments`
--

INSERT INTO `pk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2022-08-03 22:25:12', '2022-08-03 19:25:12', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pk_links`
--

CREATE TABLE `pk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_options`
--

CREATE TABLE `pk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_options`
--

INSERT INTO `pk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/pk', 'yes'),
(2, 'home', 'http://localhost:8888/pk', 'yes'),
(3, 'blogname', 'pkstyle', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'burlakeugene@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:224:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"products/?$\";s:27:\"index.php?post_type=product\";s:41:\"products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"products/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"products/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"articles/?$\";s:28:\"index.php?post_type=articles\";s:41:\"articles/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:36:\"articles/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articles&feed=$matches[1]\";s:28:\"articles/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=articles&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"products/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"products/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"products/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"products/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"products/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:49:\"products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:44:\"products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:25:\"products/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:19:\"products/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"static-block/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"static-block/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"static-block/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"static-block/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"static-block/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"static-block/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"static-block/([^/]+)/embed/?$\";s:45:\"index.php?static-block=$matches[1]&embed=true\";s:33:\"static-block/([^/]+)/trackback/?$\";s:39:\"index.php?static-block=$matches[1]&tb=1\";s:41:\"static-block/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?static-block=$matches[1]&paged=$matches[2]\";s:48:\"static-block/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?static-block=$matches[1]&cpage=$matches[2]\";s:38:\"static-block/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?static-block=$matches[1]&wc-api=$matches[3]\";s:44:\"static-block/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"static-block/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"static-block/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?static-block=$matches[1]&page=$matches[2]\";s:29:\"static-block/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"static-block/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"static-block/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"static-block/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"static-block/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"static-block/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"banners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"banners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"banners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"banners/([^/]+)/embed/?$\";s:40:\"index.php?banners=$matches[1]&embed=true\";s:28:\"banners/([^/]+)/trackback/?$\";s:34:\"index.php?banners=$matches[1]&tb=1\";s:36:\"banners/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&paged=$matches[2]\";s:43:\"banners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&cpage=$matches[2]\";s:33:\"banners/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?banners=$matches[1]&wc-api=$matches[3]\";s:39:\"banners/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"banners/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"banners/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?banners=$matches[1]&page=$matches[2]\";s:24:\"banners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"banners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"banners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"articles/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"articles/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"articles/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articles/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"articles/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"articles/([^/]+)/embed/?$\";s:41:\"index.php?articles=$matches[1]&embed=true\";s:29:\"articles/([^/]+)/trackback/?$\";s:35:\"index.php?articles=$matches[1]&tb=1\";s:49:\"articles/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:44:\"articles/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articles=$matches[1]&feed=$matches[2]\";s:37:\"articles/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&paged=$matches[2]\";s:44:\"articles/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?articles=$matches[1]&cpage=$matches[2]\";s:34:\"articles/([^/]+)/wc-api(/(.*))?/?$\";s:49:\"index.php?articles=$matches[1]&wc-api=$matches[3]\";s:40:\"articles/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"articles/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"articles/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?articles=$matches[1]&page=$matches[2]\";s:25:\"articles/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"articles/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"articles/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articles/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"articles/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:22:\"cyr2lat/cyr-to-lat.php\";i:5;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:6;s:21:\"safe-svg/safe-svg.php\";i:7;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:8;s:29:\"static-block/static-block.php\";i:9;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'burlak', 'yes'),
(41, 'stylesheet', 'burlak', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1675106712', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'pk_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"bcn_manage_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:16:{i:1660400655;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1660400712;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1660402158;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1660404017;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1660404024;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1660414816;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660414826;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660418712;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660418722;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660418724;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660424400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660425616;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1660436416;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1660850712;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1660933276;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'yes'),
(125, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1659555651;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(144, 'can_compress_scripts', '1', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(161, 'current_theme', '', 'yes'),
(162, 'theme_mods_burlak', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:6:\"header\";i:16;s:6:\"footer\";i:17;s:8:\"footer-2\";i:18;s:8:\"footer-3\";i:19;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(281, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1659636964;s:7:\"version\";s:5:\"5.6.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(291, 'scporder_install', '1', 'yes'),
(292, 'simple-rate-time', '1817839010', 'yes'),
(293, 'scporder_options', 'a:3:{s:7:\"objects\";a:7:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"product\";i:3;s:10:\"shop_order\";i:4;s:11:\"shop_coupon\";i:5;s:12:\"static-block\";i:6;s:7:\"banners\";}s:4:\"tags\";a:7:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:13:\"link_category\";i:3;s:11:\"product_cat\";i:4;s:11:\"product_tag\";i:5;s:8:\"pa_brand\";i:6;s:15:\"pa_manufacturer\";}s:18:\"show_advanced_view\";s:0:\"\";}', 'yes'),
(296, 'widget_static_block_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'common_scripts', '', 'yes'),
(300, 'head_additions', '', 'yes'),
(301, 'theme-color', '', 'yes'),
(308, 'action_scheduler_hybrid_store_demarkation', '6', 'yes'),
(309, 'schema-ActionScheduler_StoreSchema', '6.0.1659637214', 'yes'),
(310, 'schema-ActionScheduler_LoggerSchema', '3.0.1659637215', 'yes'),
(313, 'woocommerce_schema_version', '430', 'yes'),
(314, 'woocommerce_store_address', 'мкр-н Олимпийской Славы, 2', 'yes'),
(315, 'woocommerce_store_address_2', '', 'yes'),
(316, 'woocommerce_store_city', 'с. Каменка', 'yes'),
(317, 'woocommerce_default_country', 'RU', 'yes'),
(318, 'woocommerce_store_postcode', '630530', 'yes'),
(319, 'woocommerce_allowed_countries', 'all', 'yes'),
(320, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(321, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(322, 'woocommerce_ship_to_countries', '', 'yes'),
(323, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(324, 'woocommerce_default_customer_address', 'base', 'yes'),
(325, 'woocommerce_calc_taxes', 'no', 'yes'),
(326, 'woocommerce_enable_coupons', 'yes', 'yes'),
(327, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(328, 'woocommerce_currency', 'RUB', 'yes'),
(329, 'woocommerce_currency_pos', 'right_space', 'yes'),
(330, 'woocommerce_price_thousand_sep', '', 'yes'),
(331, 'woocommerce_price_decimal_sep', ',', 'yes'),
(332, 'woocommerce_price_num_decimals', '2', 'yes'),
(333, 'woocommerce_shop_page_id', '7', 'yes'),
(334, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(335, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(336, 'woocommerce_placeholder_image', '6', 'yes'),
(337, 'woocommerce_weight_unit', 'kg', 'yes'),
(338, 'woocommerce_dimension_unit', 'cm', 'yes'),
(339, 'woocommerce_enable_reviews', 'yes', 'yes'),
(340, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(341, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(342, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(343, 'woocommerce_review_rating_required', 'yes', 'no'),
(344, 'woocommerce_manage_stock', 'yes', 'yes'),
(345, 'woocommerce_hold_stock_minutes', '60', 'no'),
(346, 'woocommerce_notify_low_stock', 'yes', 'no'),
(347, 'woocommerce_notify_no_stock', 'yes', 'no'),
(348, 'woocommerce_stock_email_recipient', 'burlakeugene@gmail.com', 'no'),
(349, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(350, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(351, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(352, 'woocommerce_stock_format', '', 'yes'),
(353, 'woocommerce_file_download_method', 'force', 'no'),
(354, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(355, 'woocommerce_downloads_require_login', 'no', 'no'),
(356, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(357, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(358, 'woocommerce_attribute_lookup_enabled', 'yes', 'yes'),
(359, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(360, 'woocommerce_prices_include_tax', 'no', 'yes'),
(361, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(362, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(363, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(364, 'woocommerce_tax_classes', '', 'yes'),
(365, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(366, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(367, 'woocommerce_price_display_suffix', '', 'yes'),
(368, 'woocommerce_tax_total_display', 'itemized', 'no'),
(369, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(370, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(371, 'woocommerce_ship_to_destination', 'billing', 'no'),
(372, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(373, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(374, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(375, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(376, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(377, 'woocommerce_registration_generate_username', 'yes', 'no'),
(378, 'woocommerce_registration_generate_password', 'yes', 'no'),
(379, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(380, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(381, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(382, 'woocommerce_registration_privacy_policy_text', 'Ваши личные данные будут использоваться для упрощения вашего дальнейшего взаимодействия с сайтом, управления доступом к вашему аккаунту и других целей, описанных в документе [privacy_policy].', 'yes'),
(383, 'woocommerce_checkout_privacy_policy_text', 'Ваши личные данные будут использоваться для обработки ваших заказов, упрощения вашей работы с сайтом и для других целей, описанных в нашей [privacy_policy].', 'yes'),
(384, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(385, 'woocommerce_trash_pending_orders', '', 'no'),
(386, 'woocommerce_trash_failed_orders', '', 'no'),
(387, 'woocommerce_trash_cancelled_orders', '', 'no'),
(388, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(389, 'woocommerce_email_from_name', 'pkstyle', 'no'),
(390, 'woocommerce_email_from_address', 'burlakeugene@gmail.com', 'no'),
(391, 'woocommerce_email_header_image', '', 'no'),
(392, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(393, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(394, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(395, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(396, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(397, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(398, 'woocommerce_cart_page_id', '8', 'no'),
(399, 'woocommerce_checkout_page_id', '9', 'no'),
(400, 'woocommerce_myaccount_page_id', '10', 'no'),
(401, 'woocommerce_terms_page_id', '', 'no'),
(402, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(403, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(404, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(405, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(406, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(407, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(408, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes');
INSERT INTO `pk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(409, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(410, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(411, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(412, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(413, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(414, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(415, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(416, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(417, 'woocommerce_api_enabled', 'no', 'yes'),
(418, 'woocommerce_allow_tracking', 'no', 'no'),
(419, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(420, 'woocommerce_single_image_width', '600', 'yes'),
(421, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(422, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(423, 'woocommerce_demo_store', 'no', 'no'),
(425, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(426, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:8:\"products\";s:8:\"tag_base\";s:8:\"products\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(427, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(428, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(430, 'default_product_cat', '15', 'yes'),
(432, 'woocommerce_refund_returns_page_id', '11', 'yes'),
(435, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:205:\"Оплата через PayPal; вы сможете произвести оплату с помощью банковской карты, если у вас нет аккаунта в системе PayPal.\";s:5:\"email\";s:22:\"burlakeugene@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:22:\"burlakeugene@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(436, 'woocommerce_version', '6.7.0', 'yes'),
(437, 'woocommerce_db_version', '6.7.0', 'yes'),
(438, 'woocommerce_admin_install_timestamp', '1659637216', 'yes'),
(439, 'woocommerce_inbox_variant_assignment', '12', 'yes'),
(443, '_transient_jetpack_autoloader_plugin_paths', 'a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(444, 'action_scheduler_lock_async-request-runner', '1660400626', 'yes'),
(445, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(446, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"nfxAkAKBBpTqTmxFkAlCUmROg32Bexbq\";}', 'yes'),
(447, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(448, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(449, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(450, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(451, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(452, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(453, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(454, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(455, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(456, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(457, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(458, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(459, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(463, '_transient_timeout_woocommerce_admin_remote_inbox_notifications_specs', '1660933919', 'no');
INSERT INTO `pk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(464, '_transient_woocommerce_admin_remote_inbox_notifications_specs', 'a:35:{s:27:\"new_in_app_marketplace_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"new_in_app_marketplace_2021\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:36:\"Customize your store with extensions\";s:7:\"content\";s:164:\"Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"browse_extensions\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Browse extensions\";}}s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:14:23\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.7\";}}}s:21:\"wayflyer_bnpl_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:21:\"wayflyer_bnpl_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:48:\"Grow your business with funding through Wayflyer\";s:7:\"content\";s:261:\"Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"wayflyer_bnpl_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Level up with funding\";}}s:3:\"url\";s:118:\"https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-17 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-12-18 00:00:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IE\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-affirm\";}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:32:\"afterpay-gateway-for-woocommerce\";}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:31:\"klarna-payments-for-woocommerce\";}}}}}}s:35:\"wc_shipping_mobile_app_usps_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:94:\"Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"wc_shipping_mobile_app_usps_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Get WooCommerce Shipping\";}}s:3:\"url\";s:135:\"https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:25:\"woocommerce-shipping-usps\";}}i:4;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}}s:30:\"wc_shipping_mobile_app_q4_2021\";O:8:\"stdClass\":8:{s:4:\"slug\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:69:\"Print and manage your shipping labels with the WooCommerce Mobile App\";s:7:\"content\";s:210:\"Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"wc_shipping_mobile_app_q4_2021\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:30:\"Get the WooCommerce Mobile App\";}}s:3:\"url\";s:116:\"https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-11-12 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-11-27 00:00:00\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:16:48\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:251:\"WooCommerce Shipping & Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:17:25\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:270:\"Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:37:\"wc-admin-getting-started-in-ecommerce\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-getting-started-in-ecommerce\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:38:\"Getting Started in eCommerce - webinar\";s:7:\"content\";s:174:\"We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"watch-the-webinar\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:17:\"Watch the webinar\";}}s:3:\"url\";s:28:\"https://youtu.be/V_2XtCOyZ7o\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:18:37\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:12:\"setup_client\";s:9:\"operation\";s:2:\"!=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:3:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_count\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:1:\"0\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:4:\"none\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:7:\"revenue\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:10:\"up-to-2500\";}}}}}s:18:\"your-first-product\";O:8:\"stdClass\":8:{s:4:\"slug\";s:18:\"your-first-product\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:18:\"Your first product\";s:7:\"content\";s:467:\"That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br/><br/>Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_were_no_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:12:\"stored_state\";s:5:\"index\";s:22:\"there_are_now_products\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";b:1;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:1;}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:13:\"product_types\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"physical\";s:7:\"default\";a:0:{}}}}s:37:\"wc-admin-optimizing-the-checkout-flow\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"wc-admin-optimizing-the-checkout-flow\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:28:\"Optimizing the checkout flow\";s:7:\"content\";s:177:\"It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:28:\"optimizing-the-checkout-flow\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:144:\"https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:19:49\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:8:\"payments\";s:7:\"default\";a:0:{}}}}s:39:\"wc-admin-first-five-things-to-customize\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-admin-first-five-things-to-customize\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:45:\"The first 5 things to customize in your store\";s:7:\"content\";s:175:\"Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:130:\"https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:20:31\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:2;}i:2;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:5:\"value\";s:9:\"NOT EMPTY\";s:7:\"default\";s:9:\"NOT EMPTY\";s:9:\"operation\";s:2:\"!=\";}}}s:32:\"wc-payments-qualitative-feedback\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"wc-payments-qualitative-feedback\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"WooCommerce Payments setup - let us know what you think\";s:7:\"content\";s:146:\"Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:35:\"qualitative-feedback-from-new-users\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:39:\"https://automattic.survey.fm/wc-pay-new\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:13\";}i:1;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:45:\"woocommerce_task_list_tracked_completed_tasks\";s:9:\"operation\";s:8:\"contains\";s:5:\"value\";s:20:\"woocommerce-payments\";s:7:\"default\";a:0:{}}}}s:29:\"share-your-feedback-on-paypal\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"share-your-feedback-on-paypal\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:29:\"Share your feedback on PayPal\";s:7:\"content\";s:127:\"Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:43:\"http://automattic.survey.fm/paypal-feedback\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:21:50\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:26:\"woocommerce-gateway-stripe\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}}}s:31:\"google_listings_and_ads_install\";O:8:\"stdClass\":8:{s:4:\"slug\";s:31:\"google_listings_and_ads_install\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Drive traffic and sales with Google\";s:7:\"content\";s:123:\"Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"get-started\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Get started\";}}s:3:\"url\";s:122:\"https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2021-06-09 00:00:00\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google_listings_and_ads\";}}}}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:10;}}}s:39:\"wc-subscriptions-security-update-3-0-15\";O:8:\"stdClass\":8:{s:4:\"slug\";s:39:\"wc-subscriptions-security-update-3-0-15\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:42:\"WooCommerce Subscriptions security update!\";s:7:\"content\";s:738:\"We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br/><br/>Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br/><br/>We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br/><br/>If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:30:\"update-wc-subscriptions-3-0-15\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"View latest version\";}}s:3:\"url\";s:30:\"&page=wc-addons&section=helper\";s:18:\"url_is_admin_query\";b:1;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:30:32\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"woocommerce-subscriptions\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:6:\"3.0.15\";}}}s:29:\"woocommerce-core-update-5-4-0\";O:8:\"stdClass\":8:{s:4:\"slug\";s:29:\"woocommerce-core-update-5-4-0\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Update to WooCommerce 5.4.1 now\";s:7:\"content\";s:140:\"WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"update-wc-core-5-4-0\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:25:\"How to update WooCommerce\";}}s:3:\"url\";s:64:\"https://docs.woocommerce.com/document/how-to-update-woocommerce/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:31:08\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.0\";}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-11\";s:7:\"content\";s:19:\"wcpay-promo-2020-11\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:19:\"wcpay-promo-2020-12\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-12\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:19:\"wcpay-promo-2020-12\";s:7:\"content\";s:19:\"wcpay-promo-2020-12\";}}s:7:\"actions\";a:0:{}s:5:\"rules\";a:0:{}}s:34:\"ppxo-pps-upgrade-paypal-payments-1\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-1\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:47:\"Get the latest PayPal extension for WooCommerce\";s:7:\"content\";s:442:\"Heads up! There’s a new PayPal on the block!<br/><br/>Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br/><br/>Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-1\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:33:53\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:7;s:7:\"default\";i:1;s:9:\"operation\";s:1:\"<\";}}}s:34:\"ppxo-pps-upgrade-paypal-payments-2\";O:8:\"stdClass\":8:{s:4:\"slug\";s:34:\"ppxo-pps-upgrade-paypal-payments-2\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:31:\"Upgrade your PayPal experience!\";s:7:\"content\";s:358:\"Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:34:\"ppxo-pps-install-paypal-payments-2\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:18:\"View upgrade guide\";}}s:3:\"url\";s:96:\"https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:5:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:34:30\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:27:\"woocommerce-paypal-payments\";}}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:43:\"woocommerce-gateway-paypal-express-checkout\";}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;}}}i:4;O:8:\"stdClass\":5:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:36:\"woocommerce_inbox_variant_assignment\";s:5:\"value\";i:6;s:7:\"default\";i:1;s:9:\"operation\";s:1:\">\";}}}s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:56:\"Action required: Critical vulnerabilities in WooCommerce\";s:7:\"content\";s:574:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:59:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:06\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.6\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.8\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.9\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.6\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.2\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.3\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.4\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.4\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.5\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.2\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.4\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.3\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.3\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.4\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.2\";}i:32;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.3\";}i:33;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.4\";}i:34;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.1\";}i:35;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:36;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.2\";}i:37;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.3\";}i:38;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}i:39;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"3.5.10\";}i:40;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.7\";}i:41;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.3\";}i:42;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.3\";}i:43;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.5\";}i:44;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.4\";}i:45;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.4\";}i:46;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.5\";}i:47;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.6\";}i:48;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.4\";}i:49;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.5\";}i:50;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.5\";}i:51;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.4\";}i:52;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.3\";}i:53;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.5\";}i:54;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.3\";}i:55;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.3\";}i:56;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.5\";}i:57;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.3\";}i:58;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.4\";}}}s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"Action required: Critical vulnerabilities in WooCommerce Blocks\";s:7:\"content\";s:570:\"In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/>Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br/><br/>For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:32:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:35:42\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:6:\"2.5.16\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.6.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.7.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.8.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"2.9.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.0.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.1.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.2.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.3.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.4.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.5.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.6.1\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.7.2\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.8.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.5.3\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.6.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.7.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.8.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.9.2\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.0.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.1.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.2.1\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.3.2\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"5.4.1\";}i:31;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"5.5.1\";}}}s:45:\"woocommerce-core-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:45:\"woocommerce-core-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"Solved: Critical vulnerabilities patched in WooCommerce\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:18\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:23:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.6\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.8\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.9\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.6\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.2\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.2\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.2\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.3\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.4\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.2\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.2\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.1\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-blocks-sqli-july-2021-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:62:\"Solved: Critical vulnerabilities patched in WooCommerce Blocks\";s:7:\"content\";s:433:\"In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br/><br/><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:137:\"https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";b:0;s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:36:54\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:46:\"woocommerce-core-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:48:\"woocommerce-blocks-sqli-july-2021-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:31:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"2.5.16\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.6.2\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.7.2\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.8.1\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"2.9.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.0.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.1.1\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.2.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.3.1\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.4.1\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.5.1\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.1\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.2\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.1\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.1\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.1\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.1\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.3\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.3\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.1\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.1\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.2\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.1\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.1\";}i:28;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.2\";}i:29;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.1\";}i:30;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:28:\"woo-gutenberg-products-block\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"5.5.1\";}}}}}s:19:\"habit-moment-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"habit-moment-survey\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:63:\"We’re all ears! Share your experience so far with WooCommerce\";s:7:\"content\";s:136:\"We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"share-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:45:\"https://automattic.survey.fm/store-management\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:37:30\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:3;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:30;}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:13:\"product_count\";s:9:\"operation\";s:1:\">\";s:5:\"value\";i:0;}}}s:26:\"ecomm-wc-navigation-survey\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"ecomm-wc-navigation-survey\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:55:\"We’d like your feedback on the WooCommerce navigation\";s:7:\"content\";s:134:\"We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:32:\"share-navigation-survey-feedback\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:14:\"Share feedback\";}}s:3:\"url\";s:63:\"https://automattic.survey.fm/feedback-on-woocommerce-navigation\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-01-27 20:38:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:12:\"is_ecommerce\";s:5:\"value\";b:1;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:90;}}}s:42:\"woocommerce-core-paypal-march-2022-updated\";O:8:\"stdClass\":8:{s:4:\"slug\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:391:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:42:\"woocommerce-core-paypal-march-2022-dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:44:57\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:3:\"5.5\";}i:1;a:2:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"5.5\";}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:11:\"option_name\";s:27:\"woocommerce_paypal_settings\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:3:\"yes\";s:7:\"default\";b:0;s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:7:\"enabled\";}}}}}}}}}s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-core-paypal-march-2022-updated-nopp\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Security auto-update of WooCommerce\";s:7:\"content\";s:237:\"<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:88:\"https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-10 18:45:04\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:28:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:6:\"3.5.10\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.6.7\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.7.3\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.8.3\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.5\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.4\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.4\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.5\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.6\";}i:9;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.4\";}i:10;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.5\";}i:11;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.6.5\";}i:12;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.7.4\";}i:13;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.8.3\";}i:14;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.9.5\";}i:15;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.0.3\";}i:16;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.1.3\";}i:17;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.2.5\";}i:18;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.3.3\";}i:19;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.4.4\";}i:20;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.5.4\";}i:21;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.6.2\";}i:22;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.7.2\";}i:23;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.8.1\";}i:24;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"5.9.1\";}i:25;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.0.1\";}i:26;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.1.2\";}i:27;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"6.2.2\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:42:\"woocommerce-core-paypal-march-2022-updated\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}}}s:24:\"pinterest_03_2022_update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:24:\"pinterest_03_2022_update\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"Your Pinterest for WooCommerce plugin is out of date!\";s:7:\"content\";s:262:\"Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:24:\"pinterest_03_2022_update\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:19:\"Update Instructions\";}}s:3:\"url\";s:148:\"https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-03-23 00:00:39\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:25:\"pinterest-for-woocommerce\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"1.0.8\";}}}s:33:\"store_setup_survey_survey_q2_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:33:\"store_setup_survey_survey_q2_2022\";s:4:\"type\";s:6:\"survey\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:30:\"How is your store setup going?\";s:7:\"content\";s:232:\"Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:53:\"store_setup_survey_survey_q2_2022_share_your_thoughts\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Tell us how it’s going\";}}s:3:\"url\";s:52:\"https://automattic.survey.fm/store-setup-survey-2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-05-09 08:42:10\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\">\";s:4:\"days\";i:7;}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:9;}}}s:17:\"wc-admin-wisepad3\";O:8:\"stdClass\":8:{s:4:\"slug\";s:17:\"wc-admin-wisepad3\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:74:\"Take your business on the go in Canada with WooCommerce In-Person Payments\";s:7:\"content\";s:275:\"Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:17:\"wc-admin-wisepad3\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:24:\"Grow my business offline\";}}s:3:\"url\";s:126:\"https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-06-15 10:00:28\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}}}s:20:\"mercado_pago_q3_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"mercado_pago_q3_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:7:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:35:\"Get paid with Mercado Pago Checkout\";s:7:\"content\";s:228:\"Give your customers a checkout they can trust with Latin America\'s leading payment processor. Securely accept debit and credit cards, cash, bank transfers, and installment payments – backed by exclusive fraud prevention tools.\";}i:1;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_AR\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:2;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_UY\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:3;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_CL\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:4;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_CO\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:5;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"es_PE\";s:5:\"title\";s:38:\"Cobrá con el Checkout de Mercado Pago\";s:7:\"content\";s:327:\"Ofrecé a tus clientes el procesador de pagos líder en América Latina para las tiendas de WooCommerce. Acepta pagos de forma segura con dinero en cuenta, tarjetas de débito y crédito, dinero en efectivo, transferencias bancarias y meses con y sin interés, con el respaldo herramientas exclusivas de prevención del fraude.\";}i:6;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"pt_BR\";s:5:\"title\";s:39:\"Venda agora com o Checkout Mercado Pago\";s:7:\"content\";s:295:\"O líder em processamento de vendas na américa latina agora está disponível para Woocommerce. Aceite de forma segura pagamentos com cartão de débito e crédito, boleto, transferências bancárias e pagamentos parcelados- tudo isso apoiado por ferramentas exclusivas de prevenção a fraude.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:20:\"mercado_pago_q3_2022\";s:7:\"locales\";a:8:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Free download\";}i:1;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_AR\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:2;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"pt_BR\";s:5:\"label\";s:14:\"Baixar grátis\";}i:3;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_MX\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:4;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_CL\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:5;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_CO\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:6;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_PE\";s:5:\"label\";s:17:\"Descargalo gratis\";}i:7;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"es_UY\";s:5:\"label\";s:17:\"Descargalo gratis\";}}s:3:\"url\";s:130:\"https://woocommerce.com/products/mercado-pago-checkout/?utm_source=inbox_note&utm_medium=product&utm_campaign=mercado_pago_q3_2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-08 11:00:01\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-08-31 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MX\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BR\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CL\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PE\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UY\";}}}}}s:14:\"klarna_q3_2022\";O:8:\"stdClass\":8:{s:4:\"slug\";s:14:\"klarna_q3_2022\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:44:\"Meet Klarna – your ultimate growth partner\";s:7:\"content\";s:232:\"Increase conversions by offering secure, flexible payment solutions – including buy now, pay later – all through a one-click checkout experience. Plus, you’ll tap into a whole new market of the world’s most engaged shoppers.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:14:\"klarna_q3_2022\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:16:\"Grow with Klarna\";}}s:3:\"url\";s:117:\"https://woocommerce.com/products/klarna-payments?utm_source=inbox_note&utm_medium=product&utm_campaign=klarna_q3_2022\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:4:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-08 00:01:07\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2022-08-22 23:59:00\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:17:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AU\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AT\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"BE\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DK\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FI\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FR\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IT\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NL\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NZ\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NO\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ES\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SE\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"GB\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:15:\"klarna-payments\";}}}}}}s:47:\"woocommerce-payments-august-2022-need-to-update\";O:8:\"stdClass\":8:{s:4:\"slug\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"Action required: Please update WooCommerce Payments\";s:7:\"content\";s:213:\"An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:44:17\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:3:\"3.9\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"<\";s:7:\"version\";s:5:\"4.5.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"3.9.4\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.0.3\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.1.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.2.2\";}i:7;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.3.1\";}i:8;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:2:\"!=\";s:7:\"version\";s:5:\"4.4.1\";}}}s:46:\"woocommerce-payments-august-2022-store-patched\";O:8:\"stdClass\":8:{s:4:\"slug\";s:46:\"woocommerce-payments-august-2022-store-patched\";s:4:\"type\";s:6:\"update\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:51:\"WooCommerce Payments has been automatically updated\";s:7:\"content\";s:265:\"You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.\";}}s:7:\"actions\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:13:\"Find out more\";}}s:3:\"url\";s:96:\"https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:7:\"dismiss\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:7:\"Dismiss\";}}s:3:\"url\";s:0:\"\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:0;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:3:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2022-08-09 14:41:13\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:11:\"note_status\";s:9:\"note_name\";s:47:\"woocommerce-payments-august-2022-need-to-update\";s:6:\"status\";s:7:\"pending\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:7:{i:0;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"3.9.4\";}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.0.3\";}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.1.1\";}i:3;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.2.2\";}i:4;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.3.1\";}i:5;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.4.1\";}i:6;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:20:\"woocommerce-payments\";s:8:\"operator\";s:1:\"=\";s:7:\"version\";s:5:\"4.5.1\";}}}}}}', 'no');
INSERT INTO `pk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(465, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(466, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(472, 'wc_blocks_surface_cart_checkout_probability', '41', 'yes'),
(473, 'wc_blocks_db_schema_version', '260', 'yes'),
(476, '_transient_woocommerce_reports-transient-version', '1659637300', 'yes'),
(493, 'woocommerce_task_list_tracked_completed_tasks', 'a:4:{i:0;s:8:\"purchase\";i:1;s:14:\"store_creation\";i:2;s:13:\"store_details\";i:3;s:8:\"products\";}', 'yes'),
(494, 'woocommerce_task_list_completed_lists', 'a:2:{i:0;s:8:\"extended\";i:1;s:19:\"extended_two_column\";}', 'yes'),
(500, 'action_scheduler_migration_status', 'complete', 'yes'),
(502, 'woocommerce_onboarding_profile', 'a:10:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:22:\"burlakeugene@gmail.com\";s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:8:\"Авто\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:8:\"101-1000\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:1;s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:6:\"burlak\";s:9:\"completed\";b:1;}', 'yes'),
(503, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(515, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(525, '_transient_shipping-transient-version', '1659637467', 'yes'),
(526, '_transient_timeout_wc_shipping_method_count', '1662229467', 'no'),
(527, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1659637467\";s:5:\"value\";i:0;}', 'no'),
(539, 'woocommerce_task_list_hidden_lists', 'a:1:{i:0;s:5:\"setup\";}', 'yes'),
(565, 'category_children', 'a:0:{}', 'yes'),
(581, 'instagram', '', 'yes'),
(582, 'vkontakte', 'https://vk.com/test', 'yes'),
(587, 'theme', '#E6E6E6', 'yes'),
(624, 'acf_version', '5.8.3', 'yes'),
(640, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":7,\"critical\":1}', 'yes'),
(716, '_transient_product_query-transient-version', '1660397296', 'yes'),
(717, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(751, 'secret_key', ',`1cHPlEq28{32Q)nk<J`:Al%(=aV)P77a[uRs?#q$F4%hVvDAQw9z.vg_i1e6+[', 'no'),
(867, '_transient_timeout_wc_shipping_method_count_legacy', '1662301168', 'no'),
(868, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1659637467\";s:5:\"value\";i:0;}', 'no'),
(907, '_transient_product-transient-version', '1660165102', 'yes'),
(1108, 'whatsapp', 'https://wa.me/+79789009090', 'yes'),
(1523, 'address', 'мкр-н Олимпийской Славы, 2, с. Каменка', 'yes'),
(1524, 'phone', '+7 (983) 510-85-31, +7 (913) 937-44-35, +7 (913) 763-26-46', 'yes'),
(1525, 'email', 'sales@pkstyle.ru', 'yes'),
(1526, 'copyrights', '(С) 2021 All Rights Reserved', 'yes'),
(1622, '_transient_timeout_wc_report_orders_stats_028ada17ebbb49f69ae51600c974ff48', '1660578847', 'no'),
(1623, '_transient_wc_report_orders_stats_028ada17ebbb49f69ae51600c974ff48', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1624, '_transient_timeout_wc_report_orders_stats_d385a538d6895f992df13414535f1d6d', '1660578847', 'no'),
(1625, '_transient_wc_report_orders_stats_d385a538d6895f992df13414535f1d6d', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1626, '_transient_timeout_wc_report_products_stats_1ad088c42df4385e943be981cb1b4523', '1660578847', 'no'),
(1627, '_transient_wc_report_products_stats_1ad088c42df4385e943be981cb1b4523', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1628, '_transient_timeout_wc_report_variations_stats_62b5b04fed4a390cf2d914aa54db9bbe', '1660578847', 'no'),
(1629, '_transient_wc_report_variations_stats_62b5b04fed4a390cf2d914aa54db9bbe', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1630, '_transient_timeout_wc_report_orders_stats_f93ee7ab177d589368ab7edd4b14c18e', '1660578847', 'no'),
(1631, '_transient_wc_report_orders_stats_f93ee7ab177d589368ab7edd4b14c18e', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:8:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-08-01\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-08-02\";s:10:\"date_start\";s:19:\"2022-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-01 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-08-03\";s:10:\"date_start\";s:19:\"2022-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-02 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-08-04\";s:10:\"date_start\";s:19:\"2022-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-03 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-08-05\";s:10:\"date_start\";s:19:\"2022-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-04 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-08-06\";s:10:\"date_start\";s:19:\"2022-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-05 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-08-07\";s:10:\"date_start\";s:19:\"2022-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-06 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-08-08\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:8;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1986, '_transient_timeout_wc_report_orders_stats_86b5108a0e3ac79894e570186dffe462', '1660675078', 'no'),
(1987, '_transient_wc_report_orders_stats_86b5108a0e3ac79894e570186dffe462', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1988, '_transient_timeout_wc_report_orders_stats_c40d233173224278758c3846e705cfa7', '1660675078', 'no'),
(1989, '_transient_wc_report_orders_stats_c40d233173224278758c3846e705cfa7', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1990, '_transient_timeout_wc_report_products_stats_158d9946427737befed4b092ce2586e4', '1660675078', 'no'),
(1991, '_transient_wc_report_products_stats_158d9946427737befed4b092ce2586e4', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1992, '_transient_timeout_wc_report_variations_stats_52f4f0ceecde9b162fee948ba400c54d', '1660675078', 'no'),
(1993, '_transient_wc_report_variations_stats_52f4f0ceecde9b162fee948ba400c54d', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(1994, '_transient_timeout_wc_report_orders_stats_719f88a98aef7d19510e674001a12de9', '1660675078', 'no'),
(1995, '_transient_wc_report_orders_stats_719f88a98aef7d19510e674001a12de9', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:9:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-08-01\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-08-02\";s:10:\"date_start\";s:19:\"2022-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-01 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-08-03\";s:10:\"date_start\";s:19:\"2022-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-02 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-08-04\";s:10:\"date_start\";s:19:\"2022-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-03 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-08-05\";s:10:\"date_start\";s:19:\"2022-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-04 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-08-06\";s:10:\"date_start\";s:19:\"2022-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-05 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-08-07\";s:10:\"date_start\";s:19:\"2022-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-06 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-08-08\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-08-09\";s:10:\"date_start\";s:19:\"2022-08-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-08 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:9;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2041, 'product_cat_children', 'a:0:{}', 'yes'),
(2218, 'bcn_version', '7.1.0', 'no'),
(2220, 'bcn_options_bk', 'a:54:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:269:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">Главная</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bblog_display\";b:1;s:10:\"hseparator\";s:22:\"\r\n    \r\n    \r\n    \r\n  \";s:21:\"hseparator_higher_dim\";s:2:\", \";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Epost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_page_root\";s:1:\"0\";s:15:\"Hpaged_template\";s:53:\"<span class=\"%type%\">Страница %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_post_root\";s:1:\"0\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Epost_post_hierarchy_type\";s:8:\"category\";s:32:\"bpost_attachment_archive_display\";b:0;s:34:\"bpost_attachment_hierarchy_display\";b:1;s:39:\"bpost_attachment_hierarchy_parent_first\";b:1;s:33:\"bpost_attachment_taxonomy_referer\";b:0;s:31:\"Epost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:263:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"H404_template\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"S404_title\";s:41:\"404. Страница не найдена\";s:16:\"Hsearch_template\";s:405:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Результаты поиска для запроса: &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Перейти к первой странице результатов поиска для %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:105:\"<span class=\"%type%\">Результаты поиска для запроса: &#039;%htitle%&#039;</span>\";s:22:\"Htax_post_tag_template\";s:296:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для метки %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_post_format_template\";s:286:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для  %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:16:\"Hauthor_template\";s:299:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Статьи по: <a title=\"Перейти к первой странице записей по %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:55:\"<span class=\"%type%\">Статьи по: %htitle%</span>\";s:12:\"Eauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:291:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архиву рубрики %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"Hdate_template\";s:286:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к архивам для  %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:41:\"bpost_product_variation_hierarchy_display\";b:0;}', 'no'),
(2221, 'bcn_options', 'a:6:{s:14:\"Hhome_template\";s:275:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Перейти к главной\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">Главная</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"hseparator\";s:20:\"    \r\n    \r\n    \r\n  \";s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:41:\"bpost_product_variation_hierarchy_display\";b:0;}', 'yes'),
(2433, '_transient_timeout_wc_report_orders_stats_6d2e8e65939eaef9f5fc438ee69e4ddb', '1660763314', 'no'),
(2434, '_transient_wc_report_orders_stats_6d2e8e65939eaef9f5fc438ee69e4ddb', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2435, '_transient_timeout_wc_report_orders_stats_955785976aa23f3f764d9f114e417294', '1660763314', 'no'),
(2436, '_transient_wc_report_orders_stats_955785976aa23f3f764d9f114e417294', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2437, '_transient_timeout_wc_report_products_stats_dc08109130a74892bdc4f8e5e0a4cbcc', '1660763314', 'no'),
(2438, '_transient_wc_report_products_stats_dc08109130a74892bdc4f8e5e0a4cbcc', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2439, '_transient_timeout_wc_report_variations_stats_7ebd3ea33bb9dac44c64bf69d4edd8dc', '1660763314', 'no'),
(2440, '_transient_wc_report_variations_stats_7ebd3ea33bb9dac44c64bf69d4edd8dc', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2441, '_transient_timeout_wc_report_orders_stats_00505e4aab6141619b1697168f4bbe5d', '1660763314', 'no'),
(2442, '_transient_wc_report_orders_stats_00505e4aab6141619b1697168f4bbe5d', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:10:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-08-01\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-08-02\";s:10:\"date_start\";s:19:\"2022-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-01 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-08-03\";s:10:\"date_start\";s:19:\"2022-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-02 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-08-04\";s:10:\"date_start\";s:19:\"2022-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-03 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-08-05\";s:10:\"date_start\";s:19:\"2022-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-04 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-08-06\";s:10:\"date_start\";s:19:\"2022-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-05 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-08-07\";s:10:\"date_start\";s:19:\"2022-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-06 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-08-08\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-08-09\";s:10:\"date_start\";s:19:\"2022-08-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-08 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-08-10\";s:10:\"date_start\";s:19:\"2022-08-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-09 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:10;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2655, '_transient_timeout_wc_term_counts', '1662757115', 'no'),
(2656, '_transient_wc_term_counts', 'a:2:{i:15;s:1:\"2\";i:20;s:1:\"1\";}', 'no'),
(2693, 'recovery_mode_email_last_sent', '1660166152', 'yes'),
(2813, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1660839840', 'no'),
(2814, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(2815, '_transient_timeout_wc_report_orders_stats_09c8c2811903f97bdd8d3df84b8fe983', '1660839840', 'no'),
(2816, '_transient_wc_report_orders_stats_09c8c2811903f97bdd8d3df84b8fe983', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2817, '_transient_timeout_wc_report_orders_stats_bc3292d47b18ea879d09b3e58a58699b', '1660839840', 'no'),
(2818, '_transient_wc_report_orders_stats_bc3292d47b18ea879d09b3e58a58699b', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2819, '_transient_timeout_wc_report_products_stats_abce756a6b957221b0ef79d3704c0a00', '1660839840', 'no'),
(2820, '_transient_wc_report_products_stats_abce756a6b957221b0ef79d3704c0a00', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2821, '_transient_timeout_wc_report_variations_stats_092133ef7d262e5de967a897d2eb492e', '1660839840', 'no');
INSERT INTO `pk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2822, '_transient_wc_report_variations_stats_092133ef7d262e5de967a897d2eb492e', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2823, '_transient_timeout_wc_report_orders_stats_6f11557908607418841f17068c97409e', '1660839840', 'no'),
(2824, '_transient_wc_report_orders_stats_6f11557908607418841f17068c97409e', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:11:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-08-01\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-08-02\";s:10:\"date_start\";s:19:\"2022-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-01 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-08-03\";s:10:\"date_start\";s:19:\"2022-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-02 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-08-04\";s:10:\"date_start\";s:19:\"2022-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-03 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-08-05\";s:10:\"date_start\";s:19:\"2022-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-04 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-08-06\";s:10:\"date_start\";s:19:\"2022-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-05 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-08-07\";s:10:\"date_start\";s:19:\"2022-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-06 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-08-08\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-08-09\";s:10:\"date_start\";s:19:\"2022-08-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-08 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-08-10\";s:10:\"date_start\";s:19:\"2022-08-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-09 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-08-11\";s:10:\"date_start\";s:19:\"2022-08-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-10 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:11;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(2825, '_transient_timeout_wc_low_stock_count', '1662827040', 'no'),
(2826, '_transient_wc_low_stock_count', '0', 'no'),
(2827, '_transient_timeout_wc_outofstock_count', '1662827040', 'no'),
(2828, '_transient_wc_outofstock_count', '0', 'no'),
(2875, '_transient_timeout_acf_plugin_updates', '1660419323', 'no'),
(2876, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(2896, '_transient_timeout_woocommerce_admin_remote_free_extensions_specs', '1660852467', 'no'),
(2897, '_transient_woocommerce_admin_remote_free_extensions_specs', 'a:4:{s:10:\"obw/basics\";O:8:\"stdClass\":3:{s:3:\"key\";s:10:\"obw/basics\";s:5:\"title\";s:14:\"Get the basics\";s:7:\"plugins\";a:4:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:163:\"Accept credit cards and other popular payment methods with <a href=\"https://woocommerce.com/products/woocommerce-payments\" target=\"_blank\">WooCommerce Payments</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:20:\"woocommerce-payments\";}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:119:\"Print shipping labels with <a href=\"https://woocommerce.com/products/shipping\" target=\"_blank\">WooCommerce Shipping</a>\";s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:2:{i:0;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:13:\"product_types\";}}i:1;O:8:\"stdClass\":1:{s:3:\"use\";s:5:\"count\";}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";i:1;s:7:\"default\";a:0:{}s:9:\"operation\";s:2:\"!=\";}}i:1;a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:1:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:15:\"product_types.0\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:5:\"value\";s:9:\"downloads\";s:7:\"default\";s:0:\"\";s:9:\"operation\";s:2:\"!=\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:29:\"woocommerce-services:shipping\";}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:111:\"Get automated sales tax with <a href=\"https://woocommerce.com/products/tax\" target=\"_blank\">WooCommerce Tax</a>\";s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:11:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:24:\"woocommerce-services:tax\";}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:110:\"Enhance speed and security with <a href=\"https://woocommerce.com/products/jetpack\" target=\"_blank\">Jetpack</a>\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:7:\"jetpack\";}}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:7:\"jetpack\";}}}s:8:\"obw/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:8:\"obw/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:115:\"Level up your email marketing with <a href=\"https://woocommerce.com/products/mailpoet\" target=\"_blank\">MailPoet</a>\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:8:\"mailpoet\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:8:\"mailpoet\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:127:\"Drive sales with <a href=\"https://woocommerce.com/products/google-listings-and-ads\" target=\"_blank\">Google Listings and Ads</a>\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:23:\"google-listings-and-ads\";}}}}}s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:23:\"google-listings-and-ads\";}}}s:15:\"task-list/reach\";O:8:\"stdClass\":3:{s:3:\"key\";s:15:\"task-list/reach\";s:5:\"title\";s:22:\"Reach out to customers\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:8:\"MailPoet\";s:11:\"description\";s:111:\"Create and send purchase follow-up emails, newsletters, and promotional campaigns straight from your dashboard.\";s:9:\"image_url\";s:96:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailpoet.png\";s:10:\"manage_url\";s:35:\"admin.php?page=mailpoet-newsletters\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:12:\"mailpoet:alt\";}i:1;O:8:\"stdClass\":6:{s:4:\"name\";s:9:\"Mailchimp\";s:11:\"description\";s:78:\"Send targeted campaigns, recover abandoned carts and much more with Mailchimp.\";s:9:\"image_url\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/mailchimp-for-woocommerce.png\";s:10:\"manage_url\";s:36:\"admin.php?page=mailchimp-woocommerce\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:25:\"mailchimp-for-woocommerce\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:29:\"Creative Mail for WooCommerce\";s:11:\"description\";s:99:\"Create on-brand store campaigns, fast email promotions and customer retargeting with Creative Mail.\";s:9:\"image_url\";s:121:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/creative-mail-by-constant-contact.png\";s:10:\"manage_url\";s:27:\"admin.php?page=creativemail\";s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:33:\"creative-mail-by-constant-contact\";}}}s:14:\"task-list/grow\";O:8:\"stdClass\":3:{s:3:\"key\";s:14:\"task-list/grow\";s:5:\"title\";s:15:\"Grow your store\";s:7:\"plugins\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:21:\"Google Listings & Ads\";s:11:\"description\";s:134:\"Reach more shoppers and drive sales for your store. Integrate with Google to list your products for free and launch paid ad campaigns.\";s:9:\"image_url\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/google-listings-and-ads.png\";s:10:\"manage_url\";s:46:\"admin.php?page=wc-admin&path=%2Fgoogle%2Fstart\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:27:\"google-listings-and-ads:alt\";}i:1;O:8:\"stdClass\":7:{s:4:\"name\";s:22:\"TikTok for WooCommerce\";s:9:\"image_url\";s:94:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/tiktok.svg\";s:11:\"description\";s:118:\"Grow your online sales by promoting your products on TikTok to over one billion monthly active users around the world.\";s:10:\"manage_url\";s:21:\"admin.php?page=tiktok\";s:10:\"is_visible\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:40:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MX\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MY\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PH\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ID\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"VN\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TH\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"KR\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IL\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"UA\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"TR\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SA\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BR\";s:9:\"operation\";s:1:\"=\";}i:39;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}}}}s:14:\"is_built_by_wc\";b:0;s:3:\"key\";s:19:\"tiktok-for-business\";}i:2;O:8:\"stdClass\":6:{s:4:\"name\";s:25:\"Pinterest for WooCommerce\";s:11:\"description\";s:159:\"Get your products in front of Pinterest users searching for ideas and things to buy. Get started with Pinterest and make your entire product catalog browsable.\";s:9:\"image_url\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/obw-free-extensions/images/pinterest.png\";s:10:\"manage_url\";s:51:\"admin.php?page=wc-admin&path=%2Fpinterest%2Flanding\";s:14:\"is_built_by_wc\";b:1;s:3:\"key\";s:25:\"pinterest-for-woocommerce\";}}}}', 'no'),
(2898, '_site_transient_timeout_browser_8dbbec752b538d6f37ba4a2878298182', '1660852468', 'no'),
(2899, '_site_transient_browser_8dbbec752b538d6f37ba4a2878298182', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"104.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2909, '_transient_timeout_woocommerce_admin_payment_method_promotion_specs', '1660852811', 'no'),
(2910, '_transient_woocommerce_admin_payment_method_promotion_specs', 'a:1:{s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:19:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}', 'no'),
(2964, '_transient_timeout_orders-all-statuses', '1660855434', 'no'),
(2965, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";a:0:{}}', 'no'),
(2967, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"brand\";s:15:\"attribute_label\";s:10:\"Бренд\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:12:\"manufacturer\";s:15:\"attribute_label\";s:26:\"Производитель\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(3052, '_transient_timeout_wc_report_orders_stats_1fc708a6bde365a062fb6bd755bd675a', '1660921779', 'no'),
(3053, '_transient_wc_report_orders_stats_1fc708a6bde365a062fb6bd755bd675a', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3054, '_transient_timeout_wc_report_orders_stats_a804ec8dfb461447dec261ee8ff0e3d4', '1660921779', 'no'),
(3055, '_transient_wc_report_orders_stats_a804ec8dfb461447dec261ee8ff0e3d4', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":15:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":14:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"gross_sales\";d:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:19:\"avg_items_per_order\";d:0;s:15:\"avg_order_value\";d:0;s:15:\"total_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3056, '_transient_timeout_wc_report_products_stats_107a1ab9e3d21decf0f9c33d8895aa26', '1660921779', 'no'),
(3057, '_transient_wc_report_products_stats_107a1ab9e3d21decf0f9c33d8895aa26', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:14:\"products_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3058, '_transient_timeout_wc_report_variations_stats_25593f3697ee99fe3ef05d08945bf633', '1660921779', 'no'),
(3059, '_transient_wc_report_variations_stats_25593f3697ee99fe3ef05d08945bf633', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:2:{i:0;a:6:{s:8:\"interval\";s:7:\"2022-32\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2022-31\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":5:{s:10:\"items_sold\";i:0;s:11:\"net_revenue\";d:0;s:12:\"orders_count\";i:0;s:16:\"variations_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:2;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3060, '_transient_timeout_wc_report_orders_stats_4459d2a1c30276bc89b6684923614db4', '1660921779', 'no'),
(3061, '_transient_wc_report_orders_stats_4459d2a1c30276bc89b6684923614db4', 'a:2:{s:7:\"version\";s:10:\"1659637300\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:11:\"net_revenue\";d:0;s:8:\"products\";i:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:12:{i:0;a:6:{s:8:\"interval\";s:10:\"2022-08-01\";s:10:\"date_start\";s:19:\"2022-08-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-07-31 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-01 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2022-08-02\";s:10:\"date_start\";s:19:\"2022-08-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-01 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-02 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2022-08-03\";s:10:\"date_start\";s:19:\"2022-08-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-02 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-03 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2022-08-04\";s:10:\"date_start\";s:19:\"2022-08-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-03 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-04 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2022-08-05\";s:10:\"date_start\";s:19:\"2022-08-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-04 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-05 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2022-08-06\";s:10:\"date_start\";s:19:\"2022-08-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-05 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-06 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2022-08-07\";s:10:\"date_start\";s:19:\"2022-08-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-06 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-07 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2022-08-08\";s:10:\"date_start\";s:19:\"2022-08-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-07 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-08 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2022-08-09\";s:10:\"date_start\";s:19:\"2022-08-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-08 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-09 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2022-08-10\";s:10:\"date_start\";s:19:\"2022-08-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-09 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-10 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2022-08-11\";s:10:\"date_start\";s:19:\"2022-08-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-10 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-11 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2022-08-12\";s:10:\"date_start\";s:19:\"2022-08-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2022-08-11 21:00:00\";s:8:\"date_end\";s:19:\"2022-08-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2022-08-12 20:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":3:{s:11:\"net_revenue\";d:0;s:13:\"coupons_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:12;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(3112, '_site_transient_timeout_theme_roots', '1660385730', 'no'),
(3113, '_site_transient_theme_roots', 'a:4:{s:6:\"burlak\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(3114, '_transient_timeout__woocommerce_helper_updates', '1660427130', 'no'),
(3115, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1660383930;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(3117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.1\";s:7:\"version\";s:5:\"6.0.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1660383933;s:15:\"version_checked\";s:5:\"6.0.1\";s:12:\"translations\";a:0:{}}', 'no'),
(3118, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1660383934;s:7:\"checked\";a:4:{s:6:\"burlak\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `pk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3119, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1660383935;s:8:\"response\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";b:0;}s:21:\"mailpoet/mailpoet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/mailpoet\";s:4:\"slug\";s:8:\"mailpoet\";s:6:\"plugin\";s:21:\"mailpoet/mailpoet.php\";s:11:\"new_version\";s:6:\"3.94.0\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/mailpoet/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/mailpoet.3.94.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/mailpoet/assets/icon-256x256.png?rev=1895745\";s:2:\"1x\";s:61:\"https://ps.w.org/mailpoet/assets/icon-128x128.png?rev=1706492\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/mailpoet/assets/banner-1544x500.png?rev=2046588\";s:2:\"1x\";s:63:\"https://ps.w.org/mailpoet/assets/banner-772x250.png?rev=2046588\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";s:3:\"7.2\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"6.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.6.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.0.1\";s:12:\"requires_php\";s:3:\"7.2\";}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.0.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"jetpack\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:4:\"11.2\";s:7:\"updated\";s:19:\"2022-08-09 13:54:11\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/plugin/jetpack/11.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:8:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"7.1.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.7.1.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=2410525\";s:2:\"1x\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";s:3:\"svg\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/breadcrumb-navxt/assets/banner-1544x500.png?rev=1927103\";s:2:\"1x\";s:71:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.png?rev=1927103\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:4:\"11.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/jetpack.11.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=2638128\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=2653649\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=2653649\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.2.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=2683939\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2683939\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=2683939\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=2683939\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=2683939\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.5.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:29:\"static-block/static-block.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/static-block\";s:4:\"slug\";s:12:\"static-block\";s:6:\"plugin\";s:29:\"static-block/static-block.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/static-block/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/static-block.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/static-block_f8b109.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/static-block/assets/banner-1544x500.jpg?rev=1279650\";s:2:\"1x\";s:67:\"https://ps.w.org/static-block/assets/banner-772x250.jpg?rev=1279650\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.8\";}}s:7:\"checked\";a:12:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:5:\"7.1.0\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.1\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.3.0\";s:19:\"jetpack/jetpack.php\";s:4:\"11.2\";s:21:\"mailpoet/mailpoet.php\";s:6:\"3.93.1\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.5\";s:21:\"safe-svg/safe-svg.php\";s:5:\"2.0.2\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.5.6\";s:29:\"static-block/static-block.php\";s:3:\"2.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"6.7.0\";}}', 'no'),
(3124, '_transient_timeout_wc_tracks_blog_details', '1660470864', 'no'),
(3125, '_transient_wc_tracks_blog_details', 'a:5:{s:3:\"url\";s:24:\"http://localhost:8888/pk\";s:9:\"blog_lang\";s:5:\"ru_RU\";s:7:\"blog_id\";N;s:14:\"products_count\";s:1:\"3\";s:10:\"wc_version\";s:5:\"6.7.0\";}', 'no'),
(3559, '_transient_timeout_global_styles_burlak', '1660400654', 'no'),
(3560, '_transient_global_styles_burlak', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pk_postmeta`
--

CREATE TABLE `pk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_postmeta`
--

INSERT INTO `pk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Номер телефона\"]</label><label class=\"form__item\">[textarea* question placeholder \"Вопрос\"]</label>[hidden place class:place]<div class=\"form__item form__item--centered\"><div class=\"form__item__submit\">[submit class:button class:button--black \"Отправить\"]</div></div><div class=\"form__item\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\">обработку персональных данных</a></div>[/acceptance]</div></div>'),
(4, 5, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Заявка с сайта\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:90:\"Имя: [user-name]\nТелефон: [phone]\nВопрос: [question]\nОткуда: [place]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(6, 5, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'ru_RU'),
(9, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(10, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12560;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:92182;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4228;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:58715;}s:4:\"lazy\";a:5:{s:4:\"file\";s:33:\"woocommerce-placeholder-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:871;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:33:\"woocommerce-placeholder-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:871;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_edit_lock', '1659642454:1'),
(14, 7, '_edit_last', '1'),
(15, 8, '_edit_lock', '1659642458:1'),
(16, 9, '_edit_lock', '1659642485:1'),
(26, 15, '_menu_item_type', 'post_type'),
(27, 15, '_menu_item_menu_item_parent', '0'),
(28, 15, '_menu_item_object_id', '7'),
(29, 15, '_menu_item_object', 'page'),
(30, 15, '_menu_item_target', ''),
(31, 15, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(32, 15, '_menu_item_xfn', ''),
(33, 15, '_menu_item_url', ''),
(35, 16, '_menu_item_type', 'custom'),
(36, 16, '_menu_item_menu_item_parent', '0'),
(37, 16, '_menu_item_object_id', '16'),
(38, 16, '_menu_item_object', 'custom'),
(39, 16, '_menu_item_target', ''),
(40, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 16, '_menu_item_xfn', ''),
(42, 16, '_menu_item_url', '#'),
(44, 17, '_menu_item_type', 'custom'),
(45, 17, '_menu_item_menu_item_parent', '0'),
(46, 17, '_menu_item_object_id', '17'),
(47, 17, '_menu_item_object', 'custom'),
(48, 17, '_menu_item_target', ''),
(49, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 17, '_menu_item_xfn', ''),
(51, 17, '_menu_item_url', '#'),
(53, 18, '_menu_item_type', 'custom'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '18'),
(56, 18, '_menu_item_object', 'custom'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', '#'),
(62, 19, '_menu_item_type', 'custom'),
(63, 19, '_menu_item_menu_item_parent', '0'),
(64, 19, '_menu_item_object_id', '19'),
(65, 19, '_menu_item_object', 'custom'),
(66, 19, '_menu_item_target', ''),
(67, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 19, '_menu_item_xfn', ''),
(69, 19, '_menu_item_url', '#'),
(71, 20, '_form', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Номер телефона\"]</label><div class=\"form__item\"><div class=\"form__item__submit\">[submit class:button class:button--black \"Подобрать оборудование\"]</div></div><div class=\"form__item form__item--centered\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\">обработку персональных данных</a></div>[/acceptance]</div></div>'),
(72, 20, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"Заявка с сайта\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:43:\"Телефон: [phone]\nИмя: [user-name]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(73, 20, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:128:\"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(74, 20, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(75, 20, '_additional_settings', ''),
(76, 20, '_locale', 'ru_RU'),
(77, 21, '_wp_attached_file', '2022/08/1708ea4fff5aaf951f7a2968c6a200c7-1.png'),
(78, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:619;s:6:\"height\";i:215;s:4:\"file\";s:46:\"2022/08/1708ea4fff5aaf951f7a2968c6a200c7-1.png\";s:8:\"filesize\";i:92158;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-300x104.png\";s:5:\"width\";i:300;s:6:\"height\";i:104;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37739;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30936;}s:4:\"lazy\";a:5:{s:4:\"file\";s:44:\"1708ea4fff5aaf951f7a2968c6a200c7-1-50x17.png\";s:5:\"width\";i:50;s:6:\"height\";i:17;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1779;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:44:\"1708ea4fff5aaf951f7a2968c6a200c7-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5121;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70269;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-600x208.png\";s:5:\"width\";i:600;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127019;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15771;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-300x215.png\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70269;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-600x208.png\";s:5:\"width\";i:600;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:127019;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:46:\"1708ea4fff5aaf951f7a2968c6a200c7-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15771;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 22, '_edit_last', '1'),
(80, 22, '_edit_lock', '1659710532:1'),
(81, 25, '_wp_attached_file', '2022/08/rectangle-2.png'),
(82, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:341;s:6:\"height\";i:409;s:4:\"file\";s:23:\"2022/08/rectangle-2.png\";s:8:\"filesize\";i:276727;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"rectangle-2-250x300.png\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:151994;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52048;}s:4:\"lazy\";a:5:{s:4:\"file\";s:21:\"rectangle-2-42x50.png\";s:5:\"width\";i:42;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5763;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:21:\"rectangle-2-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6937;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"rectangle-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:178507;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24900;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"rectangle-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:178507;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24900;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 26, '_edit_last', '1'),
(84, 26, '_edit_lock', '1660166139:1'),
(85, 26, 'total_sales', '0'),
(86, 26, '_tax_status', 'taxable'),
(87, 26, '_tax_class', ''),
(88, 26, '_manage_stock', 'no'),
(89, 26, '_backorders', 'no'),
(90, 26, '_sold_individually', 'no'),
(91, 26, '_virtual', 'no'),
(92, 26, '_downloadable', 'no'),
(93, 26, '_download_limit', '-1'),
(94, 26, '_download_expiry', '-1'),
(95, 26, '_stock', NULL),
(96, 26, '_stock_status', 'instock'),
(97, 26, '_wc_average_rating', '0'),
(98, 26, '_wc_review_count', '0'),
(99, 26, '_product_version', '6.7.0'),
(100, 27, '_wp_attached_file', '2022/08/r-3.jpeg'),
(101, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:16:\"2022/08/r-3.jpeg\";s:8:\"filesize\";i:115925;s:5:\"sizes\";a:11:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"r-3-300x188.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15335;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"r-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7190;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:16:\"r-3-768x480.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72702;}s:4:\"lazy\";a:5:{s:4:\"file\";s:14:\"r-3-50x31.jpeg\";s:5:\"width\";i:50;s:6:\"height\";i:31;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1383;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:14:\"r-3-50x50.jpeg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1820;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:16:\"r-3-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21542;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:16:\"r-3-600x375.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48027;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:16:\"r-3-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4094;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"r-3-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21542;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:16:\"r-3-600x375.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:48027;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:16:\"r-3-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4094;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 26, '_thumbnail_id', '27'),
(103, 26, '_regular_price', '999'),
(104, 26, '_price', '999'),
(105, 26, '_product_image_gallery', '27'),
(106, 28, '_edit_last', '1'),
(107, 28, '_edit_lock', '1659897280:1'),
(108, 28, 'total_sales', '0'),
(109, 28, '_tax_status', 'taxable'),
(110, 28, '_tax_class', ''),
(111, 28, '_manage_stock', 'no'),
(112, 28, '_backorders', 'no'),
(113, 28, '_sold_individually', 'no'),
(114, 28, '_virtual', 'no'),
(115, 28, '_downloadable', 'no'),
(116, 28, '_download_limit', '-1'),
(117, 28, '_download_expiry', '-1'),
(118, 28, '_stock', NULL),
(119, 28, '_stock_status', 'instock'),
(120, 28, '_wc_average_rating', '0'),
(121, 28, '_wc_review_count', '0'),
(122, 28, '_product_version', '6.7.0'),
(123, 28, '_regular_price', '23'),
(124, 28, '_price', '20'),
(125, 28, '_sale_price', '20'),
(126, 29, '_menu_item_type', 'custom'),
(127, 29, '_menu_item_menu_item_parent', '0'),
(128, 29, '_menu_item_object_id', '29'),
(129, 29, '_menu_item_object', 'custom'),
(130, 29, '_menu_item_target', ''),
(131, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 29, '_menu_item_xfn', ''),
(133, 29, '_menu_item_url', '#'),
(135, 30, '_menu_item_type', 'custom'),
(136, 30, '_menu_item_menu_item_parent', '0'),
(137, 30, '_menu_item_object_id', '30'),
(138, 30, '_menu_item_object', 'custom'),
(139, 30, '_menu_item_target', ''),
(140, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 30, '_menu_item_xfn', ''),
(142, 30, '_menu_item_url', '#'),
(144, 31, '_menu_item_type', 'custom'),
(145, 31, '_menu_item_menu_item_parent', '0'),
(146, 31, '_menu_item_object_id', '31'),
(147, 31, '_menu_item_object', 'custom'),
(148, 31, '_menu_item_target', ''),
(149, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 31, '_menu_item_xfn', ''),
(151, 31, '_menu_item_url', '#'),
(153, 32, '_menu_item_type', 'custom'),
(154, 32, '_menu_item_menu_item_parent', '0'),
(155, 32, '_menu_item_object_id', '32'),
(156, 32, '_menu_item_object', 'custom'),
(157, 32, '_menu_item_target', ''),
(158, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(159, 32, '_menu_item_xfn', ''),
(160, 32, '_menu_item_url', '#'),
(162, 33, '_menu_item_type', 'custom'),
(163, 33, '_menu_item_menu_item_parent', '0'),
(164, 33, '_menu_item_object_id', '33'),
(165, 33, '_menu_item_object', 'custom'),
(166, 33, '_menu_item_target', ''),
(167, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(168, 33, '_menu_item_xfn', ''),
(169, 33, '_menu_item_url', '#'),
(171, 34, '_menu_item_type', 'custom'),
(172, 34, '_menu_item_menu_item_parent', '0'),
(173, 34, '_menu_item_object_id', '34'),
(174, 34, '_menu_item_object', 'custom'),
(175, 34, '_menu_item_target', ''),
(176, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 34, '_menu_item_xfn', ''),
(178, 34, '_menu_item_url', '#'),
(180, 35, '_menu_item_type', 'custom'),
(181, 35, '_menu_item_menu_item_parent', '0'),
(182, 35, '_menu_item_object_id', '35'),
(183, 35, '_menu_item_object', 'custom'),
(184, 35, '_menu_item_target', ''),
(185, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(186, 35, '_menu_item_xfn', ''),
(187, 35, '_menu_item_url', '#'),
(189, 36, '_menu_item_type', 'custom'),
(190, 36, '_menu_item_menu_item_parent', '0'),
(191, 36, '_menu_item_object_id', '36'),
(192, 36, '_menu_item_object', 'custom'),
(193, 36, '_menu_item_target', ''),
(194, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 36, '_menu_item_xfn', ''),
(196, 36, '_menu_item_url', '#'),
(198, 37, '_menu_item_type', 'custom'),
(199, 37, '_menu_item_menu_item_parent', '0'),
(200, 37, '_menu_item_object_id', '37'),
(201, 37, '_menu_item_object', 'custom'),
(202, 37, '_menu_item_target', ''),
(203, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 37, '_menu_item_xfn', ''),
(205, 37, '_menu_item_url', '#'),
(207, 38, '_menu_item_type', 'custom'),
(208, 38, '_menu_item_menu_item_parent', '0'),
(209, 38, '_menu_item_object_id', '38'),
(210, 38, '_menu_item_object', 'custom'),
(211, 38, '_menu_item_target', ''),
(212, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 38, '_menu_item_xfn', ''),
(214, 38, '_menu_item_url', '#'),
(215, 40, '_edit_last', '1'),
(216, 40, '_edit_lock', '1659975216:1'),
(217, 45, '_wp_attached_file', '2022/08/sajt.cdr_8199_bitmap.psd-1.png'),
(218, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1449;s:6:\"height\";i:658;s:4:\"file\";s:38:\"2022/08/sajt.cdr_8199_bitmap.psd-1.png\";s:8:\"filesize\";i:896680;s:5:\"sizes\";a:12:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-300x136.png\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:85510;}s:5:\"large\";a:5:{s:4:\"file\";s:39:\"sajt.cdr_8199_bitmap.psd-1-1024x465.png\";s:5:\"width\";i:1024;s:6:\"height\";i:465;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:714357;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48164;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-768x349.png\";s:5:\"width\";i:768;s:6:\"height\";i:349;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:450047;}s:4:\"lazy\";a:5:{s:4:\"file\";s:36:\"sajt.cdr_8199_bitmap.psd-1-50x23.png\";s:5:\"width\";i:50;s:6:\"height\";i:23;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2941;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:39:\"sajt.cdr_8199_bitmap.psd-1-1449x650.png\";s:5:\"width\";i:1449;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:881150;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163704;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-600x272.png\";s:5:\"width\";i:600;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:294875;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22927;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163704;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-600x272.png\";s:5:\"width\";i:600;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:294875;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22927;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 44, '_edit_last', '1'),
(220, 44, '_edit_lock', '1659974697:1'),
(221, 44, '_thumbnail_id', '45'),
(222, 44, 'text', 'Многолетний опыт продажи, установки и эксплуатации\r\nаксессуаров от многих российских и зарубежных\r\nпроизводителей позволяет нам  помогать своим\r\nклиентам в выборе оптимального решения'),
(223, 44, '_text', 'field_62f131e4f781e'),
(224, 44, 'link', '#'),
(225, 44, '_link', 'field_62f131fdf781f'),
(226, 44, 'blank', '0'),
(227, 44, '_blank', 'field_62f13212f7820'),
(228, 44, 'background', '45'),
(229, 44, '_background', 'field_62f13461b5f99'),
(230, 47, '_edit_last', '1'),
(231, 47, '_edit_lock', '1660028722:1'),
(232, 47, 'background', '45'),
(233, 47, '_background', 'field_62f13461b5f99'),
(234, 47, 'text', 'Текст'),
(235, 47, '_text', 'field_62f131e4f781e'),
(236, 47, 'link', ''),
(237, 47, '_link', 'field_62f131fdf781f'),
(238, 47, 'blank', '0'),
(239, 47, '_blank', 'field_62f13212f7820'),
(240, 48, '_edit_last', '1'),
(241, 48, '_edit_lock', '1660070223:1'),
(242, 48, 'total_sales', '0'),
(243, 48, '_tax_status', 'taxable'),
(244, 48, '_tax_class', ''),
(245, 48, '_manage_stock', 'no'),
(246, 48, '_backorders', 'no'),
(247, 48, '_sold_individually', 'no'),
(248, 48, '_virtual', 'no'),
(249, 48, '_downloadable', 'no'),
(250, 48, '_download_limit', '-1'),
(251, 48, '_download_expiry', '-1'),
(252, 48, '_stock', NULL),
(253, 48, '_stock_status', 'instock'),
(254, 48, '_wc_average_rating', '0'),
(255, 48, '_wc_review_count', '0'),
(256, 48, '_product_version', '6.7.0'),
(257, 49, '_wp_attached_file', '2022/08/group.png'),
(258, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:252;s:6:\"height\";i:178;s:4:\"file\";s:17:\"2022/08/group.png\";s:8:\"filesize\";i:40459;s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"group-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26014;}s:4:\"lazy\";a:5:{s:4:\"file\";s:15:\"group-50x35.png\";s:5:\"width\";i:50;s:6:\"height\";i:35;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3105;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"group-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13448;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:17:\"group-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13448;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 51, '_edit_last', '1'),
(260, 51, '_edit_lock', '1660317434:1'),
(261, 54, '_wp_attached_file', '2022/08/hummer-1.png'),
(262, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:285;s:6:\"height\";i:330;s:4:\"file\";s:20:\"2022/08/hummer-1.png\";s:8:\"filesize\";i:62618;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"hummer-1-259x300.png\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:67041;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"hummer-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26082;}s:4:\"lazy\";a:5:{s:4:\"file\";s:18:\"hummer-1-43x50.png\";s:5:\"width\";i:43;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3884;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"hummer-1-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70090;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"hummer-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14124;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"hummer-1-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70090;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:20:\"hummer-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14124;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 55, '_wp_attached_file', '2022/08/group-3.png'),
(264, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:285;s:6:\"height\";i:330;s:4:\"file\";s:19:\"2022/08/group-3.png\";s:8:\"filesize\";i:95597;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"group-3-259x300.png\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:91700;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"group-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34065;}s:4:\"lazy\";a:5:{s:4:\"file\";s:17:\"group-3-43x50.png\";s:5:\"width\";i:43;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4116;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:19:\"group-3-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:95543;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17287;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"group-3-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:95543;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17287;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 56, '_edit_last', '1'),
(266, 56, '_edit_lock', '1660388407:1'),
(267, 60, '_edit_last', '1'),
(268, 60, '_edit_lock', '1660396111:1'),
(269, 62, '_wp_attached_file', '2022/08/rectangle-4.png'),
(270, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1041;s:4:\"file\";s:23:\"2022/08/rectangle-4.png\";s:8:\"filesize\";i:3676199;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"rectangle-4-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:109152;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"rectangle-4-1024x555.png\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1190906;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51209;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"rectangle-4-768x416.png\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:694019;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"rectangle-4-1536x833.png\";s:5:\"width\";i:1536;s:6:\"height\";i:833;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2464564;}s:4:\"lazy\";a:5:{s:4:\"file\";s:21:\"rectangle-4-50x27.png\";s:5:\"width\";i:50;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3589;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:24:\"rectangle-4-1450x650.png\";s:5:\"width\";i:1450;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1858308;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"rectangle-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:200656;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"rectangle-4-600x325.png\";s:5:\"width\";i:600;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:429111;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23278;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"rectangle-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:200656;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:23:\"rectangle-4-600x325.png\";s:5:\"width\";i:600;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:429111;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23278;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(271, 63, '_wp_attached_file', '2022/08/rectangle-4-1.png'),
(272, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1041;s:4:\"file\";s:25:\"2022/08/rectangle-4-1.png\";s:8:\"filesize\";i:3676199;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-300x163.png\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:109152;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"rectangle-4-1-1024x555.png\";s:5:\"width\";i:1024;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1190906;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51209;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-768x416.png\";s:5:\"width\";i:768;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:694019;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"rectangle-4-1-1536x833.png\";s:5:\"width\";i:1536;s:6:\"height\";i:833;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2464564;}s:4:\"lazy\";a:5:{s:4:\"file\";s:23:\"rectangle-4-1-50x27.png\";s:5:\"width\";i:50;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3589;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:26:\"rectangle-4-1-1450x650.png\";s:5:\"width\";i:1450;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1858308;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:25:\"rectangle-4-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:200656;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-600x325.png\";s:5:\"width\";i:600;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:429111;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23278;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:200656;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-600x325.png\";s:5:\"width\";i:600;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:429111;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:25:\"rectangle-4-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23278;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 56, 'decorator_background', '63'),
(274, 56, '_decorator_background', 'field_62f40c8d315f3'),
(275, 64, 'decorator_background', '63'),
(276, 64, '_decorator_background', 'field_62f40c8d315f3'),
(277, 65, '_edit_last', '1'),
(278, 65, '_edit_lock', '1660384468:1'),
(279, 56, 'title_index', 'Бренды авто'),
(280, 56, '_title_index', 'field_62f41333aca7b'),
(281, 56, 'description_index', ''),
(282, 56, '_description_index', 'field_62f4135caca7c'),
(283, 69, 'decorator_background', '63'),
(284, 69, '_decorator_background', 'field_62f40c8d315f3'),
(285, 69, 'title_index', 'Бренды авто'),
(286, 69, '_title_index', 'field_62f41333aca7b'),
(287, 69, 'description_index', 'Пикап - это выбор тех, кто бросает вызов \r\nлюбым ограничениям. Если вы не готовы \r\nмириться с условностями в том, что касается \r\nвнешнего вида вашего авто, то интернет-\r\nмагазин PickupStyle может предложить всё \r\nчто необходимо для тюнинга пикапа любой \r\nмарки.'),
(288, 69, '_description_index', 'field_62f4135caca7c'),
(289, 26, '_product_attributes', 'a:1:{s:8:\"pa_brand\";a:6:{s:4:\"name\";s:8:\"pa_brand\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(290, 71, '_edit_last', '1'),
(291, 71, 'tr_start_date', ''),
(292, 71, 'tr_start_date_hour', '0'),
(293, 71, 'tr_start_date_minute', '0'),
(294, 71, 'tr_end_date', ''),
(295, 71, 'tr_end_date_hour', '0'),
(296, 71, 'tr_end_date_minute', '0'),
(297, 71, '_edit_lock', '1660250490:1'),
(298, 72, '_edit_last', '1'),
(299, 72, '_edit_lock', '1660384444:1'),
(300, 74, '_wp_attached_file', '2022/08/bezymyannyj-2-1.png'),
(301, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1450;s:6:\"height\";i:688;s:4:\"file\";s:27:\"2022/08/bezymyannyj-2-1.png\";s:8:\"filesize\";i:704534;s:5:\"sizes\";a:12:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-300x142.png\";s:5:\"width\";i:300;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:53525;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"bezymyannyj-2-1-1024x486.png\";s:5:\"width\";i:1024;s:6:\"height\";i:486;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:478343;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28744;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-768x364.png\";s:5:\"width\";i:768;s:6:\"height\";i:364;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:292222;}s:4:\"lazy\";a:5:{s:4:\"file\";s:25:\"bezymyannyj-2-1-50x24.png\";s:5:\"width\";i:50;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2438;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:28:\"bezymyannyj-2-1-1450x650.png\";s:5:\"width\";i:1450;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:676336;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:27:\"bezymyannyj-2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:99018;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-600x285.png\";s:5:\"width\";i:600;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:183824;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14026;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:99018;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-600x285.png\";s:5:\"width\";i:600;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:183824;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14026;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(302, 71, 'background', '74'),
(303, 71, '_background', 'field_62f52e068705d'),
(304, 81, '_wp_attached_file', '2022/08/group.svg'),
(305, 81, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:410;s:6:\"height\";i:77;s:4:\"file\";s:17:\"2022/08/group.svg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:650;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:9:\"group.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(306, 82, '_wp_attached_file', '2022/08/group-1.svg'),
(307, 82, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:45;s:6:\"height\";i:44;s:4:\"file\";s:19:\"2022/08/group-1.svg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:650;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(308, 83, '_wp_attached_file', '2022/08/group-2.svg'),
(309, 83, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:43;s:6:\"height\";i:31;s:4:\"file\";s:19:\"2022/08/group-2.svg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:650;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(310, 84, '_wp_attached_file', '2022/08/vector-2.svg');
INSERT INTO `pk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(311, 84, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:41;s:6:\"height\";i:40;s:4:\"file\";s:20:\"2022/08/vector-2.svg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:650;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"vector-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(312, 71, 'image', '81'),
(313, 71, '_image', 'field_62f55e7e35503'),
(314, 71, 'title', 'Мы специализируемся на пикапах'),
(315, 71, '_title', 'field_62f55e8b35504'),
(316, 71, 'list_0_title', 'Сертификация'),
(317, 71, '_list_0_title', 'field_62f55ea135506'),
(318, 71, 'list_0_text', 'Все товары сертифицированы'),
(319, 71, '_list_0_text', 'field_62f55eae35507'),
(320, 71, 'list_0_icon', '82'),
(321, 71, '_list_0_icon', 'field_62f55eb535508'),
(322, 71, 'list_1_title', 'Доставка'),
(323, 71, '_list_1_title', 'field_62f55ea135506'),
(324, 71, 'list_1_text', 'Отправка в любую точку России'),
(325, 71, '_list_1_text', 'field_62f55eae35507'),
(326, 71, 'list_1_icon', '83'),
(327, 71, '_list_1_icon', 'field_62f55eb535508'),
(328, 71, 'list_2_title', 'Прямые поставки'),
(329, 71, '_list_2_title', 'field_62f55ea135506'),
(330, 71, 'list_2_text', 'Прямые поставки от производителей'),
(331, 71, '_list_2_text', 'field_62f55eae35507'),
(332, 71, 'list_2_icon', '84'),
(333, 71, '_list_2_icon', 'field_62f55eb535508'),
(334, 71, 'list', '3'),
(335, 71, '_list', 'field_62f55e9235505'),
(336, 85, '_edit_last', '1'),
(337, 85, '_edit_lock', '1660317211:1'),
(338, 87, '_wp_attached_file', '2022/08/1639232799_2-hdpic-club-p-logotip-folksvagen-3-1.png'),
(339, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:77;s:6:\"height\";i:77;s:4:\"file\";s:60:\"2022/08/1639232799_2-hdpic-club-p-logotip-folksvagen-3-1.png\";s:8:\"filesize\";i:5465;s:5:\"sizes\";a:1:{s:4:\"lazy\";a:5:{s:4:\"file\";s:58:\"1639232799_2-hdpic-club-p-logotip-folksvagen-3-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4813;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 88, '_wp_attached_file', '2022/08/group-4.png'),
(341, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:285;s:6:\"height\";i:330;s:4:\"file\";s:19:\"2022/08/group-4.png\";s:8:\"filesize\";i:90227;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"group-4-259x300.png\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:85071;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"group-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30561;}s:4:\"lazy\";a:5:{s:4:\"file\";s:17:\"group-4-43x50.png\";s:5:\"width\";i:43;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3636;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:19:\"group-4-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:90083;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15490;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"group-4-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:90083;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15490;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 89, '_wp_attached_file', '2022/08/hummer_wordmark-1.png'),
(343, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:193;s:6:\"height\";i:21;s:4:\"file\";s:29:\"2022/08/hummer_wordmark-1.png\";s:8:\"filesize\";i:1333;s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"hummer_wordmark-1-150x21.png\";s:5:\"width\";i:150;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:997;}s:4:\"lazy\";a:5:{s:4:\"file\";s:26:\"hummer_wordmark-1-50x5.png\";s:5:\"width\";i:50;s:6:\"height\";i:5;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:432;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:28:\"hummer_wordmark-1-100x21.png\";s:5:\"width\";i:100;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:745;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:28:\"hummer_wordmark-1-100x21.png\";s:5:\"width\";i:100;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:745;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 90, '_wp_attached_file', '2022/08/group-5.png'),
(345, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:285;s:6:\"height\";i:330;s:4:\"file\";s:19:\"2022/08/group-5.png\";s:8:\"filesize\";i:61046;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"group-5-259x300.png\";s:5:\"width\";i:259;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:64961;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"group-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24728;}s:4:\"lazy\";a:5:{s:4:\"file\";s:17:\"group-5-43x50.png\";s:5:\"width\";i:43;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3556;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:19:\"group-5-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68070;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13272;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"group-5-285x300.png\";s:5:\"width\";i:285;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68070;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13272;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 91, '_wp_attached_file', '2022/08/rectangle-5.png'),
(347, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:146;s:6:\"height\";i:117;s:4:\"file\";s:23:\"2022/08/rectangle-5.png\";s:8:\"filesize\";i:7046;s:5:\"sizes\";a:3:{s:4:\"lazy\";a:5:{s:4:\"file\";s:21:\"rectangle-5-50x40.png\";s:5:\"width\";i:50;s:6:\"height\";i:40;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2072;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7429;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:23:\"rectangle-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7429;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 92, '_wp_attached_file', '2022/08/group-1.png'),
(349, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:139;s:6:\"height\";i:104;s:4:\"file\";s:19:\"2022/08/group-1.png\";s:8:\"filesize\";i:8006;s:5:\"sizes\";a:3:{s:4:\"lazy\";a:5:{s:4:\"file\";s:17:\"group-1-50x37.png\";s:5:\"width\";i:50;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2562;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9500;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9500;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 93, '_wp_attached_file', '2022/08/group-2.png'),
(351, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:152;s:6:\"height\";i:114;s:4:\"file\";s:19:\"2022/08/group-2.png\";s:8:\"filesize\";i:9337;s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"group-2-150x114.png\";s:5:\"width\";i:150;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9058;}s:4:\"lazy\";a:5:{s:4:\"file\";s:17:\"group-2-50x38.png\";s:5:\"width\";i:50;s:6:\"height\";i:38;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1796;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9879;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:19:\"group-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9879;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 95, '_edit_last', '1'),
(353, 95, 'decorator_background', ''),
(354, 95, '_decorator_background', 'field_62f40c8d315f3'),
(355, 96, 'decorator_background', ''),
(356, 96, '_decorator_background', 'field_62f40c8d315f3'),
(357, 95, '_edit_lock', '1660384422:1'),
(358, 98, '_edit_last', '1'),
(359, 98, '_edit_lock', '1660391361:1'),
(360, 100, '_wp_attached_file', '2022/08/bezymyannyj-2-2.png'),
(361, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1919;s:6:\"height\";i:796;s:4:\"file\";s:27:\"2022/08/bezymyannyj-2-2.png\";s:8:\"filesize\";i:590992;s:5:\"sizes\";a:13:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-300x124.png\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24676;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"bezymyannyj-2-2-1024x425.png\";s:5:\"width\";i:1024;s:6:\"height\";i:425;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:213991;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16784;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-768x319.png\";s:5:\"width\";i:768;s:6:\"height\";i:319;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130424;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"bezymyannyj-2-2-1536x637.png\";s:5:\"width\";i:1536;s:6:\"height\";i:637;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:421301;}s:4:\"lazy\";a:5:{s:4:\"file\";s:25:\"bezymyannyj-2-2-50x21.png\";s:5:\"width\";i:50;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1429;}s:11:\"lazy-square\";a:5:{s:4:\"file\";s:28:\"bezymyannyj-2-2-1450x650.png\";s:5:\"width\";i:1450;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:410459;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:27:\"bezymyannyj-2-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55117;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-600x249.png\";s:5:\"width\";i:600;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84209;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8456;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55117;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-600x249.png\";s:5:\"width\";i:600;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84209;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:27:\"bezymyannyj-2-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8456;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 95, 'background', '100'),
(363, 95, '_background', 'field_62f66f9bc528e'),
(364, 101, 'decorator_background', ''),
(365, 101, '_decorator_background', 'field_62f40c8d315f3'),
(366, 101, 'background', '100'),
(367, 101, '_background', 'field_62f66f9bc528e'),
(368, 95, 'title_index', 'Производители'),
(369, 95, '_title_index', 'field_62f774d5cdeb7'),
(370, 95, 'text_index', 'Бренды, зарекомендовавшие себя отличным качеством и дизайном.'),
(371, 95, '_text_index', 'field_62f774e2cdeb8'),
(372, 105, 'decorator_background', ''),
(373, 105, '_decorator_background', 'field_62f40c8d315f3'),
(374, 105, 'background', '100'),
(375, 105, '_background', 'field_62f66f9bc528e'),
(376, 105, 'title_index', 'Производители'),
(377, 105, '_title_index', 'field_62f774d5cdeb7'),
(378, 105, 'text_index', 'Бренды, зарекомендовавшие себя отличным качеством и дизайном.'),
(379, 105, '_text_index', 'field_62f774e2cdeb8'),
(380, 106, 'decorator_background', '63'),
(381, 106, '_decorator_background', 'field_62f40c8d315f3'),
(382, 106, 'title_index', 'Бренды авто'),
(383, 106, '_title_index', 'field_62f41333aca7b'),
(384, 106, 'description_index', ''),
(385, 106, '_description_index', 'field_62f4135caca7c'),
(386, 56, 'text_index', 'Пикап - это выбор тех, кто бросает вызов \r\nлюбым ограничениям. Если вы не готовы \r\nмириться с условностями в том, что касается \r\nвнешнего вида вашего авто, то интернет-\r\nмагазин PickupStyle может предложить всё \r\nчто необходимо для тюнинга пикапа любой \r\nмарки.'),
(387, 56, '_text_index', 'field_62f4135caca7c'),
(388, 107, 'decorator_background', '63'),
(389, 107, '_decorator_background', 'field_62f40c8d315f3'),
(390, 107, 'title_index', 'Бренды авто'),
(391, 107, '_title_index', 'field_62f41333aca7b'),
(392, 107, 'description_index', ''),
(393, 107, '_description_index', 'field_62f4135caca7c'),
(394, 107, 'text_index', 'Пикап - это выбор тех, кто бросает вызов \r\nлюбым ограничениям. Если вы не готовы \r\nмириться с условностями в том, что касается \r\nвнешнего вида вашего авто, то интернет-\r\nмагазин PickupStyle может предложить всё \r\nчто необходимо для тюнинга пикапа любой \r\nмарки.'),
(395, 107, '_text_index', 'field_62f4135caca7c'),
(396, 109, '_edit_last', '1'),
(397, 109, '_edit_lock', '1660391898:1'),
(398, 110, '_edit_last', '1'),
(399, 110, '_edit_lock', '1660395975:1'),
(400, 111, '_edit_last', '1'),
(401, 111, '_edit_lock', '1660397136:1'),
(402, 112, '_edit_last', '1'),
(403, 112, '_edit_lock', '1660392347:1'),
(404, 114, '_wp_attached_file', '2022/08/sajt.cdr_8199_bitmap.psd-2.png'),
(405, 114, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:780;s:6:\"height\";i:513;s:4:\"file\";s:38:\"2022/08/sajt.cdr_8199_bitmap.psd-2.png\";s:8:\"filesize\";i:578446;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-300x197.png\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:120312;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49286;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-768x505.png\";s:5:\"width\";i:768;s:6:\"height\";i:505;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:579424;}s:4:\"lazy\";a:5:{s:4:\"file\";s:36:\"sajt.cdr_8199_bitmap.psd-2-50x33.png\";s:5:\"width\";i:50;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4273;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:166089;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-600x395.png\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:393515;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23550;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:166089;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-600x395.png\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:393515;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23550;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(406, 109, '_thumbnail_id', '114'),
(407, 109, 'after_title', ''),
(408, 109, '_after_title', 'field_62f79061b7530'),
(409, 115, '_wp_attached_file', '2022/08/sajt.cdr_8199_bitmap.psd-2-1.png'),
(410, 115, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:780;s:6:\"height\";i:513;s:4:\"file\";s:40:\"2022/08/sajt.cdr_8199_bitmap.psd-2-1.png\";s:8:\"filesize\";i:578446;s:5:\"sizes\";a:10:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-300x197.png\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:120312;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49286;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-768x505.png\";s:5:\"width\";i:768;s:6:\"height\";i:505;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:579424;}s:4:\"lazy\";a:5:{s:4:\"file\";s:38:\"sajt.cdr_8199_bitmap.psd-2-1-50x33.png\";s:5:\"width\";i:50;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4273;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:166089;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-600x395.png\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:393515;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23550;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:166089;}s:11:\"shop_single\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-600x395.png\";s:5:\"width\";i:600;s:6:\"height\";i:395;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:393515;}s:14:\"shop_thumbnail\";a:5:{s:4:\"file\";s:40:\"sajt.cdr_8199_bitmap.psd-2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23550;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(412, 111, 'after_title', '-50%'),
(413, 111, '_after_title', 'field_62f79061b7530'),
(414, 110, 'after_title', '-50%'),
(415, 110, '_after_title', 'field_62f79061b7530'),
(416, 111, '_thumbnail_id', '74'),
(417, 111, 'decorator_background', '100'),
(418, 111, '_decorator_background', 'field_62f40c8d315f3'),
(419, 116, '_edit_lock', '1660397224:1'),
(420, 122, '_edit_last', '1'),
(421, 122, 'decorator_background', ''),
(422, 122, '_decorator_background', 'field_62f40c8d315f3'),
(423, 123, 'decorator_background', ''),
(424, 123, '_decorator_background', 'field_62f40c8d315f3'),
(425, 122, '_edit_lock', '1660399571:1'),
(426, 116, '_edit_last', '1'),
(427, 124, '_wp_attached_file', '2022/08/group-3.svg'),
(428, 124, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:62;s:6:\"height\";i:89;s:4:\"file\";s:19:\"2022/08/group-3.svg\";s:5:\"sizes\";a:14:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:650;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:11:\"group-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(429, 122, 'map_coords_lat', '55.878309'),
(430, 122, '_map_coords_lat', 'field_61c08fe5da212'),
(431, 122, 'map_coords_lng', '37.693741'),
(432, 122, '_map_coords_lng', 'field_61c08ffada213'),
(433, 122, 'map_coords', ''),
(434, 122, '_map_coords', 'field_61c08f66da211'),
(435, 122, 'map_pin', '124'),
(436, 122, '_map_pin', 'field_61c09006da214'),
(437, 122, 'map', ''),
(438, 122, '_map', 'field_61c08f59da210'),
(439, 125, 'decorator_background', ''),
(440, 125, '_decorator_background', 'field_62f40c8d315f3'),
(441, 125, 'map_coords_lat', '55.878309'),
(442, 125, '_map_coords_lat', 'field_61c08fe5da212'),
(443, 125, 'map_coords_lng', '37.693741'),
(444, 125, '_map_coords_lng', 'field_61c08ffada213'),
(445, 125, 'map_coords', ''),
(446, 125, '_map_coords', 'field_61c08f66da211'),
(447, 125, 'map_pin', '124'),
(448, 125, '_map_pin', 'field_61c09006da214'),
(449, 125, 'map', ''),
(450, 125, '_map', 'field_61c08f59da210');

-- --------------------------------------------------------

--
-- Table structure for table `pk_posts`
--

CREATE TABLE `pk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_posts`
--

INSERT INTO `pk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-08-03 22:25:12', '2022-08-03 19:25:12', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2022-08-03 22:25:12', '2022-08-03 19:25:12', '', 0, 'http://localhost:8888/pkstyle/?p=1', 1, 'post', '', 1),
(2, 1, '2022-08-03 22:25:12', '2022-08-03 19:25:12', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost:8888/pkstyle/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-08-03 22:25:12', '2022-08-03 19:25:12', '', 0, 'http://localhost:8888/pkstyle/?page_id=2', 10, 'page', '', 0),
(3, 1, '2022-08-03 22:25:12', '2022-08-03 19:25:12', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost:8888/pkstyle.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда отправляются ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-08-03 22:25:12', '2022-08-03 19:25:12', '', 0, 'http://localhost:8888/pkstyle/?page_id=3', 9, 'page', '', 0),
(5, 1, '2022-08-04 21:16:04', '2022-08-04 18:16:04', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Номер телефона\"]</label><label class=\"form__item\">[textarea* question placeholder \"Вопрос\"]</label>[hidden place class:place]<div class=\"form__item form__item--centered\"><div class=\"form__item__submit\">[submit class:button class:button--black \"Отправить\"]</div></div><div class=\"form__item\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\" rel=\"noopener\">обработку персональных данных</a></div>[/acceptance]</div></div>\n1\nЗаявка с сайта\n[_site_title] <burlakeugene@gmail.com>\n[_site_admin_email]\nИмя: [user-name]\r\nТелефон: [phone]\r\nВопрос: [question]\r\nОткуда: [place]\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <burlakeugene@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nThe uploaded file is too large.\nПри загрузке файла произошла ошибка.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nНеверный ответ на проверочный вопрос.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Обратный звонок', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2022-08-13 17:20:43', '2022-08-13 14:20:43', '', 0, 'http://localhost:8888/pkstyle/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2022-08-04 21:20:16', '2022-08-04 18:20:16', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2022-08-04 21:20:16', '2022-08-04 18:20:16', '', 0, 'http://localhost:8888/pkstyle/wp-content/uploads/2022/08/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2022-08-04 21:20:16', '2022-08-04 18:20:16', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2022-08-04 22:49:52', '2022-08-04 19:49:52', '', 0, 'http://localhost:8888/pkstyle/shop/', 5, 'page', '', 0),
(8, 1, '2022-08-04 21:20:16', '2022-08-04 18:20:16', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2022-08-04 21:20:16', '2022-08-04 18:20:16', '', 0, 'http://localhost:8888/pkstyle/cart/', 6, 'page', '', 0),
(9, 1, '2022-08-04 21:20:16', '2022-08-04 18:20:16', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2022-08-04 21:20:16', '2022-08-04 18:20:16', '', 0, 'http://localhost:8888/pkstyle/checkout/', 7, 'page', '', 0),
(10, 1, '2022-08-04 21:20:16', '2022-08-04 18:20:16', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'Мой аккаунт', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2022-08-04 21:20:16', '2022-08-04 18:20:16', '', 0, 'http://localhost:8888/pkstyle/my-account/', 8, 'page', '', 0),
(11, 1, '2022-08-04 21:20:16', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Политика возврата', '', 'draft', 'closed', 'closed', '', 'refund_returns', '', '', '2022-08-04 21:20:16', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/pkstyle/?page_id=11', 4, 'page', '', 0),
(13, 1, '2022-08-04 22:49:52', '2022-08-04 19:49:52', '', 'Магазин', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-08-04 22:49:52', '2022-08-04 19:49:52', '', 7, 'http://localhost:8888/pkstyle/?p=13', 0, 'revision', '', 0),
(15, 1, '2022-08-04 23:03:40', '2022-08-04 20:02:21', '', 'Категории', '', 'publish', 'closed', 'closed', '', '15', '', '', '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 0, 'http://localhost:8888/pkstyle/?p=15', 2, 'nav_menu_item', '', 0),
(16, 1, '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 'Марки авто', '', 'publish', 'closed', 'closed', '', 'marki-avto', '', '', '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 0, 'http://localhost:8888/pkstyle/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 'Новости', '', 'publish', 'closed', 'closed', '', 'novosti', '', '', '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 0, 'http://localhost:8888/pkstyle/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 0, 'http://localhost:8888/pkstyle/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2022-08-04 23:03:40', '2022-08-04 20:03:40', '', 0, 'http://localhost:8888/pkstyle/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2022-08-04 23:15:55', '2022-08-04 20:15:55', '<div class=\"form\"><label class=\"form__item\">[text* user-name placeholder \"Имя\"]</label><label class=\"form__item\">[tel* phone placeholder \"Номер телефона\"]</label><div class=\"form__item\"><div class=\"form__item__submit\">[submit class:button class:button--black \"Подобрать оборудование\"]</div></div><div class=\"form__item form__item--centered\">[acceptance policy default:on]<div>Даю согласие на <a href=\"/privacy-policy/\" target=\"_blank\" rel=\"noopener\">обработку персональных данных</a></div>[/acceptance]</div></div>\n1\nЗаявка с сайта\n[_site_title] <burlakeugene@gmail.com>\n[_site_admin_email]\nТелефон: [phone]\r\nИмя: [user-name]\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <burlakeugene@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто сообщение отправлено с сайта [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nThe uploaded file is too large.\nПри загрузке файла произошла ошибка.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nНеверный ответ на проверочный вопрос.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Обратный звонок мини', '', 'publish', 'closed', 'closed', '', 'obratnyj-zvonok-mini', '', '', '2022-08-13 17:15:09', '2022-08-13 14:15:09', '', 0, 'http://localhost:8888/pkstyle/?post_type=wpcf7_contact_form&#038;p=20', 0, 'wpcf7_contact_form', '', 0),
(21, 1, '2022-08-05 17:35:23', '2022-08-05 14:35:23', '', '1708ea4fff5aaf951f7a2968c6a200c7 (1)', '', 'inherit', 'open', 'closed', '', '1708ea4fff5aaf951f7a2968c6a200c7-1', '', '', '2022-08-05 17:35:23', '2022-08-05 14:35:23', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/1708ea4fff5aaf951f7a2968c6a200c7-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2022-08-05 17:39:27', '2022-08-05 14:39:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"product_cat\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для категорий', 'polya-dlya-kategorij', 'publish', 'closed', 'closed', '', 'group_62ed2b0854ed4', '', '', '2022-08-05 17:44:28', '2022-08-05 14:44:28', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2022-08-05 17:39:27', '2022-08-05 14:39:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фон', 'background', 'publish', 'closed', 'closed', '', 'field_62ed2b20defd7', '', '', '2022-08-05 17:39:27', '2022-08-05 14:39:27', '', 22, 'http://localhost:8888/pk/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
(24, 1, '2022-08-05 17:39:27', '2022-08-05 14:39:27', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Отображать на главной', 'index', 'publish', 'closed', 'closed', '', 'field_62ed2b41defd8', '', '', '2022-08-05 17:44:28', '2022-08-05 14:44:28', '', 22, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2022-08-05 17:40:48', '2022-08-05 14:40:48', '', 'Rectangle (2)', '', 'inherit', 'open', 'closed', '', 'rectangle-2', '', '', '2022-08-05 17:40:48', '2022-08-05 14:40:48', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/rectangle-2.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2022-08-05 17:46:11', '2022-08-05 14:46:11', '', 'Багажник', '', 'publish', 'open', 'closed', '', 'bagazhnik', '', '', '2022-08-10 23:58:22', '2022-08-10 20:58:22', '', 0, 'http://localhost:8888/pk/?post_type=product&#038;p=26', 3, 'product', '', 0),
(27, 1, '2022-08-05 17:48:28', '2022-08-05 14:48:28', '', 'r-3', '', 'inherit', 'open', 'closed', '', 'r-3', '', '', '2022-08-05 17:48:28', '2022-08-05 14:48:28', '', 26, 'http://localhost:8888/pk/wp-content/uploads/2022/08/r-3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2022-08-05 18:45:35', '2022-08-05 15:45:35', '', 'Багажник 2', '', 'publish', 'open', 'closed', '', 'bagazhnik-2', '', '', '2022-08-07 21:18:40', '2022-08-07 18:18:40', '', 0, 'http://localhost:8888/pk/?post_type=product&#038;p=28', 2, 'product', '', 0),
(29, 1, '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 'Оплата', '', 'publish', 'closed', 'closed', '', 'oplata', '', '', '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 0, 'http://localhost:8888/pk/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 'Доставка', '', 'publish', 'closed', 'closed', '', 'dostavka', '', '', '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 0, 'http://localhost:8888/pk/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'oformlenie-zakaza', '', '', '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 0, 'http://localhost:8888/pk/?p=31', 3, 'nav_menu_item', '', 0),
(32, 1, '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 'Гарантийные обязательства', '', 'publish', 'closed', 'closed', '', 'garantijnye-obyazatelstva', '', '', '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 0, 'http://localhost:8888/pk/?p=32', 4, 'nav_menu_item', '', 0),
(33, 1, '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 'Возврат товара', '', 'publish', 'closed', 'closed', '', 'vozvrat-tovara', '', '', '2022-08-07 22:34:17', '2022-08-07 19:34:17', '', 0, 'http://localhost:8888/pk/?p=33', 5, 'nav_menu_item', '', 0),
(34, 1, '2022-08-07 22:35:04', '2022-08-07 19:35:04', '', 'Производители', '', 'publish', 'closed', 'closed', '', 'proizvoditeli', '', '', '2022-08-07 22:35:04', '2022-08-07 19:35:04', '', 0, 'http://localhost:8888/pk/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2022-08-07 22:35:04', '2022-08-07 19:35:04', '', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'otzyvy', '', '', '2022-08-07 22:35:04', '2022-08-07 19:35:04', '', 0, 'http://localhost:8888/pk/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2022-08-07 22:35:04', '2022-08-07 19:35:04', '', 'Услуги', '', 'publish', 'closed', 'closed', '', 'uslugi', '', '', '2022-08-07 22:35:04', '2022-08-07 19:35:04', '', 0, 'http://localhost:8888/pk/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2022-08-07 22:35:33', '2022-08-07 19:35:33', '', 'Оплата и возврат', '', 'publish', 'closed', 'closed', '', 'oplata-i-vozvrat', '', '', '2022-08-07 22:35:33', '2022-08-07 19:35:33', '', 0, 'http://localhost:8888/pk/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2022-08-07 22:35:33', '2022-08-07 19:35:33', '', 'Политика конфиденциальности', '', 'publish', 'closed', 'closed', '', 'politika-konfidenczialnosti', '', '', '2022-08-07 22:35:33', '2022-08-07 19:35:33', '', 0, 'http://localhost:8888/pk/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2022-08-08 18:54:14', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-08-08 18:54:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/pk/?post_type=banners&p=39', 0, 'banners', '', 0),
(40, 1, '2022-08-08 18:56:25', '2022-08-08 15:56:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для баннеров', 'polya-dlya-bannerov', 'publish', 'closed', 'closed', '', 'group_62f131de1919a', '', '', '2022-08-08 19:07:28', '2022-08-08 16:07:28', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2022-08-08 18:56:25', '2022-08-08 15:56:25', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_62f131e4f781e', '', '', '2022-08-08 19:07:28', '2022-08-08 16:07:28', '', 40, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=41', 1, 'acf-field', '', 0),
(42, 1, '2022-08-08 18:56:25', '2022-08-08 15:56:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_62f131fdf781f', '', '', '2022-08-08 19:07:28', '2022-08-08 16:07:28', '', 40, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=42', 2, 'acf-field', '', 0),
(43, 1, '2022-08-08 18:56:25', '2022-08-08 15:56:25', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Ссылка в новом окне', 'blank', 'publish', 'closed', 'closed', '', 'field_62f13212f7820', '', '', '2022-08-08 19:07:28', '2022-08-08 16:07:28', '', 40, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=43', 3, 'acf-field', '', 0),
(44, 1, '2022-08-08 18:59:50', '2022-08-08 15:59:50', '', 'Тюнинг под ключ', '', 'publish', 'closed', 'closed', '', 'tyuning-pod-klyuch', '', '', '2022-08-08 19:07:11', '2022-08-08 16:07:11', '', 0, 'http://localhost:8888/pk/?post_type=banners&#038;p=44', 2, 'banners', '', 0),
(45, 1, '2022-08-08 18:58:56', '2022-08-08 15:58:56', '', 'сайт.cdr_8199_bitmap.psd (1)', '', 'inherit', 'open', 'closed', '', 'sajt-cdr_8199_bitmap-psd-1', '', '', '2022-08-08 18:58:56', '2022-08-08 15:58:56', '', 44, 'http://localhost:8888/pk/wp-content/uploads/2022/08/sajt.cdr_8199_bitmap.psd-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2022-08-08 19:06:20', '2022-08-08 16:06:20', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фон', 'background', 'publish', 'closed', 'closed', '', 'field_62f13461b5f99', '', '', '2022-08-08 19:07:28', '2022-08-08 16:07:28', '', 40, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=46', 0, 'acf-field', '', 0),
(47, 1, '2022-08-08 19:16:17', '2022-08-08 16:16:17', '', 'Еще баннер', '', 'publish', 'closed', 'closed', '', 'eshhe-banner', '', '', '2022-08-08 19:16:17', '2022-08-08 16:16:17', '', 0, 'http://localhost:8888/pk/?post_type=banners&#038;p=47', 1, 'banners', '', 0),
(48, 1, '2022-08-09 21:39:11', '2022-08-09 18:39:11', '', 'Шина', '', 'publish', 'open', 'closed', '', 'shina', '', '', '2022-08-09 21:39:11', '2022-08-09 18:39:11', '', 0, 'http://localhost:8888/pk/?post_type=product&#038;p=48', 1, 'product', '', 0),
(49, 1, '2022-08-09 21:39:50', '2022-08-09 18:39:50', '', 'Group', '', 'inherit', 'open', 'closed', '', 'group', '', '', '2022-08-09 21:39:50', '2022-08-09 18:39:50', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2022-08-10 22:09:23', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2022-08-10 22:09:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/pk/?post_type=product&p=50', 0, 'product', '', 0),
(51, 1, '2022-08-10 22:12:08', '2022-08-10 19:12:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"pa_brand\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для брендов', 'polya-dlya-brendov', 'publish', 'closed', 'closed', '', 'group_62f402c17f0e0', '', '', '2022-08-12 18:15:20', '2022-08-12 15:15:20', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2022-08-10 22:12:08', '2022-08-10 19:12:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение', 'photo', 'publish', 'closed', 'closed', '', 'field_62f402c8e577a', '', '', '2022-08-10 22:12:08', '2022-08-10 19:12:08', '', 51, 'http://localhost:8888/pk/?post_type=acf-field&p=52', 0, 'acf-field', '', 0),
(54, 1, '2022-08-10 22:14:55', '2022-08-10 19:14:55', '', 'Hummer (1)', '', 'inherit', 'open', 'closed', '', 'hummer-1', '', '', '2022-08-10 22:14:55', '2022-08-10 19:14:55', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/hummer-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2022-08-10 22:16:40', '2022-08-10 19:16:40', '', 'Group 3', '', 'inherit', 'open', 'closed', '', 'group-3', '', '', '2022-08-10 22:16:40', '2022-08-10 19:16:40', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-3.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2022-08-10 22:33:28', '2022-08-10 19:33:28', 'dsds\r\n\r\ndsa\r\n\r\nd asd sa\r\n\r\n&nbsp;\r\n\r\n21\r\n\r\n2', 'Бренды', '', 'publish', 'closed', 'closed', '', 'brands', '', '', '2022-08-13 12:56:50', '2022-08-13 09:56:50', '', 0, 'http://localhost:8888/pk/?page_id=56', 2, 'page', '', 0),
(57, 1, '2022-08-10 22:33:28', '2022-08-10 19:33:28', '', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-10 22:33:28', '2022-08-10 19:33:28', '', 56, 'http://localhost:8888/pk/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-08-10 22:33:38', '2022-08-10 19:33:38', 'dsds', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-10 22:33:38', '2022-08-10 19:33:38', '', 56, 'http://localhost:8888/pk/?p=58', 0, 'revision', '', 0),
(59, 1, '2022-08-10 22:51:16', '2022-08-10 19:51:16', 'dsds\r\n\r\ndsa\r\n\r\nd asd sa\r\n\r\n&nbsp;\r\n\r\n21\r\n\r\n2', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-10 22:51:16', '2022-08-10 19:51:16', '', 56, 'http://localhost:8888/pk/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-08-10 22:53:36', '2022-08-10 19:53:36', 'a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"articles\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для блока под шапкой', 'polya-dlya-bloka-pod-shapkoj', 'publish', 'closed', 'closed', '', 'group_62f40c7a71c01', '', '', '2022-08-13 16:08:30', '2022-08-13 13:08:30', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2022-08-10 22:53:36', '2022-08-10 19:53:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Изображение', 'decorator_background', 'publish', 'closed', 'closed', '', 'field_62f40c8d315f3', '', '', '2022-08-10 22:54:25', '2022-08-10 19:54:25', '', 60, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2022-08-10 22:53:46', '2022-08-10 19:53:46', '', 'Rectangle (4)', '', 'inherit', 'open', 'closed', '', 'rectangle-4', '', '', '2022-08-10 22:53:46', '2022-08-10 19:53:46', '', 56, 'http://localhost:8888/pk/wp-content/uploads/2022/08/rectangle-4.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2022-08-10 22:54:31', '2022-08-10 19:54:31', '', 'Rectangle (4)', '', 'inherit', 'open', 'closed', '', 'rectangle-4-2', '', '', '2022-08-10 22:54:31', '2022-08-10 19:54:31', '', 56, 'http://localhost:8888/pk/wp-content/uploads/2022/08/rectangle-4-1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2022-08-10 22:54:39', '2022-08-10 19:54:39', 'dsds\r\n\r\ndsa\r\n\r\nd asd sa\r\n\r\n&nbsp;\r\n\r\n21\r\n\r\n2', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-10 22:54:39', '2022-08-10 19:54:39', '', 56, 'http://localhost:8888/pk/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-08-10 23:22:33', '2022-08-10 20:22:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"56\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для страницы брендов', 'polya-dlya-straniczy-brendov', 'publish', 'closed', 'closed', '', 'group_62f4132b90f30', '', '', '2022-08-13 12:56:41', '2022-08-13 09:56:41', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2022-08-10 23:22:33', '2022-08-10 20:22:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок на главной', 'title_index', 'publish', 'closed', 'closed', '', 'field_62f41333aca7b', '', '', '2022-08-10 23:22:33', '2022-08-10 20:22:33', '', 65, 'http://localhost:8888/pk/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2022-08-10 23:22:33', '2022-08-10 20:22:33', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Текст на главной', 'text_index', 'publish', 'closed', 'closed', '', 'field_62f4135caca7c', '', '', '2022-08-13 12:56:41', '2022-08-13 09:56:41', '', 65, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=67', 1, 'acf-field', '', 0),
(69, 1, '2022-08-10 23:23:41', '2022-08-10 20:23:41', 'dsds\r\n\r\ndsa\r\n\r\nd asd sa\r\n\r\n&nbsp;\r\n\r\n21\r\n\r\n2', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-10 23:23:41', '2022-08-10 20:23:41', '', 56, 'http://localhost:8888/pk/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-08-11 19:24:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-08-11 19:24:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/pk/?p=70', 0, 'post', '', 0),
(71, 1, '2022-08-11 19:24:15', '2022-08-11 16:24:15', '', 'Промо', '', 'publish', 'closed', 'closed', '', 'promo', '', '', '2022-08-11 22:58:26', '2022-08-11 19:58:26', '', 0, 'http://localhost:8888/pk/?post_type=static-block&#038;p=71', 1, 'static-block', '', 0),
(72, 1, '2022-08-11 19:27:59', '2022-08-11 16:27:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"71\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для промо', 'polya-dlya-promo', 'publish', 'closed', 'closed', '', 'group_62f52dfc8fcb5', '', '', '2022-08-11 22:56:08', '2022-08-11 19:56:08', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=72', 0, 'acf-field-group', '', 0),
(73, 1, '2022-08-11 19:27:59', '2022-08-11 16:27:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Фон', 'background', 'publish', 'closed', 'closed', '', 'field_62f52e068705d', '', '', '2022-08-11 19:27:59', '2022-08-11 16:27:59', '', 72, 'http://localhost:8888/pk/?post_type=acf-field&p=73', 0, 'acf-field', '', 0),
(74, 1, '2022-08-11 19:28:05', '2022-08-11 16:28:05', '', 'Безымянный-2 1', '', 'inherit', 'open', 'closed', '', 'bezymyannyj-2-1', '', '', '2022-08-11 19:28:05', '2022-08-11 16:28:05', '', 71, 'http://localhost:8888/pk/wp-content/uploads/2022/08/bezymyannyj-2-1.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2022-08-11 22:55:46', '2022-08-11 19:55:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Картинка', 'image', 'publish', 'closed', 'closed', '', 'field_62f55e7e35503', '', '', '2022-08-11 22:55:46', '2022-08-11 19:55:46', '', 72, 'http://localhost:8888/pk/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2022-08-11 22:55:46', '2022-08-11 19:55:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_62f55e8b35504', '', '', '2022-08-11 22:55:46', '2022-08-11 19:55:46', '', 72, 'http://localhost:8888/pk/?post_type=acf-field&p=76', 2, 'acf-field', '', 0),
(77, 1, '2022-08-11 22:55:46', '2022-08-11 19:55:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Список', 'list', 'publish', 'closed', 'closed', '', 'field_62f55e9235505', '', '', '2022-08-11 22:55:46', '2022-08-11 19:55:46', '', 72, 'http://localhost:8888/pk/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2022-08-11 22:55:46', '2022-08-11 19:55:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_62f55ea135506', '', '', '2022-08-11 22:55:46', '2022-08-11 19:55:46', '', 77, 'http://localhost:8888/pk/?post_type=acf-field&p=78', 0, 'acf-field', '', 0),
(79, 1, '2022-08-11 22:55:46', '2022-08-11 19:55:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_62f55eae35507', '', '', '2022-08-11 22:55:46', '2022-08-11 19:55:46', '', 77, 'http://localhost:8888/pk/?post_type=acf-field&p=79', 1, 'acf-field', '', 0),
(80, 1, '2022-08-11 22:55:46', '2022-08-11 19:55:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Иконка', 'icon', 'publish', 'closed', 'closed', '', 'field_62f55eb535508', '', '', '2022-08-11 22:55:46', '2022-08-11 19:55:46', '', 77, 'http://localhost:8888/pk/?post_type=acf-field&p=80', 2, 'acf-field', '', 0),
(81, 1, '2022-08-11 22:56:16', '2022-08-11 19:56:16', '', 'Group', '', 'inherit', 'open', 'closed', '', 'group-2', '', '', '2022-08-11 22:56:16', '2022-08-11 19:56:16', '', 71, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group.svg', 0, 'attachment', 'image/svg+xml', 0),
(82, 1, '2022-08-11 22:57:13', '2022-08-11 19:57:13', '', 'Group (1)', '', 'inherit', 'open', 'closed', '', 'group-1', '', '', '2022-08-11 22:57:13', '2022-08-11 19:57:13', '', 71, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(83, 1, '2022-08-11 22:57:52', '2022-08-11 19:57:52', '', 'Group (2)', '', 'inherit', 'open', 'closed', '', 'group-2-2', '', '', '2022-08-11 22:57:52', '2022-08-11 19:57:52', '', 71, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(84, 1, '2022-08-11 22:58:21', '2022-08-11 19:58:21', '', 'Vector (2)', '', 'inherit', 'open', 'closed', '', 'vector-2', '', '', '2022-08-11 22:58:21', '2022-08-11 19:58:21', '', 71, 'http://localhost:8888/pk/wp-content/uploads/2022/08/vector-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(85, 1, '2022-08-11 23:47:29', '2022-08-11 20:47:29', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"pa_brand\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"pa_manufacturer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для аттрибутов', 'polya-dlya-attributov', 'publish', 'closed', 'closed', '', 'group_62f56a63a9258', '', '', '2022-08-12 18:15:44', '2022-08-12 15:15:44', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=85', 0, 'acf-field-group', '', 0),
(86, 1, '2022-08-11 23:47:29', '2022-08-11 20:47:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Лого', 'logo', 'publish', 'closed', 'closed', '', 'field_62f56ad7ca4eb', '', '', '2022-08-11 23:47:29', '2022-08-11 20:47:29', '', 85, 'http://localhost:8888/pk/?post_type=acf-field&p=86', 0, 'acf-field', '', 0),
(87, 1, '2022-08-11 23:48:17', '2022-08-11 20:48:17', '', '1639232799_2-hdpic-club-p-logotip-folksvagen-3 1', '', 'inherit', 'open', 'closed', '', '1639232799_2-hdpic-club-p-logotip-folksvagen-3-1', '', '', '2022-08-11 23:48:17', '2022-08-11 20:48:17', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/1639232799_2-hdpic-club-p-logotip-folksvagen-3-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2022-08-11 23:49:05', '2022-08-11 20:49:05', '', 'Group 4', '', 'inherit', 'open', 'closed', '', 'group-4', '', '', '2022-08-11 23:49:05', '2022-08-11 20:49:05', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-4.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2022-08-11 23:49:35', '2022-08-11 20:49:35', '', 'Hummer_wordmark 1', '', 'inherit', 'open', 'closed', '', 'hummer_wordmark-1', '', '', '2022-08-11 23:49:35', '2022-08-11 20:49:35', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/hummer_wordmark-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `pk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2022-08-11 23:49:56', '2022-08-11 20:49:56', '', 'Group 5', '', 'inherit', 'open', 'closed', '', 'group-5', '', '', '2022-08-11 23:49:56', '2022-08-11 20:49:56', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-5.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2022-08-12 18:10:32', '2022-08-12 15:10:32', '', 'Rectangle (5)', '', 'inherit', 'open', 'closed', '', 'rectangle-5', '', '', '2022-08-12 18:10:32', '2022-08-12 15:10:32', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/rectangle-5.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2022-08-12 18:10:58', '2022-08-12 15:10:58', '', 'Group (1)', '', 'inherit', 'open', 'closed', '', 'group-1-2', '', '', '2022-08-12 18:10:58', '2022-08-12 15:10:58', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-1.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2022-08-12 18:11:18', '2022-08-12 15:11:18', '', 'Group (2)', '', 'inherit', 'open', 'closed', '', 'group-2-3', '', '', '2022-08-12 18:11:18', '2022-08-12 15:11:18', '', 0, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-2.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2022-08-12 18:15:44', '2022-08-12 15:15:44', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Показывать на главной', 'index', 'publish', 'closed', 'closed', '', 'field_62f66e8ef2566', '', '', '2022-08-12 18:15:44', '2022-08-12 15:15:44', '', 85, 'http://localhost:8888/pk/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2022-08-12 18:18:39', '2022-08-12 15:18:39', '', 'Производители', '', 'publish', 'closed', 'closed', '', 'manufacturers', '', '', '2022-08-13 12:55:45', '2022-08-13 09:55:45', '', 0, 'http://localhost:8888/pk/?page_id=95', 3, 'page', '', 0),
(96, 1, '2022-08-12 18:18:39', '2022-08-12 15:18:39', '', 'Производители', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2022-08-12 18:18:39', '2022-08-12 15:18:39', '', 95, 'http://localhost:8888/pk/?p=96', 0, 'revision', '', 0),
(97, 1, '2022-08-12 18:19:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-08-12 18:19:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2022-08-12 18:20:06', '2022-08-12 15:20:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"95\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для страницы производителей', 'polya-dlya-straniczy-proizvoditelej', 'publish', 'closed', 'closed', '', 'group_62f66f8f5a4ac', '', '', '2022-08-13 12:57:09', '2022-08-13 09:57:09', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(99, 1, '2022-08-12 18:20:06', '2022-08-12 15:20:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Фон', 'background', 'publish', 'closed', 'closed', '', 'field_62f66f9bc528e', '', '', '2022-08-12 18:20:06', '2022-08-12 15:20:06', '', 98, 'http://localhost:8888/pk/?post_type=acf-field&p=99', 0, 'acf-field', '', 0),
(100, 1, '2022-08-12 18:20:21', '2022-08-12 15:20:21', '', 'Безымянный-2 2', '', 'inherit', 'open', 'closed', '', 'bezymyannyj-2-2', '', '', '2022-08-12 18:20:21', '2022-08-12 15:20:21', '', 95, 'http://localhost:8888/pk/wp-content/uploads/2022/08/bezymyannyj-2-2.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2022-08-12 18:20:28', '2022-08-12 15:20:28', '', 'Производители', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2022-08-12 18:20:28', '2022-08-12 15:20:28', '', 95, 'http://localhost:8888/pk/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-08-13 12:55:03', '2022-08-13 09:55:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок на главной', 'title_index', 'publish', 'closed', 'closed', '', 'field_62f774d5cdeb7', '', '', '2022-08-13 12:55:03', '2022-08-13 09:55:03', '', 98, 'http://localhost:8888/pk/?post_type=acf-field&p=102', 1, 'acf-field', '', 0),
(103, 1, '2022-08-13 12:55:03', '2022-08-13 09:55:03', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Текст на главной', 'text_index', 'publish', 'closed', 'closed', '', 'field_62f774e2cdeb8', '', '', '2022-08-13 12:57:09', '2022-08-13 09:57:09', '', 98, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=103', 2, 'acf-field', '', 0),
(105, 1, '2022-08-13 12:55:45', '2022-08-13 09:55:45', '', 'Производители', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2022-08-13 12:55:45', '2022-08-13 09:55:45', '', 95, 'http://localhost:8888/pk/?p=105', 0, 'revision', '', 0),
(106, 1, '2022-08-13 12:56:21', '2022-08-13 09:56:21', 'dsds\r\n\r\ndsa\r\n\r\nd asd sa\r\n\r\n&nbsp;\r\n\r\n21\r\n\r\n2', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-13 12:56:21', '2022-08-13 09:56:21', '', 56, 'http://localhost:8888/pk/?p=106', 0, 'revision', '', 0),
(107, 1, '2022-08-13 12:56:50', '2022-08-13 09:56:50', 'dsds\r\n\r\ndsa\r\n\r\nd asd sa\r\n\r\n&nbsp;\r\n\r\n21\r\n\r\n2', 'Бренды', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-08-13 12:56:50', '2022-08-13 09:56:50', '', 56, 'http://localhost:8888/pk/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-08-13 14:02:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-08-13 14:02:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/pk/?post_type=articles&p=108', 0, 'articles', '', 0),
(109, 1, '2022-08-13 14:38:31', '2022-08-13 11:38:31', '', 'Первая статья', '', 'publish', 'closed', 'closed', '', 'pervaya-statya', '', '', '2022-08-13 15:00:30', '2022-08-13 12:00:30', '', 0, 'http://localhost:8888/pk/?post_type=articles&#038;p=109', 0, 'articles', '', 0),
(110, 1, '2022-08-13 14:38:40', '2022-08-13 11:38:40', '', 'Вторая статья', 'Действует до 20.09.22', 'publish', 'closed', 'closed', '', 'vtoraya-statya', '', '', '2022-08-13 15:08:40', '2022-08-13 12:08:40', '', 0, 'http://localhost:8888/pk/?post_type=articles&#038;p=110', 0, 'articles', '', 0),
(111, 1, '2022-08-13 14:38:47', '2022-08-13 11:38:47', '', 'Третья статья', 'Действует до 20.09.22', 'publish', 'closed', 'closed', '', 'tretya-statya', '', '', '2022-08-13 16:08:53', '2022-08-13 13:08:53', '', 0, 'http://localhost:8888/pk/?post_type=articles&#038;p=111', 0, 'articles', '', 0),
(112, 1, '2022-08-13 14:52:17', '2022-08-13 11:52:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"articles\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для статей', 'polya-dlya-statej', 'publish', 'closed', 'closed', '', 'group_62f790542a6fd', '', '', '2022-08-13 14:52:17', '2022-08-13 11:52:17', '', 0, 'http://localhost:8888/pk/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2022-08-13 14:52:17', '2022-08-13 11:52:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст после заголовка', 'after_title', 'publish', 'closed', 'closed', '', 'field_62f79061b7530', '', '', '2022-08-13 14:52:17', '2022-08-13 11:52:17', '', 112, 'http://localhost:8888/pk/?post_type=acf-field&p=113', 0, 'acf-field', '', 0),
(114, 1, '2022-08-13 15:00:24', '2022-08-13 12:00:24', '', 'сайт.cdr_8199_bitmap.psd (2)', '', 'inherit', 'open', 'closed', '', 'sajt-cdr_8199_bitmap-psd-2', '', '', '2022-08-13 15:00:24', '2022-08-13 12:00:24', '', 109, 'http://localhost:8888/pk/wp-content/uploads/2022/08/sajt.cdr_8199_bitmap.psd-2.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2022-08-13 15:00:48', '2022-08-13 12:00:48', '', 'сайт.cdr_8199_bitmap.psd (2)', '', 'inherit', 'open', 'closed', '', 'sajt-cdr_8199_bitmap-psd-2-2', '', '', '2022-08-13 15:00:48', '2022-08-13 12:00:48', '', 111, 'http://localhost:8888/pk/wp-content/uploads/2022/08/sajt.cdr_8199_bitmap.psd-2-1.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2022-08-13 16:28:16', '2022-08-13 13:28:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"122\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Поля для контактов', 'polya-dlya-kontaktov', 'publish', 'open', 'open', '', 'group_61c08f2f07940', '', '', '2022-08-13 16:29:23', '2022-08-13 13:29:23', '', 0, 'http://localhost:8888/pk/?p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2022-08-13 16:28:16', '2022-08-13 13:28:16', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Карта', 'map', 'publish', 'closed', 'closed', '', 'field_61c08f59da210', '', '', '2022-08-13 16:28:29', '2022-08-13 13:28:29', '', 116, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=117', 0, 'acf-field', '', 0),
(118, 1, '2022-08-13 16:28:16', '2022-08-13 13:28:16', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Координаты', 'coords', 'publish', 'closed', 'closed', '', 'field_61c08f66da211', '', '', '2022-08-13 16:28:29', '2022-08-13 13:28:29', '', 117, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=118', 0, 'acf-field', '', 0),
(119, 1, '2022-08-13 16:28:16', '2022-08-13 13:28:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Широта', 'lat', 'publish', 'closed', 'closed', '', 'field_61c08fe5da212', '', '', '2022-08-13 16:28:29', '2022-08-13 13:28:29', '', 118, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=119', 0, 'acf-field', '', 0),
(120, 1, '2022-08-13 16:28:16', '2022-08-13 13:28:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Долгота', 'lng', 'publish', 'closed', 'closed', '', 'field_61c08ffada213', '', '', '2022-08-13 16:28:29', '2022-08-13 13:28:29', '', 118, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=120', 1, 'acf-field', '', 0),
(121, 1, '2022-08-13 16:28:16', '2022-08-13 13:28:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Пин', 'pin', 'publish', 'closed', 'closed', '', 'field_61c09006da214', '', '', '2022-08-13 16:28:29', '2022-08-13 13:28:29', '', 117, 'http://localhost:8888/pk/?post_type=acf-field&#038;p=121', 1, 'acf-field', '', 0),
(122, 1, '2022-08-13 16:28:57', '2022-08-13 13:28:57', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2022-08-13 16:30:05', '2022-08-13 13:30:05', '', 0, 'http://localhost:8888/pk/?page_id=122', 1, 'page', '', 0),
(123, 1, '2022-08-13 16:28:57', '2022-08-13 13:28:57', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2022-08-13 16:28:57', '2022-08-13 13:28:57', '', 122, 'http://localhost:8888/pk/?p=123', 0, 'revision', '', 0),
(124, 1, '2022-08-13 16:30:01', '2022-08-13 13:30:01', '', 'Group (3)', '', 'inherit', 'open', 'closed', '', 'group-3-2', '', '', '2022-08-13 16:30:01', '2022-08-13 13:30:01', '', 122, 'http://localhost:8888/pk/wp-content/uploads/2022/08/group-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(125, 1, '2022-08-13 16:30:05', '2022-08-13 13:30:05', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2022-08-13 16:30:05', '2022-08-13 13:30:05', '', 122, 'http://localhost:8888/pk/?p=125', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pk_termmeta`
--

CREATE TABLE `pk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_termmeta`
--

INSERT INTO `pk_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'display_type', ''),
(2, 15, 'thumbnail_id', '21'),
(3, 15, 'background', '25'),
(4, 15, '_background', 'field_62ed2b20defd7'),
(5, 15, 'index_visible', '1'),
(6, 15, '_index_visible', 'field_62ed2b41defd8'),
(7, 15, 'index', '1'),
(8, 15, '_index', 'field_62ed2b41defd8'),
(9, 15, 'product_count_product_cat', '2'),
(10, 20, 'order', '0'),
(11, 20, 'background', '45'),
(12, 20, '_background', 'field_62ed2b20defd7'),
(13, 20, 'index', '1'),
(14, 20, '_index', 'field_62ed2b41defd8'),
(15, 20, 'display_type', ''),
(16, 20, 'thumbnail_id', '49'),
(17, 20, 'product_count_product_cat', '1'),
(18, 21, 'order_pa_brand', '0'),
(19, 21, 'photo', '90'),
(20, 21, '_photo', 'field_62f402c8e577a'),
(21, 21, 'index', '1'),
(22, 21, '_index', 'field_62f66e8ef2566'),
(23, 22, 'order_pa_brand', '0'),
(24, 22, 'photo', '88'),
(25, 22, '_photo', 'field_62f402c8e577a'),
(26, 22, 'index', '1'),
(27, 22, '_index', 'field_62f66e8ef2566'),
(28, 22, 'logo', '87'),
(29, 22, '_logo', 'field_62f56ad7ca4eb'),
(30, 21, 'logo', '89'),
(31, 21, '_logo', 'field_62f56ad7ca4eb'),
(32, 23, 'order_pa_manufacturer', '0'),
(33, 23, 'logo', '91'),
(34, 23, '_logo', 'field_62f56ad7ca4eb'),
(35, 24, 'order_pa_manufacturer', '0'),
(36, 24, 'logo', '92'),
(37, 24, '_logo', 'field_62f56ad7ca4eb'),
(38, 25, 'order_pa_manufacturer', '0'),
(39, 25, 'logo', '93'),
(40, 25, '_logo', 'field_62f56ad7ca4eb'),
(41, 24, 'index', '1'),
(42, 24, '_index', 'field_62f66e8ef2566'),
(43, 23, 'index', '1'),
(44, 23, '_index', 'field_62f66e8ef2566'),
(45, 25, 'index', '1'),
(46, 25, '_index', 'field_62f66e8ef2566');

-- --------------------------------------------------------

--
-- Table structure for table `pk_terms`
--

CREATE TABLE `pk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_terms`
--

INSERT INTO `pk_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0, 1),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0),
(6, 'exclude-from-search', 'exclude-from-search', 0, 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0, 0),
(8, 'featured', 'featured', 0, 0),
(9, 'outofstock', 'outofstock', 0, 0),
(10, 'rated-1', 'rated-1', 0, 0),
(11, 'rated-2', 'rated-2', 0, 0),
(12, 'rated-3', 'rated-3', 0, 0),
(13, 'rated-4', 'rated-4', 0, 0),
(14, 'rated-5', 'rated-5', 0, 0),
(15, 'Багажник', 'trunk', 0, 1),
(16, 'Header', 'header', 0, 0),
(17, 'Footer', 'footer', 0, 0),
(18, 'Footer second', 'footer-second', 0, 0),
(19, 'Footer third', 'footer-third', 0, 0),
(20, 'Шины', 'tires', 0, 2),
(21, 'HUMMER', 'hummer', 0, 2),
(22, 'Wolfenstein', 'wolfenstein', 0, 1),
(23, 'Rigid', 'rigid', 0, 2),
(24, 'Warn', 'warn', 0, 3),
(25, 'BMS', 'bms', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pk_term_relationships`
--

CREATE TABLE `pk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_term_relationships`
--

INSERT INTO `pk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 16, 0),
(16, 16, 0),
(17, 16, 0),
(18, 16, 0),
(19, 16, 0),
(26, 2, 0),
(26, 15, 0),
(26, 22, 0),
(28, 2, 0),
(28, 15, 0),
(29, 17, 0),
(30, 17, 0),
(31, 17, 0),
(32, 17, 0),
(33, 17, 0),
(34, 18, 0),
(35, 18, 0),
(36, 18, 0),
(37, 19, 0),
(38, 19, 0),
(48, 2, 0),
(48, 20, 0),
(116, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pk_term_taxonomy`
--

CREATE TABLE `pk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_term_taxonomy`
--

INSERT INTO `pk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 3),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', 'Крепления для перевозки грузов на\r\nкрыше автомобиля', 0, 2),
(16, 16, 'nav_menu', '', 0, 5),
(17, 17, 'nav_menu', '', 0, 5),
(18, 18, 'nav_menu', '', 0, 3),
(19, 19, 'nav_menu', '', 0, 2),
(20, 20, 'product_cat', 'Специально для кроссоверов, \r\nвнедорожников и пикапов', 0, 1),
(21, 21, 'pa_brand', '', 0, 0),
(22, 22, 'pa_brand', '', 0, 1),
(23, 23, 'pa_manufacturer', '', 0, 0),
(24, 24, 'pa_manufacturer', '', 0, 0),
(25, 25, 'pa_manufacturer', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pk_usermeta`
--

CREATE TABLE `pk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_usermeta`
--

INSERT INTO `pk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'pk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'pk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"7212e62a31bb2d8d22b4ea0950f98f57f8ed18e66106f2fd4495184961ec37f6\";a:4:{s:10:\"expiration\";i:1660419251;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1660246451;}s:64:\"e9a7b7a1f8fa91f0995cd0f9146f90ea7a68f69eadcd367cf4ed0885193f73b6\";a:4:{s:10:\"expiration\";i:1660419256;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1660246456;}}'),
(17, 1, 'pk_dashboard_quick_press_last_post_id', '70'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:le99esU72pMKImIIUUTIcI5G'),
(19, 1, 'wc_last_active', '1660348800'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:21:\"add-post-type-product\";i:1;s:26:\"add-post-type-static-block\";i:2;s:21:\"add-post-type-banners\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-product_cat\";i:5;s:15:\"add-product_tag\";}'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:11:{s:3:\"key\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:10:\"product_id\";i:26;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:999;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:999;s:8:\"line_tax\";i:0;}s:32:\"33e75ff09dd601bbe69f351039152189\";a:11:{s:3:\"key\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:10:\"product_id\";i:28;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:60;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:60;s:8:\"line_tax\";i:0;}}}'),
(24, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:11:{s:3:\"key\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:10:\"product_id\";i:26;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:999;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:999;s:8:\"line_tax\";i:0;}s:32:\"33e75ff09dd601bbe69f351039152189\";a:11:{s:3:\"key\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:10:\"product_id\";i:28;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:60;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:60;s:8:\"line_tax\";i:0;}}}'),
(25, 1, 'dismissed_no_secure_connection_notice', '1'),
(26, 1, 'pk_user-settings', 'libraryContent=browse'),
(27, 1, 'pk_user-settings-time', '1659710128'),
(29, 1, 'nav_menu_recently_edited', '19'),
(31, 1, 'closedpostboxes_product', 'a:0:{}'),
(32, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `pk_users`
--

CREATE TABLE `pk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_users`
--

INSERT INTO `pk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BPiG6CDmf9ZOYNnOZhDMxPnH9B8aOO.', 'admin', 'burlakeugene@gmail.com', 'http://localhost:8888/pkstyle', '2022-08-03 19:25:12', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_admin_notes`
--

CREATE TABLE `pk_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_admin_notes`
--

INSERT INTO `pk_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-admin-complete-store-details', 'info', 'en_US', 'Введите данные своего магазина, чтобы завершить настройку.', 'Введите сведения о своём магазине, указав важную для настройки информацию, например базовый адрес магазина.', '{}', 'actioned', 'woocommerce-admin', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 1, 1, 'info'),
(2, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '{}', 'unactioned', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 1, 0, 'info'),
(3, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'wc_shipping_mobile_app_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2022-08-05 19:04:57', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2022-08-07 18:05:02', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'ecomm-wc-navigation-survey', 'info', 'en_US', 'We’d like your feedback on the WooCommerce navigation', 'We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'setup_task_initiative_survey_q2_2022', 'survey', 'en_US', 'We want to know what matters most to you', 'Take 2 minutes to give us your input on what is important for you while setting up your store and help shape the future of WooCommerce together.', '{}', 'unactioned', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 1, 0, 'info'),
(32, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'unactioned', 'woocommerce.com', '2022-08-11 19:24:39', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '{}', 'pending', 'woocommerce.com', '2022-08-04 18:20:18', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'wc-refund-returns-page', 'info', 'en_US', 'Настройте страницу политики возврата, чтобы повысить доверие к вашему магазину.', 'Мы создали для вас образец страницы возврата. Пожалуйста, посмотрите и обновите его содержимое, чтобы оно соответствовало процессам вашей компании.', '{}', 'unactioned', 'woocommerce-core', '2022-08-04 18:20:19', NULL, 0, 'plain', '', 1, 0, 'info'),
(35, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Подключиться к WooCommerce.com', 'Подключайтесь, чтобы получать важные уведомления о товаре и обновления.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-04 18:20:20', NULL, 0, 'plain', '', 1, 0, 'info'),
(36, 'surface_cart_checkout', 'info', 'en_US', 'Представляем блоки корзины и оформления заказа!', 'Увеличьте доход вашего магазина с помощью оптимизированных для конверсии блоков корзины и оформления заказа WooCommerce, доступных в расширении WooCommerce Blocks.', '{}', 'unactioned', 'woo-gutenberg-products-block', '2022-08-04 18:20:20', NULL, 0, 'plain', '', 1, 0, 'info'),
(37, 'wc-admin-launch-checklist', 'info', 'en_US', 'Готовы запустить собственный магазин?', 'Чтобы у вас не возникало чувство, что вы что-то забыли, мы составили контрольный список для проверки настроек перед запуском.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-05 19:04:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Выбираете тему?', 'Узнайте, какие темы совместимы с WooCommerce и выберите ту, что лучше подойдёт под стиль и требования вашего бизнеса.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-05 19:04:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Совет', 'Более 80% новых продавцов добавляют первый товар и настраивают хотя бы один способ оплаты в течение первой недели.<br /><br />Считаете ли вы, что такая информация полезна?', '{}', 'unactioned', 'woocommerce-admin', '2022-08-05 19:04:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'wc-admin-mobile-app', 'info', 'en_US', 'Установите мобильное приложение Woo', 'Установите мобильное приложение WooCommerce для управления заказами, получения уведомлений о продажах и просмотра ключевых показателей — где бы вы ни находились.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-07 18:05:01', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'Как настроить каталог товаров', 'Вы хотите, чтобы ваш каталог товаров с изображениями выглядели великолепно и соответствовали вашему бренду. Это руководство даст вам все необходимые советы, чтобы ваши товары отлично смотрелись в вашем магазине.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-07 18:05:01', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'wc-admin-marketing-jetpack-backup', 'marketing', 'en_US', 'Защитите свой магазин WooCommerce с помощью Jetpack Backup.', 'Сбои в работе магазина приводят к потере прибыли. Восстановление одним щелчком позволяет быстро вернуться к работе, если что-то выходит из строя.', '{}', 'unactioned', 'woocommerce-admin-notes', '2022-08-07 18:20:47', NULL, 0, 'thumbnail', 'http://localhost:8888/pk/wp-content/plugins/woocommerce/assets/images/admin_notes/marketing-jetpack-2x.png', 0, 0, 'info'),
(43, 'mercado_pago_q3_2022', 'marketing', 'en_US', 'Get paid with Mercado Pago Checkout', 'Give your customers a checkout they can trust with Latin America\'s leading payment processor. Securely accept debit and credit cards, cash, bank transfers, and installment payments – backed by exclusive fraud prevention tools.', '{}', 'pending', 'woocommerce.com', '2022-08-08 19:05:13', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'klarna_q3_2022', 'marketing', 'en_US', 'Meet Klarna – your ultimate growth partner', 'Increase conversions by offering secure, flexible payment solutions – including buy now, pay later – all through a one-click checkout experience. Plus, you’ll tap into a whole new market of the world’s most engaged shoppers.', '{}', 'pending', 'woocommerce.com', '2022-08-08 19:05:13', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Начните принимать платежи в своем магазине!', 'Принимайте платежи в удобной для вас системе — вам доступны более 100 платежных шлюзов для WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-09 18:28:26', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-08-09 18:28:26', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-08-09 18:28:26', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Помогите WooCommerce стать лучше, согласившись делиться данными об использовании.', 'Сбор данных об использовании позволяет нам улучшить WooCommerce. Информация о вашем магазине будет использоваться для оценки новых функций, определения качества обновлений и принятия решений о целесообразности дальнейших улучшений. Вы всегда можете зайти в <a href=\"http://localhost:8888/pk/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Настройки</a> и выбрать отмену отправки ваших данных. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Читать подробнее</a> о том, какие данные мы собираем.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-11 19:24:38', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Знаете ли вы?', 'В среднем магазину на базе WooCommerce требуется 31 день, чтобы получить первый заказ. Вы на правильном пути! Вам пригодилась эта информация?', '{}', 'unactioned', 'woocommerce-admin', '2022-08-11 19:24:38', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_admin_note_actions`
--

CREATE TABLE `pk_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_admin_note_actions`
--

INSERT INTO `pk_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'add-store-details', 'Указать информацию о магазине', 'http://localhost:8888/pkstyle/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'actioned', '', NULL, NULL),
(38, 34, 'notify-refund-returns-page', 'Редактировать страницу', 'http://localhost:8888/pkstyle/wp-admin/post.php?post=11&action=edit', 'actioned', '', NULL, NULL),
(75, 35, 'connect', 'Подключить', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(76, 36, 'learn_more', 'Learn More', 'https://woocommerce.com/checkout-blocks/', 'actioned', '', NULL, NULL),
(149, 37, 'learn-more', 'Узнать больше', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(150, 38, 'visit-the-theme-marketplace', 'Посетите каталог тем', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(151, 39, 'affirm-insight-first-product-and-payment', 'Да', '', 'actioned', 'Благодарим вас за ваш отзыв', NULL, NULL),
(152, 39, 'affirm-insight-first-product-and-payment', 'Нет', '', 'actioned', 'Благодарим вас за ваш отзыв', NULL, NULL),
(186, 31, 'setup_task_initiative_survey_q2_2022_share_your_input', 'Share your input', 'https://t.maze.co/87390007', 'actioned', '', NULL, NULL),
(189, 40, 'learn-more', 'Узнать больше', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL),
(190, 41, 'day-after-first-product', 'Узнать больше', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(226, 42, 'jetpack-backup-woocommerce', 'Получить резервные копии', 'https://jetpack.com/upgrade/backup-woocommerce/?utm_source=inbox&#038;utm_medium=automattic_referred&#038;utm_campaign=jp_backup_to_woo', 'actioned', '', NULL, NULL),
(299, 45, 'view-payment-gateways', 'Узнать больше', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/?utm_medium=product', 'actioned', '', NULL, NULL),
(341, 48, 'tracking-opt-in', 'Активировать отслеживание использования', '', 'actioned', '', NULL, NULL),
(342, 49, 'affirm-insight-first-sale', 'Да', '', 'actioned', 'Благодарим вас за ваш отзыв', NULL, NULL),
(343, 49, 'deny-insight-first-sale', 'Нет', '', 'actioned', 'Благодарим вас за ваш отзыв', NULL, NULL),
(385, 2, 'browse_extensions', 'Browse extensions', 'http://localhost:8888/pk/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(386, 3, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(387, 4, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(388, 5, 'wc_shipping_mobile_app_q4_2021', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021', 'actioned', '', NULL, NULL),
(389, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', '', NULL, NULL),
(390, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(391, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', '', NULL, NULL),
(392, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', '', NULL, NULL),
(393, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(394, 11, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(395, 12, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(396, 13, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(397, 14, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(398, 15, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(399, 16, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://localhost:8888/pk/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(400, 17, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(401, 20, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(402, 21, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(403, 22, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(404, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(405, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(406, 23, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(407, 24, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(408, 24, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(409, 25, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(410, 25, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(411, 26, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(412, 27, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/feedback-on-woocommerce-navigation', 'actioned', '', NULL, NULL),
(413, 28, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(414, 28, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(415, 29, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(416, 29, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(417, 30, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(418, 32, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(419, 33, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(420, 43, 'mercado_pago_q3_2022', 'Free download', 'https://woocommerce.com/products/mercado-pago-checkout/?utm_source=inbox_note&utm_medium=product&utm_campaign=mercado_pago_q3_2022', 'unactioned', '', NULL, NULL),
(421, 44, 'klarna_q3_2022', 'Grow with Klarna', 'https://woocommerce.com/products/klarna-payments?utm_source=inbox_note&utm_medium=product&utm_campaign=klarna_q3_2022', 'unactioned', '', NULL, NULL),
(422, 46, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(423, 46, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(424, 47, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(425, 47, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_category_lookup`
--

CREATE TABLE `pk_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_category_lookup`
--

INSERT INTO `pk_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_customer_lookup`
--

CREATE TABLE `pk_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_download_log`
--

CREATE TABLE `pk_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_order_coupon_lookup`
--

CREATE TABLE `pk_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_order_product_lookup`
--

CREATE TABLE `pk_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_order_stats`
--

CREATE TABLE `pk_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_order_tax_lookup`
--

CREATE TABLE `pk_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_product_attributes_lookup`
--

CREATE TABLE `pk_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_product_attributes_lookup`
--

INSERT INTO `pk_wc_product_attributes_lookup` (`product_id`, `product_or_parent_id`, `taxonomy`, `term_id`, `is_variation_attribute`, `in_stock`) VALUES
(26, 26, 'pa_brand', 22, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_product_download_directories`
--

CREATE TABLE `pk_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_product_download_directories`
--

INSERT INTO `pk_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file:///Users/eugeneburlak/work/php/pkstyle/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost:8888/pkstyle/wp-content/uploads/woocommerce_uploads/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_product_meta_lookup`
--

CREATE TABLE `pk_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_product_meta_lookup`
--

INSERT INTO `pk_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(26, '', 0, 0, '999.0000', '999.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(28, '', 0, 0, '20.0000', '20.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(48, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_rate_limits`
--

CREATE TABLE `pk_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_reserved_stock`
--

CREATE TABLE `pk_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_tax_rate_classes`
--

CREATE TABLE `pk_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_wc_tax_rate_classes`
--

INSERT INTO `pk_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Пониженная ставка', 'ponizhennaya-stavka'),
(2, 'Нулевая ставка', 'nulevaya-stavka');

-- --------------------------------------------------------

--
-- Table structure for table `pk_wc_webhooks`
--

CREATE TABLE `pk_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_api_keys`
--

CREATE TABLE `pk_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_attribute_taxonomies`
--

CREATE TABLE `pk_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_woocommerce_attribute_taxonomies`
--

INSERT INTO `pk_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'brand', 'Бренд', 'select', 'menu_order', 0),
(2, 'manufacturer', 'Производитель', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `pk_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_log`
--

CREATE TABLE `pk_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_order_itemmeta`
--

CREATE TABLE `pk_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_order_items`
--

CREATE TABLE `pk_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_payment_tokenmeta`
--

CREATE TABLE `pk_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_payment_tokens`
--

CREATE TABLE `pk_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_sessions`
--

CREATE TABLE `pk_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `pk_woocommerce_sessions`
--

INSERT INTO `pk_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(127, 't_515cbe0784871efeaf56589379de25', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:716:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1660418677),
(129, '1', 'a:8:{s:8:\"shipping\";s:31:\"a:1:{s:4:\"type\";s:7:\"courier\";}\";s:4:\"cart\";s:816:\"a:2:{s:32:\"4e732ced3463d06de0ca9a15b6153677\";a:11:{s:3:\"key\";s:32:\"4e732ced3463d06de0ca9a15b6153677\";s:10:\"product_id\";i:26;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:999;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:999;s:8:\"line_tax\";i:0;}s:32:\"33e75ff09dd601bbe69f351039152189\";a:11:{s:3:\"key\";s:32:\"33e75ff09dd601bbe69f351039152189\";s:10:\"product_id\";i:28;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:3;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:60;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:60;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:399:\"a:15:{s:8:\"subtotal\";s:4:\"1059\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:4:\"1059\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"1059.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:739:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:22:\"burlakeugene@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1660418679);

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_shipping_zones`
--

CREATE TABLE `pk_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_shipping_zone_locations`
--

CREATE TABLE `pk_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_shipping_zone_methods`
--

CREATE TABLE `pk_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_tax_rates`
--

CREATE TABLE `pk_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pk_woocommerce_tax_rate_locations`
--

CREATE TABLE `pk_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pk_actionscheduler_actions`
--
ALTER TABLE `pk_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `pk_actionscheduler_claims`
--
ALTER TABLE `pk_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `pk_actionscheduler_groups`
--
ALTER TABLE `pk_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `pk_actionscheduler_logs`
--
ALTER TABLE `pk_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `pk_commentmeta`
--
ALTER TABLE `pk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pk_comments`
--
ALTER TABLE `pk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `pk_links`
--
ALTER TABLE `pk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `pk_options`
--
ALTER TABLE `pk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `pk_postmeta`
--
ALTER TABLE `pk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pk_posts`
--
ALTER TABLE `pk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `pk_termmeta`
--
ALTER TABLE `pk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pk_terms`
--
ALTER TABLE `pk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `pk_term_relationships`
--
ALTER TABLE `pk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `pk_term_taxonomy`
--
ALTER TABLE `pk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `pk_usermeta`
--
ALTER TABLE `pk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `pk_users`
--
ALTER TABLE `pk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `pk_wc_admin_notes`
--
ALTER TABLE `pk_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `pk_wc_admin_note_actions`
--
ALTER TABLE `pk_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `pk_wc_category_lookup`
--
ALTER TABLE `pk_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `pk_wc_customer_lookup`
--
ALTER TABLE `pk_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pk_wc_download_log`
--
ALTER TABLE `pk_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `pk_wc_order_coupon_lookup`
--
ALTER TABLE `pk_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `pk_wc_order_product_lookup`
--
ALTER TABLE `pk_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `pk_wc_order_stats`
--
ALTER TABLE `pk_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `pk_wc_order_tax_lookup`
--
ALTER TABLE `pk_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `pk_wc_product_attributes_lookup`
--
ALTER TABLE `pk_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Indexes for table `pk_wc_product_download_directories`
--
ALTER TABLE `pk_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indexes for table `pk_wc_product_meta_lookup`
--
ALTER TABLE `pk_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `pk_wc_rate_limits`
--
ALTER TABLE `pk_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indexes for table `pk_wc_reserved_stock`
--
ALTER TABLE `pk_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `pk_wc_tax_rate_classes`
--
ALTER TABLE `pk_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `pk_wc_webhooks`
--
ALTER TABLE `pk_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pk_woocommerce_api_keys`
--
ALTER TABLE `pk_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `pk_woocommerce_attribute_taxonomies`
--
ALTER TABLE `pk_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `pk_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `pk_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `pk_woocommerce_log`
--
ALTER TABLE `pk_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `pk_woocommerce_order_itemmeta`
--
ALTER TABLE `pk_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `pk_woocommerce_order_items`
--
ALTER TABLE `pk_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pk_woocommerce_payment_tokenmeta`
--
ALTER TABLE `pk_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `pk_woocommerce_payment_tokens`
--
ALTER TABLE `pk_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pk_woocommerce_sessions`
--
ALTER TABLE `pk_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `pk_woocommerce_shipping_zones`
--
ALTER TABLE `pk_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `pk_woocommerce_shipping_zone_locations`
--
ALTER TABLE `pk_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `pk_woocommerce_shipping_zone_methods`
--
ALTER TABLE `pk_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `pk_woocommerce_tax_rates`
--
ALTER TABLE `pk_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `pk_woocommerce_tax_rate_locations`
--
ALTER TABLE `pk_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pk_actionscheduler_actions`
--
ALTER TABLE `pk_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pk_actionscheduler_claims`
--
ALTER TABLE `pk_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT for table `pk_actionscheduler_groups`
--
ALTER TABLE `pk_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pk_actionscheduler_logs`
--
ALTER TABLE `pk_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `pk_commentmeta`
--
ALTER TABLE `pk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_comments`
--
ALTER TABLE `pk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pk_links`
--
ALTER TABLE `pk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_options`
--
ALTER TABLE `pk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3562;

--
-- AUTO_INCREMENT for table `pk_postmeta`
--
ALTER TABLE `pk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `pk_posts`
--
ALTER TABLE `pk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `pk_termmeta`
--
ALTER TABLE `pk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pk_terms`
--
ALTER TABLE `pk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pk_term_taxonomy`
--
ALTER TABLE `pk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pk_usermeta`
--
ALTER TABLE `pk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pk_users`
--
ALTER TABLE `pk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pk_wc_admin_notes`
--
ALTER TABLE `pk_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pk_wc_admin_note_actions`
--
ALTER TABLE `pk_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=426;

--
-- AUTO_INCREMENT for table `pk_wc_customer_lookup`
--
ALTER TABLE `pk_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_wc_download_log`
--
ALTER TABLE `pk_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_wc_product_download_directories`
--
ALTER TABLE `pk_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pk_wc_rate_limits`
--
ALTER TABLE `pk_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_wc_tax_rate_classes`
--
ALTER TABLE `pk_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pk_wc_webhooks`
--
ALTER TABLE `pk_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_api_keys`
--
ALTER TABLE `pk_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_attribute_taxonomies`
--
ALTER TABLE `pk_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pk_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `pk_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_log`
--
ALTER TABLE `pk_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_order_itemmeta`
--
ALTER TABLE `pk_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_order_items`
--
ALTER TABLE `pk_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_payment_tokenmeta`
--
ALTER TABLE `pk_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_payment_tokens`
--
ALTER TABLE `pk_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_sessions`
--
ALTER TABLE `pk_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `pk_woocommerce_shipping_zones`
--
ALTER TABLE `pk_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_shipping_zone_locations`
--
ALTER TABLE `pk_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_shipping_zone_methods`
--
ALTER TABLE `pk_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_tax_rates`
--
ALTER TABLE `pk_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pk_woocommerce_tax_rate_locations`
--
ALTER TABLE `pk_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pk_wc_download_log`
--
ALTER TABLE `pk_wc_download_log`
  ADD CONSTRAINT `fk_pk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `pk_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
