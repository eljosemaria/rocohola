-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2014 a las 14:28:39
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `rocohola`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brw_files`
--

CREATE TABLE IF NOT EXISTS `brw_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) unsigned NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_code` (`category_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brw_images`
--

CREATE TABLE IF NOT EXISTS `brw_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) unsigned NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_code` (`category_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brw_users`
--

CREATE TABLE IF NOT EXISTS `brw_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `brw_users`
--

INSERT INTO `brw_users` (`id`, `email`, `password`, `last_login`, `created`, `modified`) VALUES
(4, 'test@test.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-28 13:18:13', '2014-01-22 19:01:02', '2014-01-22 19:01:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playings`
--

CREATE TABLE IF NOT EXISTS `playings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `video_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=135 ;

--
-- Volcado de datos para la tabla `playings`
--

INSERT INTO `playings` (`id`, `video_id`, `user_id`, `created`, `modified`) VALUES
(11, '0aGyoPbixq4', 2, '2014-01-22 22:32:32', '2014-01-22 22:32:32'),
(12, '0aGyoPbixq4', 2, '2014-01-22 22:32:54', '2014-01-22 22:32:54'),
(13, '0aGyoPbixq4', 2, '2014-01-22 22:34:05', '2014-01-22 22:34:05'),
(14, '_JgHVlcaQJ0', 3, '2014-01-22 22:34:32', '2014-01-22 22:34:32'),
(15, '0aGyoPbixq4', 2, '2014-01-22 22:48:58', '2014-01-22 22:48:58'),
(16, '0aGyoPbixq4', 2, '2014-01-23 15:03:47', '2014-01-23 15:03:47'),
(17, '_JgHVlcaQJ0', 3, '2014-01-23 15:04:56', '2014-01-23 15:04:56'),
(18, 'qypHNyodW_U', 1, '2014-01-23 15:07:53', '2014-01-23 15:07:53'),
(19, '0aGyoPbixq4', 2, '2014-01-23 16:12:01', '2014-01-23 16:12:01'),
(20, '_JgHVlcaQJ0', 3, '2014-01-23 16:12:24', '2014-01-23 16:12:24'),
(21, 'qypHNyodW_U', 1, '2014-01-23 16:13:17', '2014-01-23 16:13:17'),
(22, 'qypHNyodW_U', 1, '2014-01-23 17:01:45', '2014-01-23 17:01:45'),
(23, 'qypHNyodW_U', 1, '2014-01-23 17:02:18', '2014-01-23 17:02:18'),
(24, 'qypHNyodW_U', 1, '2014-01-23 17:02:51', '2014-01-23 17:02:51'),
(25, '0aGyoPbixq4', 2, '2014-01-23 17:05:52', '2014-01-23 17:05:52'),
(26, '0aGyoPbixq4', 2, '2014-01-23 17:06:30', '2014-01-23 17:06:30'),
(27, 'qypHNyodW_U', 1, '2014-01-23 17:07:07', '2014-01-23 17:07:07'),
(28, '0aGyoPbixq4', 2, '2014-01-23 17:08:46', '2014-01-23 17:08:46'),
(29, '0aGyoPbixq4', 2, '2014-01-23 17:09:13', '2014-01-23 17:09:13'),
(30, '_JgHVlcaQJ0', 3, '2014-01-23 17:09:25', '2014-01-23 17:09:25'),
(31, '0aGyoPbixq4', 2, '2014-01-23 17:09:55', '2014-01-23 17:09:55'),
(32, 'qypHNyodW_U', 1, '2014-01-23 17:14:15', '2014-01-23 17:14:15'),
(33, '0aGyoPbixq4', 2, '2014-01-23 17:15:14', '2014-01-23 17:15:14'),
(34, '0aGyoPbixq4', 2, '2014-01-23 17:15:54', '2014-01-23 17:15:54'),
(35, 'qypHNyodW_U', 1, '2014-01-23 17:16:05', '2014-01-23 17:16:05'),
(36, '0aGyoPbixq4', 2, '2014-01-23 17:16:38', '2014-01-23 17:16:38'),
(37, 'qypHNyodW_U', 1, '2014-01-23 17:17:26', '2014-01-23 17:17:26'),
(38, 'qypHNyodW_U', 1, '2014-01-23 17:19:13', '2014-01-23 17:19:13'),
(39, 'qypHNyodW_U', 1, '2014-01-23 17:19:50', '2014-01-23 17:19:50'),
(40, '_JgHVlcaQJ0', 3, '2014-01-23 17:24:34', '2014-01-23 17:24:34'),
(41, '0aGyoPbixq4', 2, '2014-01-23 17:45:57', '2014-01-23 17:45:57'),
(42, '0aGyoPbixq4', 2, '2014-01-23 17:46:20', '2014-01-23 17:46:20'),
(43, 'CpEOErRV-u4', 2, '2014-01-27 13:45:38', '2014-01-27 13:45:38'),
(44, 'q-Jw0H8VED4', 2, '2014-01-27 13:52:38', '2014-01-27 13:52:38'),
(45, 'k6lVhGeyXuw', 2, '2014-01-27 13:54:36', '2014-01-27 13:54:36'),
(46, '5_f-5SA1eew', 1, '2014-01-27 13:55:33', '2014-01-27 13:55:33'),
(47, 'UzOLRQV-E-A', 1, '2014-01-27 13:58:49', '2014-01-27 13:58:49'),
(48, 's3Q80mk7bxE', 2, '2014-01-27 13:59:00', '2014-01-27 13:59:00'),
(49, '3JO4lSEGWjU', 1, '2014-01-27 13:59:19', '2014-01-27 13:59:19'),
(50, 'FEyUJMmDztE', 1, '2014-01-27 13:59:36', '2014-01-27 13:59:36'),
(51, 'CpEOErRV-u4', 2, '2014-01-27 14:08:35', '2014-01-27 14:08:35'),
(52, '_ABN39VYeS4', 2, '2014-01-27 14:09:51', '2014-01-27 14:09:51'),
(53, 'uXZistami3c', 1, '2014-01-27 14:17:22', '2014-01-27 14:17:22'),
(54, '3JO4lSEGWjU', 1, '2014-01-27 14:17:33', '2014-01-27 14:17:33'),
(55, 'k6lVhGeyXuw', 2, '2014-01-27 14:22:38', '2014-01-27 14:22:38'),
(56, 'UzOLRQV-E-A', 1, '2014-01-27 14:22:56', '2014-01-27 14:22:56'),
(57, '3JO4lSEGWjU', 1, '2014-01-27 14:23:09', '2014-01-27 14:23:09'),
(58, '5_f-5SA1eew', 1, '2014-01-27 14:23:32', '2014-01-27 14:23:32'),
(59, 'k6lVhGeyXuw', 2, '2014-01-27 14:30:42', '2014-01-27 14:30:42'),
(60, 'FEyUJMmDztE', 1, '2014-01-27 14:35:53', '2014-01-27 14:35:53'),
(61, '_ABN39VYeS4', 2, '2014-01-27 14:38:34', '2014-01-27 14:38:34'),
(62, 'uXZistami3c', 1, '2014-01-27 14:44:12', '2014-01-27 14:44:12'),
(63, 'ND85XjtU9cA', 1, '2014-01-27 14:47:54', '2014-01-27 14:47:54'),
(64, 's3Q80mk7bxE', 2, '2014-01-27 14:52:27', '2014-01-27 14:52:27'),
(65, 'q-Jw0H8VED4', 2, '2014-01-27 14:55:29', '2014-01-27 14:55:29'),
(66, 'CpEOErRV-u4', 2, '2014-01-27 15:00:25', '2014-01-27 15:00:25'),
(67, '5_f-5SA1eew', 1, '2014-01-27 16:01:55', '2014-01-27 16:01:55'),
(68, 'uXZistami3c', 1, '2014-01-27 16:09:11', '2014-01-27 16:09:11'),
(69, 'Qj-DEGnVgsQ', 4, '2014-01-27 16:11:06', '2014-01-27 16:11:06'),
(70, 'bOd5erY9mbg', 3, '2014-01-27 16:14:24', '2014-01-27 16:14:24'),
(71, 'k6lVhGeyXuw', 2, '2014-01-27 16:18:01', '2014-01-27 16:18:01'),
(72, 'S2OLG-26MUM', 3, '2014-01-27 16:23:17', '2014-01-27 16:23:17'),
(73, 's3Q80mk7bxE', 2, '2014-01-27 16:26:19', '2014-01-27 16:26:19'),
(74, 'UzOLRQV-E-A', 1, '2014-01-27 16:29:31', '2014-01-27 16:29:31'),
(75, '_ABN39VYeS4', 2, '2014-01-27 16:32:19', '2014-01-27 16:32:19'),
(76, 'tl2lIYbPhYM', 4, '2014-01-27 16:38:04', '2014-01-27 16:38:04'),
(77, 'rTPhjLmSowY', 3, '2014-01-27 16:42:38', '2014-01-27 16:42:38'),
(78, 'Tm88QAI8I5A', 4, '2014-01-27 16:47:41', '2014-01-27 16:47:41'),
(79, 'q-Jw0H8VED4', 2, '2014-01-27 16:51:22', '2014-01-27 16:51:22'),
(80, 'qWPZEJreaWE', 4, '2014-01-27 16:56:19', '2014-01-27 16:56:19'),
(81, 'nz1QJozrRNw', 3, '2014-01-27 17:00:42', '2014-01-27 17:00:42'),
(82, 'KAzV2PxbzvA', 3, '2014-01-27 17:05:03', '2014-01-27 17:05:03'),
(83, 'uXZistami3c', 1, '2014-01-27 17:09:43', '2014-01-27 17:09:43'),
(84, '1kPHYek-Gas', 4, '2014-01-27 17:13:27', '2014-01-27 17:13:27'),
(85, 'FEyUJMmDztE', 1, '2014-01-27 17:17:37', '2014-01-27 17:17:37'),
(86, '5_f-5SA1eew', 1, '2014-01-27 17:20:16', '2014-01-27 17:20:16'),
(87, 'CpEOErRV-u4', 2, '2014-01-27 17:21:39', '2014-01-27 17:21:39'),
(88, '3JO4lSEGWjU', 1, '2014-01-27 18:44:03', '2014-01-27 18:44:03'),
(89, 'DZn5VjLiJ7s', 6, '2014-01-27 18:50:51', '2014-01-27 18:50:51'),
(90, 'wigqKfLWjvM', 5, '2014-01-27 18:54:52', '2014-01-27 18:54:52'),
(91, 'Qj-DEGnVgsQ', 4, '2014-01-27 18:58:52', '2014-01-27 18:58:52'),
(92, 'ckbWy-d3Xb8', 6, '2014-01-27 19:02:03', '2014-01-27 19:02:03'),
(93, '_ABN39VYeS4', 2, '2014-01-27 19:04:51', '2014-01-27 19:04:51'),
(94, 'ckKb9Nhp5cU', 6, '2014-01-27 19:10:25', '2014-01-27 19:10:25'),
(95, 'tl2lIYbPhYM', 4, '2014-01-27 19:14:43', '2014-01-27 19:14:43'),
(96, 'q-Jw0H8VED4', 2, '2014-01-27 19:19:17', '2014-01-27 19:19:17'),
(97, 'qWPZEJreaWE', 4, '2014-01-27 19:24:14', '2014-01-27 19:24:14'),
(98, 'uXZistami3c', 1, '2014-01-27 19:28:37', '2014-01-27 19:28:37'),
(99, '5_f-5SA1eew', 1, '2014-01-27 19:32:23', '2014-01-27 19:32:23'),
(100, 'bOd5erY9mbg', 3, '2014-01-27 19:39:33', '2014-01-27 19:39:33'),
(101, 'rTPhjLmSowY', 3, '2014-01-27 19:43:09', '2014-01-27 19:43:09'),
(102, 'd3Oy2TpdTzU', 5, '2014-01-27 19:48:10', '2014-01-27 19:48:10'),
(103, 'Tm88QAI8I5A', 4, '2014-01-27 19:52:30', '2014-01-27 19:52:30'),
(104, 'fhdmI_Ugst8', 6, '2014-01-27 19:56:10', '2014-01-27 19:56:10'),
(105, 'CpEOErRV-u4', 2, '2014-01-27 19:59:43', '2014-01-27 19:59:43'),
(106, 'M3X_ZpL_Hxc', 9, '2014-01-27 20:05:47', '2014-01-27 20:05:47'),
(107, 'UzOLRQV-E-A', 1, '2014-01-27 20:11:53', '2014-01-27 20:11:53'),
(108, '_ABN39VYeS4', 2, '2014-01-27 20:14:26', '2014-01-27 20:14:26'),
(109, 'u-QKD1QKt38', 3, '2014-01-27 20:15:50', '2014-01-27 20:15:50'),
(110, '1kPHYek-Gas', 4, '2014-01-27 20:19:44', '2014-01-27 20:19:44'),
(111, 's3Q80mk7bxE', 2, '2014-01-27 20:23:53', '2014-01-27 20:23:53'),
(112, 'xo-J1wf2KHc', 7, '2014-01-27 20:24:16', '2014-01-27 20:24:16'),
(113, 'd3Oy2TpdTzU', 5, '2014-01-27 20:24:55', '2014-01-27 20:24:55'),
(114, 'bOd5erY9mbg', 3, '2014-01-27 20:29:13', '2014-01-27 20:29:13'),
(115, 'wigqKfLWjvM', 5, '2014-01-27 20:32:51', '2014-01-27 20:32:51'),
(116, 'xEu3oxxclW4', 5, '2014-01-27 20:36:51', '2014-01-27 20:36:51'),
(117, 'TIyLX9AFdrQ', 4, '2014-01-27 20:40:29', '2014-01-27 20:40:29'),
(118, 'KZYtu2RTofU', 3, '2014-01-27 20:44:48', '2014-01-27 20:44:48'),
(119, 'O1fHxPY3TJo', 9, '2014-01-27 20:48:17', '2014-01-27 20:48:17'),
(120, '6h4HbhH7okU', 8, '2014-01-27 20:56:05', '2014-01-27 20:56:05'),
(121, 'JskztPPSJwY', 7, '2014-01-27 20:59:56', '2014-01-27 20:59:56'),
(122, 'ND85XjtU9cA', 1, '2014-01-27 21:05:38', '2014-01-27 21:05:38'),
(123, 'bTLNe-xpF44', 8, '2014-01-27 21:09:23', '2014-01-27 21:09:23'),
(124, 'Tm88QAI8I5A', 4, '2014-01-27 21:13:28', '2014-01-27 21:13:28'),
(125, '-GIroz2lmPs', 4, '2014-01-27 21:13:44', '2014-01-27 21:13:44'),
(126, 'mZImU7uEI7Y', 4, '2014-01-27 21:18:45', '2014-01-27 21:18:45'),
(127, 'hs4Em3wTK-Y', 3, '2014-01-27 21:23:58', '2014-01-27 21:23:58'),
(128, 'KAzV2PxbzvA', 3, '2014-01-28 17:02:39', '2014-01-28 17:02:39'),
(129, 'DZn5VjLiJ7s', 6, '2014-01-28 17:03:43', '2014-01-28 17:03:43'),
(130, 'aSHDyslQfgc', 3, '2014-01-28 17:05:08', '2014-01-28 17:05:08'),
(131, 'ojf18wT_Xtk', 5, '2014-01-28 17:05:55', '2014-01-28 17:05:55'),
(132, 'ckbWy-d3Xb8', 6, '2014-01-28 17:07:19', '2014-01-28 17:07:19'),
(133, 'OIYxNxQKW1w', 9, '2014-01-28 17:08:37', '2014-01-28 17:08:37'),
(134, '_igQEmrpF-U', 1, '2014-01-28 17:08:52', '2014-01-28 17:08:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queued_songs`
--

CREATE TABLE IF NOT EXISTS `queued_songs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `video_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `escuchado` tinyint(1) DEFAULT '0',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=821 ;

--
-- Volcado de datos para la tabla `queued_songs`
--

INSERT INTO `queued_songs` (`id`, `user_id`, `video_id`, `escuchado`, `created`, `modified`) VALUES
(820, 8, 'bTLNe-xpF44', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(819, 3, 'nz1QJozrRNw', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(818, 1, '5_f-5SA1eew', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(817, 4, 'TIyLX9AFdrQ', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(816, 7, 'xo-J1wf2KHc', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(815, 3, 'Or6LGJD6Cs0', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(814, 3, 'S2OLG-26MUM', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(813, 11, 'WK-P-XRfhdU', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(812, 5, 'ojf18wT_Xtk', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(811, 4, 'qWPZEJreaWE', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(810, 8, 'ApOtyyCbIVk', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(809, 1, '_igQEmrpF-U', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(808, 9, 'KVXinbihbo0', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(807, 2, 'q-Jw0H8VED4', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(806, 6, 'fhdmI_Ugst8', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(805, 3, '5C9qBENqZMg', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(804, 4, 'Qj-DEGnVgsQ', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(803, 2, 's3Q80mk7bxE', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(802, 1, '3JO4lSEGWjU', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(801, 2, 'CpEOErRV-u4', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(800, 9, 'O1fHxPY3TJo', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(799, 4, 'XjH2zi1bPm0', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(798, 10, '_ovdm2yX4MA', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(797, 3, 'bOd5erY9mbg', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(796, 3, 'rTPhjLmSowY', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(795, 1, 'uXZistami3c', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(794, 9, 'MG-ia0NV8Ts', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(793, 1, 'FEyUJMmDztE', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(792, 4, 'ZY1kXmu97-k', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(791, 10, 'lWA2pjMjpBs', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(790, 1, 'ND85XjtU9cA', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(789, 9, 'M3X_ZpL_Hxc', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(788, 1, 'UzOLRQV-E-A', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(787, 6, 'ckKb9Nhp5cU', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(786, 9, 'OIYxNxQKW1w', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(785, 10, 'fLexgOxsZu0', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(784, 5, 'd3Oy2TpdTzU', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(783, 4, 'tl2lIYbPhYM', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(782, 7, 'vVXIK1xCRpY', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(781, 6, 'ckbWy-d3Xb8', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(780, 3, 'aSHDyslQfgc', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(779, 11, 'SBjQ9tuuTJQ', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(778, 4, 'mZImU7uEI7Y', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(777, 3, 'KZYtu2RTofU', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(776, 5, 'wigqKfLWjvM', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(775, 4, 'Tm88QAI8I5A', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(774, 7, 'ec0XKhAHR5I', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(773, 6, 'DZn5VjLiJ7s', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(772, 7, 'JskztPPSJwY', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(771, 2, 'k6lVhGeyXuw', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(770, 5, 'bH13eUiDhmo', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(769, 5, 'xEu3oxxclW4', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(768, 7, 'P-hA2F2p_9g', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(767, 2, '_ABN39VYeS4', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(766, 8, '98Akpf1ph2o', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(765, 3, 'u-QKD1QKt38', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(764, 3, 'hs4Em3wTK-Y', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(763, 8, '6h4HbhH7okU', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(762, 4, '-GIroz2lmPs', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(761, 19, 'vzTTFu3jBgI', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(760, 6, 'TJAfLE39ZZ8', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(759, 11, 'BxgeSv88c2w', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(758, 3, 'KAzV2PxbzvA', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(757, 4, '1kPHYek-Gas', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10'),
(756, 8, 'qehtqr9zqFs', 0, '2014-01-28 17:10:10', '2014-01-28 17:10:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `link_youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=91 ;

--
-- Volcado de datos para la tabla `songs`
--

INSERT INTO `songs` (`id`, `user_id`, `link_youtube`, `created`, `modified`) VALUES
(21, 1, 'http://www.youtube.com/watch?v=UzOLRQV-E-A&list=PL97DA6E95B6F96E49', '2014-01-23 18:32:51', '2014-01-23 18:32:51'),
(19, 1, 'http://www.youtube.com/watch?v=ND85XjtU9cA', '2014-01-23 18:27:49', '2014-01-23 18:27:49'),
(20, 1, 'http://www.youtube.com/watch?v=5_f-5SA1eew&list=PLYLiG3ZKmn44kJwAaz9UJ08YnMLiL8_0e&index=1', '2014-01-23 18:30:16', '2014-01-23 18:30:16'),
(22, 1, 'http://www.youtube.com/watch?v=FEyUJMmDztE&list=PL97DA6E95B6F96E49', '2014-01-23 18:33:19', '2014-01-23 18:33:19'),
(23, 1, 'http://www.youtube.com/watch?v=3JO4lSEGWjU&list=PL97DA6E95B6F96E49', '2014-01-23 18:34:02', '2014-01-23 18:34:02'),
(24, 1, 'http://www.youtube.com/watch?v=uXZistami3c&list=PL97DA6E95B6F96E49', '2014-01-23 18:34:22', '2014-01-23 18:34:22'),
(25, 2, 'http://www.youtube.com/watch?v=q-Jw0H8VED4', '2014-01-27 13:19:16', '2014-01-27 13:19:59'),
(26, 2, 'http://www.youtube.com/watch?v=k6lVhGeyXuw', '2014-01-27 13:20:24', '2014-01-27 13:20:24'),
(27, 2, 'http://www.youtube.com/watch?v=s3Q80mk7bxE', '2014-01-27 13:20:36', '2014-01-27 13:20:36'),
(28, 2, 'http://www.youtube.com/watch?v=CpEOErRV-u4', '2014-01-27 13:20:48', '2014-01-27 13:20:48'),
(29, 2, 'http://www.youtube.com/watch?v=_ABN39VYeS4', '2014-01-27 13:21:00', '2014-01-27 13:21:00'),
(30, 3, 'http://www.youtube.com/watch?v=S2OLG-26MUM', '2014-01-27 15:58:12', '2014-01-27 15:58:12'),
(31, 3, 'http://www.youtube.com/watch?v=KAzV2PxbzvA', '2014-01-27 15:58:25', '2014-01-27 15:58:25'),
(32, 3, 'http://www.youtube.com/watch?v=bOd5erY9mbg', '2014-01-27 15:58:36', '2014-01-27 15:58:36'),
(33, 3, 'http://www.youtube.com/watch?v=rTPhjLmSowY', '2014-01-27 15:58:46', '2014-01-27 15:58:46'),
(34, 3, 'http://www.youtube.com/watch?v=nz1QJozrRNw', '2014-01-27 15:58:56', '2014-01-27 15:58:56'),
(35, 4, 'http://www.youtube.com/watch?v=tl2lIYbPhYM', '2014-01-27 16:07:29', '2014-01-27 16:07:29'),
(36, 4, 'http://www.youtube.com/watch?v=qWPZEJreaWE', '2014-01-27 16:07:41', '2014-01-27 16:07:41'),
(37, 4, 'http://www.youtube.com/watch?v=1kPHYek-Gas', '2014-01-27 16:08:06', '2014-01-27 16:08:06'),
(38, 4, 'http://www.youtube.com/watch?v=Qj-DEGnVgsQ', '2014-01-27 16:08:29', '2014-01-27 16:08:29'),
(39, 4, 'http://www.youtube.com/watch?v=Tm88QAI8I5A', '2014-01-27 16:09:53', '2014-01-27 16:09:53'),
(40, 5, 'http://www.youtube.com/watch?v=bH13eUiDhmo', '2014-01-27 17:31:48', '2014-01-27 17:31:48'),
(41, 5, 'http://www.youtube.com/watch?v=xEu3oxxclW4', '2014-01-27 17:31:59', '2014-01-27 17:31:59'),
(42, 5, 'http://www.youtube.com/watch?v=wigqKfLWjvM', '2014-01-27 17:32:08', '2014-01-27 17:32:08'),
(43, 5, 'http://www.youtube.com/watch?v=ojf18wT_Xtk', '2014-01-27 17:32:17', '2014-01-27 17:32:17'),
(44, 5, 'http://www.youtube.com/watch?v=d3Oy2TpdTzU', '2014-01-27 17:32:30', '2014-01-27 17:32:30'),
(45, 6, 'https://www.youtube.com/watch?v=ckbWy-d3Xb8&list=WL92EC802381AA89F6', '2014-01-27 18:42:46', '2014-01-27 18:42:46'),
(46, 6, 'https://www.youtube.com/watch?v=ckKb9Nhp5cU', '2014-01-27 18:43:00', '2014-01-27 18:43:00'),
(47, 6, 'https://www.youtube.com/watch?v=DZn5VjLiJ7s', '2014-01-27 18:43:09', '2014-01-27 18:43:09'),
(48, 6, 'https://www.youtube.com/watch?v=fhdmI_Ugst8', '2014-01-27 18:43:22', '2014-01-27 18:43:22'),
(49, 6, 'https://www.youtube.com/watch?v=TJAfLE39ZZ8', '2014-01-27 18:43:32', '2014-01-27 18:43:32'),
(50, 3, 'http://www.youtube.com/watch?v=hs4Em3wTK-Y', '2014-01-27 19:58:51', '2014-01-27 19:58:51'),
(51, 3, 'http://www.youtube.com/watch?v=KZYtu2RTofU', '2014-01-27 19:59:03', '2014-01-27 19:59:03'),
(52, 3, 'http://www.youtube.com/watch?v=u-QKD1QKt38', '2014-01-27 19:59:13', '2014-01-27 19:59:13'),
(53, 3, 'http://www.youtube.com/watch?v=5C9qBENqZMg', '2014-01-27 19:59:23', '2014-01-27 19:59:23'),
(54, 3, 'http://www.youtube.com/watch?v=aSHDyslQfgc', '2014-01-27 19:59:33', '2014-01-27 19:59:33'),
(55, 4, 'http://www.youtube.com/watch?v=mZImU7uEI7Y', '2014-01-27 20:00:02', '2014-01-27 20:00:02'),
(56, 4, 'http://www.youtube.com/watch?v=XjH2zi1bPm0', '2014-01-27 20:00:12', '2014-01-27 20:00:12'),
(57, 4, 'http://www.youtube.com/watch?v=TIyLX9AFdrQ', '2014-01-27 20:00:22', '2014-01-27 20:00:22'),
(58, 4, 'http://www.youtube.com/watch?v=-GIroz2lmPs', '2014-01-27 20:00:31', '2014-01-27 20:00:31'),
(59, 4, 'http://www.youtube.com/watch?v=ZY1kXmu97-k', '2014-01-27 20:00:40', '2014-01-27 20:00:40'),
(60, 7, 'http://www.youtube.com/watch?v=P-hA2F2p_9g', '2014-01-27 20:01:30', '2014-01-27 20:01:30'),
(61, 7, 'http://www.youtube.com/watch?v=vVXIK1xCRpY', '2014-01-27 20:01:40', '2014-01-27 20:01:40'),
(62, 7, 'http://www.youtube.com/watch?v=JskztPPSJwY', '2014-01-27 20:01:49', '2014-01-27 20:01:49'),
(63, 7, 'http://www.youtube.com/watch?v=xo-J1wf2KHc', '2014-01-27 20:01:59', '2014-01-27 20:01:59'),
(64, 7, 'http://www.youtube.com/watch?v=ec0XKhAHR5I', '2014-01-27 20:02:08', '2014-01-27 20:02:08'),
(65, 8, 'http://www.youtube.com/watch?v=98Akpf1ph2o', '2014-01-27 20:02:59', '2014-01-27 20:02:59'),
(66, 8, 'http://www.youtube.com/watch?v=6h4HbhH7okU', '2014-01-27 20:03:10', '2014-01-27 20:03:10'),
(67, 8, 'http://www.youtube.com/watch?v=qehtqr9zqFs', '2014-01-27 20:03:19', '2014-01-27 20:03:19'),
(68, 8, 'http://www.youtube.com/watch?v=ApOtyyCbIVk', '2014-01-27 20:03:50', '2014-01-27 20:03:50'),
(69, 8, 'http://www.youtube.com/watch?v=bTLNe-xpF44', '2014-01-27 20:04:00', '2014-01-27 20:04:00'),
(70, 9, 'http://www.youtube.com/watch?v=MG-ia0NV8Ts', '2014-01-27 20:04:56', '2014-01-27 20:04:56'),
(71, 9, 'http://www.youtube.com/watch?v=O1fHxPY3TJo', '2014-01-27 20:05:08', '2014-01-27 20:05:08'),
(72, 9, 'http://www.youtube.com/watch?v=M3X_ZpL_Hxc', '2014-01-27 20:05:17', '2014-01-27 20:05:17'),
(73, 9, 'http://www.youtube.com/watch?v=OIYxNxQKW1w', '2014-01-27 20:05:28', '2014-01-27 20:05:28'),
(74, 9, 'http://www.youtube.com/watch?v=KVXinbihbo0', '2014-01-27 20:05:37', '2014-01-27 20:05:37'),
(75, 10, 'http://www.youtube.com/watch?v=_ovdm2yX4MA', '2014-01-27 20:14:47', '2014-01-27 20:14:47'),
(76, 10, 'http://www.youtube.com/watch?v=fLexgOxsZu0', '2014-01-27 20:14:59', '2014-01-27 20:14:59'),
(77, 10, 'http://www.youtube.com/watch?v=lWA2pjMjpBs', '2014-01-27 20:15:08', '2014-01-27 20:15:08'),
(78, 11, 'http://www.youtube.com/watch?v=BxgeSv88c2w', '2014-01-27 21:17:05', '2014-01-27 21:17:05'),
(79, 11, 'http://www.youtube.com/watch?v=WK-P-XRfhdU', '2014-01-27 21:17:16', '2014-01-27 21:17:16'),
(80, 11, 'http://www.youtube.com/watch?v=SBjQ9tuuTJQ', '2014-01-27 21:17:28', '2014-01-27 21:17:28'),
(81, 1, 'http://www.youtube.com/watch?v=_igQEmrpF-U', '2014-01-28 13:33:35', '2014-01-28 13:33:35'),
(82, 19, 'http://www.youtube.com/watch?v=vzTTFu3jBgI', '2014-01-28 14:38:19', '2014-01-28 14:38:19'),
(83, 3, 'http://www.youtube.com/watch?v=Or6LGJD6Cs0', '2014-01-28 14:41:20', '2014-01-28 14:41:20'),
(89, 19, 'lolo', '2014-01-28 15:34:01', '2014-01-28 15:34:01'),
(90, 1, 'http://www.youtube.com/watch?v=vx5n21zHPm8', '2014-01-29 17:36:37', '2014-01-29 17:36:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created`, `modified`) VALUES
(1, 'Colo', 'avequesalta@gmail.com', '6f37fb9197ba4c75c80bc7e2741736d8b29e3f23', '2014-01-22 19:07:07', '2014-01-22 19:08:38'),
(2, 'Fausto', 'faustow@gmail.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-22 19:08:01', '2014-01-27 13:52:34'),
(3, 'Mauro', 'maurozadu@gmail.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-22 19:08:28', '2014-01-22 19:08:28'),
(4, 'Marcia', 'abramovich.marcia@gmail.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 16:06:50', '2014-01-27 16:06:50'),
(5, 'Pamela', 'pzamboni@hotmail.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 17:31:29', '2014-01-27 17:31:29'),
(6, 'Maria Eugenia', 'eugeniaurrere@gmail.com', '0516bfaeca258643e3d07d05b522f09ed5d7019c', '2014-01-27 18:42:02', '2014-01-28 14:32:30'),
(7, 'Juan', 'juan.carizza@gmail.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 20:01:09', '2014-01-27 20:01:09'),
(8, 'Carday', 'carday@gmail.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 20:02:40', '2014-01-27 20:02:40'),
(9, 'Pato', 'patricio@dotspin.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 20:04:44', '2014-01-27 20:04:44'),
(10, 'Daniela', 'daniela@njambre.org', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 20:14:14', '2014-01-27 20:14:14'),
(11, 'Alexander', 'ale@plusglobal.com', '892450b6a55eff6f5504ebcddc9affc5fd510734', '2014-01-27 21:16:46', '2014-01-27 21:16:46'),
(19, 'colin', 'copancopan@hotmail.com', '08e5584f342d9a874e33c43fadda070f3970be64', '2014-01-28 14:36:57', '2014-01-28 14:36:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_texts`
--

CREATE TABLE IF NOT EXISTS `user_texts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `user_texts`
--

INSERT INTO `user_texts` (`id`, `key`, `title`, `text`, `modified`) VALUES
(1, 'registered', 'Registro realizado con éxito', '<p>Hemos enviado un correo electrónico con información para activar la cuenta.</p>\r\n<p>Si el mensaje no llega dentro de los próximos segundos es posible que haya ingresado en la carpeta de correo no deseado o que haya sido marcado como spam.</p>', '2011-07-30 19:09:26'),
(2, 'email-password-recovery', 'Recuperación de contaseña', '<p>Hola</p>\r\n<p>Hemos recibido un pedido para restaurar la contrase&ntilde;a de esta cuenta, para ello visitar la siguiente p&aacute;gina:</p>\r\n<p>{URL}</p>\r\n<p>Si el pedido de restaurar contrase&ntilde;a no fue enviado por Ud. por favor ignore este mensaje.</p>\r\n<p>Gracias.</p>', '2010-05-07 10:57:39'),
(3, 'password-recovery', 'Recuperación de contraseña', '<p>Hemos enviado un correo electr&oacute;nico con la informaci&oacute;n necesaria para restaurar la contrase&ntilde;a.</p>\r\n<p>Si el mensaje no llega dentro de los pr&oacute;ximos segundos es posible que haya ingresado en la carpeta de correo no deseado o que haya sido marcado como spam.</p>', '2010-05-07 10:59:39'),
(4, 'email-confirmation', 'Confirmación de correo electrónico', '<p>Gracias por registrarse</p>\r\n<p>Para confirmar la dirección de correo electrónico, por favor visitar el siguiente enlace:</p>\r\n<p>{URL}</p>\r\n<p>Gracias.</p>', '2011-07-30 19:13:41'),
(5, 'confirmed', 'Gracias!', '<p>La direcci&oacute;n de email ha sido confirmada correctamente.</p>', '2010-05-10 10:41:21'),
(7, 'new-secondary-email', 'Validación de email', '<p>Hemos enviado un correo electr&oacute;nico para validar el email.</p>\r\n<p>Si el mensaje no llega dentro de los pr&oacute;ximos segundos es posible que haya ingresado en la carpeta de correo no deseado o que haya sido marcado como spam.</p>', '0000-00-00 00:00:00'),
(8, 'registration_without_confirmation', 'Gracias por registrarse', 'Gracias por haberse registrado ', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
