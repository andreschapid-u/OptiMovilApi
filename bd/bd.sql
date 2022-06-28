-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla optimovilapi.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.categories: ~1 rows (aproximadamente)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`) VALUES
	(1, '2022-06-26 14:27:52', NULL, 'Hombre');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_last_nam` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.clients: ~1 rows (aproximadamente)
DELETE FROM `clients`;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `created_at`, `updated_at`, `name`, `second_name`, `first_last_nam`, `second_last_name`, `email`, `password`, `phone_number`) VALUES
	(1, '2022-06-28 14:36:09', '2022-06-28 14:39:32', 'Carlos', 'Andres', 'Chapid', 'Inga', 'carloschapid@unicauca.edu.co', '$2y$10$4R/vJWu.X4F13MdpqP8PsuKmvs4Ne0Wyop4ltAH9j0MJ2evSYUWdu', '3122229900');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_apicustom
CREATE TABLE IF NOT EXISTS `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_apicustom: ~2 rows (aproximadamente)
DELETE FROM `cms_apicustom`;
/*!40000 ALTER TABLE `cms_apicustom` DISABLE KEYS */;
INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
	(1, 'products', 'products', 'list', NULL, NULL, NULL, NULL, 'products', NULL, NULL, NULL, NULL, 'get', 'a:9:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:2;a:5:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:3;a:5:{s:4:"name";s:5:"image";s:4:"type";s:7:"integer";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:4;a:5:{s:4:"name";s:10:"image_path";s:4:"type";s:5:"image";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:5;a:5:{s:4:"name";s:5:"stock";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:6;a:5:{s:4:"name";s:5:"price";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:7;a:5:{s:4:"name";s:11:"category_id";s:4:"type";s:5:"array";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:8;a:5:{s:4:"name";s:7:"type_id";s:4:"type";s:5:"array";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:11:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:6:"bigint";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:11:"description";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:5:"image";s:4:"type";s:5:"image";s:8:"subquery";N;s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:10:"image_path";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:5:"stock";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:5:"price";s:4:"type";s:3:"int";s:8:"subquery";N;s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:11:"category_id";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}i:8;a:4:{s:4:"name";s:7:"type_id";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}i:9;a:4:{s:4:"name";s:10:"categories";s:4:"type";s:6:"custom";s:8:"subquery";s:58:"SELECT categories.* FROM categories WHERE id = category_id";s:4:"used";s:1:"1";}i:10;a:4:{s:4:"name";s:5:"types";s:4:"type";s:6:"custom";s:8:"subquery";s:47:"SELECT types.name FROM types WHERE id = type_id";s:4:"used";s:1:"1";}}'),
	(2, 'types', 'types', 'list', NULL, NULL, NULL, NULL, 'types', NULL, NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:2:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:6:"bigint";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(3, 'login', 'clients', 'detail', NULL, NULL, NULL, NULL, 'login', NULL, NULL, NULL, NULL, 'post', 'a:2:{i:0;a:5:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:6:"config";s:35:"required|email|exists:clients,email";s:8:"required";s:1:"1";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:8:"password";s:4:"type";s:8:"password";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"1";}}', 'a:8:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:6:"bigint";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:11:"second_name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:14:"first_last_nam";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:4;a:4:{s:4:"name";s:16:"second_last_name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}i:5;a:4:{s:4:"name";s:5:"email";s:4:"type";s:5:"email";s:8:"subquery";N;s:4:"used";s:1:"1";}i:6;a:4:{s:4:"name";s:8:"password";s:4:"type";s:8:"password";s:8:"subquery";N;s:4:"used";s:1:"1";}i:7;a:4:{s:4:"name";s:12:"phone_number";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(4, 'categories', 'categories', 'list', NULL, NULL, NULL, NULL, 'categories', NULL, NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}i:1;a:5:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"1";}}', 'a:2:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:6:"bigint";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:4:"name";s:4:"type";s:6:"string";s:8:"subquery";N;s:4:"used";s:1:"1";}}'),
	(5, 'favorites', 'product_fav_client', 'list', NULL, NULL, NULL, NULL, 'favorites', NULL, NULL, NULL, NULL, 'get', 'a:3:{i:0;a:5:{s:4:"name";s:2:"id";s:4:"type";s:6:"string";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"0";}i:1;a:5:{s:4:"name";s:9:"client_id";s:4:"type";s:7:"integer";s:6:"config";N;s:8:"required";s:1:"1";s:4:"used";s:1:"0";}i:2;a:5:{s:4:"name";s:10:"product_id";s:4:"type";s:7:"integer";s:6:"config";N;s:8:"required";s:1:"0";s:4:"used";s:1:"0";}}', 'a:4:{i:0;a:4:{s:4:"name";s:2:"id";s:4:"type";s:6:"bigint";s:8:"subquery";N;s:4:"used";s:1:"1";}i:1;a:4:{s:4:"name";s:9:"client_id";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}i:2;a:4:{s:4:"name";s:10:"product_id";s:4:"type";s:7:"integer";s:8:"subquery";N;s:4:"used";s:1:"1";}i:3;a:4:{s:4:"name";s:7:"product";s:4:"type";s:6:"string";s:8:"subquery";s:56:"SELECT products.name FROM products WHERE id = product_id";s:4:"used";s:1:"1";}}');
/*!40000 ALTER TABLE `cms_apicustom` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_apikey
CREATE TABLE IF NOT EXISTS `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_apikey: ~1 rows (aproximadamente)
DELETE FROM `cms_apikey`;
/*!40000 ALTER TABLE `cms_apikey` DISABLE KEYS */;
INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
	(1, '438a9f810d18ef565ead8e5191c895bb', 0, 'active', '2022-06-28 16:26:46', NULL);
/*!40000 ALTER TABLE `cms_apikey` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_dashboard
CREATE TABLE IF NOT EXISTS `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_dashboard: ~0 rows (aproximadamente)
DELETE FROM `cms_dashboard`;
/*!40000 ALTER TABLE `cms_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_dashboard` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_email_queues
CREATE TABLE IF NOT EXISTS `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_email_queues: ~0 rows (aproximadamente)
DELETE FROM `cms_email_queues`;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_email_templates
CREATE TABLE IF NOT EXISTS `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_email_templates: ~1 rows (aproximadamente)
DELETE FROM `cms_email_templates`;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
	(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-06-23 18:28:49', NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_logs
CREATE TABLE IF NOT EXISTS `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_logs: ~14 rows (aproximadamente)
DELETE FROM `cms_logs`;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', 1, '2022-06-23 18:26:06', NULL),
	(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/logout', 'admin@optimovil.com logout', '', 1, '2022-06-23 18:29:27', NULL),
	(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/login', 'admin@optimovil.com login with IP Address 127.0.0.1', '', 1, '2022-06-23 18:29:34', NULL),
	(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/module_generator/delete/12', 'Delete data TIPOS at Module Generator', '', 1, '2022-06-23 18:45:05', NULL),
	(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/types/add-save', 'Add New Data Marco at TIPOS', '', 1, '2022-06-23 20:11:04', NULL),
	(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/types/add-save', 'Add New Data Lentes at TIPOS', '', 1, '2022-06-23 20:11:14', NULL),
	(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/types/add-save', 'Add New Data Accesorios at TIPOS', '', 1, '2022-06-23 20:11:28', NULL),
	(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/types/add-save', 'Add New Data Estuche at TIPOS', '', 1, '2022-06-23 20:11:35', NULL),
	(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/login', 'admin@optimovil.com login with IP Address 127.0.0.1', '', 1, '2022-06-26 14:12:35', NULL),
	(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/categories/add-save', 'Add New Data Hombre at CATEGORIAS', '', 1, '2022-06-26 14:27:52', NULL),
	(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/products/add-save', 'Add New Data Producto prueba at PRODUCTOS', '', 1, '2022-06-26 14:49:24', NULL),
	(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/login', 'admin@optimovil.com login with IP Address 127.0.0.1', '', 1, '2022-06-28 14:04:32', NULL),
	(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/clients/add-save', 'Add New Data Carlos at CLIENTES', '', 1, '2022-06-28 14:36:09', NULL),
	(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/clients/edit-save/1', 'Update data Carlos at CLIENTES', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$pLBII7mQ488x12K6MTcvAuVVpOObIbHP6xHvxOga45z/RU7Z9cJ/y</td><td>$2y$10$4R/vJWu.X4F13MdpqP8PsuKmvs4Ne0Wyop4ltAH9j0MJ2evSYUWdu</td></tr><tr><td>phone_number</td><td>8</td><td>3122229900</td></tr></tbody></table>', 1, '2022-06-28 14:39:32', NULL),
	(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/menu_management/edit-save/2', 'Actualizar información TIPOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2022-06-28 19:19:34', NULL),
	(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/menu_management/edit-save/2', 'Actualizar información TIPOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Module</td></tr><tr><td>path</td><td>AdminTypesControllerGetIndex</td><td>types</td></tr></tbody></table>', 1, '2022-06-28 19:20:46', NULL),
	(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/menu_management/edit-save/2', 'Actualizar información TIPOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Module</td><td>Route</td></tr></tbody></table>', 1, '2022-06-28 19:21:24', NULL),
	(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/menu_management/edit-save/2', 'Actualizar información TIPOS en Menu Management', '<table class="table table-striped"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Module</td></tr></tbody></table>', 1, '2022-06-28 19:21:40', NULL),
	(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/module_generator/delete/17', 'Eliminar información FAVORITOS CLIENTE en Module Generator', '', 1, '2022-06-28 19:29:35', NULL),
	(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36', 'http://optimovilapi.test/admin/product_fav_client/add-save', 'Añadir nueva información  en FAVORITOS CLIENTE', '', 1, '2022-06-28 19:36:40', NULL);
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_menus
CREATE TABLE IF NOT EXISTS `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_menus: ~5 rows (aproximadamente)
DELETE FROM `cms_menus`;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
	(2, 'TIPOS', 'Module', 'types', 'normal', 'fa fa-glass', 0, 1, 0, 1, 1, '2022-06-23 20:08:20', '2022-06-28 19:21:40'),
	(3, 'CATEGORIAS', 'Route', 'AdminCategoriesControllerGetIndex', NULL, 'fa fa-list-ul', 0, 1, 0, 1, 2, '2022-06-26 14:17:50', NULL),
	(4, 'PRODUCTOS', 'Route', 'AdminProductsControllerGetIndex', NULL, 'fa fa-product-hunt', 0, 1, 0, 1, 3, '2022-06-26 14:23:23', NULL),
	(5, 'CLIENTES', 'Route', 'AdminClientsControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 4, '2022-06-26 14:50:41', NULL),
	(7, 'FAVORITOS CLIENTE', 'Route', 'AdminProductFavClientControllerGetIndex', NULL, 'fa fa-star', 0, 1, 0, 1, 5, '2022-06-28 19:30:06', NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_menus_privileges
CREATE TABLE IF NOT EXISTS `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_menus_privileges: ~6 rows (aproximadamente)
DELETE FROM `cms_menus_privileges`;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
	(1, 1, 1),
	(3, 3, 1),
	(4, 4, 1),
	(5, 5, 1),
	(6, 6, 1),
	(10, 2, 1),
	(11, 7, 1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_moduls
CREATE TABLE IF NOT EXISTS `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_moduls: ~17 rows (aproximadamente)
DELETE FROM `cms_moduls`;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-06-23 18:28:49', NULL, NULL),
	(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-06-23 18:28:49', NULL, NULL),
	(12, 'TIPOS', 'fa fa-check', 'types', 'types', 'AdminTypesController', 0, 0, '2022-06-23 18:33:26', NULL, '2022-06-23 18:45:05'),
	(13, 'TIPOS', 'fa fa-list', 'types', 'types', 'AdminTypesController', 0, 0, '2022-06-23 20:08:20', NULL, NULL),
	(14, 'CATEGORIAS', 'fa fa-list-ul', 'categories', 'categories', 'AdminCategoriesController', 0, 0, '2022-06-26 14:17:50', NULL, NULL),
	(15, 'PRODUCTOS', 'fa fa-product-hunt', 'products', 'products', 'AdminProductsController', 0, 0, '2022-06-26 14:23:23', NULL, NULL),
	(16, 'CLIENTES', 'fa fa-cog', 'clients', 'clients', 'AdminClientsController', 0, 0, '2022-06-26 14:50:41', NULL, NULL),
	(17, 'FAVORITOS CLIENTE', 'fa fa-star', 'product_fav_client', 'product_fav_client', 'AdminProductFavClientController', 0, 0, '2022-06-28 14:10:46', NULL, '2022-06-28 19:29:35'),
	(18, 'FAVORITOS CLIENTE', 'fa fa-star', 'product_fav_client', 'product_fav_client', 'AdminProductFavClientController', 0, 0, '2022-06-28 19:30:06', NULL, NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_notifications
CREATE TABLE IF NOT EXISTS `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_notifications: ~0 rows (aproximadamente)
DELETE FROM `cms_notifications`;
/*!40000 ALTER TABLE `cms_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_notifications` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_privileges
CREATE TABLE IF NOT EXISTS `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_privileges: ~1 rows (aproximadamente)
DELETE FROM `cms_privileges`;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
	(1, 'Super Administrator', 1, 'skin-red', '2022-06-23 18:28:49', NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_privileges_roles
CREATE TABLE IF NOT EXISTS `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_privileges_roles: ~17 rows (aproximadamente)
DELETE FROM `cms_privileges_roles`;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
	(1, 1, 0, 0, 0, 0, 1, 1, '2022-06-23 18:28:49', NULL),
	(2, 1, 1, 1, 1, 1, 1, 2, '2022-06-23 18:28:49', NULL),
	(3, 0, 1, 1, 1, 1, 1, 3, '2022-06-23 18:28:49', NULL),
	(4, 1, 1, 1, 1, 1, 1, 4, '2022-06-23 18:28:49', NULL),
	(5, 1, 1, 1, 1, 1, 1, 5, '2022-06-23 18:28:49', NULL),
	(6, 1, 1, 1, 1, 1, 1, 6, '2022-06-23 18:28:49', NULL),
	(7, 1, 1, 1, 1, 1, 1, 7, '2022-06-23 18:28:49', NULL),
	(8, 1, 1, 1, 1, 1, 1, 8, '2022-06-23 18:28:49', NULL),
	(9, 1, 1, 1, 1, 1, 1, 9, '2022-06-23 18:28:49', NULL),
	(10, 1, 1, 1, 1, 1, 1, 10, '2022-06-23 18:28:49', NULL),
	(11, 1, 0, 1, 0, 1, 1, 11, '2022-06-23 18:28:49', NULL),
	(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
	(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
	(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
	(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
	(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
	(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
	(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_settings
CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_settings: ~16 rows (aproximadamente)
DELETE FROM `cms_settings`;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
	(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2022-06-23 18:28:49', NULL, 'Login Register Style', 'Login Background Color'),
	(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2022-06-23 18:28:49', NULL, 'Login Register Style', 'Login Font Color'),
	(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Login Register Style', 'Login Background Image'),
	(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Email Setting', 'Email Sender'),
	(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2022-06-23 18:28:49', NULL, 'Email Setting', 'Mail Driver'),
	(6, 'smtp_host', '', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Email Setting', 'SMTP Host'),
	(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2022-06-23 18:28:49', NULL, 'Email Setting', 'SMTP Port'),
	(8, 'smtp_username', '', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Email Setting', 'SMTP Username'),
	(9, 'smtp_password', '', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Email Setting', 'SMTP Password'),
	(10, 'appname', 'CRUDBooster', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Application Setting', 'Application Name'),
	(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-06-23 18:28:49', NULL, 'Application Setting', 'Default Paper Print Size'),
	(12, 'logo', '', 'upload_image', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Application Setting', 'Logo'),
	(13, 'favicon', '', 'upload_image', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Application Setting', 'Favicon'),
	(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-06-23 18:28:49', NULL, 'Application Setting', 'API Debug Mode'),
	(15, 'google_api_key', '', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Application Setting', 'Google API Key'),
	(16, 'google_fcm_key', '', 'text', NULL, NULL, '2022-06-23 18:28:49', NULL, 'Application Setting', 'Google FCM Key');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_statistics
CREATE TABLE IF NOT EXISTS `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_statistics: ~0 rows (aproximadamente)
DELETE FROM `cms_statistics`;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_statistic_components
CREATE TABLE IF NOT EXISTS `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_statistic_components: ~0 rows (aproximadamente)
DELETE FROM `cms_statistic_components`;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.cms_users
CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.cms_users: ~1 rows (aproximadamente)
DELETE FROM `cms_users`;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
	(1, 'Super Admin', NULL, 'admin@optimovil.com', '$2y$10$DqDryrkpCoA6Oq4B207A1.00v/XFh8QkBbRbvDKwRlJZR18L0.Fqa', 1, '2022-06-23 18:28:49', NULL, 'Active');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.migrations: ~38 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(30, '2016_08_07_145904_add_table_cms_apicustom', 2),
	(31, '2016_08_07_150834_add_table_cms_dashboard', 2),
	(32, '2016_08_07_151210_add_table_cms_logs', 2),
	(33, '2016_08_07_151211_add_details_cms_logs', 2),
	(34, '2016_08_07_152014_add_table_cms_privileges', 2),
	(35, '2016_08_07_152214_add_table_cms_privileges_roles', 2),
	(36, '2016_08_07_152320_add_table_cms_settings', 2),
	(37, '2016_08_07_152421_add_table_cms_users', 2),
	(38, '2016_08_07_154624_add_table_cms_menus_privileges', 2),
	(39, '2016_08_07_154624_add_table_cms_moduls', 2),
	(40, '2016_08_17_225409_add_status_cms_users', 2),
	(41, '2016_08_20_125418_add_table_cms_notifications', 2),
	(42, '2016_09_04_033706_add_table_cms_email_queues', 2),
	(43, '2016_09_16_035347_add_group_setting', 2),
	(44, '2016_09_16_045425_add_label_setting', 2),
	(45, '2016_09_17_104728_create_nullable_cms_apicustom', 2),
	(46, '2016_10_01_141740_add_method_type_apicustom', 2),
	(47, '2016_10_01_141846_add_parameters_apicustom', 2),
	(48, '2016_10_01_141934_add_responses_apicustom', 2),
	(49, '2016_10_01_144826_add_table_apikey', 2),
	(50, '2016_11_14_141657_create_cms_menus', 2),
	(51, '2016_11_15_132350_create_cms_email_templates', 2),
	(52, '2016_11_15_190410_create_cms_statistics', 2),
	(53, '2016_11_17_102740_create_cms_statistic_components', 2),
	(54, '2017_06_06_164501_add_deleted_at_cms_moduls', 2),
	(55, '2022_06_23_172757_create_categories_table', 2),
	(56, '2022_06_23_172815_create_types_table', 2),
	(57, '2022_06_23_172903_create_products_table', 2),
	(58, '2022_06_23_172921_create_clients_table', 2),
	(59, '2022_06_23_193249_add_column_to_types', 3),
	(60, '2022_06_23_193748_add_column_to_categories_table', 3),
	(61, '2022_06_23_194044_add_column_to_products_table', 4),
	(62, '2022_06_23_195357_add_column_to_clients_table', 4),
	(63, '2022_06_23_195848_create_product_fav_client_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.password_resets: ~0 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.personal_access_tokens: ~0 rows (aproximadamente)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` int(11) DEFAULT NULL,
  `image_path` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT '15',
  `price` int(11) NOT NULL DEFAULT '15',
  `category_id` bigint(20) unsigned NOT NULL,
  `type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_category_id_unique` (`category_id`),
  UNIQUE KEY `products_type_id_unique` (`type_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.products: ~1 rows (aproximadamente)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `description`, `image`, `image_path`, `stock`, `price`, `category_id`, `type_id`) VALUES
	(1, '2022-06-26 14:49:24', NULL, 'Producto prueba', 'producto prueba 1', 1, 'uploads/1/2022-06/avatar.jpg', 20, 200000, 1, 3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.product_fav_client
CREATE TABLE IF NOT EXISTS `product_fav_client` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_fav_client_client_id_unique` (`client_id`),
  UNIQUE KEY `product_fav_client_product_id_unique` (`product_id`),
  CONSTRAINT `product_fav_client_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_fav_client_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.product_fav_client: ~0 rows (aproximadamente)
DELETE FROM `product_fav_client`;
/*!40000 ALTER TABLE `product_fav_client` DISABLE KEYS */;
INSERT INTO `product_fav_client` (`id`, `client_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2022-06-28 19:36:40', NULL);
/*!40000 ALTER TABLE `product_fav_client` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.types
CREATE TABLE IF NOT EXISTS `types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `types_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.types: ~4 rows (aproximadamente)
DELETE FROM `types`;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` (`id`, `created_at`, `updated_at`, `name`) VALUES
	(1, '2022-06-23 20:11:04', NULL, 'Marco'),
	(2, '2022-06-23 20:11:14', NULL, 'Lentes'),
	(3, '2022-06-23 20:11:28', NULL, 'Accesorios'),
	(4, '2022-06-23 20:11:35', NULL, 'Estuche');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;

-- Volcando estructura para tabla optimovilapi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla optimovilapi.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
