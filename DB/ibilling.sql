-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 06:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibilling`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_balances`
--

CREATE TABLE `account_balances` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `currency_id` int(11) NOT NULL DEFAULT 0,
  `balance` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounts`
--

CREATE TABLE `crm_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(200) DEFAULT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `company` varchar(200) NOT NULL,
  `jobtitle` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `balance` decimal(16,2) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `notes` text NOT NULL,
  `options` text DEFAULT NULL,
  `tags` text NOT NULL,
  `password` text NOT NULL,
  `token` text NOT NULL,
  `ts` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `web` varchar(200) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `google` varchar(100) NOT NULL,
  `linkedin` varchar(100) NOT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `entity_number` varchar(100) DEFAULT NULL,
  `currency` int(11) DEFAULT 0,
  `pmethod` varchar(100) DEFAULT NULL,
  `autologin` varchar(100) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(100) DEFAULT NULL,
  `stage` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isp` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT 0,
  `sid` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_idd` varchar(20) DEFAULT NULL,
  `signed_up_by` varchar(100) DEFAULT NULL,
  `signed_up_ip` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ct` varchar(200) DEFAULT NULL,
  `assistant` varchar(200) DEFAULT NULL,
  `asst_phone` varchar(100) DEFAULT NULL,
  `second_email` varchar(100) DEFAULT NULL,
  `second_phone` varchar(100) DEFAULT NULL,
  `taxexempt` varchar(50) DEFAULT NULL,
  `latefeeoveride` varchar(50) DEFAULT NULL,
  `overideduenotices` varchar(50) DEFAULT NULL,
  `separateinvoices` varchar(50) DEFAULT NULL,
  `disableautocc` varchar(50) DEFAULT NULL,
  `billingcid` int(10) NOT NULL DEFAULT 0,
  `securityqid` int(10) NOT NULL DEFAULT 0,
  `securityqans` text DEFAULT NULL,
  `cardtype` varchar(200) DEFAULT NULL,
  `cardlastfour` varchar(20) DEFAULT NULL,
  `cardnum` text DEFAULT NULL,
  `startdate` varchar(50) DEFAULT NULL,
  `expdate` varchar(50) DEFAULT NULL,
  `issuenumber` varchar(200) DEFAULT NULL,
  `bankname` varchar(200) DEFAULT NULL,
  `banktype` varchar(200) DEFAULT NULL,
  `bankcode` varchar(200) DEFAULT NULL,
  `bankacct` varchar(200) DEFAULT NULL,
  `gatewayid` int(10) NOT NULL DEFAULT 0,
  `language` text DEFAULT NULL,
  `pwresetkey` varchar(100) DEFAULT NULL,
  `emailoptout` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `pwresetexpiry` datetime DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL,
  `is_email_verified` int(1) NOT NULL DEFAULT 0,
  `is_phone_veirifed` int(1) NOT NULL DEFAULT 0,
  `photo_id_type` varchar(100) DEFAULT NULL,
  `photo_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounts`
--

INSERT INTO `crm_accounts` (`id`, `account`, `fname`, `lname`, `company`, `jobtitle`, `cid`, `o`, `phone`, `email`, `username`, `address`, `city`, `state`, `zip`, `country`, `balance`, `status`, `notes`, `options`, `tags`, `password`, `token`, `ts`, `img`, `web`, `facebook`, `google`, `linkedin`, `twitter`, `skype`, `tax_number`, `entity_number`, `currency`, `pmethod`, `autologin`, `lastlogin`, `lastloginip`, `stage`, `timezone`, `isp`, `lat`, `lon`, `gname`, `gid`, `sid`, `role`, `country_code`, `country_idd`, `signed_up_by`, `signed_up_ip`, `dob`, `ct`, `assistant`, `asst_phone`, `second_email`, `second_phone`, `taxexempt`, `latefeeoveride`, `overideduenotices`, `separateinvoices`, `disableautocc`, `billingcid`, `securityqid`, `securityqans`, `cardtype`, `cardlastfour`, `cardnum`, `startdate`, `expdate`, `issuenumber`, `bankname`, `banktype`, `bankcode`, `bankacct`, `gatewayid`, `language`, `pwresetkey`, `emailoptout`, `created_at`, `updated_at`, `pwresetexpiry`, `c1`, `c2`, `c3`, `c4`, `c5`, `is_email_verified`, `is_phone_veirifed`, `photo_id_type`, `photo_id`) VALUES
(3, 'اصغر قلی پور', '', '', '', '', 0, 1, '', '', NULL, '', '', '', '', 'Iran, Islamic Republic Of', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-07-08 13:41:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(4, 'ظیطبلزب', '', '', '', '', 0, 1, '', '', NULL, '', '', '', '', '', '0.00', 'Active', '', NULL, '', '', 'b2gfaeiozphilmna96y4bfb793c2cb1f82bc3bfb8f2c3483297b', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-07-08 14:00:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL),
(5, 'شرکت 1', '', '', '', '', 0, 1, '', '', NULL, '', '', '', '', '', '0.00', 'Active', '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2023-07-25 20:10:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfields`
--

CREATE TABLE `crm_customfields` (
  `id` int(10) NOT NULL,
  `ctype` text DEFAULT NULL,
  `relid` int(10) NOT NULL DEFAULT 0,
  `fieldname` text DEFAULT NULL,
  `fieldtype` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fieldoptions` text DEFAULT NULL,
  `regexpr` text DEFAULT NULL,
  `adminonly` text DEFAULT NULL,
  `required` text DEFAULT NULL,
  `showorder` text DEFAULT NULL,
  `showinvoice` text DEFAULT NULL,
  `sorder` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_customfieldsvalues`
--

CREATE TABLE `crm_customfieldsvalues` (
  `id` int(10) NOT NULL,
  `fieldid` int(10) NOT NULL,
  `relid` int(10) NOT NULL,
  `fvalue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_groups`
--

CREATE TABLE `crm_groups` (
  `id` int(11) NOT NULL,
  `gname` varchar(200) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `parent` varchar(200) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  `exempt` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `separateinvoices` text DEFAULT NULL,
  `sorder` int(10) DEFAULT NULL,
  `c1` varchar(200) DEFAULT NULL,
  `c2` varchar(200) DEFAULT NULL,
  `c3` varchar(200) DEFAULT NULL,
  `c4` varchar(200) DEFAULT NULL,
  `c5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_industries`
--

CREATE TABLE `crm_industries` (
  `id` int(11) NOT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_industries`
--

INSERT INTO `crm_industries` (`id`, `industry`, `is_active`, `is_default`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Agriculture', 1, 0, 0, NULL, NULL),
(2, 'Apparel', 1, 0, 0, NULL, NULL),
(3, 'Banking', 1, 0, 0, NULL, NULL),
(4, 'Biotechnology', 1, 0, 0, NULL, NULL),
(5, 'Chemicals', 1, 0, 0, NULL, NULL),
(6, 'Communications', 1, 0, 0, NULL, NULL),
(7, 'Construction', 1, 0, 0, NULL, NULL),
(8, 'Consulting', 1, 0, 0, NULL, NULL),
(9, 'Education', 1, 0, 0, NULL, NULL),
(10, 'Electronics', 1, 0, 0, NULL, NULL),
(11, 'Energy', 1, 0, 0, NULL, NULL),
(12, 'Engineering', 1, 0, 0, NULL, NULL),
(13, 'Entertainment', 1, 0, 0, NULL, NULL),
(14, 'Environmental', 1, 0, 0, NULL, NULL),
(15, 'Finance', 1, 0, 0, NULL, NULL),
(16, 'Food & Beverage', 1, 0, 0, NULL, NULL),
(17, 'Government', 1, 0, 0, NULL, NULL),
(18, 'Healthcare', 1, 0, 0, NULL, NULL),
(19, 'Hospitality', 1, 0, 0, NULL, NULL),
(20, 'Insurance', 1, 0, 0, NULL, NULL),
(21, 'Machinery', 1, 0, 0, NULL, NULL),
(22, 'Manufacturing', 1, 0, 0, NULL, NULL),
(23, 'Media', 1, 0, 0, NULL, NULL),
(24, 'Not For Profit', 1, 0, 0, NULL, NULL),
(25, 'Other', 1, 0, 0, NULL, NULL),
(26, 'Recreation', 1, 0, 0, NULL, NULL),
(27, 'Retail', 1, 0, 0, NULL, NULL),
(28, 'Shipping', 1, 0, 0, NULL, NULL),
(29, 'Technology', 1, 0, 0, NULL, NULL),
(30, 'Telecommunications', 1, 0, 0, NULL, NULL),
(31, 'Transportation', 1, 0, 0, NULL, NULL),
(32, 'Utilities', 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads`
--

CREATE TABLE `crm_leads` (
  `id` int(11) NOT NULL,
  `secret` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `oid` int(11) NOT NULL DEFAULT 0,
  `salutation` varchar(200) DEFAULT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `middle_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `suffix` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `website` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `employees` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `viewed_at` datetime DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `lost` int(1) NOT NULL DEFAULT 0,
  `junk` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_sources`
--

CREATE TABLE `crm_lead_sources` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_sources`
--

INSERT INTO `crm_lead_sources` (`id`, `sname`, `is_active`, `is_default`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Advertisement', 1, 1, 0, NULL, NULL),
(2, 'Customer Event', 1, 1, 0, NULL, NULL),
(3, 'Employee Referral', 1, 1, 0, NULL, NULL),
(4, 'Google AdWords', 1, 1, 0, NULL, NULL),
(5, 'Other', 1, 1, 0, NULL, NULL),
(6, 'Partner', 1, 1, 0, NULL, NULL),
(7, 'Purchased List', 1, 1, 0, NULL, NULL),
(8, 'Trade Show', 1, 1, 0, NULL, NULL),
(9, 'Webinar', 1, 1, 0, NULL, NULL),
(10, 'Website', 1, 1, 0, NULL, NULL),
(11, 'Facebook', 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_status`
--

CREATE TABLE `crm_lead_status` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `is_converted` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_lead_status`
--

INSERT INTO `crm_lead_status` (`id`, `sname`, `is_active`, `is_default`, `is_converted`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Unqualified', 1, 0, 0, 0, NULL, NULL),
(2, 'New', 1, 1, 0, 0, NULL, NULL),
(3, 'Working', 1, 0, 0, 0, NULL, NULL),
(4, 'Nurturing', 1, 0, 0, 0, NULL, NULL),
(5, 'Qualified', 1, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_salutations`
--

CREATE TABLE `crm_salutations` (
  `id` int(11) NOT NULL,
  `sname` varchar(200) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_salutations`
--

INSERT INTO `crm_salutations` (`id`, `sname`, `is_active`, `is_default`, `sorder`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 1, 0, 0, NULL, NULL),
(2, 'Ms.', 1, 0, 0, NULL, NULL),
(3, 'Mrs.', 1, 0, 0, NULL, NULL),
(4, 'Dr.', 1, 0, 0, NULL, NULL),
(5, 'Prof.', 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ib_doc_rel`
--

CREATE TABLE `ib_doc_rel` (
  `id` int(11) NOT NULL,
  `rtype` varchar(100) NOT NULL DEFAULT 'contact',
  `rid` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `can_download` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ib_invoice_access_log`
--

CREATE TABLE `ib_invoice_access_log` (
  `id` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `customer` varchar(200) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `referer` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `country_iso` varchar(20) DEFAULT NULL,
  `viewed_at` varchar(200) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_accounts`
--

CREATE TABLE `sys_accounts` (
  `id` int(11) NOT NULL,
  `account` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bank_name` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_person` varchar(200) DEFAULT NULL,
  `contact_phone` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `ib_url` varchar(200) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `sorder` int(11) DEFAULT NULL,
  `e` varchar(200) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_accounts`
--

INSERT INTO `sys_accounts` (`id`, `account`, `description`, `balance`, `bank_name`, `account_number`, `currency`, `branch`, `address`, `contact_person`, `contact_phone`, `website`, `ib_url`, `created`, `notes`, `sorder`, `e`, `token`, `status`) VALUES
(1, 'acc1', '', '-999868607878.00', '', '', '', '', '', '', '', '', '', '2023-07-04', '', 1, '', '', ''),
(2, 'تراش کار', '', '32409456.00', '', '', '', '', '', '', '', '', '', '2023-07-04', '', 1, '', '', ''),
(3, 'محصول اول', '', '-2000000.00', '', '', '', '', '', '', '', '', '', '2023-07-04', '', 1, '', '', ''),
(4, 'حساب تجارت', 'شسیشسی', '119876544.00', '', '4524645', '', '', '', '785645', '5245456', '', '', '2023-07-11', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_activity`
--

CREATE TABLE `sys_activity` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `msg` text NOT NULL,
  `icon` varchar(100) NOT NULL DEFAULT '',
  `stime` varchar(50) NOT NULL,
  `sdate` date NOT NULL,
  `o` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_api`
--

CREATE TABLE `sys_api` (
  `id` int(11) NOT NULL,
  `label` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `apikey` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_api`
--

INSERT INTO `sys_api` (`id`, `label`, `ip`, `apikey`) VALUES
(1, 'export', '', '8p5sfjovosh574h5wzggxrpd5lu93o97o95mynfh');

-- --------------------------------------------------------

--
-- Table structure for table `sys_appconfig`
--

CREATE TABLE `sys_appconfig` (
  `id` int(11) NOT NULL,
  `setting` text NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_appconfig`
--

INSERT INTO `sys_appconfig` (`id`, `setting`, `value`) VALUES
(1, 'CompanyName', 'چکاد ارتباط پایوند'),
(29, 'theme', 'ibilling'),
(37, 'currency_code', '﷼'),
(56, 'language', 'fa'),
(57, 'show-logo', '1'),
(58, 'nstyle', 'dark'),
(63, 'dec_point', '.'),
(64, 'thousands_sep', ','),
(65, 'timezone', 'Asia/Tehran'),
(66, 'country', 'Iran, Islamic Republic Of'),
(67, 'country_code', 'US'),
(68, 'df', 'Y-m-d'),
(69, 'caddress', 'چکاد ارتباط پایوند'),
(70, 'account_search', '1'),
(71, 'redirect_url', 'dashboard'),
(72, 'rtl', '1'),
(73, 'ckey', '0982995697'),
(74, 'networth_goal', '200000'),
(75, 'sysEmail', 'demo@example.com'),
(76, 'url_rewrite', '0'),
(77, 'build', '4803'),
(78, 'animate', '0'),
(79, 'pdf_font', 'dejavusanscondensed'),
(80, 'accounting', '1'),
(81, 'invoicing', '1'),
(82, 'quotes', '1'),
(83, 'client_dashboard', '1'),
(84, 'contact_set_view_mode', 'search'),
(85, 'invoice_terms', ''),
(86, 'console_notify_invoice_created', '0'),
(87, 'i_driver', 'v2'),
(88, 'purchase_code', ''),
(89, 'c_cache', ''),
(90, 'mininav', '0'),
(91, 'hide_footer', '1'),
(92, 'design', 'default'),
(93, 'default_landing_page', 'login'),
(94, 'recaptcha', '0'),
(95, 'recaptcha_sitekey', ''),
(96, 'recaptcha_secretkey', ''),
(97, 'home_currency', 'IRR'),
(98, 'currency_decimal_digits', 'false'),
(99, 'currency_symbol_position', 's'),
(100, 'thousand_separator_placement', '3'),
(101, 'dashboard', 'canvas'),
(102, 'header_scripts', ''),
(103, 'footer_scripts', ''),
(104, 'ib_key', 'vLBLfhA6DNi1R2MFHO8IvFWr4Cn9665eHUF+L/sqAKM='),
(105, 'ib_s', 'PNhjeZ0sOFF3JNfzT2mLxvNNKPeh6ltqpE+G5LVSDSvgp/z79Sco7W4tJEoXYIl8'),
(106, 'ib_u_t', '1690385552'),
(107, 'ib_u_a', '0'),
(108, 'momentLocale', 'fa'),
(109, 'contentAnimation', 'animated fadeIn'),
(110, 'calendar', '1'),
(111, 'leads', '1'),
(112, 'tasks', '1'),
(113, 'orders', '1'),
(114, 'show_quantity_as', ''),
(115, 'gmap_api_key', ''),
(116, 'license_key', ''),
(117, 'local_key', ''),
(118, 'add_fund', '0'),
(119, 'add_fund_minimum_deposit', '100'),
(120, 'add_fund_maximum_deposit', '2500'),
(121, 'add_fund_maximum_balance', '25000'),
(122, 'add_fund_require_active_order', '0'),
(123, 'sales_target', '10000'),
(124, 'industry', 'default'),
(125, 'inventory', '1'),
(126, 'secondary_currency', ''),
(127, 'customer_custom_username', '0'),
(128, 'documents', '1'),
(129, 'projects', '1'),
(130, 'purchase', '1'),
(131, 'suppliers', '1'),
(132, 'support', '1'),
(133, 'hrm', '1'),
(134, 'companies', '1'),
(135, 'plugins', '1'),
(136, 'country_flag_code', 'us'),
(137, 'graph_primary_color', '2196f3'),
(138, 'graph_secondary_color', 'eb3c00');

-- --------------------------------------------------------

--
-- Table structure for table `sys_cart`
--

CREATE TABLE `sys_cart` (
  `id` int(11) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `items` text DEFAULT NULL,
  `total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `ip` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `browser` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL,
  `coupon` varchar(200) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lon` varchar(50) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `lid` int(11) NOT NULL DEFAULT 0,
  `currency_id` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `memo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_cats`
--

CREATE TABLE `sys_cats` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Income','Expense') NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(16,4) DEFAULT 0.0000,
  `budget` decimal(16,4) DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_cats`
--

INSERT INTO `sys_cats` (`id`, `name`, `type`, `sorder`, `total_amount`, `budget`, `created_at`, `updated_at`) VALUES
(14, 'Advertising', 'Expense', 1, '0.0000', '0.0000', NULL, NULL),
(15, 'Bank and Credit Card Interest', 'Expense', 23, '0.0000', '0.0000', NULL, NULL),
(16, 'Car and Truck', 'Expense', 24, '0.0000', '0.0000', NULL, NULL),
(17, 'Commissions and Fees', 'Expense', 25, '0.0000', '0.0000', NULL, NULL),
(18, 'Contract Labor', 'Expense', 26, '0.0000', '0.0000', NULL, NULL),
(19, 'Contributions', 'Expense', 27, '0.0000', '0.0000', NULL, NULL),
(20, 'Cost of Goods Sold', 'Expense', 28, '0.0000', '0.0000', NULL, NULL),
(21, 'Credit Card Interest', 'Expense', 29, '0.0000', '0.0000', NULL, NULL),
(22, 'Depreciation', 'Expense', 31, '0.0000', '0.0000', NULL, NULL),
(23, 'Dividend Payments', 'Expense', 32, '0.0000', '0.0000', NULL, NULL),
(24, 'Employee Benefit Programs', 'Expense', 33, '0.0000', '0.0000', NULL, NULL),
(25, 'Entertainment', 'Expense', 34, '0.0000', '0.0000', NULL, NULL),
(26, 'Gift', 'Expense', 35, '0.0000', '0.0000', NULL, NULL),
(27, 'Insurance', 'Expense', 36, '0.0000', '0.0000', NULL, NULL),
(28, 'Legal, Accountant &amp; Other Professional Services', 'Expense', 37, '0.0000', '0.0000', NULL, NULL),
(29, 'Meals', 'Expense', 38, '0.0000', '0.0000', NULL, NULL),
(30, 'Mortgage Interest', 'Expense', 39, '0.0000', '0.0000', NULL, NULL),
(31, 'Non-Deductible Expense', 'Expense', 40, '0.0000', '0.0000', NULL, NULL),
(33, 'Other Business Property Leasing', 'Expense', 22, '0.0000', '0.0000', NULL, NULL),
(34, 'Owner Draws', 'Expense', 21, '0.0000', '0.0000', NULL, NULL),
(35, 'Payroll Taxes', 'Expense', 8, '0.0000', '0.0000', NULL, NULL),
(37, 'Phone', 'Expense', 9, '0.0000', '0.0000', NULL, NULL),
(38, 'Postage', 'Expense', 10, '0.0000', '0.0000', NULL, NULL),
(39, 'Rent', 'Expense', 12, '0.0000', '0.0000', NULL, NULL),
(40, 'Repairs &amp; Maintenance', 'Expense', 11, '0.0000', '0.0000', NULL, NULL),
(41, 'Supplies', 'Expense', 13, '0.0000', '0.0000', NULL, NULL),
(42, 'Taxes and Licenses', 'Expense', 14, '0.0000', '0.0000', NULL, NULL),
(43, 'Transfer Funds', 'Expense', 15, '0.0000', '0.0000', NULL, NULL),
(44, 'Travel', 'Expense', 16, '0.0000', '0.0000', NULL, NULL),
(45, 'Utilities', 'Expense', 17, '0.0000', '0.0000', NULL, NULL),
(46, 'Vehicle, Machinery &amp; Equipment Rental or Leasing', 'Expense', 18, '0.0000', '0.0000', NULL, NULL),
(47, 'Wages', 'Expense', 19, '0.0000', '0.0000', NULL, NULL),
(48, 'Regular Income', 'Income', 1, '0.0000', '0.0000', NULL, NULL),
(49, 'Owner Contribution', 'Income', 12, '0.0000', '0.0000', NULL, NULL),
(50, 'Interest Income', 'Income', 11, '0.0000', '0.0000', NULL, NULL),
(51, 'Expense Refund', 'Income', 10, '0.0000', '0.0000', NULL, NULL),
(52, 'Other Income', 'Income', 9, '0.0000', '0.0000', NULL, NULL),
(53, 'Salary', 'Income', 8, '0.0000', '0.0000', NULL, NULL),
(54, 'Equities', 'Income', 7, '0.0000', '0.0000', NULL, NULL),
(55, 'Rent &amp; Royalties', 'Income', 6, '0.0000', '0.0000', NULL, NULL),
(56, 'Home equity', 'Income', 5, '0.0000', '0.0000', NULL, NULL),
(57, 'Part Time Work', 'Income', 3, '0.0000', '0.0000', NULL, NULL),
(58, 'Account Transfer', 'Income', 4, '0.0000', '0.0000', NULL, NULL),
(60, 'Health Care', 'Expense', 20, '0.0000', '0.0000', NULL, NULL),
(63, 'Loans', 'Expense', 30, '0.0000', '0.0000', NULL, NULL),
(64, 'Selling Software', 'Income', 2, '0.0000', '0.0000', NULL, NULL),
(65, 'Software Customization', 'Income', 13, '0.0000', '0.0000', NULL, NULL),
(66, 'Envato', 'Income', 0, '0.0000', '0.0000', NULL, NULL),
(67, 'Salary', 'Expense', 7, '0.0000', '0.0000', NULL, NULL),
(68, 'Paypal', 'Expense', 6, '0.0000', '0.0000', NULL, NULL),
(69, 'Office Equipment', 'Expense', 5, '0.0000', '0.0000', NULL, NULL),
(70, 'Staff Entertaining', 'Expense', 3, '0.0000', '0.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_companies`
--

CREATE TABLE `sys_companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo_url` varchar(200) DEFAULT NULL,
  `logo_path` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `emails` text DEFAULT NULL,
  `phones` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `ratings` varchar(50) DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_companies`
--

INSERT INTO `sys_companies` (`id`, `company_name`, `url`, `logo_url`, `logo_path`, `email`, `phone`, `emails`, `phones`, `tags`, `description`, `notes`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `source`, `added_from`, `o`, `cid`, `aid`, `pid`, `oid`, `rid`, `assigned`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_contact`, `last_contact_by`, `ratings`, `trash`, `archived`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'comp1', 'http://', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_currencies`
--

CREATE TABLE `sys_currencies` (
  `id` int(11) NOT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `iso_code` varchar(10) DEFAULT NULL,
  `symbol` varchar(20) DEFAULT NULL,
  `rate` decimal(16,8) NOT NULL DEFAULT 1.00000000,
  `prefix` varchar(20) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `decimal_separator` varchar(10) DEFAULT NULL,
  `thousand_separator` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `available_in` text DEFAULT NULL,
  `isdefault` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_currencies`
--

INSERT INTO `sys_currencies` (`id`, `cname`, `iso_code`, `symbol`, `rate`, `prefix`, `suffix`, `format`, `decimal_separator`, `thousand_separator`, `created_at`, `created_by`, `updated_at`, `updated_by`, `available_in`, `isdefault`, `trash`, `archived`) VALUES
(2, 'IRR', 'IRR', 'ریال', '1.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_documents`
--

CREATE TABLE `sys_documents` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `file_o_name` varchar(200) DEFAULT NULL,
  `file_r_name` varchar(200) DEFAULT NULL,
  `file_mime_type` varchar(200) DEFAULT NULL,
  `file_path` varchar(200) DEFAULT NULL,
  `file_dl_token` varchar(200) DEFAULT NULL,
  `file_owner` int(11) NOT NULL DEFAULT 0,
  `version` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `sha1` varchar(40) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `contacts` text DEFAULT NULL,
  `deals` text DEFAULT NULL,
  `leads` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `customer_can_download` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `is_global` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_emailconfig`
--

CREATE TABLE `sys_emailconfig` (
  `id` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `port` varchar(10) NOT NULL,
  `secure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_emailconfig`
--

INSERT INTO `sys_emailconfig` (`id`, `method`, `host`, `username`, `password`, `apikey`, `port`, `secure`) VALUES
(1, 'phpmail', 'smtp.gmail.com', 'you@gmail.com', '123456', '', '587', 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_logs`
--

CREATE TABLE `sys_email_logs` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `iid` int(11) NOT NULL DEFAULT 0,
  `rel_type` varchar(100) DEFAULT NULL,
  `rel_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_email_templates`
--

CREATE TABLE `sys_email_templates` (
  `id` int(11) NOT NULL,
  `tplname` varchar(128) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 1,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `send` varchar(50) DEFAULT 'Active',
  `core` enum('Yes','No') DEFAULT 'Yes',
  `hidden` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_email_templates`
--

INSERT INTO `sys_email_templates` (`id`, `tplname`, `language_id`, `subject`, `message`, `send`, `core`, `hidden`) VALUES
(3, 'Invoice:Invoice Created', 1, '{{business_name}} Invoice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This email serves as your official invoice from <strong>{{business_name}}. </strong>	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(7, 'Admin:Password Change Request', 1, '{{business_name}} password change request', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Hi {{name}},</div>	<div style=\"padding:5px\">		This is to confirm that we have received a Forgot Password request for your Account Username - {{username}} <br>From the IP Address - {{ip_address}}	</div>	<div style=\"padding:5px\">		Click this linke to reset your password- <br><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{password_reset_link}}\">{{password_reset_link}}</a>	</div><div style=\"padding:5px\">Please note: until your password has been changed, your current password will remain valid. The Forgot Password Link will be available for a limited time only.</div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(10, 'Admin:New Password', 1, '{{business_name}} New Password for Admin', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Hello {{name}}\n</div>\n\n\n	<div style=\"padding:5px\">\n		Here is your new password for <strong>{{business_name}}. </strong>\n	</div>\n\n	\n<div style=\"padding:10px 5px\">\n    Log in URL: <a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{login_url}}\">{{login_url}}</a><br>Username: {{username}}<br>Password: {{password}}</div>\n\n<div style=\"padding:5px\">For security reason, Please change your password after login. </div>\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n</div>\n\n</div>', 'Yes', 'Yes', 0),
(12, 'Invoice:Invoice Payment Reminder', 1, '{{business_name}} Invoice Payment Reminder', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is a billing reminder that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is due on {{invoice_due_date}}. 	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(13, 'Invoice:Invoice Overdue Notice', 1, '{{business_name}} Invoice Overdue Notice', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is the notice that your invoice no. {{invoice_id}} which was generated on {{invoice_date}} is now overdue.	</div>	<div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(14, 'Invoice:Invoice Payment Confirmation', 1, '{{business_name}} Invoice Payment Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\">\n\n<div style=\"padding:5px;font-size:11pt;font-weight:bold\">\n   Greetings,\n</div>\n\n\n\n	<div style=\"padding:5px\">\n		This is a payment receipt for Invoice {{invoice_id}} sent on {{invoice_date}}.\n	</div>\n\n\n	<div style=\"padding:5px\">\n		Login to your client Portal to view this invoice.\n	</div>\n\n\n<div style=\"padding:10px 5px\">\n    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div>\n\n\n<div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div>\n\n\n<div style=\"padding:0px 5px\">\n	<div>Best Regards,<br>{{business_name}} Team</div>\n\n\n</div>\n\n\n</div>', 'Yes', 'Yes', 0),
(15, 'Invoice:Invoice Refund Confirmation', 1, '{{business_name}} Invoice Refund Confirmation', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,\'droid sans\',\'lucida sans\',sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		This is confirmation that a refund has been processed for Invoice {{invoice_id}} sent on {{invoice_date}}.	</div><div style=\"padding:10px 5px\">    Invoice URL: <a href=\"{{invoice_url}}\" target=\"_blank\">{{invoice_url}}</a><a target=\"_blank\" style=\"color:#1da9c0;font-weight:bold;padding:3px;text-decoration:none\" href=\"{{app_url}}\"></a><br>Invoice ID: {{invoice_id}}<br>Invoice Amount: {{invoice_amount}}<br>Due Date: {{invoice_due_date}}</div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">If you have any questions or need assistance, please don\'t hesitate to contact us.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(16, 'Quote:Quote Created', 1, '{{quote_subject}}', '<div style=\"line-height:1.6;color:#222;text-align:left;width:550px;font-size:10pt;margin:0px 10px;font-family:verdana,sans-serif;padding:14px;border:3px solid #d8d8d8;border-top:3px solid #007bc3\"><div style=\"padding:5px;font-size:11pt;font-weight:bold\">   Greetings,</div>	<div style=\"padding:5px\">		Dear {{contact_name}},&nbsp;<br> Here is the quote you requested for.  The quote is valid until {{valid_until}}.	</div><div style=\"padding:10px 5px\">    Quote Unique URL: <a href=\"{{quote_url}}\" target=\"_blank\">{{quote_url}}</a><br></div><div style=\"padding:5px\"><span style=\"font-size: 13.3333330154419px; line-height: 21.3333320617676px;\">You may view the quote at any time and simply reply to this email with any further questions or requirement.</span><br></div><div style=\"padding:0px 5px\">	<div>Best Regards,<br>{{business_name}} Team</div></div></div>', 'Yes', 'Yes', 0),
(17, 'Client:Client Signup Email', 1, 'Your {{business_name}} Login Info', '<p>Dear {{client_name}},</p>\n<p>Welcome to {{business_name}}.</p>\n<p>You can track your billing, profile, transactions from this portal.</p>\n<p>Your login information is as follows:</p>\n<p>---------------------------------------------------------------------------------------</p>\n<p>Login URL: {{client_login_url}} <br />Email Address: {{client_email}}<br /> Password: Your chosen password.</p>\n<p>----------------------------------------------------------------------------------------</p>\n<p>We very much appreciate you for choosing us.</p>\n<p>{{business_name}} Team</p>', 'Yes', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sys_events`
--

CREATE TABLE `sys_events` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `contacts` text DEFAULT NULL,
  `deals` text DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `etype` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `allday` int(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoiceitems`
--

CREATE TABLE `sys_invoiceitems` (
  `id` int(10) NOT NULL,
  `invoiceid` int(10) NOT NULL DEFAULT 0,
  `userid` int(10) NOT NULL,
  `type` text NOT NULL,
  `relid` int(10) NOT NULL,
  `itemcode` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `qty` varchar(20) NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `taxed` int(1) NOT NULL,
  `taxamount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(14,2) NOT NULL DEFAULT 0.00,
  `duedate` date DEFAULT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoiceitems`
--

INSERT INTO `sys_invoiceitems` (`id`, `invoiceid`, `userid`, `type`, `relid`, `itemcode`, `description`, `qty`, `amount`, `taxed`, `taxamount`, `total`, `duedate`, `paymentmethod`, `notes`) VALUES
(4, 1, 2, '', 0, '', 'محصول 1', '1', '9000000.00', 0, '0.00', '9000000.00', '2023-07-04', '', ''),
(6, 2, 2, '', 0, '', 'محصول 1', '2', '9000000.00', 0, '0.00', '18000000.00', '2023-07-04', '', ''),
(11, 3, 4, '', 0, '', 'محصول 1', '15', '9000000.00', 0, '0.00', '135000000.00', '2023-07-09', '', ''),
(17, 4, 4, '', 0, '', 'محصول 1', '1', '9000000.00', 0, '0.00', '9000000.00', '2023-07-09', '', ''),
(16, 4, 4, '', 0, '', 'زلالات', '12', '200000.00', 0, '0.00', '2400000.00', '2023-07-09', '', ''),
(23, 5, 3, '', 0, '', 'محصول 1', '1', '9000000.00', 0, '0.00', '9000000.00', '2023-07-11', '', ''),
(22, 5, 3, '', 0, '', 'زلالات', '12', '200000.00', 0, '0.00', '2400000.00', '2023-07-11', '', ''),
(24, 6, 3, '', 0, '', 'محصول 1', '1', '9000000.00', 0, '0.00', '9000000.00', '2023-07-11', '', ''),
(25, 7, 3, '', 0, '', 'محصول 1', '1', '9000000.00', 0, '0.00', '9000000.00', '2023-07-11', '', ''),
(30, 8, 3, '', 0, '', 'محصول 1', '5', '9000000.00', 0, '0.00', '45000000.00', '2023-07-11', '', ''),
(29, 8, 3, '', 0, '', 'شیر برقی 3 سانتی', '12', '10000000.00', 0, '0.00', '120000000.00', '2023-07-11', '', ''),
(33, 9, 5, '', 0, '', 'شیر برقی 3 سانتی', '1', '10000000.00', 0, '0.00', '10000000.00', '2023-08-06', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sys_invoices`
--

CREATE TABLE `sys_invoices` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `account` varchar(200) NOT NULL,
  `cn` varchar(100) NOT NULL DEFAULT '',
  `invoicenum` text NOT NULL,
  `date` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `datepaid` datetime DEFAULT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` varchar(1) NOT NULL DEFAULT 'f',
  `discount_value` decimal(14,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(14,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxname` varchar(100) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `taxrate` decimal(10,2) NOT NULL,
  `taxrate2` decimal(10,2) NOT NULL,
  `status` text NOT NULL,
  `paymentmethod` text NOT NULL,
  `notes` text NOT NULL,
  `vtoken` varchar(20) NOT NULL,
  `ptoken` varchar(20) NOT NULL,
  `r` varchar(100) NOT NULL DEFAULT '0',
  `nd` date DEFAULT NULL,
  `eid` int(10) NOT NULL DEFAULT 0,
  `ename` varchar(200) NOT NULL DEFAULT '',
  `vid` int(11) NOT NULL DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `recurring` tinyint(1) NOT NULL DEFAULT 0,
  `recurring_ends` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `last_overdue_reminder` date DEFAULT NULL,
  `allowed_payment_methods` text DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(50) DEFAULT NULL,
  `billing_country` varchar(100) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` varchar(100) DEFAULT NULL,
  `q_hide` tinyint(1) NOT NULL DEFAULT 0,
  `show_quantity_as` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `is_credit_invoice` int(1) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `aname` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_invoices`
--

INSERT INTO `sys_invoices` (`id`, `userid`, `account`, `cn`, `invoicenum`, `date`, `duedate`, `datepaid`, `subtotal`, `discount_type`, `discount_value`, `discount`, `credit`, `taxname`, `tax`, `tax2`, `total`, `taxrate`, `taxrate2`, `status`, `paymentmethod`, `notes`, `vtoken`, `ptoken`, `r`, `nd`, `eid`, `ename`, `vid`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `recurring`, `recurring_ends`, `last_recurring_date`, `source`, `sale_agent`, `last_overdue_reminder`, `allowed_payment_methods`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `q_hide`, `show_quantity_as`, `pid`, `is_credit_invoice`, `aid`, `aname`) VALUES
(4, 4, 'ظیطبلزب', '', '', '2023-07-09', '2023-07-09', '2023-07-09 08:25:15', '11400000.00', 'p', '50.00', '5700000.00', '0.00', '', '0.00', '0.00', '5700000.00', '0.00', '0.00', 'Unpaid', '', '', '4471209642', '3110220747', '0', '2023-07-09', 0, '', 0, 2, 'ریال', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL),
(3, 4, 'ظیطبلزب', '', '', '2023-07-09', '2023-07-09', '2023-07-09 08:15:33', '135000000.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '135000000.00', '0.00', '0.00', 'Unpaid', '', '', '5576666705', '2565783994', '0', '2023-07-09', 0, '', 0, 2, 'ریال', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL),
(5, 3, 'اصغر قلی پور', '', '', '2023-07-09', '2023-07-09', '2023-07-09 08:25:15', '11400000.00', 'p', '50.00', '5700000.00', '0.00', '', '0.00', '0.00', '5700000.00', '0.00', '0.00', 'Unpaid', '', '', '3483939052', '8724718049', '0', '2023-07-09', 0, '', 0, 2, 'ریال', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL),
(6, 3, 'اصغر قلی پور', '', '', '2023-07-11', '2023-07-11', '2023-07-11 15:12:50', '9000000.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '9000000.00', '0.00', '0.00', 'Unpaid', '', '', '0753379852', '0058771441', '0', '2023-07-11', 0, '', 0, 0, '﷼', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL),
(7, 3, 'اصغر قلی پور', '', '', '2023-07-11', '2023-07-11', '2023-07-11 15:13:25', '9000000.00', 'f', '0.00', '0.00', '0.00', '', '0.00', '0.00', '9000000.00', '0.00', '0.00', 'Unpaid', '', '', '1456140659', '8068446324', '0', '2023-07-11', 0, '', 0, 0, '﷼', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL),
(8, 3, 'اصغر قلی پور', '', '', '2023-07-11', '2023-07-11', '2023-07-11 17:39:54', '165000000.00', 'p', '0.00', '0.00', '99999999.99', '', '0.00', '0.00', '165000000.00', '0.00', '0.00', 'Paid', '', '', '7534195179', '3010251365', '0', '2023-07-11', 0, '', 0, 2, 'ریال', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL),
(9, 5, 'شرکت 1', '3354', '', '2023-08-06', '2023-08-06', '2023-08-06 20:09:34', '10000000.00', 'p', '0.00', '0.00', '0.00', '', '0.00', '0.00', '10000000.00', '0.00', '0.00', 'Unpaid', '', '', '0533847962', '4403960106', '0', '2023-08-06', 0, '', 0, 2, 'ریال', NULL, NULL, '1.0000', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_items`
--

CREATE TABLE `sys_items` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `unit` varchar(100) NOT NULL DEFAULT '',
  `sales_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `inventory` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `weight` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `width` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `length` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `height` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sku` varchar(50) DEFAULT NULL,
  `upc` varchar(50) DEFAULT NULL,
  `ean` varchar(50) DEFAULT NULL,
  `mpn` varchar(50) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `sid` int(11) NOT NULL DEFAULT 0,
  `supplier` varchar(200) DEFAULT NULL,
  `bid` int(11) NOT NULL DEFAULT 0,
  `brand` varchar(200) DEFAULT NULL,
  `sell_account` int(11) NOT NULL DEFAULT 0,
  `purchase_account` int(11) NOT NULL DEFAULT 0,
  `inventory_account` int(11) NOT NULL DEFAULT 0,
  `taxable` int(1) NOT NULL DEFAULT 0,
  `location` varchar(200) DEFAULT NULL,
  `item_number` varchar(100) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` enum('Service','Product') NOT NULL,
  `track_inventroy` enum('Yes','No') NOT NULL DEFAULT 'No',
  `negative_stock` enum('Yes','No') NOT NULL DEFAULT 'No',
  `available` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `added` date DEFAULT NULL,
  `last_sold` date DEFAULT NULL,
  `e` mediumtext NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `supplier_id` int(11) NOT NULL DEFAULT 0,
  `gname` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `expire_days` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `is_service` int(1) NOT NULL DEFAULT 0,
  `commission_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `commission_percent_type` varchar(100) DEFAULT NULL,
  `commission_fixed` decimal(16,2) NOT NULL DEFAULT 0.00,
  `trash` int(1) NOT NULL DEFAULT 0,
  `payterm` varchar(200) DEFAULT NULL,
  `cost_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `unit_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `promo_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `setup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `onetime` decimal(16,2) NOT NULL DEFAULT 0.00,
  `monthly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `monthlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quarterly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `quarterlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `halfyearly` decimal(16,2) NOT NULL DEFAULT 0.00,
  `halfyearlysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `annually` decimal(16,2) NOT NULL DEFAULT 0.00,
  `annuallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `biennially` decimal(16,2) NOT NULL DEFAULT 0.00,
  `bienniallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `triennially` decimal(16,2) NOT NULL DEFAULT 0.00,
  `trienniallysetup` decimal(16,2) NOT NULL DEFAULT 0.00,
  `has_domain` varchar(100) DEFAULT NULL,
  `free_domain` varchar(100) DEFAULT NULL,
  `email_rel` int(11) NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL,
  `c6` text DEFAULT NULL,
  `c7` text DEFAULT NULL,
  `c8` text DEFAULT NULL,
  `c9` text DEFAULT NULL,
  `c10` text DEFAULT NULL,
  `c11` text DEFAULT NULL,
  `c12` text DEFAULT NULL,
  `c13` text DEFAULT NULL,
  `c14` text DEFAULT NULL,
  `c15` text DEFAULT NULL,
  `c16` text DEFAULT NULL,
  `c17` text DEFAULT NULL,
  `c18` text DEFAULT NULL,
  `c19` text DEFAULT NULL,
  `c20` text DEFAULT NULL,
  `c21` text DEFAULT NULL,
  `c22` text DEFAULT NULL,
  `c23` text DEFAULT NULL,
  `c24` text DEFAULT NULL,
  `c25` text DEFAULT NULL,
  `c26` text DEFAULT NULL,
  `c27` text DEFAULT NULL,
  `c28` text DEFAULT NULL,
  `c29` text DEFAULT NULL,
  `c30` text DEFAULT NULL,
  `sold_count` decimal(16,4) DEFAULT 0.0000,
  `total_amount` decimal(16,4) DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_items`
--

INSERT INTO `sys_items` (`id`, `name`, `unit`, `sales_price`, `inventory`, `weight`, `width`, `length`, `height`, `sku`, `upc`, `ean`, `mpn`, `isbn`, `sid`, `supplier`, `bid`, `brand`, `sell_account`, `purchase_account`, `inventory_account`, `taxable`, `location`, `item_number`, `description`, `type`, `track_inventroy`, `negative_stock`, `available`, `status`, `added`, `last_sold`, `e`, `sorder`, `gid`, `category_id`, `supplier_id`, `gname`, `product_id`, `size`, `start_date`, `end_date`, `expire_date`, `expire_days`, `image`, `flag`, `is_service`, `commission_percent`, `commission_percent_type`, `commission_fixed`, `trash`, `payterm`, `cost_price`, `unit_price`, `promo_price`, `setup`, `onetime`, `monthly`, `monthlysetup`, `quarterly`, `quarterlysetup`, `halfyearly`, `halfyearlysetup`, `annually`, `annuallysetup`, `biennially`, `bienniallysetup`, `triennially`, `trienniallysetup`, `has_domain`, `free_domain`, `email_rel`, `tags`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`, `c9`, `c10`, `c11`, `c12`, `c13`, `c14`, `c15`, `c16`, `c17`, `c18`, `c19`, `c20`, `c21`, `c22`, `c23`, `c24`, `c25`, `c26`, `c27`, `c28`, `c29`, `c30`, `sold_count`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 'محصول 1', '', '9000000.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '1', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, '0.00', NULL, '0.00', 0, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL),
(2, 'شیر برقی 3 سانتی', '', '10000000.00', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, '3', '', 'Product', 'No', 'No', 0, 'Active', NULL, NULL, '', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, '0.00', NULL, '0.00', 0, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.0000', '0.0000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_item_cats`
--

CREATE TABLE `sys_item_cats` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_leads`
--

CREATE TABLE `sys_leads` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `added_from` varchar(200) DEFAULT NULL,
  `o` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL DEFAULT 0,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `last_contact` datetime DEFAULT NULL,
  `last_contact_by` varchar(200) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `public` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `lost` int(1) NOT NULL DEFAULT 0,
  `junk` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_logs`
--

CREATE TABLE `sys_logs` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `userid` int(10) NOT NULL,
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_logs`
--

INSERT INTO `sys_logs` (`id`, `date`, `type`, `description`, `userid`, `ip`) VALUES
(1, '2016-11-15 11:30:45', 'System', 'Build Updated to: 4600\r\nDocuments Table Created\r\nOrders Table Created\r\nsys_items table altered\r\nUpdate Completed!\r\n', 0, '::1'),
(2, '2017-04-18 08:37:23', 'System', 'Build Updated to: 4620\r\nUpdate Completed!\r\n', 0, '::1'),
(3, '2017-09-17 15:08:39', 'System', 'Build Updated to: 4671\r\nUpdate Completed!\r\n', 0, '127.0.0.1'),
(4, '2017-09-21 05:34:13', 'Admin', 'Login Successful demo@example.com', 1, '127.0.0.1'),
(5, '2017-09-28 05:07:55', 'Admin', 'Login Successful demo@example.com', 1, '127.0.0.1'),
(6, '2017-09-29 19:12:19', 'Admin', 'Login Successful demo@example.com', 1, '127.0.0.1'),
(7, '2017-11-13 04:44:33', 'Admin', 'Login Successful demo@example.com', 1, '127.0.0.1'),
(8, '2017-11-13 05:12:33', 'Admin', 'New Contact Added test [CID: 1]', 1, '127.0.0.1'),
(9, '2017-11-13 05:12:40', 'Admin', 'New Contact Added test 2 [CID: 2]', 1, '127.0.0.1'),
(10, '2017-11-18 11:52:45', 'Admin', 'Login Successful demo@example.com', 1, '127.0.0.1'),
(11, '2023-07-04 13:33:00', 'Admin', 'Login Successful demo@demo.com', 1, '127.0.0.1'),
(12, '2023-07-04 22:11:02', 'Admin', 'New Deposit: Invoice 1 Payment [TrID: 1 | Amount: 9000000.00]', 1, '127.0.0.1'),
(13, '2023-07-04 22:27:51', 'Admin', 'Login Successful demo@demo.com', 1, '127.0.0.1'),
(14, '2023-07-04 22:38:00', 'Admin', 'New Deposit: Invoice 2 Payment [TrID: 6 | Amount: 18000000.00]', 1, '127.0.0.1'),
(15, '2023-07-04 23:32:02', 'Admin', 'Login Successful demo@demo.com', 1, '127.0.0.1'),
(16, '2023-07-05 00:06:31', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(17, '2023-07-05 00:14:16', 'Admin', 'Contact Deleted: test 2', 1, '127.0.0.1'),
(18, '2023-07-05 00:14:18', 'Admin', 'Contact Deleted: test', 1, '127.0.0.1'),
(19, '2023-07-08 13:21:10', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(20, '2023-07-08 13:41:41', 'Admin', 'تماس جدید اضافه شد اصغر قلی پور [CID: 3]', 1, '127.0.0.1'),
(21, '2023-07-08 13:42:24', 'Admin', 'New Expense: بلراذت [TrID: 9 | Amount: 1000000000000]', 1, '127.0.0.1'),
(22, '2023-07-08 13:45:37', 'Admin', 'New Deposit: شس [TrID: 10 | Amount: 950000]', 1, '127.0.0.1'),
(23, '2023-07-08 14:00:14', 'Admin', 'تماس جدید اضافه شد ظیطبلزب [CID: 4]', 1, '127.0.0.1'),
(24, '2023-07-09 08:01:16', 'Admin', 'New Deposit: توضیحات معتبر [TrID: 11 | Amount: 599999]', 1, '127.0.0.1'),
(25, '2023-07-11 14:50:22', 'Admin', 'New Deposit: یبسیب [TrID: 12 | Amount: 10000]', 1, '::1'),
(26, '2023-07-11 14:50:44', 'Admin', 'New Expense: ظبشسس [TrID: 13 | Amount: 5000]', 1, '::1'),
(27, '2023-07-11 15:26:37', 'Admin', 'Product Deleted: سیل [ID: 3]', 1, '127.0.0.1'),
(28, '2023-07-11 15:57:34', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(29, '2023-07-11 15:59:51', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(30, '2023-07-11 17:40:40', 'Admin', 'New Deposit: صورتحساب 8 پرداخت [TrID: 19 | Amount: 120000000.00]', 1, '127.0.0.1'),
(31, '2023-07-11 22:34:48', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(32, '2023-07-17 14:53:34', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(33, '2023-07-25 20:02:30', 'Admin', 'ورود با موفقیت demo@demo.com', 1, '127.0.0.1'),
(34, '2023-07-25 20:10:14', 'Admin', 'تماس جدید اضافه شد شرکت 1 [CID: 5]', 1, '127.0.0.1'),
(35, '2023-08-06 19:16:07', 'Admin', 'New Deposit: qwd [TrID: 22 | Amount: 123123123]', 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `sys_orders`
--

CREATE TABLE `sys_orders` (
  `id` int(11) NOT NULL,
  `ordernum` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `sales_person` varchar(100) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `cname` varchar(100) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_expiry` date DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `stitle` varchar(200) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `iid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `recurring` decimal(16,2) NOT NULL DEFAULT 0.00,
  `setup_fee` decimal(16,2) NOT NULL DEFAULT 0.00,
  `billing_cycle` text DEFAULT NULL,
  `addon_ids` text DEFAULT NULL,
  `related_orders` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `upgrade_ids` text DEFAULT NULL,
  `xdata` text DEFAULT NULL,
  `xsecret` varchar(100) DEFAULT NULL,
  `promo_code` text DEFAULT NULL,
  `promo_type` text DEFAULT NULL,
  `promo_value` text DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `ipaddress` text DEFAULT NULL,
  `fraud_module` text DEFAULT NULL,
  `fraud_output` text DEFAULT NULL,
  `activation_subject` text DEFAULT NULL,
  `activation_message` text DEFAULT NULL,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_orders`
--

INSERT INTO `sys_orders` (`id`, `ordernum`, `source`, `status`, `sales_person`, `branch_name`, `cname`, `cid`, `contract_id`, `bid`, `date_added`, `date_expiry`, `pid`, `stitle`, `sid`, `iid`, `aid`, `amount`, `recurring`, `setup_fee`, `billing_cycle`, `addon_ids`, `related_orders`, `description`, `upgrade_ids`, `xdata`, `xsecret`, `promo_code`, `promo_type`, `promo_value`, `payment_method`, `ipaddress`, `fraud_module`, `fraud_output`, `activation_subject`, `activation_message`, `trash`, `archived`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(2, '4967063022', NULL, 'Pending', NULL, NULL, 'اصغر قلی پور', 3, NULL, NULL, '2023-07-11', NULL, 1, 'محصول 1', NULL, 7, NULL, '9000000.00', '0.00', '0.00', 'One Time', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, '9879715931', NULL, 'Pending', NULL, NULL, 'ظیطبلزب', 4, NULL, NULL, '2023-07-11', NULL, 1, 'محصول 1', NULL, 0, NULL, '9000000.00', '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, '9350187145', NULL, 'Active', NULL, NULL, 'اصغر قلی پور', 3, NULL, NULL, '2023-07-11', NULL, 2, 'شیر برقی 3 سانتی', NULL, 0, NULL, '10000000.00', '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, '2329694180', NULL, 'Active', NULL, NULL, 'ظیطبلزب', 4, NULL, NULL, '2023-07-11', NULL, 1, 'محصول 1', NULL, 0, NULL, '10.00', '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, '8556084321', NULL, 'Pending', NULL, NULL, 'شرکت 1', 5, NULL, NULL, '2023-07-26', NULL, 1, 'محصول 1', NULL, 0, NULL, '0.00', '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, '3493549450', NULL, 'Pending', NULL, NULL, 'شرکت 1', 5, NULL, NULL, '2023-07-26', NULL, 1, 'محصول 1', NULL, 0, NULL, '100.00', '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, '4465950973', NULL, 'Pending', NULL, NULL, 'ظیطبلزب', 4, NULL, NULL, '2023-07-26', NULL, 2, 'شیر برقی 3 سانتی', NULL, 0, NULL, '50000.00', '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_permissions`
--

CREATE TABLE `sys_permissions` (
  `id` int(11) NOT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `shortname` varchar(200) DEFAULT NULL,
  `available` int(1) NOT NULL DEFAULT 0,
  `core` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_permissions`
--

INSERT INTO `sys_permissions` (`id`, `pname`, `shortname`, `available`, `core`) VALUES
(1, 'Customers', 'customers', 0, 1),
(2, 'Companies', 'companies', 0, 1),
(3, 'Transactions', 'transactions', 0, 1),
(4, 'Sales', 'sales', 0, 1),
(5, 'Bank & Cash', 'bank_n_cash', 0, 1),
(6, 'Products & Services', 'products_n_services', 0, 1),
(7, 'Reports', 'reports', 0, 1),
(8, 'Utilities', 'utilities', 0, 1),
(9, 'Appearance', 'appearance', 0, 1),
(10, 'Plugins', 'plugins', 0, 1),
(11, 'Calendar', 'calendar', 0, 1),
(12, 'Leads', 'leads', 0, 1),
(13, 'Tasks', 'tasks', 0, 1),
(14, 'Contracts', 'contracts', 0, 1),
(15, 'Orders', 'orders', 0, 1),
(16, 'Settings', 'settings', 0, 1),
(17, 'Documents', 'documents', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pg`
--

CREATE TABLE `sys_pg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `settings` text NOT NULL,
  `value` text NOT NULL,
  `processor` text NOT NULL,
  `ins` text NOT NULL,
  `c1` text NOT NULL,
  `c2` text NOT NULL,
  `c3` text NOT NULL,
  `c4` text NOT NULL,
  `c5` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `sorder` int(2) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `mode` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pg`
--

INSERT INTO `sys_pg` (`id`, `name`, `settings`, `value`, `processor`, `ins`, `c1`, `c2`, `c3`, `c4`, `c5`, `status`, `sorder`, `logo`, `mode`) VALUES
(1, 'Paypal', 'Paypal Email', 'demo@example.com', 'paypal', 'Invoices', 'USD', '1', '', '', '', 'Active', 1, NULL, NULL),
(2, 'Stripe', 'API Key', 'sk_test_ARblMczqDw61NusMMs7o1RVK', 'stripe', '', 'USD', '', '', '', '', 'Active', 2, NULL, NULL),
(3, 'Bank / Cash', 'Instructions', 'Make a Payment to Our Bank Account <br>Bank Name: City Bank <br>Account Name: Sadia Sharmin <br>Account Number: 1505XXXXXXXX <br>', 'manualpayment', '', '', '', '', '', '', 'Active', 3, NULL, NULL),
(4, 'Authorize.net', 'API_LOGIN_ID', 'Insert API Login ID here', 'authorize_net', '', 'Insert Transaction Key Here', '', '', '', '', 'Inactive', 4, NULL, ''),
(5, 'Braintree', 'Merchant ID', 'your merchant id', 'braintree', '', 'your public key', 'your private key', 'bank account', 'sandbox', '', 'Inactive', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_pl`
--

CREATE TABLE `sys_pl` (
  `id` int(11) NOT NULL,
  `c` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `build` int(10) DEFAULT 1,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_pmethods`
--

CREATE TABLE `sys_pmethods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sorder` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_pmethods`
--

INSERT INTO `sys_pmethods` (`id`, `name`, `sorder`) VALUES
(1, 'نقد', 1),
(2, 'چک', 4),
(3, 'کارت به کارت', 5),
(10, 'روش های دیگر', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sys_quoteitems`
--

CREATE TABLE `sys_quoteitems` (
  `id` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `itemcode` text NOT NULL,
  `description` text NOT NULL,
  `qty` text NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `taxable` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_quotes`
--

CREATE TABLE `sys_quotes` (
  `id` int(10) NOT NULL,
  `subject` text NOT NULL,
  `stage` enum('Draft','Delivered','On Hold','Accepted','Lost','Dead') NOT NULL,
  `validuntil` date NOT NULL,
  `userid` int(10) NOT NULL,
  `invoicenum` text NOT NULL,
  `cn` text NOT NULL,
  `account` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `companyname` text NOT NULL,
  `email` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `postcode` text NOT NULL,
  `country` text NOT NULL,
  `phonenumber` text NOT NULL,
  `currency` int(10) NOT NULL,
  `subtotal` decimal(18,2) NOT NULL,
  `discount_type` text NOT NULL,
  `discount_value` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `taxname` text NOT NULL,
  `taxrate` decimal(10,2) NOT NULL,
  `tax1` decimal(10,2) NOT NULL,
  `tax2` decimal(10,2) NOT NULL,
  `total` decimal(18,2) NOT NULL,
  `proposal` text NOT NULL,
  `customernotes` text NOT NULL,
  `adminnotes` text NOT NULL,
  `datecreated` date NOT NULL,
  `lastmodified` date NOT NULL,
  `datesent` date NOT NULL,
  `dateaccepted` date NOT NULL,
  `vtoken` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_roles`
--

CREATE TABLE `sys_roles` (
  `id` int(11) NOT NULL,
  `rname` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_roles`
--

INSERT INTO `sys_roles` (`id`, `rname`) VALUES
(1, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `sys_sales`
--

CREATE TABLE `sys_sales` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `oname` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `amount` decimal(14,2) NOT NULL,
  `term` varchar(100) NOT NULL,
  `milestone` varchar(100) NOT NULL,
  `p` int(11) NOT NULL,
  `o` int(11) NOT NULL,
  `open` date NOT NULL,
  `close` date NOT NULL,
  `status` enum('New','In Progress','Won','Lost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedule`
--

CREATE TABLE `sys_schedule` (
  `id` int(11) NOT NULL,
  `cname` mediumtext NOT NULL,
  `val` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedule`
--

INSERT INTO `sys_schedule` (`id`, `cname`, `val`) VALUES
(1, 'accounting_snapshot', 'Active'),
(2, 'recurring_invoice', 'Active'),
(3, 'notify', 'Active'),
(4, 'notifyemail', 'demo@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `sys_schedulelogs`
--

CREATE TABLE `sys_schedulelogs` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `logs` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_schedulelogs`
--

INSERT INTO `sys_schedulelogs` (`id`, `date`, `logs`) VALUES
(4, '2015-03-14', '2015-03-14 20:17:15 : Schedule Jobs Started....... <br>2015-03-14 20:17:15 : Creating Accounting Snapshot <br>2015-03-14 20:17:15 : Accounting Snapshot created! <br>=============== Accounting Snaphsot ==================== <br>Accounting Snaphsot - Date: 2015-03-13<br>Total Income: Tk. 0.00<br>Total Expense: Tk. 0.00<br>================================================== <br>2015-03-14 20:17:15 : Creating Recurring Invoice <br>2015-03-14 20:17:15 : 1 Invoice created! <br>================================================== <br>');

-- --------------------------------------------------------

--
-- Table structure for table `sys_staffpermissions`
--

CREATE TABLE `sys_staffpermissions` (
  `id` int(11) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `can_view` int(1) NOT NULL DEFAULT 0,
  `can_edit` int(1) NOT NULL DEFAULT 0,
  `can_create` int(1) NOT NULL DEFAULT 0,
  `can_delete` int(1) NOT NULL DEFAULT 0,
  `all_data` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tags`
--

CREATE TABLE `sys_tags` (
  `id` int(11) NOT NULL,
  `text` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tasks`
--

CREATE TABLE `sys_tasks` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `oid` int(11) NOT NULL DEFAULT 0,
  `iid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL DEFAULT 0,
  `tid` int(11) NOT NULL DEFAULT 0,
  `eid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `subscribers` text DEFAULT NULL,
  `assigned_to` text DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(200) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(200) DEFAULT NULL,
  `vtoken` varchar(50) DEFAULT NULL,
  `ptoken` varchar(50) DEFAULT NULL,
  `started` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `stime` varchar(50) DEFAULT NULL,
  `dtime` varchar(50) DEFAULT NULL,
  `time_spent` varchar(50) DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `flag` int(1) NOT NULL DEFAULT 0,
  `finished` int(1) NOT NULL DEFAULT 0,
  `ratings` varchar(50) DEFAULT NULL,
  `rel_type` varchar(50) DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `is_public` int(1) NOT NULL DEFAULT 0,
  `billable` int(1) NOT NULL DEFAULT 0,
  `billed` int(1) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(14,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT NULL,
  `progress` int(3) DEFAULT NULL,
  `visible_to_client` int(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_tax`
--

CREATE TABLE `sys_tax` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `state` text NOT NULL,
  `country` text NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `aid` int(11) NOT NULL,
  `bal` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_tax`
--

INSERT INTO `sys_tax` (`id`, `name`, `state`, `country`, `rate`, `aid`, `bal`) VALUES
(1, 'Sales Tax', '', '', '1.50', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `sys_transactions`
--

CREATE TABLE `sys_transactions` (
  `id` int(11) NOT NULL,
  `account` varchar(200) NOT NULL,
  `type` enum('Income','Expense','Transfer') NOT NULL,
  `category` varchar(200) DEFAULT NULL,
  `amount` decimal(18,2) NOT NULL,
  `payer` varchar(200) DEFAULT NULL,
  `payee` varchar(200) DEFAULT NULL,
  `payerid` int(11) NOT NULL DEFAULT 0,
  `payeeid` int(11) NOT NULL DEFAULT 0,
  `method` varchar(200) DEFAULT NULL,
  `ref` varchar(200) DEFAULT NULL,
  `status` enum('Cleared','Uncleared','Reconciled','Void') NOT NULL DEFAULT 'Cleared',
  `description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `tax` decimal(18,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `dr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `cr` decimal(18,2) NOT NULL DEFAULT 0.00,
  `bal` decimal(18,2) NOT NULL DEFAULT 0.00,
  `iid` int(11) NOT NULL DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 0,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_prefix` varchar(10) DEFAULT NULL,
  `currency_suffix` varchar(10) DEFAULT NULL,
  `currency_rate` decimal(11,4) NOT NULL DEFAULT 1.0000,
  `base_amount` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `vid` int(11) NOT NULL DEFAULT 0,
  `aid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `attachments` text DEFAULT NULL,
  `source` varchar(200) DEFAULT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `archived` int(1) NOT NULL DEFAULT 0,
  `trash` int(1) NOT NULL DEFAULT 0,
  `flag` int(1) NOT NULL DEFAULT 0,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_transactions`
--

INSERT INTO `sys_transactions` (`id`, `account`, `type`, `category`, `amount`, `payer`, `payee`, `payerid`, `payeeid`, `method`, `ref`, `status`, `description`, `tags`, `tax`, `date`, `dr`, `cr`, `bal`, `iid`, `currency`, `currency_symbol`, `currency_prefix`, `currency_suffix`, `currency_rate`, `base_amount`, `company_id`, `vid`, `aid`, `created_at`, `updated_at`, `updated_by`, `attachments`, `source`, `rid`, `pid`, `archived`, `trash`, `flag`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'acc1', 'Income', '', '9000000.00', '', '', 0, 0, 'نقد', '', 'Cleared', 'Invoice 1 Payment', '', '0.00', '2023-07-04', '0.00', '9000000.00', '9000000.00', 1, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 18:41:02', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, 'acc1', 'Transfer', '', '1234000.00', '', '', 0, 0, '', '', 'Cleared', 'توضیح تراش کاری', '', '0.00', '2023-07-04', '1234000.00', '0.00', '7766000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 18:48:14', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, 'تراش کار', 'Transfer', '', '1234000.00', '', '', 0, 0, '', '', 'Cleared', 'توضیح تراش کاری', '', '0.00', '2023-07-04', '0.00', '1234000.00', '1234000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 18:48:14', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, 'acc1', 'Transfer', '', '100000.00', '', '', 0, 0, '', '', 'Cleared', 'بابت کار2', '', '0.00', '2023-07-04', '100000.00', '0.00', '7666000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 19:03:18', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, 'تراش کار', 'Transfer', '', '100000.00', '', '', 0, 0, '', '', 'Cleared', 'بابت کار2', '', '0.00', '2023-07-04', '0.00', '100000.00', '1334000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 19:03:18', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, 'محصول اول', 'Income', 'Uncategorized', '18000000.00', '', '', 2, 0, '', '', 'Cleared', 'Invoice 2 Payment', '', '0.00', '2023-07-04', '0.00', '18000000.00', '18000000.00', 2, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 19:08:00', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(7, 'محصول اول', 'Transfer', '', '20000000.00', '', '', 0, 0, '', '', 'Cleared', 'توضیح1', '', '0.00', '2023-07-04', '20000000.00', '0.00', '-2000000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 19:59:14', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, 'تراش کار', 'Transfer', '', '20000000.00', '', '', 0, 0, '', '', 'Cleared', 'توضیح1', '', '0.00', '2023-07-04', '0.00', '20000000.00', '21334000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-04 19:59:14', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, 'acc1', 'Expense', 'Uncategorized', '1000000000000.00', '', '', 0, 3, '', '', 'Cleared', 'بلراذت', '', '0.00', '2023-07-08', '1000000000000.00', '0.00', '-999992334000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-08 10:12:24', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, 'تراش کار', 'Income', 'Uncategorized', '950000.00', '', '', 3, 0, '', '', 'Cleared', 'شس', '', '0.00', '2023-07-08', '0.00', '950000.00', '22284000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-08 10:15:37', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, 'acc1', 'Income', '', '599999.00', '', '', 0, 0, '', '', 'Cleared', 'توضیحات معتبر', '', '0.00', '2023-07-09', '0.00', '599999.00', '-999991734001.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-09 04:31:16', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, 'acc1', 'Income', '', '10000.00', '', '', 0, 0, '', '', 'Cleared', 'یبسیب', '', '0.00', '2023-07-11', '0.00', '10000.00', '-999991724001.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 11:20:22', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, 'acc1', 'Expense', '', '5000.00', '', '', 0, 0, '', '', 'Cleared', 'ظبشسس', '', '0.00', '2023-07-11', '5000.00', '0.00', '-999991729001.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 11:20:44', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, 'acc1', 'Transfer', '', '2000.00', '', '', 0, 0, '', '', 'Cleared', 'از اک 1 به تراش کار', '', '0.00', '2023-07-11', '2000.00', '0.00', '-999991731001.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 11:21:29', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, 'تراش کار', 'Transfer', '', '2000.00', '', '', 0, 0, '', '', 'Cleared', 'از اک 1 به تراش کار', '', '0.00', '2023-07-11', '0.00', '2000.00', '22286000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 11:21:29', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, 'حساب تجارت', 'Income', '', '10000000.00', '', '', 0, 0, '', '', 'Cleared', 'موجودی اولیه', '', '0.00', '2023-07-11', '0.00', '10000000.00', '10000000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 11:50:10', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, 'حساب تجارت', 'Transfer', '', '10000000.00', '', '', 0, 0, 'نقد', '', 'Cleared', 'تراش کاری محصول 1', '', '0.00', '2023-07-11', '10000000.00', '0.00', '0.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 14:07:28', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, 'تراش کار', 'Transfer', '', '10000000.00', '', '', 0, 0, 'نقد', '', 'Cleared', 'تراش کاری محصول 1', '', '0.00', '2023-07-11', '0.00', '10000000.00', '32286000.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 14:07:28', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(19, 'حساب تجارت', 'Income', 'Uncategorized', '120000000.00', '', '', 3, 0, 'کارت به کارت', '', 'Cleared', 'صورتحساب 8 پرداخت', '', '0.00', '2023-07-11', '0.00', '120000000.00', '120000000.00', 8, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-11 14:10:40', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, 'حساب تجارت', 'Transfer', '', '123456.00', '', '', 0, 0, '', '', 'Cleared', 'پروژه موبایل', '', '0.00', '2023-07-31', '123456.00', '0.00', '119876544.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-31 14:29:28', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(21, 'تراش کار', 'Transfer', '', '123456.00', '', '', 0, 0, '', '', 'Cleared', 'پروژه موبایل', '', '0.00', '2023-07-31', '0.00', '123456.00', '32409456.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-07-31 14:29:28', 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL),
(22, 'acc1', 'Income', 'Equities', '123123123.00', '', '', 0, 0, '', '', 'Cleared', 'qwd', '', '0.00', '2023-08-06', '0.00', '123123123.00', '-999868607878.00', 0, 0, NULL, NULL, NULL, '1.0000', '0.0000', 0, 0, 0, NULL, '2023-08-06 15:46:07', 0, '', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_units`
--

CREATE TABLE `sys_units` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `conversion_factor` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sorder` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `fullname` varchar(45) NOT NULL DEFAULT '',
  `phonenumber` varchar(20) DEFAULT NULL,
  `password` mediumtext NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'Full Access',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `last_login` datetime DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `otp` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin_enabled` enum('Yes','No') NOT NULL DEFAULT 'No',
  `pin` mediumtext NOT NULL,
  `img` text NOT NULL,
  `api` enum('Yes','No') DEFAULT 'No',
  `pwresetkey` varchar(100) NOT NULL,
  `keyexpire` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL DEFAULT 0,
  `role` varchar(200) DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `autologin` varchar(200) DEFAULT NULL,
  `at` varchar(200) DEFAULT NULL,
  `landing_page` varchar(200) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `c1` text DEFAULT NULL,
  `c2` text DEFAULT NULL,
  `c3` text DEFAULT NULL,
  `c4` text DEFAULT NULL,
  `c5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sys_users`
--

INSERT INTO `sys_users` (`id`, `username`, `fullname`, `phonenumber`, `password`, `user_type`, `status`, `last_login`, `email`, `creationdate`, `otp`, `pin_enabled`, `pin`, `img`, `api`, `pwresetkey`, `keyexpire`, `roleid`, `role`, `last_activity`, `autologin`, `at`, `landing_page`, `language`, `notes`, `c1`, `c2`, `c3`, `c4`, `c5`) VALUES
(1, 'demo@demo.com', 'admin', '', 'ibHYFYNIfPoZg', 'Admin', 'Active', '2023-07-25 20:02:30', '', '2014-10-20 01:43:07', 'No', 'No', '$1$ZW/.uF5.$.rwCeLiguoBzYzf3waOnY1', '', 'No', '', '0', 0, NULL, NULL, 'pflhu3iwqgj51f2jkewq1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_balances`
--
ALTER TABLE `account_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_groups`
--
ALTER TABLE `crm_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_industries`
--
ALTER TABLE `crm_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads`
--
ALTER TABLE `crm_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_activity`
--
ALTER TABLE `sys_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_api`
--
ALTER TABLE `sys_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cart`
--
ALTER TABLE `sys_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_cats`
--
ALTER TABLE `sys_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_companies`
--
ALTER TABLE `sys_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_documents`
--
ALTER TABLE `sys_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  ADD PRIMARY KEY (`id`,`language_id`),
  ADD KEY `tplname` (`tplname`(32));

--
-- Indexes for table `sys_events`
--
ALTER TABLE `sys_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`);

--
-- Indexes for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `status` (`status`(3));

--
-- Indexes for table `sys_items`
--
ALTER TABLE `sys_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_leads`
--
ALTER TABLE `sys_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_logs`
--
ALTER TABLE `sys_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orders`
--
ALTER TABLE `sys_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pg`
--
ALTER TABLE `sys_pg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateway_setting` (`name`(32),`processor`(32)),
  ADD KEY `setting_value` (`processor`(32),`ins`(32));

--
-- Indexes for table `sys_pl`
--
ALTER TABLE `sys_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_roles`
--
ALTER TABLE `sys_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_sales`
--
ALTER TABLE `sys_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tags`
--
ALTER TABLE `sys_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tax`
--
ALTER TABLE `sys_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_country` (`state`(32),`country`(2));

--
-- Indexes for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_units`
--
ALTER TABLE `sys_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_balances`
--
ALTER TABLE `account_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_accounts`
--
ALTER TABLE `crm_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_customfields`
--
ALTER TABLE `crm_customfields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_customfieldsvalues`
--
ALTER TABLE `crm_customfieldsvalues`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_groups`
--
ALTER TABLE `crm_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_industries`
--
ALTER TABLE `crm_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `crm_leads`
--
ALTER TABLE `crm_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_lead_sources`
--
ALTER TABLE `crm_lead_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `crm_lead_status`
--
ALTER TABLE `crm_lead_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crm_salutations`
--
ALTER TABLE `crm_salutations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ib_doc_rel`
--
ALTER TABLE `ib_doc_rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ib_invoice_access_log`
--
ALTER TABLE `ib_invoice_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_accounts`
--
ALTER TABLE `sys_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_activity`
--
ALTER TABLE `sys_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_api`
--
ALTER TABLE `sys_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_appconfig`
--
ALTER TABLE `sys_appconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `sys_cart`
--
ALTER TABLE `sys_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_cats`
--
ALTER TABLE `sys_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sys_companies`
--
ALTER TABLE `sys_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_currencies`
--
ALTER TABLE `sys_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_documents`
--
ALTER TABLE `sys_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_emailconfig`
--
ALTER TABLE `sys_emailconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_email_logs`
--
ALTER TABLE `sys_email_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_email_templates`
--
ALTER TABLE `sys_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sys_events`
--
ALTER TABLE `sys_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_invoiceitems`
--
ALTER TABLE `sys_invoiceitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sys_invoices`
--
ALTER TABLE `sys_invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sys_items`
--
ALTER TABLE `sys_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_item_cats`
--
ALTER TABLE `sys_item_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_leads`
--
ALTER TABLE `sys_leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_logs`
--
ALTER TABLE `sys_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sys_orders`
--
ALTER TABLE `sys_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sys_permissions`
--
ALTER TABLE `sys_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sys_pg`
--
ALTER TABLE `sys_pg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sys_pl`
--
ALTER TABLE `sys_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_pmethods`
--
ALTER TABLE `sys_pmethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sys_quoteitems`
--
ALTER TABLE `sys_quoteitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_quotes`
--
ALTER TABLE `sys_quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_roles`
--
ALTER TABLE `sys_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_sales`
--
ALTER TABLE `sys_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_schedule`
--
ALTER TABLE `sys_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_schedulelogs`
--
ALTER TABLE `sys_schedulelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sys_staffpermissions`
--
ALTER TABLE `sys_staffpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tags`
--
ALTER TABLE `sys_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tasks`
--
ALTER TABLE `sys_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_tax`
--
ALTER TABLE `sys_tax`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_transactions`
--
ALTER TABLE `sys_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sys_units`
--
ALTER TABLE `sys_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
