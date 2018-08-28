-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2018 at 12:11 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haphapholiday`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `line` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `deleted_at`, `created_at`, `updated_at`, `phone`, `email`, `instagram`, `line`) VALUES
(1, NULL, '2018-08-27 15:19:47', '2018-08-27 15:40:30', '+62 857041046680', 'adzharamrullah@gmail.com', 'adzharamrullah', '@adzharamrullah');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2018-08-27 14:33:22', '2018-08-27 14:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', 'Male', '8888888888', '', 'user@example.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2018-08-27', '2018-08-27', '2018-08-27', '0.000', NULL, '2018-08-27 14:33:41', '2018-08-27 14:33:41'),
(2, 'Admin', 'Admin', 'Male', '085704104668', '', 'adzharamrullah@gmail.com', 1, 'CIANJUR', 'JL. SURYAKENCANA RT 01 / RW 10', 'JL. SURYAKENCANA RT 01 / RW 10', '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2018-08-27 14:56:07', '2018-08-27 14:56:07');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Hap Hap Holiday', '2018-08-27 14:33:27', '2018-08-27 15:40:02'),
(2, 'sitename_part1', '', 'HapHap', '2018-08-27 14:33:27', '2018-08-27 15:40:02'),
(3, 'sitename_part2', '', 'Holiday', '2018-08-27 14:33:27', '2018-08-27 15:40:02'),
(4, 'sitename_short', '', 'HH', '2018-08-27 14:33:27', '2018-08-27 15:40:02'),
(5, 'site_description', '', 'Haphapholiday adalah perusahaan travel agency ', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(6, 'sidebar_search', '', '0', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(7, 'show_messages', '', '0', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(8, 'show_notifications', '', '0', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(9, 'show_tasks', '', '0', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(10, 'show_rightsidebar', '', '0', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(11, 'skin', '', 'skin-white', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(12, 'layout', '', 'fixed', '2018-08-27 14:33:28', '2018-08-27 15:40:02'),
(13, 'default_email', '', 'admin@haphapholiday.com', '2018-08-27 14:33:28', '2018-08-27 15:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(1, 'Team', '#', 'fa-group', 'custom', 0, 4, '2018-08-27 14:33:21', '2018-08-28 02:58:15'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 1, '2018-08-27 14:33:21', '2018-08-27 15:37:23'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 3, '2018-08-27 14:33:21', '2018-08-28 02:58:15'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 2, '2018-08-27 14:33:21', '2018-08-27 15:37:23'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 3, '2018-08-27 14:33:21', '2018-08-27 15:37:23'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 4, '2018-08-27 14:33:21', '2018-08-27 15:37:23'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 5, '2018-08-27 14:33:21', '2018-08-27 15:37:23'),
(10, 'Contacts', 'contacts', 'fa fa-envelope', 'module', 0, 2, '2018-08-27 15:18:22', '2018-08-27 15:37:23'),
(11, 'Products', 'products', 'fa fa-ticket', 'module', 0, 1, '2018-08-28 01:54:46', '2018-08-28 02:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1),
('2018_08_27_212407_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2018-08-27 14:32:52', '2018-08-27 14:33:28'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2018-08-27 14:32:53', '2018-08-27 14:33:28'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2018-08-27 14:32:55', '2018-08-27 14:33:28'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2018-08-27 14:32:56', '2018-08-27 14:33:28'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2018-08-27 14:32:58', '2018-08-27 14:33:29'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2018-08-27 14:33:07', '2018-08-27 14:33:29'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2018-08-27 14:33:09', '2018-08-27 14:33:29'),
(10, 'Contacts', 'Contacts', 'contacts', 'phone', 'Contact', 'ContactsController', 'fa-envelope', 1, '2018-08-27 15:14:04', '2018-08-27 15:18:22'),
(11, 'Products', 'Products', 'products', 'title', 'Product', 'ProductsController', 'fa-ticket', 1, '2018-08-28 01:52:28', '2018-08-28 01:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2018-08-27 14:32:52', '2018-08-27 14:32:52'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2018-08-27 14:32:52', '2018-08-27 14:32:52'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2018-08-27 14:32:52', '2018-08-27 14:32:52'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2018-08-27 14:32:52', '2018-08-27 14:32:52'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2018-08-27 14:32:52', '2018-08-27 14:32:52'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2018-08-27 14:32:53', '2018-08-27 14:32:53'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-08-27 14:32:54', '2018-08-27 14:32:54'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2018-08-27 14:32:54', '2018-08-27 14:32:54'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-08-27 14:32:54', '2018-08-27 14:32:54'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2018-08-27 14:32:54', '2018-08-27 14:32:54'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2018-08-27 14:32:54', '2018-08-27 14:32:54'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2018-08-27 14:32:54', '2018-08-27 14:32:54'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2018-08-27 14:32:55', '2018-08-27 14:32:55'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2018-08-27 14:32:55', '2018-08-27 14:32:55'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2018-08-27 14:32:55', '2018-08-27 14:32:55'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2018-08-27 14:32:56', '2018-08-27 14:32:56'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2018-08-27 14:32:58', '2018-08-27 14:32:58'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2018-08-27 14:32:58', '2018-08-27 14:32:58'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2018-08-27 14:32:58', '2018-08-27 14:32:58'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2018-08-27 14:32:59', '2018-08-27 14:32:59'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2018-08-27 14:32:59', '2018-08-27 14:32:59'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2018-08-27 14:33:08', '2018-08-27 14:33:08'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2018-08-27 14:33:08', '2018-08-27 14:33:08'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2018-08-27 14:33:08', '2018-08-27 14:33:08'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2018-08-27 14:33:09', '2018-08-27 14:33:09'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2018-08-27 14:33:09', '2018-08-27 14:33:09'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2018-08-27 14:33:09', '2018-08-27 14:33:09'),
(56, 'phone', 'Phone', 10, 22, 0, '', 0, 256, 1, '', 0, '2018-08-27 15:14:39', '2018-08-27 15:16:23'),
(57, 'email', 'Email', 10, 8, 1, '', 0, 256, 1, '', 0, '2018-08-27 15:17:20', '2018-08-27 15:17:20'),
(58, 'instagram', 'Instagram', 10, 22, 0, '', 0, 256, 1, '', 0, '2018-08-27 15:17:49', '2018-08-27 15:17:49'),
(59, 'line', 'Line', 10, 22, 0, '', 0, 256, 1, '', 0, '2018-08-27 15:18:03', '2018-08-27 15:18:03'),
(60, 'title', 'Title', 11, 22, 0, '', 0, 256, 1, '', 0, '2018-08-28 01:52:59', '2018-08-28 01:52:59'),
(61, 'image', 'Image', 11, 12, 0, '', 0, 0, 1, '', 0, '2018-08-28 01:53:38', '2018-08-28 01:53:38'),
(62, 'description', 'Description', 11, 11, 0, '', 0, 0, 1, '', 0, '2018-08-28 01:54:26', '2018-08-28 02:25:25'),
(63, 'category', 'Category', 11, 7, 0, '', 0, 0, 1, '[\"Airasia Final Call\",\"Airasia Big Point\",\"Maskapai Domestik\",\"Maskapai International\",\"Promo Tiket\",\"Paket Keluarga\",\"Paket Honeymoon\",\"Paket Sekolah\",\"Paket Perusahaan\",\"Paket Pemerintahan\",\"Rental Mobil\"]', 0, '2018-08-28 01:59:17', '2018-08-28 01:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(2, 'Checkbox', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(3, 'Currency', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(4, 'Date', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(5, 'Datetime', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(6, 'Decimal', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(7, 'Dropdown', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(8, 'Email', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(9, 'File', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(10, 'Float', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(11, 'HTML', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(12, 'Image', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(13, 'Integer', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(14, 'Mobile', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(15, 'Multiselect', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(16, 'Name', '2018-08-27 14:32:49', '2018-08-27 14:32:49'),
(17, 'Password', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(18, 'Radio', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(19, 'String', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(20, 'Taginput', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(21, 'Textarea', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(22, 'TextField', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(23, 'URL', '2018-08-27 14:32:50', '2018-08-27 14:32:50'),
(24, 'Files', '2018-08-27 14:32:50', '2018-08-27 14:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2018-08-27 14:33:27', '2018-08-27 14:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` int(11) NOT NULL DEFAULT '1',
  `description` varchar(10000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `deleted_at`, `created_at`, `updated_at`, `title`, `image`, `description`, `category`) VALUES
(1, NULL, '2018-08-28 02:40:37', '2018-08-28 03:00:09', 'Promo Tiket', 4, '<p><img alt=\"\" src=\"https://i1.wp.com/wp.laravel-news.com/wp-content/uploads/2017/02/LaraAdmin.jpg?resize=525%2C288\"></p><p>Test</p>', 'Airasia Final Call');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(2, 'ADMIN', 'Admin', 'Role Admin', 1, 1, NULL, '2018-08-27 14:54:21', '2018-08-27 14:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(2, 1, 2, 1, 1, 1, 1, '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(3, 1, 3, 1, 1, 1, 1, '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(4, 1, 4, 1, 1, 1, 1, '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(5, 1, 5, 1, 1, 1, 1, '2018-08-27 14:33:25', '2018-08-27 14:33:25'),
(7, 1, 7, 1, 1, 1, 1, '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(8, 1, 8, 1, 1, 1, 1, '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(10, 2, 1, 0, 0, 0, 0, '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(11, 2, 2, 1, 1, 1, 1, '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(12, 2, 3, 0, 0, 0, 0, '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(13, 2, 4, 0, 0, 0, 0, '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(14, 2, 5, 0, 0, 0, 0, '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(16, 2, 7, 1, 1, 1, 1, '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(17, 2, 8, 0, 0, 0, 0, '2018-08-27 14:54:24', '2018-08-27 14:54:24'),
(18, 1, 10, 1, 1, 1, 1, '2018-08-27 15:18:22', '2018-08-27 15:18:22'),
(19, 2, 10, 1, 0, 1, 0, '2018-08-27 15:19:19', '2018-08-27 15:19:19'),
(20, 1, 11, 1, 1, 1, 1, '2018-08-28 01:54:46', '2018-08-28 01:54:46'),
(21, 2, 11, 1, 1, 1, 1, '2018-08-28 01:59:40', '2018-08-28 01:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(2, 1, 2, 'invisible', '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(3, 1, 3, 'write', '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(4, 1, 4, 'write', '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(5, 1, 5, 'invisible', '2018-08-27 14:33:22', '2018-08-27 14:33:22'),
(6, 1, 6, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(7, 1, 7, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(8, 1, 8, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(9, 1, 9, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(10, 1, 10, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(11, 1, 11, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(12, 1, 12, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(13, 1, 13, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(14, 1, 14, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(15, 1, 15, 'write', '2018-08-27 14:33:23', '2018-08-27 14:33:23'),
(16, 1, 16, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(17, 1, 17, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(18, 1, 18, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(19, 1, 19, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(20, 1, 20, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(21, 1, 21, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(22, 1, 22, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(23, 1, 23, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(24, 1, 24, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(25, 1, 25, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(26, 1, 26, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(27, 1, 27, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(28, 1, 28, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(29, 1, 29, 'write', '2018-08-27 14:33:24', '2018-08-27 14:33:24'),
(30, 1, 30, 'write', '2018-08-27 14:33:25', '2018-08-27 14:33:25'),
(31, 1, 31, 'write', '2018-08-27 14:33:25', '2018-08-27 14:33:25'),
(32, 1, 32, 'write', '2018-08-27 14:33:25', '2018-08-27 14:33:25'),
(33, 1, 33, 'write', '2018-08-27 14:33:25', '2018-08-27 14:33:25'),
(34, 1, 34, 'write', '2018-08-27 14:33:25', '2018-08-27 14:33:25'),
(46, 1, 46, 'write', '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(47, 1, 47, 'write', '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(48, 1, 48, 'write', '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(49, 1, 49, 'write', '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(50, 1, 50, 'write', '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(51, 1, 51, 'write', '2018-08-27 14:33:26', '2018-08-27 14:33:26'),
(56, 2, 1, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(57, 2, 2, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(58, 2, 3, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(59, 2, 4, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(60, 2, 5, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(61, 2, 6, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(62, 2, 7, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(63, 2, 8, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(64, 2, 9, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(65, 2, 10, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(66, 2, 11, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(67, 2, 12, 'readonly', '2018-08-27 14:54:21', '2018-08-27 14:54:21'),
(68, 2, 13, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(69, 2, 14, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(70, 2, 15, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(71, 2, 16, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(72, 2, 17, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(73, 2, 18, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(74, 2, 19, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(75, 2, 20, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(76, 2, 21, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(77, 2, 22, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(78, 2, 23, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(79, 2, 24, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(80, 2, 25, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(81, 2, 26, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(82, 2, 27, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(83, 2, 28, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(84, 2, 29, 'readonly', '2018-08-27 14:54:22', '2018-08-27 14:54:22'),
(85, 2, 30, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(86, 2, 31, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(87, 2, 32, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(88, 2, 33, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(89, 2, 34, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(101, 2, 46, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(102, 2, 47, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(103, 2, 48, 'readonly', '2018-08-27 14:54:23', '2018-08-27 14:54:23'),
(104, 2, 49, 'readonly', '2018-08-27 14:54:24', '2018-08-27 14:54:24'),
(105, 2, 50, 'readonly', '2018-08-27 14:54:24', '2018-08-27 14:54:24'),
(106, 2, 51, 'readonly', '2018-08-27 14:54:24', '2018-08-27 14:54:24'),
(107, 1, 56, 'write', '2018-08-27 15:14:39', '2018-08-27 15:14:39'),
(108, 1, 57, 'write', '2018-08-27 15:17:21', '2018-08-27 15:17:21'),
(109, 1, 58, 'write', '2018-08-27 15:17:49', '2018-08-27 15:17:49'),
(110, 1, 59, 'write', '2018-08-27 15:18:04', '2018-08-27 15:18:04'),
(111, 2, 56, 'write', '2018-08-27 15:19:19', '2018-08-27 15:19:19'),
(112, 2, 57, 'write', '2018-08-27 15:19:19', '2018-08-27 15:19:19'),
(113, 2, 58, 'write', '2018-08-27 15:19:19', '2018-08-27 15:19:19'),
(114, 2, 59, 'write', '2018-08-27 15:19:19', '2018-08-27 15:19:19'),
(115, 1, 60, 'write', '2018-08-28 01:53:00', '2018-08-28 01:53:00'),
(116, 1, 61, 'write', '2018-08-28 01:53:38', '2018-08-28 01:53:38'),
(117, 1, 62, 'write', '2018-08-28 01:54:27', '2018-08-28 01:54:27'),
(118, 1, 63, 'write', '2018-08-28 01:59:18', '2018-08-28 01:59:18'),
(119, 2, 60, 'write', '2018-08-28 01:59:40', '2018-08-28 01:59:40'),
(120, 2, 61, 'write', '2018-08-28 01:59:40', '2018-08-28 01:59:40'),
(121, 2, 62, 'write', '2018-08-28 01:59:40', '2018-08-28 01:59:40'),
(122, 2, 63, 'write', '2018-08-28 01:59:40', '2018-08-28 01:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'favicon.ico', 'C:\\xampp56\\htdocs\\haphapholiday\\storage\\uploads\\2018-08-28-085506-favicon.ico', 'ico', '', 1, 'zqbstz9oldnce8s6xjrt', 1, NULL, '2018-08-28 01:55:06', '2018-08-28 01:55:06'),
(2, '27048901-low-poly-wallpapers.jpg', 'C:\\xampp56\\htdocs\\haphapholiday\\storage\\uploads\\2018-08-28-094015-27048901-low-poly-wallpapers.jpg', 'jpg', '', 1, '2k0ma7z5dgulzj8iw4wf', 1, NULL, '2018-08-28 02:40:15', '2018-08-28 02:40:15'),
(3, 'computers-movies_00413131.jpg', 'C:\\xampp56\\htdocs\\haphapholiday\\storage\\uploads\\2018-08-28-094828-computers-movies_00413131.jpg', 'jpg', '', 1, '5vp8su1rnl21wnzqv1ck', 1, NULL, '2018-08-28 02:48:28', '2018-08-28 02:48:28'),
(4, 'minimalism_sky_clouds_sun_mountains_lake_landscape_95458_1366x768.jpg', 'C:\\xampp56\\htdocs\\haphapholiday\\storage\\uploads\\2018-08-28-094836-minimalism_sky_clouds_sun_mountains_lake_landscape_95458_1366x768.jpg', 'jpg', '', 1, 'x9xvvphxuzncfbaszq8v', 0, NULL, '2018-08-28 02:48:36', '2018-08-28 02:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, 'user@example.com', '$2y$10$vR4kszeWYA4QcjHY/uet3O1VpYtaOU0I.l8t1JO4KNbjMzVO38Lna', 'Employee', 'zuVxBvFDnQSPMdS8jXGnHkRE8ohx5KsX3loU6t5sYhw9uYTLieS92h6mIgig', NULL, '2018-08-27 14:33:41', '2018-08-28 03:04:05'),
(2, 'Admin', 2, 'adzharamrullah@gmail.com', '$2y$10$WVgkzYTxDS4vCVdnTBDAfOWrhq7FFqRxYDskHmAZk4mvDS/ah.9di', 'Employee', 'WboHMeiO5HHwkuQFSWPQe84JcVlH8TFS5iZDlYMtuSeWS8xE7jEuj3GDZAjv', NULL, '2018-08-27 14:56:07', '2018-08-28 03:06:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
