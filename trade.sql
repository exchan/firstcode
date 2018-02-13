-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 27, 2017 at 05:40 AM
-- Server version: 5.5.57-MariaDB-1ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trade1`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE IF NOT EXISTS `balance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `amount`, `wallet_id`) VALUES
(1, 89, 390, 1),
(2, 89, 40.2672, 8),
(3, 93, 315, 1),
(4, 93, 14.3888, 8);

-- --------------------------------------------------------

--
-- Table structure for table `coin_votes`
--

CREATE TABLE IF NOT EXISTS `coin_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `btc_address` varchar(255) NOT NULL,
  `siteinfo` varchar(500) NOT NULL,
  `label_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `coin_votes`
--

INSERT INTO `coin_votes` (`id`, `code`, `name`, `btc_address`, `siteinfo`, `label_address`) VALUES
(3, 'AGC', 'AGRICOIN', 'MRdugC5GpVS72DScgoPzLzRTNQanjWAkd6', 'https://bitcointalk.org/index.php?topic=2433023.0', '');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `transaction_id` text,
  `amount` double DEFAULT NULL,
  `paid` int(4) DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `address` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `wallet_id`, `transaction_id`, `amount`, `paid`, `confirmations`, `address`, `created_at`, `updated_at`) VALUES
(2, 93, 1, '84a12c10da4bbc89e1675720cb89650930cc4d10d0a7dad8bff7ac44ce7b6443', 10, 1, 2111, 'MWGx8Weo3ush8rV7hMa3oug27Tbb8e7bdU', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(3, 89, 1, '2c6d746632d0864086faee47588b300392189d1e8d0e812b31fe58453d510a43', 100, 1, 1132, 'MBLYZTFMNpYeeYcjQaY6uAEgXWM66xbani', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(4, 89, 1, '5227e7b7c25527832389b1a1731cd61da577e3416e25dedf7c4634cd23b06576', 100, 1, 499, 'MBLYZTFMNpYeeYcjQaY6uAEgXWM66xbani', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(5, 93, 1, '4e250c601d39764b3593b6ef47b3c8305467698279ddf7fa6c3718faff9150a3', 100, 1, 496, 'MWGx8Weo3ush8rV7hMa3oug27Tbb8e7bdU', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(6, 93, 1, '9c826429d579d37523cea144e514b1b6f197a4950b12761294b360a126e05a82', 52, 1, 485, 'MWGx8Weo3ush8rV7hMa3oug27Tbb8e7bdU', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(7, 93, 1, 'd2f2365b5e8edf50f6c2b26f39053961f1b533ed430de0141fe89554e57f58f0', 100, 1, 459, 'MSZjZc9SwM2b8SQBGvVA8vmLNBde41SNj3', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(8, 89, 1, 'a8d9304bf336bde707081674e5557da67b6bdc4e501ea649f78f24ba4bf43056', 100, 1, 351, 'MBLYZTFMNpYeeYcjQaY6uAEgXWM66xbani', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(9, 93, 1, 'fd7ae2a15b5a79c5e6521d2ed7650b5509a723c73974504d0c3357002603600b', 50, 1, 283, 'MBxhuqUhazd8rNSoguEML13oK4tptMpJQr', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(10, 89, 1, 'fc3d331da3448409d77955e6b6d7f774f0370fc9859af2a09a4a98dfd0693251', 100, 1, 279, 'MBLYZTFMNpYeeYcjQaY6uAEgXWM66xbani', '2017-11-24 19:49:26', '2017-11-25 02:48:08'),
(11, 89, 1, '54a79839f7d79c0fbd0e4194d428edcd06e36d550499c4ee8284cb9bbbdd126b', 10, 1, 279, 'MBLYZTFMNpYeeYcjQaY6uAEgXWM66xbani', '2017-11-24 19:49:26', '2017-11-25 02:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `fee_trade`
--

CREATE TABLE IF NOT EXISTS `fee_trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_sell` double DEFAULT NULL,
  `fee_buy` double DEFAULT NULL,
  `market_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `fee_trade`
--

INSERT INTO `fee_trade` (`id`, `fee_sell`, `fee_buy`, `market_id`) VALUES
(1, 0.2, 0.2, 64),
(74, 0, 0, 65),
(75, 0, 0, 66),
(76, 0, 0, 67),
(77, 0, 0, 68),
(78, 0, 0, 69),
(79, 0, 0, 70),
(80, 0, 0, 71),
(81, 0, 0, 72),
(82, 0, 0, 73);

-- --------------------------------------------------------

--
-- Table structure for table `fee_withdraw`
--

CREATE TABLE IF NOT EXISTS `fee_withdraw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `percent_fee` double DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `fee_withdraw`
--

INSERT INTO `fee_withdraw` (`id`, `percent_fee`, `wallet_id`) VALUES
(1, 0.0002, 1),
(5, 0, 8),
(13, 0, 16),
(21, 0, 24),
(32, 0, 35);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE IF NOT EXISTS `login_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=51 ;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_id`, `ip_address`, `date`) VALUES
(22, 89, '192.168.193.1', '2017-11-22 13:47:08'),
(31, 89, '192.168.193.1', '2017-11-24 04:16:02'),
(32, 89, '192.168.193.1', '2017-11-24 06:32:41'),
(33, 89, '192.168.193.1', '2017-11-24 12:26:14'),
(34, 91, '192.168.193.1', '2017-11-24 12:43:19'),
(35, 93, '192.168.193.1', '2017-11-24 12:58:02'),
(36, 89, '192.168.193.1', '2017-11-24 13:49:41'),
(37, 89, '192.168.193.1', '2017-11-24 18:32:52'),
(38, 89, '192.168.193.1', '2017-11-24 22:05:26'),
(39, 89, '192.168.193.1', '2017-11-25 02:48:42'),
(40, 89, '192.168.193.1', '2017-11-25 05:29:56'),
(41, 89, '192.168.193.1', '2017-11-25 05:54:30'),
(42, 89, '192.168.193.1', '2017-11-25 07:53:26'),
(43, 93, '192.168.193.1', '2017-11-25 10:14:38'),
(44, 89, '192.168.193.1', '2017-11-25 10:21:15'),
(45, 93, '192.168.193.1', '2017-11-25 10:23:19'),
(46, 89, '192.168.193.1', '2017-11-25 11:22:08'),
(47, 89, '192.168.193.1', '2017-11-25 14:31:37'),
(48, 89, '192.168.193.1', '2017-11-25 20:34:38'),
(49, 89, '192.168.193.1', '2017-11-26 03:26:37'),
(50, 89, '192.168.193.1', '2017-11-26 10:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE IF NOT EXISTS `market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet_from` varchar(10) DEFAULT NULL COMMENT 'match to wallet type',
  `wallet_to` varchar(10) DEFAULT NULL COMMENT 'match to wallet type',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `market`
--

INSERT INTO `market` (`id`, `wallet_from`, `wallet_to`, `active`) VALUES
(64, '1', '8', 1),
(65, '1', '35', 1),
(66, '1', '24', 1),
(67, '16', '35', 1),
(68, '16', '8', 1),
(69, '16', '24', 1),
(70, '8', '35', 1),
(71, '24', '35', 1),
(72, '24', '8', 1),
(73, '8', '24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `method_deposit_currency`
--

CREATE TABLE IF NOT EXISTS `method_deposit_currency` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dfee` float NOT NULL DEFAULT '0',
  `dmin` float NOT NULL DEFAULT '0',
  `ddes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dminfee` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `method_deposit_currency`
--

INSERT INTO `method_deposit_currency` (`id`, `dname`, `dfee`, `dmin`, `ddes`, `dminfee`) VALUES
(1, 'WIRE TRANSFER', 10, 10, 'Bank name:	<b>HSBC BANK USA</b>\r\nBank address:	cantho vietname\r\nBank swift:	MRMDUS33\r\nBank account:	000047490\r\nBank details:	ACC ID S505169E<br>\r\nBank name:	<b>HSBC BANK USA</b>\r\nBank address:	cantho vietname\r\nBank swift:	MRMDUS33\r\nBank account:	000047490', 1),
(3, 'PAYSAFE', 20, 0, 'Paysafe ID: 6578787798798', 0),
(4, 'EGOPAY', 1, 0, 'Egopay', 0);

-- --------------------------------------------------------

--
-- Table structure for table `method_withdraw_currency`
--

CREATE TABLE IF NOT EXISTS `method_withdraw_currency` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `wname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wfee` float NOT NULL DEFAULT '0',
  `wmin` float NOT NULL DEFAULT '0',
  `wdes` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `wminfee` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `method_withdraw_currency`
--

INSERT INTO `method_withdraw_currency` (`id`, `wname`, `wfee`, `wmin`, `wdes`, `wminfee`) VALUES
(11, 'WIRE TRANSFER', 1.5, 10, 'International withdrawals will be charged with 1.5% fee, minimum fee is 150.\r\nBenificiary Name:\r\nAccount Number/IBAN:\r\nSWIFT/ABA:\r\nBenificiary Address:\r\nName Of Bank:\r\nBank address: \r\nwithdrawals wire transfer could take up to 5-7 day to process.\r\nFee is non refundable if we got refund of your transfer', 10),
(13, 'PAYPAL', 7, 10, 'fee paypal - paid by the beneficiary maximum amount per transaction - 2500\r\nsend weekdays only Paypal Withdrawal within 5 working days', 10),
(14, 'SKRILL', 0, 100, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_03_18_013822_confide_setup_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `from_value` double DEFAULT NULL,
  `to_value` double DEFAULT NULL COMMENT 'price * from_value',
  `type` enum('sell','buy') DEFAULT NULL COMMENT 'sell or buy',
  `status` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `market_id`, `user_id`, `price`, `from_value`, `to_value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(0, 0, 0, 0, 0, 0, 'buy', '0', '0000-00-00', '2014-05-05 15:12:51'),
(2, 54, 89, 1, 5, 5, 'sell', 'active', '2017-11-20', '2017-11-20 19:03:06'),
(4, 53, 89, 0.5, 3, 1.5, 'sell', 'filled', '2017-11-20', '2017-11-22 14:29:06'),
(7, 55, 89, 0.0001, 2, 0.0002, 'sell', 'active', '2017-11-21', '2017-11-21 00:33:54'),
(8, 53, 89, 0.5, 3, 1.5, 'sell', 'filled', '2017-11-21', '2017-11-22 14:30:04'),
(10, 55, 89, 0.0001, 4, 0.0004, 'sell', 'active', '2017-11-22', '2017-11-22 04:16:49'),
(12, 53, 89, 1, 5, 5, 'sell', 'filled', '2017-11-22', '2017-11-22 14:31:58'),
(13, 60, 89, 0.004, 5, 0.02, 'sell', 'active', '2017-11-22', '2017-11-22 14:33:35'),
(14, 53, 89, 0.01, 9, 0.09, 'sell', 'filled', '2017-11-22', '2017-11-22 14:38:22'),
(15, 64, 89, 1, 1, 1, 'buy', 'filled', '2017-11-22', '2017-11-22 14:53:52'),
(16, 64, 89, 1, 1, 1, 'buy', 'filled', '2017-11-22', '2017-11-22 15:01:46'),
(25, 65, 89, 0.007, 9, 0.063, 'sell', 'active', '2017-11-25', '2017-11-25 03:56:32'),
(26, 65, 89, 0.007, 5, 0.035, 'sell', 'active', '2017-11-25', '2017-11-25 04:03:29'),
(27, 64, 89, 0.2, 3, 0.6, 'sell', 'filled', '2017-11-25', '2017-11-25 10:24:10'),
(28, 65, 89, 0.007, 10, 0.07, 'sell', 'active', '2017-11-25', '2017-11-25 05:57:49'),
(30, 64, 93, 5, 9, 45, 'sell', 'partly filled', '2017-11-25', '2017-11-26 16:07:51'),
(31, 64, 93, 4, 10, 40, 'buy', 'filled', '2017-11-25', '2017-11-26 16:08:34'),
(32, 64, 89, 5, 5, 25, 'sell', 'active', '2017-11-26', '2017-11-26 15:10:52'),
(33, 64, 89, 5, 1, 5, 'sell', 'active', '2017-11-26', '2017-11-26 15:17:43'),
(34, 64, 89, 5, 1, 5, 'sell', 'active', '2017-11-26', '2017-11-26 15:19:34'),
(35, 64, 89, 5, 2, 10, 'sell', 'active', '2017-11-26', '2017-11-26 15:59:06'),
(36, 64, 89, 4, 1, 4, 'buy', 'filled', '2017-11-26', '2017-11-26 16:12:38'),
(37, 64, 89, 4, 4, 16, 'sell', 'partly filled', '2017-11-26', '2017-11-26 16:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('trinm1987@gmail.com', 'a729b743987f472a5c8d4d24ca80878e', '2014-05-13 05:54:26'),
('trinm1987@gmail.com', '55b14f3e56d1f642d47383dc7c025ee8', '2014-05-13 05:54:36'),
('trinm1987@gmail.com', 'fa15c89f0e6179cc73a3bc014f8b14bc', '2014-05-14 01:03:55'),
('ntngocthuy88@gmail.com', '15f7d8295a4cd8d0bc0930894e425132', '2014-05-14 01:09:28'),
('trinm1987@gmail.com', 'def64b1f0e1dd81943223763b51be5da', '2014-05-14 01:11:11'),
('trinm1987@gmail.com', '681bea963f94540bfd50e4846cb2174a', '2014-05-14 23:43:30'),
('jason87nguyen@gmail.com', '6fb00908a2333192c86ab801602a13c6', '2014-05-19 08:51:00'),
('ngoc88thuy@gmail.com', '12629092bbbf99707c9935777080e5d3', '2014-05-23 08:03:24'),
('thuynguyen0388@yahoo.com.vn', 'de49e49c5f3ed4b2ec85ef5c2659e33c', '2014-05-23 08:13:28'),
('ngoc88thuy@gmail.com', 'f90051c8ce348927bfbc6c73f3259951', '2014-05-23 08:14:22'),
('trinm1987@gmail.com', '5ad106f8bd46f8461e71f4e73f4c8ce6', '2014-05-24 14:22:11'),
('trinm1987@gmail.com', '7679e1c55df295e1eb1ce9d0b37629e2', '2014-05-24 14:40:13'),
('ngoc88thuy@gmail.com', '5be611fd5a9044830e82ed1e98da0abd', '2014-05-25 04:53:26'),
('trinm1987@gmail.com', '0d041d8244b3c96793468972aa5ec4d1', '2014-05-25 05:16:16'),
('trinm1987@gmail.com', 'a3d0899a246e0fdb20ff48eaf74b92f2', '2014-05-25 14:51:24'),
('trinm1987@gmail.com', '8f515a2fbad1d5cf79ac11afa80ba462', '2014-05-28 02:15:59'),
('cryptopumper@live.com', '2cb63646f2c2f527ed4bede4f84ff828', '2014-05-29 05:51:56'),
('thuy@songnguyen.com.vn', 'f37a745483404320cbd420eadbcc9fb1', '2014-06-04 09:18:40'),
('thuy@songnguyen.com.vn', '4bbaf2c795a635a4d55f7e083c0f8b1b', '2014-06-11 20:06:53'),
('thuy@songnguyen.com.vn', '919d451abd54e5012e68ed19683e9959', '2014-06-11 20:08:38'),
('ntngocthuy88@gmail.com', '76632d69a0d4b6c435845d4195307a20', '2014-06-12 19:50:33'),
('sample@email.tst', '4dfd6fcbfb3fb17a8e5bb91501d6ee1b', '2014-07-22 06:30:41'),
('sample@email.tst', '4013c579d5386dd370ec5510e169ab22', '2014-08-30 18:46:08'),
('sample@email.tst', '2ee44877c36359a48bb245c57ebcd3cc', '2014-08-30 18:50:54'),
('sample@email.tst', 'c8660decb049f4ec63a6728bad980d35', '2014-08-30 18:52:49'),
('sample@email.tst', '93f048de25cee457f0cf2a22d820c262', '2014-08-30 18:52:49'),
('sample@email.tst', '156aa24d8740604a16c405a7e4f1cbbe', '2014-08-30 18:52:50'),
('sample@email.tst', 'be4837266f3158bfe7792dfd556a608a', '2014-08-30 18:52:50'),
('sample@email.tst', '9ecc825b006986b8c954059aa05719cf', '2014-08-30 18:52:50'),
('sample@email.tst', '3e2d6c61d793165207f0e0f31565005f', '2014-08-30 18:52:51'),
('sample@email.tst', 'c48eb7eba4012b04865fd24cb6f090c5', '2014-08-30 18:52:51'),
('sample@email.tst', 'bd5c6eb789e451d969617660c3b638b9', '2014-08-30 18:52:51'),
('sample@email.tst', '265c265a7af7ce87b92ef1a4214d1650', '2014-08-30 18:52:52'),
('sample@email.tst', '62d86df74205de57b1499d71654a9b07', '2014-08-30 18:52:52'),
('sample@email.tst', '966bee41c405573093d4ba36c44bb73a', '2014-08-30 18:52:52'),
('sample@email.tst', '9cb29729add317c314be394c08baeff4', '2014-08-30 18:52:53'),
('sample@email.tst', '6b8afb900b5f39127c7ed08fe134a414', '2014-08-30 18:52:53'),
('sample@email.tst', '348fc33686b3a83ee8c589593e1f5224', '2014-08-30 18:52:53'),
('sample@email.tst', '911212b35432eeaa724df017fefe9b79', '2014-08-30 18:52:54'),
('sample@email.tst', '23becb0f614e6054f8d34bdc37ffc974', '2014-08-30 18:52:54'),
('sample@email.tst', '07ffae011a10300a3cfbba93ecb1b5f9', '2014-08-30 18:52:55'),
('sample@email.tst', '7954b248d7774f5b5e13fda56cb47e15', '2014-08-30 18:52:55'),
('sample@email.tst', 'f71234bc8e39345414a68b59d94b2b97', '2014-08-30 18:52:55'),
('sample@email.tst', '95fbbaefd32f9f97e7d2f34d70f95365', '2014-08-30 18:52:56'),
('sample@email.tst', 'bc2970cf9ffdb9c1fca03fda8ea77bd9', '2014-09-05 02:43:32'),
('eu.sou.chris@hotmail.com', '6cc3cd6a4bc0dd3a8739a123f44c81ff', '2014-09-30 12:27:49'),
('altcoinexchanges@gmail.com', '39cdc1496afc84441e991edbba912d48', '2017-11-19 18:40:46'),
('hallpass246@gmail.com', 'd34f3c187321c10b3219b5342a73e105', '2017-11-21 20:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `phpmysqlautobackup`
--

CREATE TABLE IF NOT EXISTS `phpmysqlautobackup` (
  `id` int(11) NOT NULL,
  `version` varchar(6) DEFAULT NULL,
  `time_last_run` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phpmysqlautobackup_log`
--

CREATE TABLE IF NOT EXISTS `phpmysqlautobackup_log` (
  `date` int(11) NOT NULL,
  `bytes` int(11) NOT NULL,
  `lines` int(11) NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT 'post or page',
  `permalink` varchar(255) NOT NULL,
  `title` text,
  `body` longtext,
  `show_menu` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `permalink`, `title`, `body`, `show_menu`, `created_at`, `updated_at`) VALUES
(2, 'news', 'welcome-to--cryptoexchangecom-2', 'Welcome to  Cryptoexchange.com', '<ol>\r\n	<li>This is the new exchange site! ghjghjgh</li>\r\n	<li>khjkhjkhjk</li>\r\n	<li>jhkhjkhj</li>\r\n</ol>\r\n\r\n<p><img alt="" src="/ckfinder/userfiles/images/boy_fly_1-300x240.jpg" style="height:240px; width:300px" /></p>\r\n', NULL, '2014-04-02 00:57:02', '2014-05-15 00:11:33'),
(4, 'page', 'about-2', 'About', '<h2>about us</h2>\r\n', 1, '2014-04-02 01:17:59', '2014-05-27 09:07:07'),
(8, 'page', 'security', 'Security', '<h3><strong>Offline Funds Storage</strong></h3>\r\n\r\n<p>We store the majority of our customer&#39;s funds in a secure offline wallet, with only a portion available in a &#39;hot&#39; wallet for instant withdrawals. This method vastly improves security at a minor expense of large withdrawals requiring manual processing.</p>\r\n\r\n<h3><strong>DDoS Protection &amp; CDN Caching</strong></h3>\r\n\r\n<p>We utilize a leading DDoS provider for all public facing content and cache all static content on a CDN to provide the fastest possible load times.</p>\r\n\r\n<h3><strong>Logical &amp; Physical Security</strong></h3>\r\n\r\n<p>All website components are logically separated and protected by physical firewalls for increased security. All employees are required to connect to a secure VPN before gaining access to any systems.</p>\r\n\r\n<h3><strong>Secure Website</strong></h3>\r\n\r\n<p>All interaction with the website is required over HTTPS so all communication is encrypted via SSL.</p>\r\n\r\n<h3><strong>Two-Factor Authentication</strong></h3>\r\n\r\n<p>Customers can set up two-factor authentication for accounts with Google Authenticator to provide an extra layer of security.</p>\r\n\r\n<h3><strong>Server Scanning</strong></h3>\r\n\r\n<p>We use an industry recognised PCI (credit card provisioning compliance) scanning service to routinely scan the website to aid in locating any potential security issues.</p>\r\n\r\n<h3><strong>Application Security</strong></h3>\r\n\r\n<p>We use industry standard methods for preventing SQL Injection &amp; XSS attacks on our website. In additional, all passwords &amp; sensitive data are encrypted along with a static &amp; random salt.</p>\r\n', 1, '2014-04-02 02:09:10', '2014-04-02 02:09:10'),
(9, 'page', 'terms-2', 'Terms', '<p>terms</p>\r\n', 1, '2014-04-02 02:09:39', '2014-04-14 21:12:55'),
(10, 'news', 'myaltcoinmarkets-is-online', 'MyAltcoinMarkets is Online', 'MyAltcoinMarkets is cryptocurrency exchange platform.\r\nreward receive when you add the site link to your bitcointalk\r\nJr member for 2month 1000Doge\r\nMember for 3month 5000Doge\r\nSr Member for 3month 10,000 Doge\r\nHero Member for 3month 15,000Doge\r\nLegend for 3month 15,000Doge', NULL, '2017-11-19 14:32:51', '2017-11-19 14:32:51'),
(11, 'news', 'add-new-coin-exclusive-2', 'Add new coin exclusive', 'To add coin exclusive 0.1BTC\r\n', 1, '2017-11-20 19:57:59', '2017-11-23 03:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='<double-click to overwrite multiple objects>' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(3, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE IF NOT EXISTS `security_questions` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `questions` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='<double-click to overwrite multiple objects>' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `security_questions`
--

INSERT INTO `security_questions` (`id`, `questions`, `type`) VALUES
(1, 'What was the name of your first school?', 1),
(2, 'In what city or town was your first job?', 1),
(3, 'What is the name of your favorite childhood friend?', 1),
(4, 'Who was your childhood hero?', 1),
(5, 'Where were you when you had your first alcoholic drink or cigarette?', 1),
(6, 'Where were you when you had your first kiss?', 1),
(7, 'Where did you meet your significant other?', 1),
(8, 'What is the name of your first pet?', 2),
(9, 'What street did you grow up on?', 2),
(10, 'What was the name of the hospital where you were born?', 2),
(11, 'What was your dream job as a child?', 2),
(12, 'What country is your dream holiday destination?', 2),
(13, 'What was the make and model of your first car?', 2),
(14, 'What is your mother''s maiden name?', 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='<double-click to overwrite multiple objects>' AUTO_INCREMENT=63 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'datachart_market_1', 'a:14:{i:0;a:7:{s:4:"date";s:16:"2014-05-01 17:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:1;a:7:{s:4:"date";s:16:"2014-05-01 17:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:2;a:7:{s:4:"date";s:16:"2014-05-01 18:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:3;a:7:{s:4:"date";s:16:"2014-05-01 18:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:4;a:7:{s:4:"date";s:16:"2014-05-01 19:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:5;a:7:{s:4:"date";s:16:"2014-05-01 19:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:6;a:7:{s:4:"date";s:16:"2014-05-01 20:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:7;a:7:{s:4:"date";s:16:"2014-05-01 20:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:8;a:7:{s:4:"date";s:16:"2014-05-01 21:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:9;a:7:{s:4:"date";s:16:"2014-05-01 21:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:10;a:7:{s:4:"date";s:16:"2014-05-01 22:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:11;a:7:{s:4:"date";s:16:"2014-05-01 22:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:12;a:7:{s:4:"date";s:16:"2014-05-01 23:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:13;a:7:{s:4:"date";s:16:"2014-05-01 23:03";s:3:"low";i:0;s:4:"open";i:0;s:5:"close";i:0;s:4:"high";i:0;s:15:"exchange_volume";i:0;s:4:"temp";s:278:"\nnew_date: 2014-05-01 17:00:00\nend_date: 2014-05-01 23:03\n2014-05-01 17:00\n2014-05-01 17:30\n2014-05-01 18:00\n2014-05-01 18:30\n2014-05-01 19:00\n2014-05-01 19:30\n2014-05-01 20:00\n2014-05-01 20:30\n2014-05-01 21:00\n2014-05-01 21:30\n2014-05-01 22:00\n2014-05-01 22:30\n2014-05-01 23:00";}}'),
(2, 'price_open_start_chart', 'a:3:{s:4:"time";s:5:"19:00";s:13:"open_previous";s:10:"0.00003800";s:14:"close_previous";s:10:"0.00003800";}'),
(3, 'recaptcha_privatekey', '6LdOTjkUAAAAAP5poVKTP1IpnuBsbQEKknxCl1hl'),
(4, 'recaptcha_publickey', '6LdOTjkUAAAAAMdcLzj329GQLs9_iqWujX81Xy04'),
(5, 'datachart_market_13', 'a:14:{i:0;a:7:{s:4:"date";s:16:"2014-04-29 20:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:1;a:7:{s:4:"date";s:16:"2014-04-29 20:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:2;a:7:{s:4:"date";s:16:"2014-04-29 21:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:3;a:7:{s:4:"date";s:16:"2014-04-29 21:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:4;a:7:{s:4:"date";s:16:"2014-04-29 22:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:5;a:7:{s:4:"date";s:16:"2014-04-29 22:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:6;a:7:{s:4:"date";s:16:"2014-04-29 23:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:7;a:7:{s:4:"date";s:16:"2014-04-29 23:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:8;a:7:{s:4:"date";s:16:"2014-04-30 00:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:9;a:7:{s:4:"date";s:16:"2014-04-30 00:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:10;a:7:{s:4:"date";s:16:"2014-04-30 01:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:11;a:7:{s:4:"date";s:16:"2014-04-30 01:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:12;a:7:{s:4:"date";s:16:"2014-04-30 02:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:13;a:7:{s:4:"date";s:16:"2014-04-30 02:26";s:3:"low";i:0;s:4:"open";i:0;s:5:"close";i:0;s:4:"high";i:0;s:15:"exchange_volume";i:0;s:4:"temp";s:278:"\nnew_date: 2014-04-29 20:00:00\nend_date: 2014-04-30 02:26\n2014-04-29 20:00\n2014-04-29 20:30\n2014-04-29 21:00\n2014-04-29 21:30\n2014-04-29 22:00\n2014-04-29 22:30\n2014-04-29 23:00\n2014-04-29 23:30\n2014-04-30 00:00\n2014-04-30 00:30\n2014-04-30 01:00\n2014-04-30 01:30\n2014-04-30 02:00";}}'),
(6, 'datachart_market_14', 'a:14:{i:0;a:7:{s:4:"date";s:16:"2014-04-29 20:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:1;a:7:{s:4:"date";s:16:"2014-04-29 20:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:2;a:7:{s:4:"date";s:16:"2014-04-29 21:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:3;a:7:{s:4:"date";s:16:"2014-04-29 21:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:4;a:7:{s:4:"date";s:16:"2014-04-29 22:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:5;a:7:{s:4:"date";s:16:"2014-04-29 22:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:6;a:7:{s:4:"date";s:16:"2014-04-29 23:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:7;a:7:{s:4:"date";s:16:"2014-04-29 23:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:8;a:7:{s:4:"date";s:16:"2014-04-30 00:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:9;a:7:{s:4:"date";s:16:"2014-04-30 00:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:10;a:7:{s:4:"date";s:16:"2014-04-30 01:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:11;a:7:{s:4:"date";s:16:"2014-04-30 01:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:12;a:7:{s:4:"date";s:16:"2014-04-30 02:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:13;a:7:{s:4:"date";s:16:"2014-04-30 02:24";s:3:"low";i:0;s:4:"open";i:0;s:5:"close";i:0;s:4:"high";i:0;s:15:"exchange_volume";i:0;s:4:"temp";s:278:"\nnew_date: 2014-04-29 20:00:00\nend_date: 2014-04-30 02:24\n2014-04-29 20:00\n2014-04-29 20:30\n2014-04-29 21:00\n2014-04-29 21:30\n2014-04-29 22:00\n2014-04-29 22:30\n2014-04-29 23:00\n2014-04-29 23:30\n2014-04-30 00:00\n2014-04-30 00:30\n2014-04-30 01:00\n2014-04-30 01:30\n2014-04-30 02:00";}}'),
(7, 'disable_withdraw', NULL),
(8, 'amount_btc_per_vote', '100'),
(9, 'site_mode', NULL),
(10, 'datachart_market_11', 'a:14:{i:0;a:7:{s:4:"date";s:16:"2014-04-29 20:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:1;a:7:{s:4:"date";s:16:"2014-04-29 20:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:2;a:7:{s:4:"date";s:16:"2014-04-29 21:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:3;a:7:{s:4:"date";s:16:"2014-04-29 21:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:4;a:7:{s:4:"date";s:16:"2014-04-29 22:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:5;a:7:{s:4:"date";s:16:"2014-04-29 22:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:6;a:7:{s:4:"date";s:16:"2014-04-29 23:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:7;a:7:{s:4:"date";s:16:"2014-04-29 23:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:8;a:7:{s:4:"date";s:16:"2014-04-30 00:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:9;a:7:{s:4:"date";s:16:"2014-04-30 00:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:10;a:7:{s:4:"date";s:16:"2014-04-30 01:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:11;a:7:{s:4:"date";s:16:"2014-04-30 01:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:12;a:7:{s:4:"date";s:16:"2014-04-30 02:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:13;a:7:{s:4:"date";s:16:"2014-04-30 02:24";s:3:"low";i:0;s:4:"open";i:0;s:5:"close";i:0;s:4:"high";i:0;s:15:"exchange_volume";i:0;s:4:"temp";s:278:"\nnew_date: 2014-04-29 20:00:00\nend_date: 2014-04-30 02:24\n2014-04-29 20:00\n2014-04-29 20:30\n2014-04-29 21:00\n2014-04-29 21:30\n2014-04-29 22:00\n2014-04-29 22:30\n2014-04-29 23:00\n2014-04-29 23:30\n2014-04-30 00:00\n2014-04-30 00:30\n2014-04-30 01:00\n2014-04-30 01:30\n2014-04-30 02:00";}}'),
(11, 'datachart_market_15', 'a:14:{i:0;a:7:{s:4:"date";s:16:"2014-04-29 20:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:1;a:7:{s:4:"date";s:16:"2014-04-29 20:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:2;a:7:{s:4:"date";s:16:"2014-04-29 21:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:3;a:7:{s:4:"date";s:16:"2014-04-29 21:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:4;a:7:{s:4:"date";s:16:"2014-04-29 22:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:5;a:7:{s:4:"date";s:16:"2014-04-29 22:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:6;a:7:{s:4:"date";s:16:"2014-04-29 23:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:7;a:7:{s:4:"date";s:16:"2014-04-29 23:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:8;a:7:{s:4:"date";s:16:"2014-04-30 00:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:9;a:7:{s:4:"date";s:16:"2014-04-30 00:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:10;a:7:{s:4:"date";s:16:"2014-04-30 01:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:11;a:7:{s:4:"date";s:16:"2014-04-30 01:30";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:12;a:7:{s:4:"date";s:16:"2014-04-30 02:00";s:3:"low";d:0;s:4:"open";d:0;s:5:"close";d:0;s:4:"high";d:0;s:15:"exchange_volume";i:0;s:4:"temp";s:0:"";}i:13;a:7:{s:4:"date";s:16:"2014-04-30 02:24";s:3:"low";i:0;s:4:"open";i:0;s:5:"close";i:0;s:4:"high";i:0;s:15:"exchange_volume";i:0;s:4:"temp";s:278:"\nnew_date: 2014-04-29 20:00:00\nend_date: 2014-04-30 02:24\n2014-04-29 20:00\n2014-04-29 20:30\n2014-04-29 21:00\n2014-04-29 21:30\n2014-04-29 22:00\n2014-04-29 22:30\n2014-04-29 23:00\n2014-04-29 23:30\n2014-04-30 00:00\n2014-04-30 00:30\n2014-04-30 01:00\n2014-04-30 01:30\n2014-04-30 02:00";}}'),
(45, 'default_market', '65'),
(52, 'pusher_app_secret', 'fb38676283a45a243b1e'),
(53, 'pusher_app_key', '9fb6abdd0c628d95ed0a'),
(54, 'pusher_app_id', '75097'),
(55, 'price_open_start_chart_19', 'a:3:{s:4:"time";s:5:"01:00";s:13:"open_previous";s:10:"0.00000000";s:14:"close_previous";s:10:"0.00000000";}'),
(56, 'price_open_start_chart_31', 'a:3:{s:4:"time";s:5:"20:00";s:13:"open_previous";s:10:"0.00000000";s:14:"close_previous";s:10:"0.00000000";}'),
(57, 'price_open_start_chart_33', 'a:3:{s:4:"time";s:5:"19:30";s:13:"open_previous";s:10:"0.00000000";s:14:"close_previous";s:10:"0.00000000";}'),
(58, 'disable_points', NULL),
(59, 'percent_point_reward_referred_trade', '0.2'),
(60, 'percent_point_reward_trade', '0'),
(61, 'point_per_btc', '0.00001'),
(62, 'max_amount_funds', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `trade_history`
--

CREATE TABLE IF NOT EXISTS `trade_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `type` enum('sell','buy') DEFAULT NULL COMMENT 'buy or sell',
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `fee_sell` double DEFAULT NULL,
  `fee_buy` double DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `trade_history`
--

INSERT INTO `trade_history` (`id`, `market_id`, `seller_id`, `buyer_id`, `type`, `amount`, `price`, `fee_sell`, `fee_buy`, `created_at`, `updated_at`) VALUES
(11, 64, 89, 89, 'buy', 2, 0.2, 0.0008, 0.0008, '2017-11-25', '2017-11-25 10:08:15'),
(12, 64, 89, 93, 'buy', 3, 0.2, 0.0012, 0.0012, '2017-11-25', '2017-11-25 10:24:10'),
(13, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 15:10:29'),
(14, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 15:17:29'),
(15, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 15:18:03'),
(16, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 15:18:19'),
(17, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 15:19:21'),
(18, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 15:19:28'),
(19, 64, 89, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 16:00:54'),
(20, 64, 93, 89, 'buy', 1, 5, 0.01, 0.01, '2017-11-26', '2017-11-26 16:07:51'),
(21, 64, 89, 93, 'sell', 10, 4, 0.08, 0.08, '2017-11-26', '2017-11-26 16:08:34'),
(22, 64, 89, 89, 'sell', 1, 4, 0.008, 0.008, '2017-11-26', '2017-11-26 16:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_history`
--

CREATE TABLE IF NOT EXISTS `transfer_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `authy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastest_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `referral` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trade_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_lastlogin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=94 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `confirmation_code`, `verified`, `confirmed`, `banned`, `authy`, `created_at`, `updated_at`, `lastest_login`, `timeout`, `referral`, `trade_key`, `ip_lastlogin`, `facebook_id`, `google_id`, `remember_token`) VALUES
(89, 'altcoin', 'exchange', 'trade', 'altcoinexchanges@gmail.com', '$2y$10$zvd62PD4IP83M1N/ZmOnruz61WpHkN0MKb8i./nge9GXDRMsqKh5u', '72e5bb21b4b6ba8572a745c35704809e', 0, 1, 0, '', '2017-11-19 16:03:19', '2017-11-26 10:17:41', '2017-11-26 10:17:41', '6 hours', '', '8f22b7a82fd3d595778a2bee30af5d98', '192.168.193.1', '', '', NULL),
(93, 'hall', 'pass', 'hallpass', 'hallpass246@gmail.com', '$2y$10$zvd62PD4IP83M1N/ZmOnruz61WpHkN0MKb8i./nge9GXDRMsqKh5u', '7e3c8b9833f4c13b4dea0b93e93fcf3b', 0, 1, 0, '', '2017-11-24 12:55:43', '2017-11-25 10:23:19', '2017-11-25 10:23:19', '', '', '5efe44591a2f704bc4808a43ff7dafe1', '192.168.193.1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='<double-click to overwrite multiple objects>';

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(0, 0),
(4, 3),
(5, 3),
(7, 3),
(11, 1),
(11, 3),
(8, 3),
(24, 1),
(31, 3),
(33, 3),
(34, 3),
(35, 3),
(31, 3),
(9, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(39, 3),
(44, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(6, 1),
(6, 3),
(42, 3),
(50, 3),
(55, 1),
(55, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 1),
(84, 3),
(85, 3),
(86, 3),
(89, 3),
(89, 1),
(90, 3),
(91, 3),
(92, 3),
(93, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_address_deposit`
--

CREATE TABLE IF NOT EXISTS `user_address_deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `addr_deposit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `user_address_deposit`
--

INSERT INTO `user_address_deposit` (`id`, `user_id`, `wallet_id`, `addr_deposit`) VALUES
(29, 89, 35, 'MX3pVGs92Y4C3VQUkpxobvGv1yUzc2uXBK'),
(30, 91, 35, 'MRRK17WHm3xe5vMdJPAunT2HWcgAuovAcL'),
(36, 89, 1, 'MU7TdrR1R7QnZdDKN592TBpizjwRB38App');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE IF NOT EXISTS `user_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address_1` varchar(255) COLLATE utf8_bin NOT NULL,
  `address_2` varchar(255) COLLATE utf8_bin NOT NULL,
  `city` varchar(255) COLLATE utf8_bin NOT NULL,
  `postal_code` int(11) NOT NULL,
  `country` varchar(255) COLLATE utf8_bin NOT NULL,
  `state` varchar(255) COLLATE utf8_bin NOT NULL,
  `date_birth` date NOT NULL,
  `government_photo_1` varchar(255) COLLATE utf8_bin NOT NULL,
  `government_photo_2` varchar(255) COLLATE utf8_bin NOT NULL,
  `utility_bill` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `user_id`, `address_1`, `address_2`, `city`, `postal_code`, `country`, `state`, `date_birth`, `government_photo_1`, `government_photo_2`, `utility_bill`) VALUES
(1, 6, 'can tho', '', 'can tho', 92000, 'Việt Nam', 'can tho', '2014-06-19', 'upload/images/1403246914.jpg', 'upload/images/1403246914.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_security_questions`
--

CREATE TABLE IF NOT EXISTS `user_security_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='<double-click to overwrite multiple objects>' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_security_questions`
--

INSERT INTO `user_security_questions` (`id`, `question_id`, `answer`, `user_id`) VALUES
(1, 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coinvote_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `coinvote_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 89, '2017-11-22 17:23:03', '2017-11-22 17:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE IF NOT EXISTS `wallets` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wallet_username` varchar(255) DEFAULT NULL,
  `wallet_password` varchar(255) DEFAULT NULL,
  `wallet_ip` varchar(45) DEFAULT NULL,
  `port` varchar(45) DEFAULT NULL,
  `download_wallet_client` text NOT NULL,
  `logo_coin` text NOT NULL,
  `is_moneypaper` tinyint(1) NOT NULL DEFAULT '0',
  `limit_confirmations` int(11) NOT NULL DEFAULT '3',
  `enable_deposit` tinyint(1) NOT NULL DEFAULT '1',
  `enable_withdraw` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `type`, `name`, `wallet_username`, `wallet_password`, `wallet_ip`, `port`, `download_wallet_client`, `logo_coin`, `is_moneypaper`, `limit_confirmations`, `enable_deposit`, `enable_withdraw`) VALUES
(1, 'MGC', 'MineGoldCoin', 'mgcuser', 'eyJpdiI6InZMYlhsQjN0WVNLaytKMklLYVZJNnc9PSIsInZhbHVlIjoiTW43MUtCU2xidUcxYVwvbWFUNHgxcUE9PSIsIm1hYyI6IjhiZTVhZDNmZGE1ZjkwYTBlMGJmZmYyOWI2NjM1MDE4Nzg4OTRiYTFiOTI4ZGFkNDBlZDAxNzFhNTQ0ZThiYmEifQ==', 'localhost', '34436', 'https://minegoldcoin.com/assets/download/MineGoldCoin-Win64-qt.zip', 'upload/images/1511092410.png', 0, 3, 1, 1),
(8, 'DOGE', 'DogeCoin', 'Annacage', 'sdfds', 'dsfads', '8335', 'http://dogecoin.com/', '', 0, 3, 1, 1),
(16, 'PPC', 'PeerCoin', 'ppcusercoin', 'ppcadmin1234', '149.210.140.216', '9057', 'http://www.peercoin.net/downloads', 'upload/images/1401678206.png', 0, 3, 1, 1),
(24, 'LTC', 'LiteCoin', 'safas', 'ltcsfgasdf4', 'adsfdsa', '9050', 'https://litecoin.org/', 'upload/images/1401678092.png', 0, 3, 1, 1),
(35, 'BTC', 'Bitcoin', 'songnguyen', 'Songnguyen123', '115.78.235.170', '8332', 'https://bitcoin.org/en/download', '', 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_limittrade`
--

CREATE TABLE IF NOT EXISTS `wallet_limittrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wallet_id` int(11) NOT NULL,
  `min_amount` double NOT NULL,
  `max_amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `wallet_limittrade`
--

INSERT INTO `wallet_limittrade` (`id`, `wallet_id`, `min_amount`, `max_amount`) VALUES
(1, 1, 0.0002, 10),
(2, 8, 1, 1000),
(11, 24, 0.001, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_timelimittrade`
--

CREATE TABLE IF NOT EXISTS `wallet_timelimittrade` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wallet_id` int(10) NOT NULL,
  `limit_amount` int(12) NOT NULL,
  `time_limit` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wallet_timelimittrade`
--

INSERT INTO `wallet_timelimittrade` (`id`, `wallet_id`, `limit_amount`, `time_limit`) VALUES
(1, 1, 1, 'per week'),
(2, 33, 0, 'per week');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE IF NOT EXISTS `withdraws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `wallet_id` int(11) DEFAULT NULL,
  `to_address` text,
  `amount` double DEFAULT NULL,
  `fee_amount` double DEFAULT NULL,
  `receive_amount` double DEFAULT NULL COMMENT 'amount - fee_amount',
  `confirmation_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(4) DEFAULT NULL,
  `transaction_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `wallet_id`, `to_address`, `amount`, `fee_amount`, `receive_amount`, `confirmation_code`, `created_at`, `updated_at`, `status`, `transaction_id`) VALUES
(15, 89, 35, 'MFnNviZAteNdK6rM3bce22tQBgCnY1DL86', 10, 0, 10, '2d08c79f083279c9d1a0afc7c7309420', '2017-11-20 19:11:49', '2017-11-20 19:13:04', 1, 'fc80fd132d9231c94ce0f83d9f1454965614630eae5149d19bdf49d4230db432');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
