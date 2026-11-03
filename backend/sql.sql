-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2026 at 07:08 AM
-- Server version: 11.4.13-MariaDB-cll-lve-log
-- PHP Version: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `middpwqd_westbridgevaultreserve`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_account_number` varchar(20) NOT NULL,
  `c_account_number` varchar(20) NOT NULL,
  `routing_name` varchar(120) DEFAULT NULL,
  `routing_number` varchar(32) DEFAULT NULL,
  `routing_type` varchar(40) DEFAULT 'ABA',
  `routing_assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `s_account_number`, `c_account_number`, `routing_name`, `routing_number`, `routing_type`, `routing_assigned_at`, `created_at`) VALUES
(1, 9, '81192528959', '01517267735', NULL, NULL, 'ABA', NULL, '2025-08-07 19:21:54'),
(8, 18, '81535985703', '01550148008', 'ABA Routing Transit Number (RTN)', '428005289', 'ABA', '2026-08-03 13:24:40', '2026-06-23 16:30:46'),
(9, 20, '81703067501', '01150868100', 'ABA&ACH routing', '065227145', 'ABA', '2026-08-24 21:48:25', '2026-08-24 21:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_type` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `activity_type`, `description`, `created_at`) VALUES
(1, 9, 'login_alert_sent', 'Login alert email sent', '2025-08-08 18:37:11'),
(2, 9, 'otp_sent', 'Login OTP sent', '2025-08-08 18:37:13'),
(3, 9, 'login', 'OTP verified. Login successful', '2025-08-08 18:37:39'),
(4, 9, 'profile_update', 'Updated profile details', '2025-08-08 18:42:55'),
(5, 9, 'image_upload', 'Uploaded new profile image', '2025-08-08 18:45:11'),
(6, 9, 'profile_update', 'Updated profile details', '2025-08-08 18:50:26'),
(7, 9, 'set_pin', 'User set their transaction PIN', '2025-08-08 18:53:24'),
(8, 9, 'update_pin', 'User updated their transaction PIN', '2025-08-08 18:58:16'),
(9, 9, 'update_pin', 'User updated their transaction PIN', '2025-08-08 18:58:43'),
(10, 9, 'self_transfer', 'Transferred ₦2500.00 from savings to current', '2025-08-08 19:02:46'),
(11, 9, 'self_transfer', 'Transferred $2500.00 from current to savings', '2025-08-08 19:06:43'),
(12, 1, 'login_alert_sent', 'Login alert email sent', '2025-08-08 19:17:23'),
(13, 1, 'login', 'Login successful (OTP not required)', '2025-08-08 19:17:23'),
(14, 9, 'local_transfer', 'Transferred $100.00 to John Doe (1234567890) [Chase Bank] with fee $2.00', '2025-08-08 19:23:09'),
(15, 9, 'wire_transfer', 'Transferred $1200.00 to John Doe (1234567890) [Bank of America] via wire transfer. Fee: $0.00', '2025-08-08 19:30:55'),
(16, 9, 'wire_transfer', 'Transferred $1200.00 to John Doe (1234567890) [Bank of America] via wire transfer. Fee: $2.00', '2025-08-08 19:31:29'),
(17, 9, 'login_alert_sent', 'Login alert email sent', '2025-08-08 19:45:49'),
(18, 9, 'login', 'Login successful (OTP not required)', '2025-08-08 19:45:49'),
(19, 9, 'wire_transfer', 'Wire transfer of $100.00 to John Doe (1234567890) [Bank of America] initiated. Fee: $2.00', '2025-08-08 19:46:16'),
(20, 9, 'wire_transfer', 'Wire transfer of $100.00 to John Doe (1234567890) [Bank of America] initiated. Fee: $2.00', '2025-08-08 19:47:07'),
(21, 9, 'login_alert_sent', 'Login alert email sent', '2025-08-08 20:13:48'),
(22, 9, 'login', 'Login successful (OTP not required)', '2025-08-08 20:13:48'),
(23, 9, 'atm_card_request', 'Requested ATM card for savings account. Fee: $15.00', '2025-08-08 20:38:03'),
(24, 9, 'atm_card_request', 'Requested ATM card for current account. Fee: $20.00', '2025-08-08 20:41:16'),
(25, 9, 'atm_card_approved', 'ATM card approved for savings account', '2025-08-08 20:50:00'),
(26, 9, 'login_alert_sent', 'Login alert email sent', '2025-08-11 21:26:03'),
(27, 9, 'login', 'Login successful (OTP not required)', '2025-08-11 21:26:03'),
(28, 1, 'login_alert_sent', 'Login alert email sent', '2025-08-11 21:27:48'),
(29, 1, 'login', 'Login successful (OTP not required)', '2025-08-11 21:27:48'),
(30, 9, 'login_alert_sent', 'Login alert email sent', '2025-08-11 21:28:15'),
(31, 9, 'login', 'Login successful (OTP not required)', '2025-08-11 21:28:15'),
(32, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-04 20:49:34'),
(33, 9, 'login', 'Login successful (OTP not required)', '2025-10-04 20:49:34'),
(34, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-04 21:13:15'),
(35, 9, 'login', 'Login successful (OTP not required)', '2025-10-04 21:13:16'),
(36, 9, 'wire_transfer', 'Wire transfer of $200.00 to samuel oghenechovwe (7065785436) [opay bank] initiated. Fee: $2.00', '2025-10-04 21:57:39'),
(37, 9, 'wire_transfer', 'Wire transfer of $200.00 to samuel oghenechovwe (7065785436) [opay bank] initiated. Fee: $2.00', '2025-10-04 22:03:52'),
(38, 9, 'wire_transfer', 'Wire transfer of $200.00 to samuel oghenechovwe (7065785436) [opay bank] initiated. Fee: $2.00', '2025-10-04 22:12:32'),
(39, 9, 'local_transfer', 'Transferred $200.00 to samuel oghenechovwe (7065785436) [opay bank] with fee $2.00', '2025-10-04 22:29:34'),
(40, 9, 'profile_update', 'Updated profile details', '2025-10-04 23:19:35'),
(41, 9, 'profile_update', 'Updated profile details', '2025-10-04 23:19:39'),
(42, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-04 23:57:24'),
(43, 1, 'login', 'Login successful (OTP not required)', '2025-10-04 23:57:24'),
(44, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-05 00:02:34'),
(45, 1, 'login', 'Login successful (OTP not required)', '2025-10-05 00:02:34'),
(46, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2025-10-05 01:52:27'),
(47, 1, 'image_upload', 'Admin #1 uploaded profile image', '2025-10-05 02:33:49'),
(49, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2025-10-05 02:35:49'),
(50, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2025-10-05 02:47:06'),
(51, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-05 02:47:35'),
(52, 1, 'login', 'Login successful (OTP not required)', '2025-10-05 02:47:35'),
(53, 1, 'impersonate_user', 'Impersonated user #1 (admin)', '2025-10-05 02:48:40'),
(54, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-05 02:49:10'),
(55, 1, 'login', 'Login successful (OTP not required)', '2025-10-05 02:49:11'),
(56, 9, 'atm_card_approved', 'ATM card approved for current account', '2025-10-05 03:06:55'),
(57, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-05 03:32:21'),
(58, 9, 'login', 'Login successful (OTP not required)', '2025-10-05 03:32:21'),
(59, 9, 'wire_transfer', 'Wire transfer of $200.00 to samuel oghenechovwe (7065785436) [opay bank] initiated. Fee: $2.00', '2025-10-05 03:44:09'),
(60, 9, 'wire_transfer', 'Wire transfer of $210.00 to samuel oghenechovwe (7065785436) [opay bank] initiated. Fee: $2.00', '2025-10-05 03:56:13'),
(61, 9, 'wire_transfer', 'Wire transfer of $210.00 to samuel oghenechovwe (7065785436) [opay bank] initiated. Fee: $2.00', '2025-10-05 03:59:57'),
(62, 9, 'local_transfer', 'Transferred $1000.00 to samuel oghenechovwe (7065785436) [opay bank] with fee $3.00', '2025-10-05 04:03:49'),
(63, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-14 14:21:13'),
(64, 9, 'login', 'Login successful (OTP not required)', '2025-10-14 14:21:13'),
(65, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-14 14:33:48'),
(66, 1, 'login', 'Login successful (OTP not required)', '2025-10-14 14:33:48'),
(67, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-14 16:24:09'),
(68, 9, 'login', 'Login successful (OTP not required)', '2025-10-14 16:24:09'),
(69, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-14 17:04:56'),
(70, 1, 'login', 'Login successful (OTP not required)', '2025-10-14 17:04:56'),
(71, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-14 20:00:27'),
(72, 9, 'login', 'Login successful (OTP not required)', '2025-10-14 20:00:27'),
(73, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-14 20:03:35'),
(74, 1, 'login', 'Login successful (OTP not required)', '2025-10-14 20:03:35'),
(75, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-17 14:02:29'),
(76, 1, 'login', 'Login successful (OTP not required)', '2025-10-17 14:02:29'),
(77, 9, 'login_alert_sent', 'Login alert email sent', '2025-10-18 14:14:45'),
(78, 9, 'login', 'Login successful (OTP not required)', '2025-10-18 14:14:45'),
(79, 9, 'get_pin_status', 'User checked transaction PIN status', '2025-10-18 14:16:15'),
(80, 9, 'get_pin_status', 'User checked transaction PIN status', '2025-10-18 14:19:35'),
(81, 9, 'get_pin_status', 'User checked transaction PIN status', '2025-10-18 14:20:12'),
(82, 1, 'login_alert_sent', 'Login alert email sent', '2025-10-18 14:29:52'),
(83, 1, 'login', 'Login successful (OTP not required)', '2025-10-18 14:29:52'),
(84, 1, 'admin_reset_pin', 'Admin 1 reset PIN for user 2 to default.', '2025-10-18 14:30:26'),
(86, 1, 'admin_toggle_codes', 'Admin set require_imf=true, require_cot=false, require_tax=false', '2025-10-18 15:21:45'),
(87, 9, 'login_alert_sent', 'Login alert email sent', '2025-11-18 16:28:11'),
(88, 9, 'login', 'Login successful (OTP not required)', '2025-11-18 16:28:11'),
(89, 9, 'login_alert_sent', 'Login alert email sent', '2025-11-18 16:31:38'),
(90, 9, 'otp_sent', 'Login OTP sent', '2025-11-18 16:31:44'),
(91, 9, 'login', 'OTP verified. Login successful', '2025-11-18 16:32:09'),
(92, 1, 'login_alert_sent', 'Login alert email sent', '2025-11-24 23:53:42'),
(93, 1, 'login', 'Login successful (OTP not required)', '2025-11-24 23:53:42'),
(94, 1, 'login_alert_sent', 'Login alert email sent', '2025-11-24 23:54:07'),
(95, 1, 'login', 'Login successful (OTP not required)', '2025-11-24 23:54:07'),
(96, 9, 'login_alert_sent', 'Login alert email sent', '2025-11-25 00:12:27'),
(97, 9, 'otp_sent', 'Login OTP sent', '2025-11-25 00:12:32'),
(98, 9, 'login', 'OTP verified. Login successful', '2025-11-25 00:12:54'),
(99, 9, 'login_alert_sent', 'Login alert email sent', '2025-11-25 00:14:26'),
(100, 9, 'login', 'Login successful (OTP not required)', '2025-11-25 00:14:26'),
(101, 9, 'login_alert_sent', 'Login alert email sent', '2025-11-25 00:37:41'),
(102, 9, 'login', 'Login successful (OTP not required)', '2025-11-25 00:37:41'),
(103, 1, 'login_alert_sent', 'Login alert email sent', '2025-11-25 00:43:05'),
(104, 1, 'login', 'Login successful (OTP not required)', '2025-11-25 00:43:05'),
(105, 1, 'login_alert_sent', 'Login alert email sent', '2025-12-08 11:13:56'),
(106, 1, 'login', 'Login successful (OTP not required)', '2025-12-08 11:13:56'),
(107, 9, 'login_alert_sent', 'Login alert email sent', '2025-12-08 12:19:20'),
(108, 9, 'login', 'Login successful (OTP not required)', '2025-12-08 12:19:20'),
(109, 9, 'login_alert_sent', 'Login alert email sent', '2025-12-29 10:44:51'),
(110, 9, 'login', 'Login successful (OTP not required)', '2025-12-29 10:44:51'),
(111, 1, 'login_alert_sent', 'Login alert email sent', '2025-12-29 11:45:44'),
(112, 1, 'login', 'Login successful (OTP not required)', '2025-12-29 11:45:44'),
(113, 1, 'login_alert_sent', 'Login alert email sent', '2025-12-29 11:49:00'),
(114, 1, 'login', 'Login successful (OTP not required)', '2025-12-29 11:49:00'),
(115, 9, 'local_transfer_no_otp', 'Local transfer processed without OTP. Deducted $1003.00 to John Doe (0123456789) [GTBank] fee $3.00', '2025-12-29 11:52:53'),
(116, 9, 'local_transfer_no_otp', 'Local transfer processed without OTP. Deducted $503.00 to John Doe (0123456789) [GTBank] fee $3.00', '2025-12-29 12:08:08'),
(117, 9, 'wire_transfer_initiated', 'Wire transfer initiated $500.00 to John Doe (0123456789) [GTBank] fee $2.00 - awaiting OTP', '2025-12-29 12:09:41'),
(118, 9, 'wire_transfer_confirmed', 'Wire transfer confirmed via OTP. Deducted $502.00 (incl fee). Transfer ID #43', '2025-12-29 12:11:10'),
(119, 9, 'login_alert_sent', 'Login alert email sent', '2025-12-29 12:45:46'),
(120, 9, 'login', 'Login successful (OTP not required)', '2025-12-29 12:45:46'),
(121, 1, 'login_alert_sent', 'Login alert email sent', '2026-01-05 18:31:46'),
(122, 1, 'login', 'Login successful (OTP not required)', '2026-01-05 18:31:46'),
(123, 1, 'login_alert_sent', 'Login alert email sent', '2026-01-20 05:42:41'),
(124, 1, 'login', 'Login successful (OTP not required)', '2026-01-20 05:42:41'),
(125, 9, 'login_alert_sent', 'Login alert email sent', '2026-01-20 05:44:33'),
(126, 9, 'login', 'Login successful (OTP not required)', '2026-01-20 05:44:33'),
(127, 9, 'local_transfer_no_otp', 'Local transfer processed without OTP. Deducted $1503.00 to John Doe (0123456789) [GTBank] fee $3.00', '2026-01-20 05:46:06'),
(128, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $1503.00 to John Doe (0123456789) [GTBank] fee $3.00', '2026-01-20 05:49:44'),
(129, 9, 'local_transfer_no_otp', 'Local transfer pending_admin. Deducted $1503.00 to John Doe (0123456789) [GTBank] fee $3.00', '2026-01-20 05:50:35'),
(130, 9, 'wire_transfer_initiated', 'Wire transfer initiated $500.00 to John Doe (0123456789) [GTBank] fee $2.00 - awaiting OTP', '2026-01-20 05:56:30'),
(131, 9, 'wire_transfer_initiated', 'Wire transfer initiated $500.00 to John Doe (0123456789) [GTBank] fee $2.00 - awaiting OTP', '2026-01-20 05:58:18'),
(132, 9, 'wire_transfer_initiated', 'Wire transfer initiated $500.00 to John Doe (0123456789) [GTBank] fee $2.00 - awaiting OTP', '2026-01-20 06:03:48'),
(133, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $502.00 to John Doe (0123456789) [GTBank] fee $2.00', '2026-01-20 06:04:05'),
(134, 9, 'login_alert_sent', 'Login alert email sent', '2026-01-20 06:09:32'),
(135, 9, 'login', 'Login successful (OTP not required)', '2026-01-20 06:09:32'),
(136, 9, 'local_transfer_no_otp', 'Local transfer pending_admin. Deducted $203.00 to samuel oghenechovwe (7065785436) [opay bank] fee $3.00', '2026-01-20 06:12:09'),
(137, 9, 'local_transfer_no_otp', 'Local transfer pending_admin. Deducted $1503.00 to John Doe (0123456789) [GTBank] fee $3.00', '2026-01-20 06:13:20'),
(138, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $203.00 to samuel oghenechovwe (7065785436) [opay bank] fee $3.00', '2026-01-20 06:13:56'),
(139, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 06:38:45'),
(140, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 06:40:31'),
(141, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 06:41:47'),
(142, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 06:42:37'),
(143, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 06:46:15'),
(144, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samule oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 06:46:49'),
(145, 9, 'wire_transfer_no_otp', 'Wire transfer completed. Deducted $202.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00', '2026-01-20 07:05:19'),
(146, 9, 'wire_transfer_initiated', 'Wire transfer initiated $200.00 to samuel oghenechovwe (7065785436) [opay bank] fee $2.00 - awaiting OTP', '2026-01-20 07:06:24'),
(147, 9, 'wire_transfer_confirmed', 'Wire transfer confirmed via OTP. Deducted $202.00 (incl fee). Transfer ID #61', '2026-01-20 07:07:04'),
(148, 1, 'login_alert_sent', 'Login alert email sent', '2026-01-20 07:16:10'),
(149, 1, 'login', 'Login successful (OTP not required)', '2026-01-20 07:16:10'),
(150, 9, 'login_alert_sent', 'Login alert email sent', '2026-01-20 07:28:55'),
(151, 9, 'login', 'Login successful (OTP not required)', '2026-01-20 07:28:55'),
(152, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $203.00 to samuel oghenechovwe (7065785436) [opay bank] fee $3.00', '2026-01-20 07:29:37'),
(153, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $203.00 to samuel oghenechovwe (7065785436) [opay bank] fee $3.00', '2026-01-20 07:32:22'),
(154, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $203.00 to samuel oghenechovwe (7065785436) [opay bank] fee $3.00', '2026-01-20 07:33:47'),
(155, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $203.00 to samuel oghenechovwe (7065785436) [opay bank] fee $3.00', '2026-01-20 07:42:49'),
(156, 1, 'login_alert_sent', 'Login alert email sent', '2026-01-27 23:50:13'),
(157, 1, 'login', 'Login successful (OTP not required)', '2026-01-27 23:50:13'),
(158, 1, 'login_alert_sent', 'Login alert email sent', '2026-01-28 00:01:16'),
(159, 1, 'login', 'Login successful (OTP not required)', '2026-01-28 00:01:16'),
(160, 9, 'login_alert_sent', 'Login alert email sent', '2026-03-26 08:15:17'),
(161, 9, 'login', 'Login successful (OTP not required)', '2026-03-26 08:15:17'),
(162, 1, 'login_failed', 'Incorrect password', '2026-03-26 08:16:39'),
(163, 9, 'login_alert_sent', 'Login alert email sent', '2026-03-26 08:18:07'),
(164, 9, 'login', 'Login successful (OTP not required)', '2026-03-26 08:18:07'),
(165, 9, 'login_alert_sent', 'Login alert email sent', '2026-03-26 08:29:03'),
(166, 9, 'login', 'Login successful (OTP not required)', '2026-03-26 08:29:03'),
(170, 1, 'login_failed', 'Incorrect password', '2026-06-15 14:11:28'),
(171, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-15 14:11:45'),
(172, 1, 'login', 'Login successful (OTP not required)', '2026-06-15 14:11:45'),
(173, 9, 'login_failed', 'Incorrect password', '2026-06-17 13:52:19'),
(174, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-17 13:54:36'),
(175, 9, 'login', 'Login successful (OTP not required)', '2026-06-17 13:54:36'),
(176, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-17 14:04:29'),
(177, 9, 'login', 'Login successful (OTP not required)', '2026-06-17 14:04:29'),
(178, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $103.00 to sam (1234567890) [sun trust ] fee $3.00', '2026-06-17 16:01:28'),
(179, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $103.00 to sam (1234567890) [sun trust ] fee $3.00', '2026-06-17 16:04:47'),
(180, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-17 22:29:08'),
(181, 9, 'login', 'Login successful (OTP not required)', '2026-06-17 22:29:09'),
(182, 9, 'login_failed', 'Incorrect password', '2026-06-18 00:31:29'),
(183, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 00:31:41'),
(184, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 00:31:41'),
(185, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 01:14:16'),
(186, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 01:14:16'),
(187, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 01:14:32'),
(188, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 01:14:37'),
(189, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 01:15:08'),
(190, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 08:25:25'),
(191, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 08:25:25'),
(192, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 08:26:01'),
(193, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 08:26:01'),
(194, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 08:48:04'),
(195, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 08:48:04'),
(196, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 08:57:42'),
(197, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 08:57:42'),
(198, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 08:59:18'),
(199, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 08:59:18'),
(200, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 09:29:59'),
(201, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 09:29:59'),
(202, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 09:35:09'),
(203, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 09:35:09'),
(204, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 09:44:05'),
(205, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 09:54:16'),
(206, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 09:54:20'),
(207, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 09:54:20'),
(208, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 16:18:38'),
(209, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 16:18:38'),
(210, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 16:20:54'),
(211, 9, 'local_transfer_no_otp', 'Local transfer completed. Deducted $2003.00 to Benshy (26263625272) [Gamers Bank] fee $3.00', '2026-06-18 16:22:18'),
(212, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 16:23:29'),
(213, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 16:27:21'),
(214, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 16:27:21'),
(215, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 19:49:02'),
(216, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 19:49:02'),
(217, 9, 'loan_request', 'Submitted Education Loan loan request', '2026-06-18 19:51:17'),
(218, 1, 'login_failed', 'Incorrect password', '2026-06-18 20:26:34'),
(219, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-18 20:26:45'),
(220, 1, 'login', 'Login successful (OTP not required)', '2026-06-18 20:26:45'),
(221, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-18 20:30:42'),
(222, 1, 'login', 'Login successful (OTP not required)', '2026-06-18 20:30:42'),
(223, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 21:57:38'),
(224, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 21:57:38'),
(225, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 21:58:02'),
(226, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 22:01:23'),
(227, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 22:01:38'),
(228, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 22:18:00'),
(229, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 22:18:00'),
(230, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-18 22:34:26'),
(231, 9, 'login', 'Login successful (OTP not required)', '2026-06-18 22:34:26'),
(232, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-18 22:44:43'),
(233, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 06:53:36'),
(234, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 06:53:36'),
(235, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-19 06:53:53'),
(236, 9, 'login', 'Login successful (OTP not required)', '2026-06-19 06:53:53'),
(237, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-19 06:57:08'),
(238, 9, 'login', 'Login successful (OTP not required)', '2026-06-19 06:57:08'),
(239, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 06:57:33'),
(240, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 06:57:33'),
(241, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-19 07:09:18'),
(242, 9, 'login', 'Login successful (OTP not required)', '2026-06-19 07:09:18'),
(243, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:09:50'),
(244, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:09:50'),
(245, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:10:00'),
(246, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:10:00'),
(247, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:12:42'),
(248, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:12:42'),
(249, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-19 07:14:25'),
(250, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 07:20:32'),
(251, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 07:20:32'),
(252, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-19 09:59:56'),
(253, 9, 'login', 'Login successful (OTP not required)', '2026-06-19 09:59:56'),
(254, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 10:08:18'),
(255, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 10:08:18'),
(256, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 10:33:46'),
(257, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 10:33:46'),
(258, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 10:58:05'),
(259, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 10:58:05'),
(260, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 11:08:54'),
(261, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 11:08:54'),
(262, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 11:37:02'),
(263, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 11:37:02'),
(264, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-19 21:59:23'),
(265, 1, 'login', 'Login successful (OTP not required)', '2026-06-19 21:59:23'),
(267, 1, 'admin_delete_user', 'Deleted user #14 (sam.uk)', '2026-06-19 22:45:37'),
(268, 1, 'admin_delete_user', 'Deleted user #2 (...)', '2026-06-19 22:45:44'),
(269, 1, 'admin_delete_user', 'Deleted user #17 (d-man)', '2026-06-19 22:45:53'),
(270, 1, 'admin_toggle_codes', 'Admin set require_imf=true, require_cot=true, require_tax=false', '2026-06-19 22:59:53'),
(271, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 00:41:18'),
(272, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 00:41:18'),
(273, 1, 'login_failed', 'Incorrect password', '2026-06-20 15:23:35'),
(274, 1, 'login_failed', 'Incorrect password', '2026-06-20 15:23:44'),
(275, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 15:23:56'),
(276, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 15:23:56'),
(277, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-20 15:26:59'),
(278, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 16:19:53'),
(279, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 16:19:53'),
(280, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 17:16:48'),
(281, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 17:16:48'),
(282, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 17:31:24'),
(283, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 17:31:24'),
(284, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-20 17:40:50'),
(285, 1, 'login', 'Login successful (OTP not required)', '2026-06-20 17:40:50'),
(286, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 21:18:42'),
(287, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 21:18:42'),
(288, 9, 'get_pin_status', 'User checked transaction PIN status', '2026-06-20 21:23:39'),
(289, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-20 21:37:18'),
(290, 1, 'login', 'Login successful (OTP not required)', '2026-06-20 21:37:18'),
(291, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-20 21:51:47'),
(292, 1, 'login', 'Login successful (OTP not required)', '2026-06-20 21:51:47'),
(293, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-20 22:15:20'),
(294, 9, 'login', 'Login successful (OTP not required)', '2026-06-20 22:15:20'),
(295, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 07:52:54'),
(296, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 07:52:54'),
(297, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 08:15:10'),
(298, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 08:15:10'),
(299, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 08:22:39'),
(300, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 08:22:39'),
(301, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 08:24:59'),
(302, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 08:24:59'),
(303, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 08:29:25'),
(304, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 08:29:25'),
(305, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 08:30:33'),
(306, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 08:30:33'),
(307, 9, 'login_failed', 'Incorrect password', '2026-06-21 08:56:31'),
(308, 9, 'login_failed', 'Incorrect password', '2026-06-21 08:56:43'),
(309, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 08:56:53'),
(310, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 08:56:53'),
(311, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 22:50:20'),
(312, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 22:50:20'),
(313, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 23:01:22'),
(314, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 23:01:22'),
(315, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-21 23:01:41'),
(316, 1, 'login', 'Login successful (OTP not required)', '2026-06-21 23:01:41'),
(317, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 23:06:58'),
(318, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 23:06:58'),
(319, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 23:18:55'),
(320, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 23:18:55'),
(321, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-21 23:25:30'),
(322, 9, 'login', 'Login successful (OTP not required)', '2026-06-21 23:25:30'),
(323, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-22 09:52:08'),
(324, 9, 'login', 'Login successful (OTP not required)', '2026-06-22 09:52:08'),
(325, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-23 12:20:49'),
(326, 9, 'login', 'Login successful (OTP not required)', '2026-06-23 12:20:49'),
(327, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-23 13:04:58'),
(328, 1, 'login', 'Login successful (OTP not required)', '2026-06-23 13:04:58'),
(330, 1, 'impersonate_user', 'Impersonated user #19 (8amjoker@gmail.com)', '2026-06-23 13:09:41'),
(331, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-23 13:33:56'),
(332, 1, 'login', 'Login successful (OTP not required)', '2026-06-23 13:33:56'),
(333, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-23 16:28:05'),
(334, 1, 'login', 'Login successful (OTP not required)', '2026-06-23 16:28:05'),
(335, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-23 16:56:41'),
(336, 1, 'login', 'Login successful (OTP not required)', '2026-06-23 16:56:41'),
(337, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-23 16:58:39'),
(338, 1, 'login', 'Login successful (OTP not required)', '2026-06-23 16:58:39'),
(339, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-23 17:58:16'),
(340, 18, 'otp_sent', 'Login OTP sent', '2026-06-23 17:58:16'),
(341, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-23 17:59:29'),
(342, 18, 'otp_sent', 'Login OTP sent', '2026-06-23 17:59:29'),
(343, 18, 'login_failed', 'Incorrect password', '2026-06-23 18:10:54'),
(344, 18, 'login_failed', 'Incorrect password', '2026-06-23 18:11:04'),
(345, 18, 'login_failed', 'Incorrect password', '2026-06-23 19:35:05'),
(346, 18, 'login_failed', 'Incorrect password', '2026-06-23 19:35:26'),
(347, 18, 'login_failed', 'Incorrect password', '2026-06-23 19:35:54'),
(348, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-23 19:36:38'),
(349, 18, 'otp_sent', 'Login OTP sent', '2026-06-23 19:36:39'),
(350, 18, 'otp_failed', 'Invalid or expired OTP during login', '2026-06-23 19:37:18'),
(351, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-23 19:40:28'),
(352, 18, 'otp_sent', 'Login OTP sent', '2026-06-23 19:40:28'),
(353, 18, 'login', 'OTP verified. Login successful', '2026-06-23 19:40:54'),
(354, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-23 22:13:06'),
(355, 1, 'login', 'Login successful (OTP not required)', '2026-06-23 22:13:06'),
(356, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 09:13:54'),
(357, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 09:13:54'),
(358, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 17:09:52'),
(359, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 17:09:52'),
(360, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 17:32:01'),
(361, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 17:32:01'),
(362, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 17:35:28'),
(363, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 17:35:28'),
(364, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 17:38:43'),
(365, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 17:38:43'),
(366, 1, 'login_failed', 'Incorrect password', '2026-06-24 18:16:48'),
(367, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 18:16:56'),
(368, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 18:16:56'),
(369, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 18:20:27'),
(370, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 18:20:27'),
(371, 1, 'impersonate_user', 'Impersonated user #19 (8amjoker@gmail.com)', '2026-06-24 18:21:17'),
(372, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 18:24:02'),
(373, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 18:24:02'),
(374, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-06-24 18:25:06'),
(375, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-24 21:28:47'),
(376, 18, 'otp_sent', 'Login OTP sent', '2026-06-24 21:28:47'),
(377, 18, 'login', 'OTP verified. Login successful', '2026-06-24 21:30:16'),
(378, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-24 22:10:14'),
(379, 18, 'otp_sent', 'Login OTP sent', '2026-06-24 22:10:15'),
(380, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 22:10:57'),
(381, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 22:10:57'),
(382, 18, 'login', 'OTP verified. Login successful', '2026-06-24 22:11:33'),
(383, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 22:59:37'),
(384, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 22:59:37'),
(385, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-24 22:59:52'),
(386, 9, 'login', 'Login successful (OTP not required)', '2026-06-24 22:59:52'),
(387, 1, 'admin_reset_user_password', 'Admin 1 reset password for user 19', '2026-06-24 23:00:56'),
(388, 1, 'admin_reset_user_password', 'Admin 1 reset password for user 19', '2026-06-24 23:01:45'),
(393, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-24 23:17:00'),
(394, 1, 'login', 'Login successful (OTP not required)', '2026-06-24 23:17:00'),
(395, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-06-24 23:18:53'),
(396, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-06-24 23:20:31'),
(397, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-25 03:06:55'),
(398, 1, 'login', 'Login successful (OTP not required)', '2026-06-25 03:06:55'),
(399, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-25 03:10:18'),
(400, 1, 'login', 'Login successful (OTP not required)', '2026-06-25 03:10:18'),
(401, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-25 10:22:35'),
(402, 1, 'login', 'Login successful (OTP not required)', '2026-06-25 10:22:35'),
(403, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-25 10:25:25'),
(404, 9, 'login', 'Login successful (OTP not required)', '2026-06-25 10:25:25'),
(405, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-25 10:31:56'),
(406, 9, 'login', 'Login successful (OTP not required)', '2026-06-25 10:31:56'),
(407, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-25 10:35:35'),
(408, 1, 'login', 'Login successful (OTP not required)', '2026-06-25 10:35:35'),
(409, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-25 15:56:02'),
(410, 18, 'otp_sent', 'Login OTP sent', '2026-06-25 15:56:03'),
(411, 18, 'login', 'OTP verified. Login successful', '2026-06-25 15:57:23'),
(412, 18, 'atm_card_request', 'Requested ATM card for current account. Fee: $200.00', '2026-06-25 15:58:17'),
(413, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-25 16:35:36'),
(414, 1, 'login', 'Login successful (OTP not required)', '2026-06-25 16:35:36'),
(415, 1, 'admin_toggle_codes', 'Admin set require_imf=true, require_cot=true, require_tax=true', '2026-06-25 16:59:46'),
(416, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-25 17:08:54'),
(417, 1, 'login', 'Login successful (OTP not required)', '2026-06-25 17:08:54'),
(418, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-25 17:22:28'),
(419, 9, 'login', 'Login successful (OTP not required)', '2026-06-25 17:22:28'),
(420, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-25 21:26:47'),
(421, 18, 'otp_sent', 'Login OTP sent', '2026-06-25 21:26:47'),
(422, 18, 'login', 'OTP verified. Login successful', '2026-06-25 21:28:13'),
(423, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-25 23:07:14'),
(424, 9, 'login', 'Login successful (OTP not required)', '2026-06-25 23:07:14'),
(425, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-26 08:16:44'),
(426, 1, 'login', 'Login successful (OTP not required)', '2026-06-26 08:16:44'),
(427, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 08:55:24'),
(428, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 08:55:24'),
(429, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 10:06:12'),
(430, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 10:06:12'),
(431, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 10:15:09'),
(432, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 10:15:09'),
(433, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 17:16:56'),
(434, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 17:16:56'),
(435, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 19:16:40'),
(436, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 19:16:40'),
(437, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-26 19:52:14'),
(438, 1, 'login', 'Login successful (OTP not required)', '2026-06-26 19:52:14'),
(439, 9, 'login_failed', 'Incorrect password', '2026-06-26 19:57:20'),
(440, 9, 'login_failed', 'Incorrect password', '2026-06-26 19:57:24'),
(441, 9, 'login_failed', 'Incorrect password', '2026-06-26 19:59:04'),
(442, 9, 'login_failed', 'Incorrect password', '2026-06-26 19:59:15'),
(443, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-26 20:00:44'),
(444, 1, 'login', 'Login successful (OTP not required)', '2026-06-26 20:00:44'),
(445, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-06-26 20:01:24'),
(446, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 20:05:34'),
(447, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 20:05:34'),
(448, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 20:06:49'),
(449, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 20:06:49'),
(450, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-26 20:16:12'),
(451, 1, 'login', 'Login successful (OTP not required)', '2026-06-26 20:16:12'),
(452, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 20:57:15'),
(453, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 20:57:15'),
(454, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 22:29:48'),
(455, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 22:29:48'),
(456, 9, 'login_alert_sent', 'Login alert email sent', '2026-06-26 22:54:00'),
(457, 9, 'login', 'Login successful (OTP not required)', '2026-06-26 22:54:00'),
(458, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-27 09:45:21'),
(459, 1, 'login', 'Login successful (OTP not required)', '2026-06-27 09:45:21'),
(460, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-27 17:52:05'),
(461, 18, 'otp_sent', 'Login OTP sent', '2026-06-27 17:52:05'),
(462, 18, 'login_alert_sent', 'Login alert email sent', '2026-06-27 17:54:11'),
(463, 18, 'otp_sent', 'Login OTP sent', '2026-06-27 17:54:11'),
(464, 18, 'login', 'OTP verified. Login successful', '2026-06-27 17:54:29'),
(465, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-28 17:56:15'),
(466, 1, 'login', 'Login successful (OTP not required)', '2026-06-28 17:56:15'),
(467, 1, 'login_alert_sent', 'Login alert email sent', '2026-06-29 23:27:07'),
(468, 1, 'login', 'Login successful (OTP not required)', '2026-06-29 23:27:07'),
(469, 18, 'login_alert_sent', 'Login alert email sent', '2026-07-01 23:30:16'),
(470, 18, 'otp_sent', 'Login OTP sent', '2026-07-01 23:30:16'),
(471, 18, 'login', 'OTP verified. Login successful', '2026-07-01 23:31:44'),
(472, 1, 'login', 'Login successful (OTP not required)', '2026-07-03 02:25:01'),
(473, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-07-03 02:25:23'),
(474, 1, 'login_alert_sent', 'Login alert email sent', '2026-07-03 16:29:46'),
(475, 1, 'login', 'Login successful (OTP not required)', '2026-07-03 16:29:46'),
(476, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-07-03 16:30:05'),
(477, 18, 'atm_card_updated_by_admin', 'Admin updated ATM card #3 (current, rejected)', '2026-07-03 16:34:50'),
(478, 1, 'login_alert_sent', 'Login alert email sent', '2026-07-03 20:48:06'),
(479, 1, 'login', 'Login successful (OTP not required)', '2026-07-03 20:48:06'),
(480, 1, 'login_alert_sent', 'Login alert email sent', '2026-07-03 21:03:55'),
(481, 1, 'login', 'Login successful (OTP not required)', '2026-07-03 21:03:55'),
(482, 1, 'impersonate_user', 'Impersonated user #18 (Mattman2015$)', '2026-07-03 21:08:57'),
(483, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-07-03 21:14:09'),
(484, 9, 'login_alert_sent', 'Login alert email sent', '2026-07-07 23:26:39'),
(485, 9, 'login', 'Login successful (OTP not required)', '2026-07-07 23:26:39'),
(486, 9, 'atm_card_request', 'Requested ATM card for savings account. Fee: $15.00', '2026-07-07 23:28:06'),
(487, 18, 'login_alert_sent', 'Login alert email sent', '2026-07-19 14:47:21'),
(488, 18, 'otp_sent', 'Login OTP sent', '2026-07-19 14:47:21'),
(489, 18, 'otp_failed', 'Invalid or expired OTP during login', '2026-07-19 14:48:28'),
(490, 18, 'login_alert_sent', 'Login alert email sent', '2026-07-19 14:49:16'),
(491, 18, 'otp_sent', 'Login OTP sent', '2026-07-19 14:49:16'),
(492, 18, 'login', 'OTP verified. Login successful', '2026-07-19 14:52:00'),
(493, 1, 'login_alert_sent', 'Login alert email sent', '2026-07-28 16:41:23'),
(494, 1, 'login', 'Login successful (OTP not required)', '2026-07-28 16:41:23'),
(495, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-07-28 16:41:49'),
(496, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-03 13:23:36'),
(497, 1, 'login', 'Login successful (OTP not required)', '2026-08-03 13:23:36'),
(498, 18, 'login_alert_sent', 'Login alert email sent', '2026-08-05 17:15:37'),
(499, 18, 'otp_sent', 'Login OTP sent', '2026-08-05 17:15:37'),
(500, 18, 'login', 'OTP verified. Login successful', '2026-08-05 17:17:03'),
(501, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-07 00:37:37'),
(502, 1, 'login', 'Login successful (OTP not required)', '2026-08-07 00:37:37'),
(503, 1, 'admin_delete_user', 'Deleted user #19 (8amjoker@gmail.com)', '2026-08-07 00:38:38'),
(504, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-08-07 01:09:22'),
(505, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-08 19:01:35'),
(506, 1, 'login', 'Login successful (OTP not required)', '2026-08-08 19:01:35'),
(507, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-08-08 19:01:49'),
(508, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-09 02:23:58'),
(509, 1, 'login', 'Login successful (OTP not required)', '2026-08-09 02:23:58'),
(510, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-12 15:34:37'),
(511, 1, 'login', 'Login successful (OTP not required)', '2026-08-12 15:34:37'),
(512, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-08-12 15:34:56'),
(513, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-15 04:19:16'),
(514, 1, 'login', 'Login successful (OTP not required)', '2026-08-15 04:19:16'),
(515, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-08-15 04:19:29'),
(516, 9, 'login_failed', 'Incorrect password', '2026-08-16 13:50:22'),
(517, 9, 'login_alert_sent', 'Login alert email sent', '2026-08-16 13:50:27'),
(518, 9, 'login', 'Login successful (OTP not required)', '2026-08-16 13:50:27'),
(519, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-20 20:32:13'),
(520, 1, 'login', 'Login successful (OTP not required)', '2026-08-20 20:32:13'),
(521, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-08-20 20:32:25'),
(522, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-21 04:37:39'),
(523, 1, 'login', 'Login successful (OTP not required)', '2026-08-21 04:37:39'),
(524, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-21 11:40:08'),
(525, 1, 'login', 'Login successful (OTP not required)', '2026-08-21 11:40:08'),
(526, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-23 23:51:09'),
(527, 1, 'login', 'Login successful (OTP not required)', '2026-08-23 23:51:09'),
(528, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-24 21:25:14'),
(529, 1, 'login', 'Login successful (OTP not required)', '2026-08-24 21:25:14'),
(530, 20, 'image_upload', 'Admin #1 uploaded profile image', '2026-08-24 21:32:00'),
(531, 1, 'impersonate_user', 'Impersonated user #20 (jimmyjrichter935)', '2026-08-24 21:36:26'),
(532, 20, 'login_alert_sent', 'Login alert email sent', '2026-08-24 21:43:20'),
(533, 20, 'otp_sent', 'Login OTP sent', '2026-08-24 21:43:20'),
(534, 20, 'login_alert_sent', 'Login alert email sent', '2026-08-24 22:14:28'),
(535, 20, 'otp_sent', 'Login OTP sent', '2026-08-24 22:14:28'),
(536, 20, 'login', 'OTP verified. Login successful', '2026-08-24 22:16:31'),
(537, 1, 'impersonate_user', 'Impersonated user #20 (jimmyjrichter935)', '2026-08-24 22:19:57'),
(538, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-25 20:10:29'),
(539, 1, 'login', 'Login successful (OTP not required)', '2026-08-25 20:10:29'),
(540, 1, 'impersonate_user', 'Impersonated user #20 (jimmyjrichter935)', '2026-08-25 20:23:34'),
(541, 20, 'login_failed', 'Incorrect password', '2026-08-25 20:47:54'),
(542, 20, 'login_failed', 'Incorrect password', '2026-08-25 20:48:04'),
(543, 20, 'login_failed', 'Incorrect password', '2026-08-25 20:48:09'),
(544, 20, 'login_alert_sent', 'Login alert email sent', '2026-08-25 20:48:51'),
(545, 20, 'otp_sent', 'Login OTP sent', '2026-08-25 20:48:51'),
(546, 20, 'login', 'OTP verified. Login successful', '2026-08-25 20:52:32'),
(547, 1, 'impersonate_user', 'Impersonated user #9 (habibi)', '2026-08-25 20:56:17'),
(548, 1, 'impersonate_user', 'Impersonated user #20 (jimmyjrichter935)', '2026-08-26 01:21:11'),
(549, 1, 'login_alert_sent', 'Login alert email sent', '2026-08-26 11:09:48'),
(550, 1, 'login', 'Login successful (OTP not required)', '2026-08-26 11:09:48'),
(551, 20, 'login_failed', 'Incorrect password', '2026-08-29 21:38:59'),
(552, 20, 'login_failed', 'Incorrect password', '2026-08-29 21:40:45'),
(553, 20, 'login_failed', 'Incorrect password', '2026-08-29 21:41:09'),
(554, 20, 'login_alert_sent', 'Login alert email sent', '2026-08-29 21:42:00'),
(555, 20, 'otp_sent', 'Login OTP sent', '2026-08-29 21:42:01'),
(556, 20, 'login_alert_sent', 'Login alert email sent', '2026-08-31 17:05:43'),
(557, 20, 'otp_sent', 'Login OTP sent', '2026-08-31 17:05:43'),
(558, 20, 'login', 'OTP verified. Login successful', '2026-08-31 17:07:31'),
(559, 20, 'set_pin', 'User set their transaction PIN for the first time', '2026-08-31 17:23:54'),
(560, 20, 'get_pin_status', 'User checked transaction PIN status', '2026-08-31 17:23:55'),
(561, 20, 'update_pin', 'User updated their transaction PIN', '2026-08-31 17:24:43'),
(562, 20, 'get_pin_status', 'User checked transaction PIN status', '2026-08-31 17:24:44'),
(563, 1, 'login_alert_sent', 'Login alert email sent', '2026-09-12 09:49:45'),
(564, 1, 'login', 'Login successful (OTP not required)', '2026-09-12 09:49:45'),
(565, 21, 'login_failed', 'Onboarding pending approval', '2026-11-03 11:01:54'),
(566, 21, 'login_failed', 'Onboarding pending approval', '2026-11-03 11:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `atm_cards`
--

CREATE TABLE `atm_cards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_type` enum('savings','current') NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_holder_name` varchar(100) NOT NULL,
  `expiry_date` varchar(5) NOT NULL,
  `cvv` varchar(3) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `requested_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atm_cards`
--

INSERT INTO `atm_cards` (`id`, `user_id`, `account_type`, `card_number`, `card_holder_name`, `expiry_date`, `cvv`, `fee`, `status`, `requested_at`) VALUES
(3, 18, 'current', '5495535362391304', 'Debra Irene  Hagis', '06/29', '182', 200.00, 'rejected', '2026-06-25 15:58:17'),
(4, 9, 'savings', '5321935976232410', 'sam light', '07/29', '606', 15.00, 'pending', '2026-07-07 23:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `bill_payments`
--

CREATE TABLE `bill_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_kind` enum('bill','airtime') NOT NULL DEFAULT 'bill',
  `bill_category` enum('water','electricity','gas','internet','cable','phone','tax','insurance','waste','hoa','tuition','mortgage') NOT NULL DEFAULT 'electricity',
  `provider_name` varchar(120) NOT NULL,
  `customer_reference` varchar(120) NOT NULL,
  `from_account` enum('savings','current') NOT NULL DEFAULT 'current',
  `amount` decimal(12,2) NOT NULL,
  `note` text DEFAULT NULL,
  `status` enum('pending','confirmed','rejected') NOT NULL DEFAULT 'pending',
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_payments`
--

INSERT INTO `bill_payments` (`id`, `user_id`, `payment_kind`, `bill_category`, `provider_name`, `customer_reference`, `from_account`, `amount`, `note`, `status`, `reviewed_at`, `created_at`) VALUES
(1, 9, 'bill', 'electricity', 'Duke Energy', '12345678', 'savings', 100.00, 'fee', 'pending', NULL, '2026-06-17 18:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `card_fees`
--

CREATE TABLE `card_fees` (
  `id` int(11) NOT NULL,
  `account_type` enum('savings','current') NOT NULL,
  `fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_fees`
--

INSERT INTO `card_fees` (`id`, `account_type`, `fee`) VALUES
(1, 'savings', 15.00),
(2, 'current', 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `deposit_type` enum('topup_account','fix_issue') NOT NULL DEFAULT 'topup_account',
  `account_type` enum('savings','current') NOT NULL DEFAULT 'current',
  `amount` decimal(12,2) NOT NULL,
  `proof_path` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('pending','confirmed','rejected') DEFAULT 'pending',
  `created_at` datetime DEFAULT current_timestamp(),
  `reviewed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `wallet_id`, `deposit_type`, `account_type`, `amount`, `proof_path`, `note`, `status`, `created_at`, `reviewed_at`) VALUES
(1, 9, 2, 'topup_account', 'current', 5000.00, 'uploads/deposit_1760457911249.jpeg', NULL, 'confirmed', '2025-10-14 09:05:11', NULL),
(2, 9, 2, 'topup_account', 'current', 8000.00, 'uploads/deposit_1760458206085.jpeg', NULL, 'rejected', '2025-10-14 09:10:06', NULL),
(3, 9, 2, 'topup_account', 'current', 200.00, 'uploads/deposit_1760459329606.jpeg', NULL, 'pending', '2025-10-14 09:28:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

CREATE TABLE `loan_applications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `gender` varchar(32) NOT NULL,
  `marital_status` varchar(32) NOT NULL,
  `email` varchar(190) NOT NULL,
  `ssn` varchar(32) NOT NULL,
  `mobile_number` varchar(32) NOT NULL,
  `residential_address` text NOT NULL,
  `number_of_dependents` int(11) NOT NULL DEFAULT 0,
  `annual_income` decimal(15,2) NOT NULL DEFAULT 0.00,
  `employment_details` text NOT NULL,
  `loan_service` varchar(120) NOT NULL,
  `loan_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_tenure` varchar(80) NOT NULL,
  `loan_purpose` text NOT NULL,
  `agreed_terms` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `review_note` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`id`, `user_id`, `full_name`, `gender`, `marital_status`, `email`, `ssn`, `mobile_number`, `residential_address`, `number_of_dependents`, `annual_income`, `employment_details`, `loan_service`, `loan_amount`, `payment_tenure`, `loan_purpose`, `agreed_terms`, `status`, `review_note`, `reviewed_by`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(1, 9, 'Samuel Oghenchovwe', 'Male', 'Married', '8amlight@gmail.com', '1234567890', '08013594677', '5 pti road effurun', 1, 999.97, 'farmer', 'Education Loan', 1000.00, '36 months', 'fishing', 1, 'pending', NULL, NULL, NULL, '2026-06-18 15:51:17', '2026-06-18 15:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `login_otps`
--

CREATE TABLE `login_otps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `otp_code` varchar(10) DEFAULT NULL,
  `otp_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_otps`
--

INSERT INTO `login_otps` (`id`, `user_id`, `otp_code`, `otp_expires_at`) VALUES
(4, 1, '531509', '2025-08-07 08:58:09'),
(5, 1, '921792', '2025-08-07 08:59:32'),
(6, 1, '297282', '2025-08-07 09:00:35'),
(7, 1, '328482', '2025-08-07 09:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `otp_code` varchar(10) DEFAULT NULL,
  `otp_expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`user_id`, `token`, `expires_at`) VALUES
(1, '7732955417e78f51c23a57cc7913f00945fe437fe932e7a17d51a1ac3ef8f186', '2025-08-07 09:25:12'),
(9, '52f0609f2dde36743985bcb5de45b832db577bb0069248f05ec5139e53f5efb3', '2025-08-08 11:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `security_codes`
--

CREATE TABLE `security_codes` (
  `id` int(11) NOT NULL,
  `imf_code` varchar(20) NOT NULL,
  `cot_code` varchar(20) NOT NULL,
  `tax_code` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_codes`
--

INSERT INTO `security_codes` (`id`, `imf_code`, `cot_code`, `tax_code`, `created_at`) VALUES
(1, 'IMF2024', 'COT902', 'TAX601', '2025-08-08 19:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `security_settings`
--

CREATE TABLE `security_settings` (
  `id` tinyint(4) NOT NULL,
  `require_imf` tinyint(1) NOT NULL DEFAULT 1,
  `require_cot` tinyint(1) NOT NULL DEFAULT 1,
  `require_tax` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security_settings`
--

INSERT INTO `security_settings` (`id`, `require_imf`, `require_cot`, `require_tax`, `updated_at`) VALUES
(1, 1, 1, 1, '2026-06-25 16:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `self_transfers`
--

CREATE TABLE `self_transfers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_account` enum('savings','current') NOT NULL,
  `to_account` enum('savings','current') NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `self_transfers`
--

INSERT INTO `self_transfers` (`id`, `user_id`, `from_account`, `to_account`, `amount`, `created_at`) VALUES
(1, 9, 'savings', 'current', '2500', '2025-08-08 19:02:46'),
(2, 9, 'current', 'savings', '2500', '2025-08-08 19:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key_name` varchar(100) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key_name`, `value`) VALUES
(1, 'bank_name', 'Westbridge Vault Reserve'),
(2, 'local_transfer_otp_enabled', '0'),
(3, 'local_transfer_admin_confirm_enabled', '0'),
(6, 'wire_transfer_admin_confirm_enabled', '0'),
(9, 'wire_transfer_otp_enabled', '1');

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `sender` enum('user','admin') NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `attachment_url` varchar(255) DEFAULT NULL,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(120) DEFAULT NULL,
  `attachment_size` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`id`, `ticket_id`, `sender`, `message`, `created_at`, `attachment_url`, `attachment_name`, `attachment_type`, `attachment_size`) VALUES
(1, 3, 'user', 'Hello, I tried withdrawing from my wallet but it keeps showing an error message.', '2025-10-14 08:17:50', NULL, NULL, NULL, NULL),
(2, 3, 'admin', 'Here’s an update: I retried it today, still not working.', '2025-10-14 08:20:21', NULL, NULL, NULL, NULL),
(3, 3, 'user', 'so what is the update on the issues ', '2025-10-14 09:41:30', NULL, NULL, NULL, NULL),
(4, 1, 'user', 'hello', '2025-10-14 09:46:59', NULL, NULL, NULL, NULL),
(5, 3, 'admin', 'Here’s an update: I retried it today, still not working.', '2025-10-14 09:50:17', NULL, NULL, NULL, NULL),
(6, 3, 'admin', 'Here’s an update:yes I retried it today, still not working.', '2025-10-14 09:50:29', NULL, NULL, NULL, NULL),
(7, 3, 'user', 'hello thanks \n', '2025-10-14 13:01:20', NULL, NULL, NULL, NULL),
(8, 3, 'admin', 'hello', '2025-12-08 03:51:55', NULL, NULL, NULL, NULL),
(9, 3, 'admin', 'hello again', '2025-12-08 04:06:36', NULL, NULL, NULL, NULL),
(10, 3, 'admin', 'so it working then', '2025-12-08 04:14:29', NULL, NULL, NULL, NULL),
(11, 3, 'admin', 'noted try 3', '2025-12-08 04:17:03', NULL, NULL, NULL, NULL),
(12, 4, 'user', 'Hello, I tried withdrawing from my wallet but it keeps showing an error message.', '2025-12-08 04:29:35', NULL, NULL, NULL, NULL),
(13, 3, 'user', 'Just an update: still not received.', '2025-12-08 04:32:41', NULL, NULL, NULL, NULL),
(14, 3, 'user', 'Just an update: still not received.', '2025-12-08 04:33:58', NULL, NULL, NULL, NULL),
(15, 5, 'user', 'Hello, I tried withdrawing from my wallet but it keeps showing an error message.', '2025-12-08 04:34:11', NULL, NULL, NULL, NULL),
(16, 6, 'user', 'Hello, I tried withdrawing from my wallet but it keeps showing an error message.', '2025-12-08 04:45:38', NULL, NULL, NULL, NULL),
(17, 7, 'user', 'Hello, I tried withdrawing from my wallet but it keeps showing an error message.', '2025-12-08 04:45:48', NULL, NULL, NULL, NULL),
(18, 8, 'user', 'Hello, I tried withdrawing from my wallet but it keeps showing an error message.', '2025-12-08 04:48:06', NULL, NULL, NULL, NULL),
(19, 8, 'admin', 'noted m man', '2025-12-08 04:48:22', NULL, NULL, NULL, NULL),
(20, 2, 'admin', 'ok it working well', '2025-12-08 05:01:57', NULL, NULL, NULL, NULL),
(21, 9, 'user', 'Bhhhhhhhhhhhuuj hhhh', '2026-07-07 19:27:16', NULL, NULL, NULL, NULL),
(22, 10, 'user', 'How ', '2026-08-15 00:20:17', NULL, NULL, NULL, NULL),
(23, 10, 'user', '', '2026-08-16 09:43:42', '/uploads/support_1786887822601_780760.png', 'ChatGPT Image Jul 27, 2026, 05_25_47 PM.png', 'image/png', 1996559),
(24, 10, 'admin', 'hello\r\n', '2026-08-16 09:46:34', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` enum('open','closed') DEFAULT 'open',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `subject`, `status`, `created_at`) VALUES
(1, 9, 'Can\'t withdraw funds', 'closed', '2025-10-14 08:11:34'),
(2, 9, 'Can\'t withdraw funds', 'closed', '2025-10-14 08:14:53'),
(3, 9, 'Can\'t withdraw funds', 'closed', '2025-10-14 08:17:50'),
(4, 9, 'Can\'t withdraw funds', 'open', '2025-12-08 04:29:35'),
(5, 9, 'Can\'t withdraw funds', 'open', '2025-12-08 04:34:11'),
(6, 9, 'Can\'t withdraw funds', 'open', '2025-12-08 04:45:38'),
(7, 9, 'Can\'t withdraw funds', 'closed', '2025-12-08 04:45:48'),
(8, 9, 'Can\'t withdraw funds', 'closed', '2025-12-08 04:48:06'),
(9, 9, 'Kuuuu', 'open', '2026-07-07 19:27:16'),
(10, 9, 'Hello', 'open', '2026-08-15 00:20:17');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transfer_type` enum('local','wire','sim') NOT NULL,
  `from_account` enum('savings','current') NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `reason` text DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `entry_type` enum('credit','debit') NOT NULL DEFAULT 'debit',
  `fee` decimal(12,2) DEFAULT 0.00,
  `status` varchar(50) NOT NULL DEFAULT 'pending_admin',
  `is_simulated` tinyint(1) NOT NULL DEFAULT 0,
  `sim_batch_id` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `bank_country` varchar(100) DEFAULT NULL,
  `routine_number` varchar(50) DEFAULT NULL,
  `imf_code` varchar(50) DEFAULT NULL,
  `cot_code` varchar(50) DEFAULT NULL,
  `tax_code` varchar(50) DEFAULT NULL,
  `total_amount` decimal(15,2) DEFAULT NULL,
  `otp_status` varchar(30) DEFAULT 'none',
  `otp_verified_at` datetime DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `admin_action_note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `user_id`, `transfer_type`, `from_account`, `bank_name`, `account_name`, `account_number`, `reason`, `amount`, `entry_type`, `fee`, `status`, `is_simulated`, `sim_batch_id`, `created_at`, `bank_country`, `routine_number`, `imf_code`, `cot_code`, `tax_code`, `total_amount`, `otp_status`, `otp_verified_at`, `confirmed_at`, `rejected_at`, `admin_action_note`) VALUES
(31, 9, 'wire', 'current', 'Opay Bank', 'Pioneer Healthcare PLLC', '0824001596', 'fee', 210.00, 'debit', 2.00, 'processing', 0, NULL, '2025-10-05 19:00:00', 'usa', '2345678', 'IMF2024', 'COT902', 'TAX601', NULL, 'none', NULL, NULL, NULL, NULL),
(32, 9, 'local', 'current', 'Opay Bank', 'Pioneer Healthcare PLLC', '0824001596', 'fee', 1000.00, 'debit', 3.00, 'processing', 0, NULL, '2025-10-05 19:00:00', 'usa', '2345678', NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(33, 9, 'wire', 'current', 'Bank Of America', 'Summit Legal Services PLLC', '9302939164', 'Business Payment', 100.00, 'debit', 2.00, 'processing', 0, NULL, '2025-08-08 19:47:07', 'USA', '021000021', 'IMF2024', 'COT902', 'TAX501', NULL, 'none', NULL, NULL, NULL, NULL),
(34, 9, 'wire', 'current', 'Bank Of America', 'Summit Legal Services PLLC', '9302939164', 'Business Payment', 1200.00, 'debit', 2.00, 'processing', 0, NULL, '2025-08-08 19:47:07', 'USA', '021000021', 'IMF2024', 'COT902', 'TAX501', NULL, 'none', NULL, NULL, NULL, NULL),
(35, 9, 'wire', 'current', 'Bank Of America', 'Summit Legal Services PLLC', '9302939164', 'Business Payment', 100.00, 'debit', 2.00, 'processing', 0, NULL, '2025-08-08 19:47:07', 'USA', '021000021', 'IMF2024', 'COT902', 'TAX501', NULL, 'none', NULL, NULL, NULL, NULL),
(36, 9, 'wire', 'current', 'Opay Bank', 'Pioneer Healthcare PLLC', '0824001596', 'fee', 210.00, 'debit', 2.00, 'processing', 0, NULL, '2025-10-05 19:00:00', 'usa', '2345678', 'IMF2024', 'COT902', 'TAX601', NULL, 'none', NULL, NULL, NULL, NULL),
(37, 9, 'local', 'savings', 'Gtbank', 'Crescent Financial Advisors LLC', '4476517632', 'Rent', 5000.00, 'debit', 3.00, 'processing', 0, NULL, '2025-12-29 11:22:22', 'United States', '354246532', NULL, NULL, NULL, 5003.00, 'pending_otp', NULL, NULL, NULL, NULL),
(38, 9, 'local', 'savings', 'Gtbank', 'Crescent Financial Advisors LLC', '4476517632', 'Rent', 5000.00, 'debit', 3.00, 'processing', 0, NULL, '2025-12-29 11:22:56', 'United States', '354246532', NULL, NULL, NULL, 5003.00, 'verified', '2025-12-29 03:38:21', NULL, NULL, NULL),
(39, 9, 'local', 'savings', 'Gtbank', 'Crescent Financial Advisors LLC', '4476517632', 'Rent', 5000.00, 'debit', 3.00, 'processing', 0, NULL, '2025-12-29 11:23:31', 'United States', '354246532', NULL, NULL, NULL, 5003.00, 'pending_otp', NULL, NULL, NULL, NULL),
(40, 9, 'local', 'savings', 'Gtbank', 'Crescent Financial Advisors LLC', '4476517632', 'Rent', 5000.00, 'debit', 3.00, 'processing', 0, NULL, '2025-12-29 11:24:36', 'United States', '354246532', NULL, NULL, NULL, 5003.00, 'verified', '2025-12-29 03:26:38', NULL, NULL, NULL),
(41, 9, 'local', 'savings', 'Gtbank', 'Crescent Financial Advisors LLC', '4476517632', 'Rent', 1000.00, 'debit', 3.00, 'processing', 0, NULL, '2025-12-29 11:52:53', 'United States', '354246532', NULL, NULL, NULL, 1003.00, 'verified', '2025-12-29 03:52:53', NULL, NULL, NULL),
(42, 9, 'local', 'savings', 'Gtbank', 'Crescent Financial Advisors LLC', '4476517632', 'Family support', 500.00, 'debit', 3.00, 'processing', 0, NULL, '2025-12-29 12:08:07', 'United States', '354246532', NULL, NULL, NULL, 503.00, 'verified', '2025-12-29 04:08:07', NULL, NULL, NULL),
(43, 9, 'wire', 'savings', 'Chase Bank', 'Crescent Financial Advisors LLC', '1299069554', 'Invoice settlement', 869.00, 'debit', 7.50, 'completed', 0, NULL, '2026-01-05 20:38:00', 'United States', '021000021', 'IMF2024', 'COT902', 'TAX601', 502.00, 'verified', '2025-12-29 04:11:10', NULL, NULL, NULL),
(44, 9, 'local', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Rent', 1500.00, 'debit', 3.00, 'processing', 0, NULL, '2026-01-20 05:46:06', 'United States', '221997300', NULL, NULL, NULL, 1503.00, 'verified', '2026-01-19 21:46:06', NULL, NULL, NULL),
(45, 9, 'local', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Rent', 1500.00, 'debit', 3.00, 'completed', 0, NULL, '2026-01-20 05:49:44', 'United States', '221997300', NULL, NULL, NULL, 1503.00, 'verified', '2026-01-19 21:49:44', '2026-01-19 21:49:44', NULL, NULL),
(46, 9, 'local', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Rent', 1500.00, 'debit', 3.00, 'pending_admin', 0, NULL, '2026-01-20 05:50:35', 'United States', '221997300', NULL, NULL, NULL, 1503.00, 'verified', '2026-01-19 21:50:35', NULL, NULL, NULL),
(47, 9, 'wire', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Family support', 500.00, 'debit', 2.00, 'pending_admin', 0, NULL, '2026-01-20 05:55:53', 'Nigeria', '123456789', 'IMF2024', 'COT902', 'TAX601', 502.00, 'pending_otp', NULL, NULL, NULL, NULL),
(48, 9, 'wire', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Family support', 500.00, 'debit', 2.00, 'processing', 0, NULL, '2026-01-20 05:58:13', 'Nigeria', '123456789', 'IMF2024', 'COT902', 'TAX601', 502.00, 'pending_otp', NULL, NULL, NULL, NULL),
(49, 9, 'wire', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Family support', 500.00, 'debit', 2.00, 'processing', 0, NULL, '2026-01-20 06:03:42', 'Nigeria', '123456789', 'IMF2024', 'COT902', 'TAX601', 502.00, 'pending_otp', NULL, NULL, NULL, NULL),
(50, 9, 'wire', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Family support', 500.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 06:04:05', 'Nigeria', '123456789', 'IMF2024', 'COT902', 'TAX601', 502.00, 'verified', '2026-01-19 22:04:05', '2026-01-19 22:04:05', NULL, NULL),
(51, 9, 'local', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '12345', 200.00, 'debit', 3.00, 'pending_admin', 0, NULL, '2026-01-20 06:12:09', 'United States', '102197229', NULL, NULL, NULL, 203.00, 'verified', '2026-01-19 22:12:09', NULL, NULL, NULL),
(52, 9, 'local', 'savings', 'Gtbank', 'Westbridge Construction Co.', '0526128979', 'Rent', 1500.00, 'debit', 3.00, 'pending_admin', 0, NULL, '2026-01-20 06:13:20', 'United States', '221997300', NULL, NULL, NULL, 1503.00, 'verified', '2026-01-19 22:13:20', NULL, NULL, NULL),
(53, 9, 'local', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '12345', 200.00, 'debit', 3.00, 'completed', 0, NULL, '2026-01-20 06:13:56', 'United States', '102197229', NULL, NULL, NULL, 203.00, 'verified', '2026-01-19 22:13:56', '2026-01-19 22:13:56', NULL, NULL),
(54, 9, 'wire', 'savings', 'Opay Bank', 'Charlotte Thomas', '6359191705', '234567', 200.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 06:38:45', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 22:38:45', '2026-01-19 22:38:45', NULL, NULL),
(55, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '1345', 200.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 06:40:31', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 22:40:31', '2026-01-19 22:40:31', NULL, NULL),
(56, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', 'tesr', 200.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 06:41:47', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 22:41:47', '2026-01-19 22:41:47', NULL, NULL),
(57, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', 'tesr', 200.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 06:42:37', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 22:42:37', '2026-01-19 22:42:37', NULL, NULL),
(58, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', 'gg', 200.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 06:46:15', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 22:46:15', '2026-01-19 22:46:15', NULL, NULL),
(59, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', 'gg', 200.00, 'debit', 2.00, 'failed', 0, NULL, '2026-01-20 06:46:49', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 22:46:49', '2026-01-19 22:46:49', NULL, NULL),
(60, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '12', 200.00, 'debit', 2.00, 'failed', 0, NULL, '2026-01-20 07:05:19', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 23:05:19', '2026-01-19 23:05:19', NULL, NULL),
(61, 9, 'wire', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '1234567890', 200.00, 'debit', 2.00, 'completed', 0, NULL, '2026-01-20 07:06:13', 'usa', '2345678', 'IMF2024', NULL, NULL, 202.00, 'verified', '2026-01-19 23:07:04', NULL, NULL, NULL),
(62, 9, 'local', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '123456', 200.00, 'debit', 3.00, 'completed', 0, NULL, '2026-01-20 07:29:37', 'United States', '102197229', NULL, NULL, NULL, 203.00, 'verified', '2026-01-19 23:29:37', '2026-01-19 23:29:37', NULL, NULL),
(63, 9, 'local', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '123456', 200.00, 'debit', 3.00, 'completed', 0, NULL, '2026-01-20 07:32:22', 'United States', '102197229', NULL, NULL, NULL, 203.00, 'verified', '2026-01-19 23:32:22', '2026-01-19 23:32:22', NULL, NULL),
(64, 9, 'local', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', '123456', 200.00, 'debit', 3.00, 'completed', 0, NULL, '2026-01-20 07:33:47', 'United States', '102197229', NULL, NULL, NULL, 203.00, 'verified', '2026-01-19 23:33:47', '2026-01-19 23:33:47', NULL, NULL),
(65, 9, 'local', 'current', 'Opay Bank', 'Charlotte Thomas', '6359191705', 'noted', 200.00, 'debit', 3.00, 'completed', 0, NULL, '2026-01-20 07:42:49', 'United States', '102197229', NULL, NULL, NULL, 203.00, 'verified', '2026-01-19 23:42:49', '2026-01-19 23:42:49', NULL, NULL),
(66, 9, 'local', 'current', 'Sun Trust', 'Atlas Freight & Shipping LLC', '9509522137', 'for you', 100.00, 'debit', 3.00, 'completed', 0, NULL, '2026-06-17 16:01:28', 'United States', '143306223', NULL, NULL, NULL, 103.00, 'verified', '2026-06-17 09:01:28', '2026-06-17 09:01:28', NULL, NULL),
(67, 9, 'local', 'current', 'Sun Trust', 'Atlas Freight & Shipping LLC', '9509522137', 'for you', 100.00, 'debit', 3.00, 'completed', 0, NULL, '2026-06-17 16:04:47', 'United States', '143306223', NULL, NULL, NULL, 103.00, 'verified', '2026-06-17 09:04:47', '2026-06-17 09:04:47', NULL, NULL),
(68, 9, 'local', 'current', 'Gamers Bank', 'Elijah Moore', '7548831360', 'For family', 2000.00, 'debit', 3.00, 'completed', 0, NULL, '2026-06-18 16:22:18', 'United States', '689651853', NULL, NULL, NULL, 2003.00, 'verified', '2026-06-18 12:22:18', '2026-06-18 12:22:18', NULL, NULL),
(69, 9, 'local', 'current', 'National Australia Bank', 'James Anderson', '6865830707', 'Card Settlement', 1000.00, 'credit', 0.00, 'completed', 1, '51d52558-5518-47a7-bcf0-79d3b2ea183c', '2026-06-19 16:00:00', 'Australia', '72302074435', NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(70, 9, 'local', 'current', 'Regions Bank', 'Olivia Martinez', '9890310240', 'Utilities', 1000.00, 'credit', 0.00, 'completed', 1, '93fb1654-680b-484a-828a-17c79318fe27', '2026-06-19 16:00:00', 'United States', '996870424', NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(71, 9, 'local', 'current', 'Goldman Sachs Bank USA', 'Elijah Moore', '0877773438', 'Consulting Services', 1000.00, 'credit', 0.00, 'completed', 1, '36bbe24f-8581-4633-bebf-bc75c9c26e80', '2026-06-20 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(72, 9, 'local', 'current', 'Chase Bank', 'Exxon Mobil ', '92736291028', 'Half payment for repair', 1000000.00, 'credit', 0.00, 'completed', 1, '5f86564c-7c28-4459-8f20-a163833c2ef0', '2026-06-21 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(76, 9, 'local', 'current', 'Opay ', 'Sam maverick ', '9644290302', 'Payroll', 1000.00, 'credit', 0.00, 'failed', 1, 'aad98214-776d-4298-9cdb-8520845a0617', '2026-06-25 03:59:00', '', '', NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(78, 9, 'local', 'savings', 'PNC Bank', 'Sophia Miller', '1282850659', 'Salary Payment', 10000.00, 'credit', 0.00, 'completed', 1, '437124e3-b8d8-43d5-a6b3-7b0d98bab0e4', '2026-06-24 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(79, 9, 'local', 'savings', 'Mizuho Bank', 'Westbridge Construction Co.', '3361896539', 'Insurance Premium', 1000.00, 'credit', 0.00, 'completed', 1, '00ada7d0-9e5e-4fd2-a714-e15304ace156', '2026-06-24 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(81, 18, 'local', 'current', 'JPMORGAN CHASE BANK, N.A.', 'EXXON MOBIL CORPORATION', '0054XXXXX173', 'Notice of Remittance – Partial Payment for Machinery Repair Services', 1150000.00, 'credit', 0.00, 'completed', 1, '8946f9d6-12f0-4ec4-a3fa-ee4adc8632e4', '2026-06-25 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(83, 9, 'local', 'current', 'Ally Bank', 'Silverline Tech Solutions Inc.', '7450133183', 'Payroll', 0.69, 'debit', 30.00, 'completed', 1, 'bb663929-7209-4eb3-8c60-e7ac89beb5fd', '2026-06-26 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(88, 18, 'local', 'current', 'West Bridge Vault Reserve', 'Management Maintenance Fee (MMF)', '0002XXXX1001', 'Maintenance Fee Due Debit ', 0.01, 'debit', 30.00, 'completed', 1, 'b6f43cf5-5463-4c25-a7f4-95fa195b26f3', '2026-06-27 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(90, 18, 'local', 'current', 'Westbridge Vault Reserve', 'Management Reverse Unit (MRU)', '22XXXXXXXX90', 'DEBIT CARD REJECTED REFUND', 200.00, 'credit', 0.00, 'completed', 1, '85bccb1c-465d-4d10-a5a8-8f04f158e60c', '2026-07-03 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(91, 18, 'local', 'current', 'Regions Bank', 'Ava Brown', '6892928432', 'Expense Reimbursement', 60.00, 'debit', 30.00, 'completed', 1, 'b6546c45-7ad2-4151-9dd6-8bf683933993', '2026-07-03 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL),
(92, 20, 'local', 'current', 'Chase Bank', 'Gregory Mc. Johnson', 'XXX6881021002XXX', 'Company retirement fund payout final share.', 1090000.00, 'credit', 0.00, 'completed', 1, 'f8ade5f0-a2a9-4a30-a2f2-fb92077ae9cc', '2026-08-25 16:00:00', NULL, NULL, NULL, NULL, NULL, NULL, 'none', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transfer_fees`
--

CREATE TABLE `transfer_fees` (
  `id` int(11) NOT NULL,
  `type` enum('local','wire') NOT NULL,
  `fee_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_fees`
--

INSERT INTO `transfer_fees` (`id`, `type`, `fee_amount`, `created_at`, `updated_at`) VALUES
(1, 'local', 30.00, '2025-08-08 19:17:43', '2026-06-19 22:55:10'),
(3, 'wire', 80.00, '2025-08-08 19:17:43', '2026-06-25 16:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_otps`
--

CREATE TABLE `transfer_otps` (
  `id` int(11) NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `otp_hash` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  `last_sent_at` datetime NOT NULL,
  `attempts` int(11) DEFAULT 0,
  `max_attempts` int(11) DEFAULT 5,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer_otps`
--

INSERT INTO `transfer_otps` (`id`, `transfer_id`, `user_id`, `otp_hash`, `expires_at`, `last_sent_at`, `attempts`, `max_attempts`, `created_at`) VALUES
(2, 39, 9, '5c144f139ca31b2e8f45836868722f082eeed9b0d3d06269ebcde845c698b797', '2025-12-29 03:28:31', '2025-12-29 03:23:31', 0, 5, '2025-12-29 11:23:31'),
(5, 47, 9, 'ed08e415a54f9b8d2c9f6a73db239d638b105069ea639d90c9ed184baaeecf8b', '2026-01-19 22:00:53', '2026-01-19 21:55:53', 0, 5, '2026-01-20 05:55:53'),
(6, 48, 9, 'cee272f76662576e19401364b012428a534b0b12c3f2311ee33be316b2622d0f', '2026-01-19 22:03:13', '2026-01-19 21:58:13', 0, 5, '2026-01-20 05:58:13'),
(7, 49, 9, 'f084945956fc3c60d8ad107b3c2a0ef388103a112964bfb0d79cdc55fd6db1e8', '2026-01-19 22:08:42', '2026-01-19 22:03:42', 0, 5, '2026-01-20 06:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `savings_balance` varchar(255) DEFAULT '0',
  `loan_balance` varchar(255) DEFAULT '0',
  `current_balance` varchar(255) DEFAULT '0',
  `acct_status` varchar(20) NOT NULL DEFAULT 'pending',
  `currency_sign` varchar(5) DEFAULT '$',
  `is_admin` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT 0,
  `account_number` varchar(50) DEFAULT NULL,
  `login_otp_enabled` tinyint(1) DEFAULT 1,
  `transaction_pin` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `savings_balance`, `loan_balance`, `current_balance`, `acct_status`, `currency_sign`, `is_admin`, `created_at`, `full_name`, `email`, `email_verified`, `account_number`, `login_otp_enabled`, `transaction_pin`) VALUES
(1, 'admin', '$2b$12$zhGydJ33ifTHR8PbGzzMpujAsBnjybrgmRE71xrXpw0sChuGRiptu', '0', '0', '0', 'active', '$', 1, '2025-08-07 14:02:03', 'super admin', '8amjoker@gmail.com', 1, '123456', 0, NULL),
(9, 'habibi', '$2b$10$F0NLG5VXNabO.48KvLxgX.zLnJe2h2DtyHKOlfnF9a9j/s4bRu7tO', '4126.00', '0', '660969.31', 'active', '$', 0, '2025-08-07 19:21:54', 'sam light', '8amlight@gmail.com', 1, '011188783867', 0, '123456'),
(18, 'Mattman2015$', '$2b$10$8nAJFii0xyaZIDktBELhuOH9NHKedfNtqDWCHZw/l7M1u4gz/1w.O', '0', '0', '1149969.99', 'inactive', '$', 0, '2026-06-23 00:30:00', 'Debra Irene  Hagis', 'hagisdebbie0@gmail.com', 1, '017418689788', 1, NULL),
(20, 'jimmyjrichter935', '$2b$10$f8ZqS80XMIVbGbG7JOopP.uXsA6zo2RG6eVQ/1aY43zvk7TIyY0yO', '0', '0', '1090000', 'active', '$', 0, '2026-08-24 21:31:58', 'Jimmy J. Richter', 'jimmyjrichter935@gmail.com', 1, '012172016654', 1, '250902'),
(21, 'Robert007', '$2b$10$3Y91ilknPnMnWs3pwOQsRuc.mCetcnY0OckAbH/N7pXajCzD.1Lpq', '0', '0', '0', 'pending', '$', 0, '2026-11-03 11:01:23', 'James Robert Moretti', 'bearcuddle497@Gmail.com', 0, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_images`
--

CREATE TABLE `user_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_images`
--

INSERT INTO `user_images` (`id`, `user_id`, `image_url`, `uploaded_at`) VALUES
(1, 9, '/uploads/user_1754678710857.jpeg', '2025-08-08 18:45:11'),
(3, 1, '/uploads/user_1759631628711.png', '2025-10-05 02:33:49'),
(6, 20, '/uploads/user_1787607120796.jpeg', '2026-08-24 21:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_onboarding`
--

CREATE TABLE `user_onboarding` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `work_id` varchar(100) NOT NULL,
  `id_type` enum('passport','driver_license') NOT NULL,
  `id_front_url` varchar(255) NOT NULL,
  `id_back_url` varchar(255) NOT NULL,
  `face_photo_url` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending',
  `rejection_reason` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_onboarding`
--

INSERT INTO `user_onboarding` (`id`, `user_id`, `first_name`, `middle_name`, `last_name`, `age`, `work_id`, `id_type`, `id_front_url`, `id_back_url`, `face_photo_url`, `phone`, `address`, `status`, `rejection_reason`, `reviewed_by`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(2, 18, 'Debra', 'Irene ', 'Hagis', 63, '21 748 015', 'passport', '/uploads/kyc_id_front_1782174600287_906102.jpg', '/uploads/kyc_id_back_1782174600290_613074.jpg', '/uploads/kyc_face_photo_1782174600290_681092.jpg', '+1 4847141913', '1409 E 13th St', 'approved', NULL, 1, '2026-06-23 12:30:46', '2026-06-23 00:30:00', '2026-06-23 16:30:46'),
(3, 21, 'James', 'Robert', 'Moretti', 66, '7584085', 'driver_license', '/uploads/kyc_id_front_1793703682926_963461.jpg', '/uploads/kyc_id_back_1793703682927_331894.jpg', '/uploads/kyc_face_photo_1793703682930_93031.jpg', '+1 5126476269', '302 Wickham Ln, Austin, TX 78725', 'pending', NULL, NULL, NULL, '2026-11-03 11:01:23', '2026-11-03 11:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `wallet_name` varchar(100) NOT NULL,
  `wallet_address` text NOT NULL,
  `qrcode_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `wallet_name`, `wallet_address`, `qrcode_path`, `created_at`) VALUES
(2, 'Bitcoin', 'bc1qexampleaddress12345', 'uploads/wallet_1760453196646.jpeg', '2025-10-14 14:46:19'),
(3, 'Eth', '0x62B66B0417b69a9aa108eD8458a58820507f23E2', 'uploads/wallet_1760461568498.jpeg', '2025-10-14 17:06:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `s_account_number` (`s_account_number`),
  ADD UNIQUE KEY `c_account_number` (`c_account_number`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_accounts_routing_number` (`routing_number`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `atm_cards`
--
ALTER TABLE `atm_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bill_payments_user_id` (`user_id`),
  ADD KEY `idx_bill_payments_status` (`status`);

--
-- Indexes for table `card_fees`
--
ALTER TABLE `card_fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_type` (`account_type`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_loan_applications_user_id` (`user_id`),
  ADD KEY `idx_loan_applications_status` (`status`),
  ADD KEY `idx_loan_applications_reviewed_by` (`reviewed_by`);

--
-- Indexes for table `login_otps`
--
ALTER TABLE `login_otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `security_codes`
--
ALTER TABLE `security_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `security_settings`
--
ALTER TABLE `security_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `self_transfers`
--
ALTER TABLE `self_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_name` (`key_name`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `idx_support_messages_attachment_url` (`attachment_url`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transfer_fees`
--
ALTER TABLE `transfer_fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_type` (`type`);

--
-- Indexes for table `transfer_otps`
--
ALTER TABLE `transfer_otps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_transfer` (`transfer_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_expires` (`expires_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_images`
--
ALTER TABLE `user_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_onboarding`
--
ALTER TABLE `user_onboarding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_onboarding_user` (`user_id`),
  ADD KEY `fk_user_onboarding_reviewer` (`reviewed_by`),
  ADD KEY `idx_user_onboarding_status` (`status`),
  ADD KEY `idx_user_onboarding_created_at` (`created_at`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;

--
-- AUTO_INCREMENT for table `atm_cards`
--
ALTER TABLE `atm_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bill_payments`
--
ALTER TABLE `bill_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `card_fees`
--
ALTER TABLE `card_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_applications`
--
ALTER TABLE `loan_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_otps`
--
ALTER TABLE `login_otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `security_codes`
--
ALTER TABLE `security_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `self_transfers`
--
ALTER TABLE `self_transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `transfer_fees`
--
ALTER TABLE `transfer_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transfer_otps`
--
ALTER TABLE `transfer_otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_images`
--
ALTER TABLE `user_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_onboarding`
--
ALTER TABLE `user_onboarding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `atm_cards`
--
ALTER TABLE `atm_cards`
  ADD CONSTRAINT `atm_cards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bill_payments`
--
ALTER TABLE `bill_payments`
  ADD CONSTRAINT `fk_bill_payments_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loan_applications`
--
ALTER TABLE `loan_applications`
  ADD CONSTRAINT `fk_loan_applications_reviewed_by` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_loan_applications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_otps`
--
ALTER TABLE `login_otps`
  ADD CONSTRAINT `login_otps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `otps`
--
ALTER TABLE `otps`
  ADD CONSTRAINT `otps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `self_transfers`
--
ALTER TABLE `self_transfers`
  ADD CONSTRAINT `self_transfers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD CONSTRAINT `support_messages_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_images`
--
ALTER TABLE `user_images`
  ADD CONSTRAINT `user_images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_onboarding`
--
ALTER TABLE `user_onboarding`
  ADD CONSTRAINT `fk_user_onboarding_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_user_onboarding_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
