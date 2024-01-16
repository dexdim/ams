-- Adminer 4.8.1 MySQL 8.2.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `ams`;
CREATE DATABASE `ams` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ams`;

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1,	'PC',	NULL,	NULL,	'2022-05-12 08:17:57'),
(2,	'Monitor',	NULL,	NULL,	'2022-05-03 10:24:20'),
(3,	'Keyboard',	NULL,	NULL,	'2022-09-26 14:08:56'),
(4,	'Mouse',	NULL,	NULL,	'2022-09-26 14:09:05'),
(5,	'Headphone',	NULL,	NULL,	'2022-09-26 14:10:11'),
(6,	'All In One PC',	NULL,	NULL,	'2022-09-26 14:10:34'),
(7,	'Server',	NULL,	NULL,	'2022-09-26 14:11:23'),
(8,	'Laptop',	NULL,	NULL,	'2022-05-06 04:44:00'),
(9,	'SSD',	NULL,	NULL,	'2022-05-08 21:08:23'),
(10,	'HDD',	NULL,	NULL,	'2022-09-26 14:11:02'),
(12,	'Music Equipment',	NULL,	NULL,	NULL),
(13,	'Printer',	NULL,	NULL,	NULL),
(14,	'Router',	NULL,	NULL,	NULL),
(16,	'Converter',	NULL,	NULL,	NULL),
(17,	'Modem',	NULL,	NULL,	'2024-01-16 04:57:36'),
(18,	'UPS',	NULL,	NULL,	NULL),
(19,	'CCTV',	NULL,	NULL,	NULL),
(20,	'TV',	NULL,	NULL,	NULL),
(21,	'Access Point',	NULL,	NULL,	NULL),
(22,	'Handphone',	NULL,	NULL,	'2024-01-16 04:57:25'),
(23,	'Telephone',	NULL,	NULL,	NULL),
(27,	'Miscellaneous',	NULL,	NULL,	NULL),
(28,	'Genset',	NULL,	NULL,	NULL),
(29,	'AC',	NULL,	NULL,	NULL),
(30,	'Kitchen Appliances',	NULL,	NULL,	NULL),
(31,	'Trash Bin',	NULL,	NULL,	NULL),
(32,	'Fire Extinguisher',	NULL,	NULL,	NULL),
(33,	'Carpet',	NULL,	NULL,	NULL),
(34,	'Sport Equipment',	NULL,	NULL,	NULL),
(35,	'Table',	NULL,	NULL,	NULL),
(36,	'Chair',	NULL,	NULL,	NULL),
(37,	'Pillow',	NULL,	NULL,	NULL),
(38,	'Cabinet',	NULL,	NULL,	NULL),
(39,	'Door',	NULL,	NULL,	'2024-01-16 04:57:44'),
(40,	'Lamp',	NULL,	NULL,	NULL),
(41,	'Construction',	NULL,	NULL,	NULL),
(42,	'Tablet',	NULL,	NULL,	'2024-01-16 04:58:20');

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `employees` (`id`, `name`, `email`, `dept`, `created_at`, `updated_at`) VALUES
(1,	'Fuad Rahman Nugroho',	'fuad@domainesia.com',	'BOD',	NULL,	NULL),
(2,	'Toto Yulianto',	'tox@domainesia.com',	'Infrastructure',	NULL,	NULL),
(3,	'Bimo Hutomo Adhi',	'bimo@domainesia.com',	'Marketing',	NULL,	NULL),
(4,	'Willih Angga Sudrajadh',	'willih@domainesia.com',	'BOD',	NULL,	NULL),
(5,	'Adisty Caesari Putri',	'adisty@domainesia.com',	'Customer Support',	NULL,	NULL),
(6,	'Hernawan Faiz Abdillah',	'faiz@domainesia.com',	'Engineering',	NULL,	NULL),
(7,	'Cevy Yufindra',	'cevy@support.domainesia.com ',	'Customer Support',	NULL,	NULL),
(8,	'Irfan Adi',	'irfan@domainesia.com',	'Technical Support',	NULL,	NULL),
(9,	'Lukman Bagus Saputra',	'lukman@domainesia.com',	'Engineering',	NULL,	NULL),
(10,	'Adhitya Restu Kusuma Putra',	'adhityaputra@domainesia.com',	'Infrastructure',	NULL,	NULL),
(11,	'Nizar Akbar Meilani',	'nizar@domainesia.com',	'Infrastructure',	NULL,	NULL),
(12,	'Aswandhi Askat',	'aswandhi@support.domainesia.com ',	'Customer Support',	NULL,	NULL),
(13,	'Natascha Amalia',	'tascha@domainesia.com',	'Business Development',	NULL,	NULL),
(14,	'Moh. Ali',	'ali@domainesia.com',	'Infrastructure',	NULL,	NULL),
(15,	'Thatit Arga Dahana',	'argadahana@domainesia.com',	'Marketing',	NULL,	NULL),
(16,	'E. Ratna Christanti Patria',	'ratna@domainesia.com',	'Marketing',	NULL,	NULL),
(17,	'Ahmad Dzubayyan',	'dzub@support.domainesia.com ',	'Technical Support',	NULL,	NULL),
(18,	'Nisrina Nuraini',	'nisrina@domainesia.com',	'Customer Support',	NULL,	NULL),
(19,	'Kinan Diandrapinandita',	'kinan@domainesia.com',	'People Experience',	NULL,	NULL),
(20,	'Fajar Tri Wibowo',	'fajar@support.domainesia.com ',	'Technical Support',	NULL,	NULL),
(21,	'Anna Erdiawan',	'erdi@domainesia.com',	'Engineering',	NULL,	NULL),
(22,	'Alif Pangga Nawangsyah',	'alif@support.domainesia.com ',	'Customer Support',	NULL,	NULL),
(23,	'Irfan Afif Mustofa',	'afif@support.domainesia.com',	'Technical Support',	NULL,	NULL),
(24,	'Andika Saputra',	'andika@domainesia.com',	'Engineering',	NULL,	NULL),
(25,	'Bayu Dwi Prasetya',	'bayu@domainesia.com',	'Marketing',	NULL,	NULL),
(26,	'Adi Setiawan',	'adi@domainesia.com',	'BOD',	NULL,	'2024-01-16 04:52:36'),
(27,	'Alysia Alfi Annora',	'alfi@domainesia.com',	'Engineering',	NULL,	NULL),
(28,	'Okbar Rizi Gumelar',	'okbar@support.domainesia.com ',	'Technical Support',	NULL,	NULL),
(29,	'Apriyani Kusuma Wardhani',	'apriyani@domainesia.com',	'Finance & Accounting',	NULL,	NULL),
(30,	'Hervita Mandariani',	'hervita@domainesia.com',	'Finance & Accounting',	NULL,	NULL),
(31,	'Vincensia Nathasya Queenta Putri Sukma',	'nana@domainesia.com',	'Finance & Accounting',	NULL,	NULL),
(32,	'Muhammad Hasan Sahrudin',	'hasan@support.domainesia.com',	'Customer Support',	NULL,	NULL),
(33,	'Muhamad Sayid Hidayat',	'sayid@support.domainesia.com ',	'Customer Support',	NULL,	NULL),
(34,	'Amin Syukur',	'amin@support.domainesia.com ',	'Customer Support',	NULL,	NULL),
(35,	'Dinar Dwi Saputro',	'dinar@support.domainesia.com ',	'Technical Support',	NULL,	NULL),
(36,	'Denny Ardiyuda Pratama',	'denny@support.domainesia.com ',	'Customer Support',	NULL,	NULL),
(37,	'Gaudiensius Caesario Danarta Raharjo',	'dien@support.domainesia.com',	'Customer Support',	NULL,	NULL),
(38,	'Arif Surya Putra',	'arif@support.domainesia.com',	'Technical Support',	NULL,	NULL),
(39,	'Zekriansyah Ramadhan',	'zekri@support.domainesia.com',	'Technical Support',	NULL,	NULL),
(40,	'Rayi Hamungkasi',	'rayi@domainesia.com',	'Marketing',	NULL,	NULL),
(41,	'Nastiti Nur Azizah Wardhani',	'nastiti@domainesia.com',	'Marketing',	NULL,	NULL),
(42,	'Muhammad Defaroyan',	'royan@support.domainesia.com',	'Technical Support',	NULL,	NULL),
(43,	'Irwan Hadisurya',	'irwan@domainesia.com',	'Network',	NULL,	NULL),
(44,	'May Dwi Indah Suci Widodo',	'may@support.domainesia.com',	'Customer Support',	NULL,	NULL),
(45,	'Adimas Anggi Winata',	'adimas@domainesia.com',	'People Experience',	NULL,	NULL),
(46,	'Arislan Haikal Khalis',	'aris@rna.id',	'RNA',	NULL,	NULL),
(47,	'Pambuka Vita Rhesa Adinegara',	'rhesaadinegara@domainesia.com',	'RNA',	NULL,	NULL),
(48,	'Rizqon Sadida',	'rizqon@nevacloud.com',	'Nevacloud',	NULL,	NULL),
(49,	'Ellysa Lutfiana',	'ellysa@domainesia.com',	'Nevacloud',	NULL,	NULL),
(50,	'Redemta Galuh Purbosari',	'galuh@deneva.co.id',	'Nevacloud',	NULL,	NULL),
(51,	'Hiqbal Fauzi',	'hiqbal@domainesia.com',	'Marketing',	NULL,	NULL),
(1000,	'-',	'hrga@domainesia.com',	'People Experience',	NULL,	NULL);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
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


DROP TABLE IF EXISTS `inventories`;
CREATE TABLE `inventories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `category` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `brand` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serialnumber` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchasecost` int DEFAULT NULL,
  `purchasedate` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dept` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `history` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkdate` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkedby` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `inventories` (`id`, `idcode`, `category_id`, `category`, `description`, `brand`, `serialnumber`, `license`, `supplier`, `purchasecost`, `purchasedate`, `name`, `email`, `dept`, `status`, `notes`, `history`, `checkdate`, `checkedby`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'A1/DN/12/2023/I/01',	8,	NULL,	'Lenovo Ideapad Slim 5, Ryzen 5 7530U, RAM 16GB, SSD 512GB, Silver',	'Lenovo',	'MP2LBDGL',	'Digital',	'Anandam',	9450000,	'18 December 2023',	'Hiqbal Fauzi',	'hiqbal@domainesia.com',	'Marketing',	'Storage',	'-',	'-',	'20 December 2023',	'Dimas',	'2023-12-20 04:56:34',	'2024-01-15 04:46:22',	NULL),
(2,	'A1/DN/01/2024/I/01',	8,	NULL,	'Lenovo Ideapad Slim 5, Ryzen 5 7530U, RAM 16GB, SSD 512GB, Silver',	'Lenovo',	'MP2LC1GL',	'Digital',	'Anandam',	9450000,	'08 January 2024',	'Okbar Rizi Gumelar',	'okbar@support.domainesia.com',	'Technical Support',	'Deployed',	'-',	'-',	'10 January 2024',	'Dimas',	'2024-01-10 05:09:33',	'2024-01-15 04:47:14',	NULL),
(3,	'A1/DN/01/2024/I/02',	8,	NULL,	'Lenovo ThinkPad X13 Gen 4, Intel i5 1345U, RAM 16GB, SSD 512GB',	'Lenovo',	'GM0AB2FG',	'Digital',	'Tokopedia - Think_Id',	22750000,	'2024-01-10T13:00:20+07:00',	'Hernawan Faiz Abdillah',	'faiz@domainesia.com',	'Engineering',	'Deployed',	'-',	'-',	'12 January 2024',	'Dimas',	'2024-01-12 05:57:44',	'2024-01-14 13:17:25',	NULL),
(4,	'A1/DN/01/2024/I/02',	8,	NULL,	'Lenovo ThinkPad X13 Gen 4, Intel i5 1345U, RAM 16GB, SSD 512GB',	'Lenovo',	'GM0AB2FG',	'Digital',	'Tokopedia - Think_Id',	22750000,	'10 January 2024',	'Hernawan Faiz Abdillah',	'faiz@domainesia.com',	'Engineering',	'Deployed',	'-',	'-',	'12 January 2024',	'Dimas',	'2024-01-15 03:42:50',	'2024-01-15 04:53:25',	NULL),
(5,	'A1/DN/08/2020/I/02',	8,	NULL,	'Macbook Pro 2020 13\", Intel i5, 8GB, 512GB, Space Gray',	'Apple',	'SFVFCXD00P3XY',	NULL,	'-',	0,	'01 September 2020',	'Andika Saputra',	'andika@domainesia.com',	'Engineering',	'Deployed',	'002/DNA-HR/INV/VIII/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 03:43:04',	'2024-01-15 03:49:57',	NULL),
(6,	'A1/DN/10/2020/I/04',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1T05FE',	NULL,	'-',	0,	'01 October 2020',	'May Dwi Indah Suci Widodo',	'may@support.domainesia.com',	'Customer Support',	'Deployed',	'004/DNA-HR/INV/X/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 03:43:46',	'2024-01-15 05:16:53',	NULL),
(7,	'A1/DN/10/2020/I/05',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAH9T',	NULL,	'-',	0,	'01 October 2020',	'Amin Syukur',	'amin@support.domainesia.com',	'Customer Support',	'Deployed',	'005/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 03:45:56',	'2024-01-15 05:17:01',	NULL),
(8,	'A1/DN/10/2020/I/06',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAMED',	NULL,	'-',	0,	'01 October 2020',	'Aswandhi Askat',	'aswandhi@support.domainesia.com',	'Customer Support',	'Deployed',	'006/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 03:47:54',	'2024-01-15 05:17:20',	NULL),
(9,	'A1/DN/10/2020/I/07',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAPP2',	NULL,	'-',	0,	'01 October 2020',	'Nastiti Nur Azizah Wardhani',	'nastiti@domainesia.com',	'Marketing',	'Deployed',	'007/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 03:51:51',	'2024-01-15 05:17:43',	NULL),
(10,	'A1/DN/10/2020/I/08',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAT0V',	NULL,	'-',	0,	'01 October 2020',	'Dinar Dwi Saputro',	'dinar@support.domainesia.com',	'Technical Support',	'Deployed',	'008/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 03:53:08',	'2024-01-15 05:17:57',	NULL),
(11,	'A1/DN/10/2020/I/09',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAZBB',	NULL,	'-',	0,	'01 October 2020',	'Alif Pangga Nawangsyah',	'alif@support.domainesia.com',	'Customer Support',	'Deployed',	'009/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 04:20:13',	'2024-01-15 05:17:52',	NULL),
(12,	'A1/DN/10/2020/I/10',	8,	NULL,	'Lenovo Lenovo V14, Ryzen 3 5300U, RAM 4GB, SSD 256GB - Upgrade to 12GB',	'Lenovo',	'PF3DJ666',	NULL,	'-',	0,	'01 October 2020',	'Denny Ardiyuda Pratama',	'denny@support.domainesia.com',	'Customer Support',	'Deployed',	'010/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 04:35:42',	'2024-01-15 05:18:14',	NULL),
(14,	'A1/DN/10/2020/I/11',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAZDS',	NULL,	'-',	0,	'01 October 2020',	'E. Ratna Christanti Patria',	'ratna@domainesia.com',	'Marketing',	'Deployed',	'011/DNA-HR/INV/XI/2020',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 04:55:06',	'2024-01-15 05:18:33',	NULL),
(15,	'A1/DN/10/2020/I/12',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1VBPDL',	NULL,	'-',	0,	'01 October 2020',	'Fajar Tri Wibowo',	'fajar@support.domainesia.com',	'Technical Support',	'Deployed',	'012/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 04:55:49',	'2024-01-15 05:18:39',	NULL),
(16,	'A1/DN/10/2020/I/13',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1VBRNH',	NULL,	'-',	0,	'01 October 2020',	'Irfan Afif Mustofa',	'afif@support.domainesia.com',	'Technical Support',	'Deployed',	'013/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 04:56:21',	'2024-01-15 05:18:43',	NULL),
(17,	'A1/DN/10/2020/I/03',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1SZD9F',	NULL,	'-',	0,	'01 October 2020',	'Adimas Anggi Winata',	'adimas@domainesia.com',	'People Experience',	'Deployed',	'003/DNA-HR/INV/XI/2020, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:01:56',	'2024-01-15 05:36:07',	NULL),
(18,	'A1/DN/01/2021/I/01',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 8GB, SSD 256GB',	'Lenovo',	'PF20CB88',	NULL,	'-',	0,	'01 January 2021',	'-',	'hrga@domainesia.com',	'People Experience',	'Broken',	'001/DNA-HR/INV/I/2021, Motherboard issue',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:11:03',	'2024-01-15 05:40:08',	NULL),
(19,	'A1/DN/01/2021/I/02',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 8GB, SSD 256GB',	'Lenovo',	'PF20D1R3',	NULL,	'-',	0,	'01 January 2021',	'-',	'hrga@domainesia.com',	'People Experience',	'Broken',	'002/DNA-HR/INV/I/2021, Dead condition',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:20:29',	'2024-01-15 05:40:19',	NULL),
(20,	'A1/DN/01/2021/I/03',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 8GB, SSD 256GB',	'Lenovo',	'PF20AWH8',	NULL,	'-',	0,	'01 January 2021',	'-',	'hrga@domainesia.com',	'People Experience',	'Broken',	'003/DNA-HR/INV/I/2021, RAM upgraded to 12GB, Motherboard issue',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:21:36',	'2024-01-15 05:40:34',	NULL),
(21,	'A1/DN/01/2021/I/05',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 4GB, SSD 256GB',	'Lenovo',	'PF20AW9N',	NULL,	'-',	0,	'01 January 2021',	'Zekriansyah Ramadhan',	'zekri@support.domainesia.com',	'Technical Support',	'Deployed',	'005/DNA-HR/INV/I/2021, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:24:53',	'2024-01-15 05:40:49',	NULL),
(22,	'A1/DN/01/2021/I/06',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 4GB, SSD 256GB',	'Lenovo',	'PF20CGE8',	NULL,	'-',	0,	'01 January 2021',	'Muhammad Defaroyan',	'royan@support.domainesia.com',	'Technical Support',	'Deployed',	'006/DNA-HR/INV/I/2021, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:25:26',	'2024-01-15 05:41:07',	NULL),
(23,	'A1/DN/01/2021/I/07',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 4GB, SSD 256GB',	'Lenovo',	'PF20A38Z',	NULL,	'-',	0,	'01 January 2021',	'-',	'hrga@domainesia.com',	'People Experience',	'Broken',	'007/DNA-HR/INV/I/2021, RAM upgraded to 12GB, Motherboard issue',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:26:29',	'2024-01-15 05:42:05',	NULL),
(24,	'A1/DN/01/2021/I/09',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 4GB, SSD 256GB',	'Lenovo',	'PF20BBD3',	NULL,	'-',	0,	'01 January 2021',	'Gaudiensius Caesario Danarta Raharjo',	'dien@support.domainesia.com',	'Customer Support',	'Deployed',	'009/DNA-HR/INV/I/2021, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:27:32',	'2024-01-15 05:42:23',	NULL),
(25,	'A1/DN/01/2021/I/10',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 4GB, SSD 256GB',	'Lenovo',	'PF20BQT2',	NULL,	'-',	0,	'01 January 2021',	'Arif Surya Putra',	'arif@support.domainesia.com',	'Technical Support',	'Deployed',	'010/DNA-HR/INV/I/2021, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:28:24',	'2024-01-15 05:42:38',	NULL),
(26,	'A1/DN/01/2021/I/11',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 4GB, SSD 256GB',	'Lenovo',	'PF251TND',	NULL,	'-',	0,	'01 January 2021',	'Muhamad Sayid Hidayat',	'sayid@support.domainesia.com',	'Customer Support',	'Deployed',	'011/DNA-HR/INV/I/2021, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:29:12',	'2024-01-15 05:43:03',	NULL),
(27,	'A1/DN/07/2021/I/12',	8,	NULL,	'Lenovo IdeaPad 3, AMD Athlon Silver 3050U, RAM 8GB, SSD 256GB, Black',	'Lenovo',	'PF1TAZBZ',	NULL,	'-',	0,	'01 August 2021',	'-',	'hrga@domainesia.com',	'People Experience',	'Broken',	'012/DNA-HR/INV/VII/2021, RAM upgraded to 12GB, Motherboard issue',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:30:58',	'2024-01-15 05:35:52',	NULL),
(28,	'A1/DN/10/2021/I/13',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 8GB, SSD 256GB',	'Lenovo',	'PF33ZF3X',	NULL,	'-',	0,	'01 January 2021',	'Muhammad Hasan Sahrudin',	'hasan@support.domainesia.com',	'Customer Support',	'Deployed',	'011/DNA-HR/INV/XI/2021, RAM upgraded to 12GB',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:37:20',	'2024-01-15 05:43:59',	NULL),
(29,	'A1/NC/03/2022/01',	8,	NULL,	'Lenovo Ideapad Gaming 3, Ryzen 5 4600, RAM 8GB, SSD 512GB, GTX1650Ti 4GB',	'Lenovo',	'PF2J5R82',	NULL,	'-',	0,	'01 March 2022',	'Nizar Akbar Meilani',	'nizar@domainesia.com',	NULL,	'Deployed',	'-',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:48:44',	'2024-01-15 05:48:44',	NULL),
(30,	'A1/DN/03/2022/I/04',	8,	NULL,	'Macbook Pro 2020 13\", M1, RAM 8GB, SSD 256GB',	'Apple',	'C02GX29JQ05D',	NULL,	'-',	0,	'01 March 2022',	'Bayu Dwi Prasetya',	'bayu@domainesia.com',	NULL,	'Deployed',	'004/DNA-HR/INV/III/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:52:44',	'2024-01-15 05:52:44',	NULL),
(31,	'A1/DN/06/2022/I/06',	8,	NULL,	'Macbook Air 2020 13\", M1, RAM 8GB, SSD 256GB',	'Apple',	'FVFH3TGQQ6L4',	NULL,	'-',	0,	'01 June 2022',	'Bimo Hutomo Adhi',	'bimo@domainesia.com',	'Marketing',	'Deployed',	'004/DNA-HR/INV/VI/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 05:52:56',	'2024-01-15 05:54:47',	NULL),
(32,	'A1/RN/08/2022/I/01',	8,	NULL,	'HP 14s, Intel i5 1240P, Iris Xe Graphics, RAM 16GB, SSD 512GB, Silver',	'HP',	'5CD224HNJD',	NULL,	'-',	0,	'01 August 2022',	'Pambuka Vita Rhesa Adinegara',	'rhesaadinegara@domainesia.com',	NULL,	'Deployed',	'001/RNA/-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:27:46',	'2024-01-15 06:27:46',	NULL),
(33,	'A1/DN/08/2022/I/07',	8,	NULL,	'HP 14s, Intel i5 1240P, Iris Xe Graphics, RAM 16GB, SSD 512GB, Silver',	'HP',	'5CD224HL7M',	NULL,	'-',	0,	'01 August 2022',	'Rayi Hamungkasi',	'rayi@domainesia.com',	'Marketing',	'Deployed',	'007/DNA-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:34:00',	'2024-01-15 06:34:46',	NULL),
(34,	'A1/DN/08/2022/I/08',	8,	NULL,	'HP 14s, Intel i5 1240P, Iris Xe Graphics, RAM 16GB, SSD 512GB, Silver',	'HP',	'5CD224HJ89',	NULL,	'-',	0,	'01 August 2022',	'Irfan Adi',	'irfan@domainesia.com',	'Technical Support',	'Deployed',	'008/DNA-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:35:00',	'2024-01-15 06:35:17',	NULL),
(35,	'A1/DN/08/2022/I/09',	8,	NULL,	'HP 14s, Intel i5 1240P, Iris Xe Graphics, RAM 16GB, SSD 512GB, Silver',	'HP',	'5CD224HMNP',	NULL,	'-',	0,	'01 August 2022',	'Vincensia Nathasya Queenta Putri Sukma',	'nana@domainesia.com',	'Finance & Accounting',	'Deployed',	'009/DNA-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:53:17',	'2024-01-15 06:53:34',	NULL),
(36,	'A1/DN/08/2022/I/10',	8,	NULL,	'HP 14s, Intel i5 1240P, Iris Xe Graphics, RAM 16GB, SSD 512GB, Silver',	'HP',	'5CD224HNNH',	NULL,	'-',	0,	'01 August 2022',	'Apriyani Kusuma Wardhani',	'apriyani@domainesia.com',	'Finance & Accounting',	'Deployed',	'010/DNA-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:53:37',	'2024-01-15 06:54:06',	NULL),
(37,	'A1/DN/08/2022/I/11',	8,	NULL,	'HP 14s, Intel i5 1240P, Iris Xe Graphics, RAM 16GB, SSD 512GB, Silver',	'HP',	'5CD224HLN3',	NULL,	'-',	0,	'01 August 2022',	'Hervita Mandariani',	'hervita@domainesia.com',	'Finance & Accounting',	'Deployed',	'011/DNA-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:54:17',	'2024-01-15 06:54:55',	NULL),
(38,	'A1/DN/08/2022/I/12',	8,	NULL,	'Macbook Air 2020 13\", M1, RAM 8GB, SSD 256GB',	'Apple',	'FVHGXABMQ6L4',	NULL,	'-',	0,	'01 August 2022',	'Alysia Alfi Annora',	'alfi@domainesia.com',	'Engineering',	'Deployed',	'012/DNA-HR/INV/VIII/2022',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:55:20',	'2024-01-15 06:57:07',	NULL),
(39,	'A1/DN/01/2023/I/01',	8,	NULL,	'Macbook Air 2020 13\", M1, RAM 8GB, SSD 256GB',	'Apple',	'FVFDM11YQ6L4',	NULL,	'-',	0,	'01 August 2022',	'Anna Erdiawan',	'erdi@domainesia.com',	'Engineering',	'Deployed',	'001/DNA-HR/INV/I/2023',	'-',	'15 January 2024',	'Dimas',	'2024-01-15 06:58:06',	'2024-01-15 06:58:46',	NULL),
(40,	'A1/NC/01/2023/I/01',	8,	NULL,	'Lenovo Yoga Slim 7 Pro 14\", Intel i5 1135G7, RAM 16GB, SSD 512GB',	'Lenovo',	'PF3REGTF',	NULL,	'-',	0,	'01 January 2023',	'Rizqon Sadida',	'rizqon@nevacloud.com',	NULL,	'Deployed',	'001/DAA-HR/INV/I/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:01:04',	'2024-01-16 04:01:04',	NULL),
(41,	'A1/DN/01/2023/I/02',	8,	NULL,	'Macbook Air 2022 13\", M2, RAM 8GB, SSD 256GB',	'Apple',	'D2F0YWQ3XP',	NULL,	'-',	0,	'01 August 2022',	'Willih Angga Sudrajadh',	'willih@domainesia.com',	'BOD',	'Deployed',	'002/DNA-HR/INV/I/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:09:08',	'2024-01-16 04:11:44',	NULL),
(42,	'A1/DN/01/2023/I/03',	8,	NULL,	'Lenovo Yoga Slim 7 Pro 14\", Intel i5 1135G7, RAM 16GB, SSD 512GB',	'Lenovo',	'PF3RK2CT',	NULL,	'-',	0,	'01 January 2023',	'Moh. Ali',	'ali@domainesia.com',	'Infrastructure',	'Deployed',	'003/DNA-HR/INV/I/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:10:57',	'2024-01-16 04:11:37',	NULL),
(43,	'A1/DN/01/2023/I/04',	8,	NULL,	'MSI Modern 14\", Intel i5 1235U, RAM 8GB, SSD 512GB',	'MSI',	'K2211N0123163',	NULL,	'-',	0,	'01 January 2023',	'Natascha Amalia',	'tascha@domainesia.com',	NULL,	'Deployed',	'004/DNA-HR/INV/I/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:15:12',	'2024-01-16 04:15:12',	NULL),
(44,	'A1/DN/02/2023/I/05',	8,	NULL,	'Macbook Pro 2017 13\", Intel i5, RAM 8GB, SSD 256GB',	'Apple',	'C02WJ5UKHV2L',	NULL,	'-',	0,	'01 February 2023',	'Adhitya Restu Kusuma Putra',	'adhityaputra@domainesia.com',	'Infrastructure',	'Deployed',	'005/DNA-HR/INV/II/2023',	'-',	'15 January 2024',	'Dimas',	'2024-01-16 04:15:27',	'2024-01-16 04:21:28',	NULL),
(45,	'A1/DN/02/2023/I/06',	8,	NULL,	'Lenovo V14-ADA, AMD Athlon Gold 3150U, RAM 8GB, SSD 256GB',	'Lenovo',	'PF20ABKN',	NULL,	'-',	0,	'01 February 2023',	'Thatit Arga Dahana',	'argadahana@domainesia.com',	'Marketing',	'Deployed',	'006/DNA-HR/INV/II/2023, RAM upgraded to 12GB',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:22:00',	'2024-01-16 04:22:59',	NULL),
(46,	'A1/DN/06/2023/I/07',	8,	NULL,	'MSI Modern 14\", Ryzen 5 5625U, RAM 16GB, SSD 512GB',	'MSI',	'K2211N0122630',	NULL,	'-',	0,	'01 June 2023',	'Ahmad Dzubayyan',	'dzub@support.domainesia.com',	'Technical Support',	'Deployed',	'007/DNA-HR/INV/VI/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:23:15',	'2024-01-16 04:25:31',	NULL),
(47,	'A1/DN/06/2023/I/08',	8,	NULL,	'MSI Modern 14\", Ryzen 5 5625U, RAM 16GB, SSD 512GB',	'MSI',	'K2211N0122630',	NULL,	'-',	0,	'01 June 2023',	'Nisrina Nuraini',	'nisrina@domainesia.com',	'Customer Support',	'Deployed',	'008/DNA-HR/INV/VI/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:25:34',	'2024-01-16 04:25:47',	NULL),
(48,	'A1/DN/08/2023/I/09',	8,	NULL,	'HP 14s, Ryzen5 5625U, RAM 8GB, 512 GB',	'HP',	'5CD242DHF6',	NULL,	'-',	0,	'01 August 2023',	'Cevy Yufindra',	'cevy@support.domainesia.com',	'Customer Support',	'Deployed',	'009/DNA-HR/INV/VII/2023',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:27:37',	'2024-01-16 04:30:11',	NULL),
(49,	'A1/DN/08/2023/I/10',	8,	NULL,	'HP 14s, Ryzen5 5625U, RAM 8GB, 512 GB',	'HP',	'5CD242DH1G',	NULL,	'-',	0,	'01 August 2023',	'Kinan Diandrapinandita',	'kinan@domainesia.com',	'People Experience',	'Deployed',	NULL,	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:30:19',	'2024-01-16 04:31:06',	NULL),
(50,	'A1/DN/08/2023/I/01',	8,	NULL,	'Macbook Air 2020 13\", M1, RAM 8GB, SSD 256GB',	'Apple',	'HXJL42XV1WFY',	NULL,	'-',	0,	'01 August 2022',	'Redemta Galuh Purbosari',	'galuh@deneva.co.id',	'Nevacloud',	'Deployed',	NULL,	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:40:06',	'2024-01-16 04:48:47',	NULL),
(51,	'A4/DN/01/2023/I/01',	42,	NULL,	'iPad Air 5, 64GB, WiFi',	'Apple',	'LH2GPDXC27',	NULL,	'-',	0,	'01 January 2023',	'Adi Setiawan',	'adi@domainesia.com',	'BOD',	'Deployed',	'-',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:56:24',	'2024-01-16 04:58:32',	NULL),
(52,	'A4/DN/01/2023/I/02',	42,	NULL,	'iPad Air 5, 64GB, WiFi',	'Apple',	'SF2QX974XDX',	NULL,	'-',	0,	'01 January 2023',	'Willih Angga Sudrajadh',	'willih@domainesia.com',	'BOD',	'Deployed',	'-',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:58:42',	'2024-01-16 04:59:16',	NULL),
(53,	'A4/DN/01/2023/I/03',	42,	NULL,	'iPad Air 5, 64GB, WiFi',	'Apple',	'FJJN7WLD9C',	NULL,	'-',	0,	'01 January 2023',	'Fuad Rahman Nugroho',	'fuad@domainesia.com',	'BOD',	'Deployed',	'-',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:59:19',	'2024-01-16 04:59:39',	NULL),
(54,	'A4/DN/01/2023/I/04',	42,	NULL,	'iPad 10, 64GB, WiFi',	'Apple',	'CXGJ0442YN',	NULL,	'-',	0,	'01 January 2023',	'Bimo Hutomo Adhi',	'bimo@domainesia.com',	'Marketing',	'Deployed',	'-',	'-',	'16 January 2024',	'Dimas',	'2024-01-16 04:59:45',	'2024-01-16 05:00:18',	NULL);

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'Niagahoster AMS Personal Access Client',	'8va5z6MU5tRmYriFAbODmDIVrKdgmPdhO5v0oB0C',	NULL,	'http://localhost',	1,	0,	0,	'2022-05-03 10:17:53',	'2022-05-03 10:17:53'),
(2,	NULL,	'Niagahoster AMS Password Grant Client',	'ZSu9kLCCRUhSy8JX3FrgNL9vvKtCyzHurbdwx4lQ',	'users',	'http://localhost',	0,	1,	0,	'2022-05-03 10:17:53',	'2022-05-03 10:17:53'),
(3,	NULL,	'Laravel Personal Access Client',	'QVfbo4y4tBOtgqu2U89BmHtB0fSj7OMekidorxlX',	NULL,	'http://localhost',	1,	0,	0,	'2023-12-18 08:21:25',	'2023-12-18 08:21:25'),
(4,	NULL,	'Laravel Password Grant Client',	'bPnABxaf3FelbM1Yr0Y6l5tDD3rD96ldw8eQIcKQ',	'users',	'http://localhost',	0,	1,	0,	'2023-12-18 08:21:25',	'2023-12-18 08:21:25');

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'2022-05-03 10:17:53',	'2022-05-03 10:17:53'),
(2,	3,	'2023-12-18 08:21:25',	'2023-12-18 08:21:25');

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('prajaka.lizadi@hostinger.com',	'$2y$10$lRe3mbbPqup1vzcsw.XHk.MYbkX/cYYV2FGVvfLeBbQ5VA3UnrwSC',	'2022-11-15 10:07:57'),
('maudy@hostinger.com',	'$2y$10$cOUA6RKba6PHGZtKDZ6TI.GBwNXiQWqvZK8A5.bUjJSRfPTdcweUK',	'2023-02-06 08:21:21'),
('adimas.anggi@hostinger.co.id',	'$2y$10$GMmvcWeNenRL.rqWm1cVveH/fAgSpXTA43Nhg2hG/1Qzh7kUzTYPC',	'2023-02-24 02:26:53');

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'Alexander Adimas',	'admin',	'adimas@domainesia.com',	NULL,	'$2y$10$iQho6hlXmjIwMKsG1RbDrO1Ttdp3bJmIksXB8OzzTUrHIJT46PXUq',	'YrDRkw9C6kcIYxNSxQC537njHYsjEKAp7MJ7uImYob67Gg5MXcXMj0OwicCX',	'2023-12-18',	'2023-12-18'),
(2,	'Kinan Diandrapinandita',	'admin',	'kinan@domainesia.com',	NULL,	'$2y$10$GUTcCR7BT2OKo4BXtEUt6OdZyJ.5be1x7yZgOS39efieD.XQaqzcm',	NULL,	'2023-12-20',	'2023-12-20'),
(3,	'Willih',	'admin',	'willih@domainesia.com',	NULL,	'$2y$10$4d./GzYljD17M.SLU2iVje1IMy/POpXKntX5T63VXmr2sAtAlE4FW',	NULL,	'2024-01-02',	'2024-01-02');

-- 2024-01-16 05:04:05
