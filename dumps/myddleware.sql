-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 25 Septembre 2017 à 20:47
-- Version du serveur :  5.6.28-0ubuntu0.15.04.1
-- Version de PHP :  5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `livedemo_myddleware`
--


-- --------------------------------------------------------

--
-- Structure de la table `ConnectorParam`
--

DROP TABLE IF EXISTS `ConnectorParam`;
CREATE TABLE IF NOT EXISTS `ConnectorParam` (
`id` int(11) NOT NULL,
  `conn_id` int(11) NOT NULL,
  `name` varchar(684) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(684) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `ConnectorParam`
--

TRUNCATE TABLE `ConnectorParam`;
--
-- Contenu de la table `ConnectorParam`
--

INSERT INTO `ConnectorParam` (`id`, `conn_id`, `name`, `value`) VALUES
(1, 1, 'login', 'eyJpdiI6ImRQd1REWkFNMmhyTm1PWkpZNDZBelE9PSIsInZhbHVlIjoiS2N0cWdzM3g1U3dYOTAyNXY1dElkQT09IiwibWFjIjoiZjNmNTEyZWM1M2FkNjNlNDljZTZmNTkxODIyMzMyMjA4NjhiODYyMDUyYzNjNGQ3YzdjZTFmMDg5N2FlZDIzZCJ9'),
(2, 1, 'password', 'eyJpdiI6IjA1STBoM3hlTElkczBIZXpYVGhybFE9PSIsInZhbHVlIjoiWFRzd0V5XC80SmtEK0tEQmYzdjN6NGRtZTdkcko0VkRVNDc5ZElpMTh3RDQ9IiwibWFjIjoiMzBiOGEyODZiNDIyNDJkNzI0MWUwNTc0MDExOTQ5NGY4MzdmZDNiN2NiNmU2MmY1MWI3NzQzMzU5YzU1MGI1ZCJ9'),
(3, 1, 'url', 'eyJpdiI6Im9XVGk0TFBRUFo2S211TU8zY0dhS3c9PSIsInZhbHVlIjoiYmRFZWUyQytnNU92UnJ2N2MzRVdNUVwvVER2T0ZUeU5cL1FDYW1oUGR5YXlDVGtybE5QZ1pOS3I3aUtrcFJSTXp6SitTXC8yRnFzZmRRbTBnek5nKytqSEVUakZRdjZrM0hyZWdUcVhWYzFWc0k9IiwibWFjIjoiYTE1ZjM0OGJiYmNhZmEwYzJmMWM4MmFlYjg0ODZmMTU4YzJmOWI0YjcyMjM1ZDBiOGYwNTJlZDU5N2MyOTk1YyJ9'),
(4, 2, 'url', 'eyJpdiI6IlwvNWNrblc0VmRnVThLT1lGbUZXbWdRPT0iLCJ2YWx1ZSI6IlB6NHRkVVVmZ2MrUEdYUktEdW5JWHA0NGhyQjRvS3FNVjFvSVVjUEdVVG1NcTVpbmE3TE9sczdFb0M2ZFVEdVB5YjhrMzQ3azhlUFwvdXBVamJxeDVBdz09IiwibWFjIjoiZGY5ZDBkYjQyMjg1Yzk1NmI4Nzk2ODI4NTY0OGQzZTZmM2MxMDhhMWI5MWE5NDY4NDgzZmRkNThjOWUxZDhlZiJ9'),
(5, 2, 'apikey', 'eyJpdiI6IlJhYkEzNUNvOWZJR2tiVFVJeFJRcWc9PSIsInZhbHVlIjoiZ1hjRVpJeVFcL0Z6K04rVndMSmhWbkxlcG5FWnJyWlZicmRSa1V0RUtjRDFZTmhhU0ZmRUNtY3I4UWJUaVJzYmciLCJtYWMiOiIxMzIxOTFjMjgxMjRjMDAyMGIyYThhOGVjMjM3OGMyMjM0OGIxZjUwOGNjZmNkNzRjYzIwYmJlNjc0OTA1MDdiIn0=');
-- --------------------------------------------------------

--
-- Structure de la table `DocumentData`
--

DROP TABLE IF EXISTS `DocumentData`;
CREATE TABLE IF NOT EXISTS `DocumentData` (
`id` int(11) NOT NULL,
  `doc_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `DocumentData`
--

TRUNCATE TABLE `DocumentData`;
-- --------------------------------------------------------

--
-- Structure de la table `Document`
--

DROP TABLE IF EXISTS `Document`;
CREATE TABLE IF NOT EXISTS `Document` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rule_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_date_modified` datetime DEFAULT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) NOT NULL DEFAULT '0',
  `global_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `Document`
--

TRUNCATE TABLE `Document`;
-- --------------------------------------------------------

--
-- Structure de la table `DocumentAudit`
--

DROP TABLE IF EXISTS `DocumentAudit`;
CREATE TABLE IF NOT EXISTS `DocumentAudit` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modified` datetime NOT NULL,
  `before_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `after_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `DocumentAudit`
--

TRUNCATE TABLE `DocumentAudit`;


-- --------------------------------------------------------

--
-- Structure de la table `Functions`
--

DROP TABLE IF EXISTS `Functions`;
CREATE TABLE IF NOT EXISTS `Functions` (
`id` int(11) NOT NULL,
  `fcat_id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `Functions`
--

TRUNCATE TABLE `Functions`;
--
-- Contenu de la table `Functions`
--

INSERT INTO `Functions` (`id`, `fcat_id`, `name`) VALUES
(1, 1, 'round'),
(2, 1, 'ceil'),
(3, 1, 'abs'),
(4, 2, 'trim'),
(5, 2, 'lower'),
(6, 2, 'upper'),
(7, 2, 'substr'),
(8, 2, 'striptags'),
(9, 2, 'changeValue'),
(10, 2, 'htmlEntityDecode'),
(11, 2, 'replace'),
(12, 2, 'utf8encode'),
(13, 2, 'utf8decode'),
(14, 2, 'htmlentities'),
(15, 2, 'htmlspecialchars'),
(16, 3, 'date'),
(17, 3, 'microtime'),
(18, 3, 'changeTimeZone'),
(19, 3, 'changeFormatDate'),
(20, 2, 'strlen');
-- --------------------------------------------------------

--
-- Structure de la table `FuncCat`
--

DROP TABLE IF EXISTS `FuncCat`;
CREATE TABLE IF NOT EXISTS `FuncCat` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `FuncCat`
--

TRUNCATE TABLE `FuncCat`;
--
-- Contenu de la table `FuncCat`
--

INSERT INTO `FuncCat` (`id`, `name`) VALUES
(1, 'mathematical'),
(2, 'text'),
(3, 'date');

-- --------------------------------------------------------

--
-- Structure de la table `Job`
--

DROP TABLE IF EXISTS `Job`;
CREATE TABLE IF NOT EXISTS `Job` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `param` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `begin` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `open` int(11) DEFAULT '0',
  `close` int(11) DEFAULT '0',
  `cancel` int(11) DEFAULT '0',
  `manual` tinyint(1) DEFAULT '0',
  `error` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `Job`
--

TRUNCATE TABLE `Job`;
-- --------------------------------------------------------

--
-- Structure de la table `Log`
--

DROP TABLE IF EXISTS `Log`;
CREATE TABLE IF NOT EXISTS `Log` (
`id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `msg` longtext COLLATE utf8_unicode_ci NOT NULL,
  `rule_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref_doc_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `Log`
--

TRUNCATE TABLE `Log`;
-- --------------------------------------------------------

--
-- Structure de la table `Rule`
--

DROP TABLE IF EXISTS `Rule`;
CREATE TABLE IF NOT EXISTS `Rule` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `conn_id_source` int(11) DEFAULT NULL,
  `conn_id_target` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `module_source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `Rule`
--

TRUNCATE TABLE `Rule`;
--
-- Contenu de la table `Rule`
--

INSERT INTO `Rule` (`id`, `conn_id_source`, `conn_id_target`, `date_created`, `date_modified`, `created_by`, `modified_by`, `module_source`, `module_target`, `active`, `deleted`, `name`, `name_slug`) VALUES
('589dc271c55b9', 2, 1, '2017-02-10 13:38:57', '2017-02-10 13:45:05', 1, 1, 'customers', 'Contacts', 1, 0, 'Customers', 'customers'),
('589dc66a4dd9d', 2, 1, '2017-02-10 13:55:54', '2017-02-10 13:55:54', 1, 1, 'addresses', 'Contacts', 1, 0, 'Addresses', 'addresses'),
('589dc7c5e2413', 2, 1, '2017-02-10 14:01:41', '2017-02-10 14:01:41', 1, 1, 'categories', 'AOS_Product_Categories', 1, 0, 'Product categories', 'product_categories'),
('589dc88896f8d', 2, 1, '2017-02-10 14:04:56', '2017-02-10 14:19:06', 1, 1, 'categories', 'AOS_Product_Categories', 1, 0, 'Product categories parent', 'product_categories_parent'),
('589dce4fa9e65', 2, 1, '2017-02-10 14:29:35', '2017-02-10 14:33:25', 1, 1, 'products', 'AOS_Products', 1, 0, 'Products', 'products'),
('589ddba1ab608', 2, 1, '2017-02-10 15:26:25', '2017-02-10 17:01:41', 1, 1, 'orders', 'AOS_Quotes', 1, 0, 'Orders', 'orders'),
('589ddefe70909', 2, 1, '2017-02-10 15:40:46', '2017-02-10 16:59:08', 1, 1, 'order_details', 'AOS_Products_Quotes', 1, 0, 'Order products', 'order_products');

-- --------------------------------------------------------

--
-- Structure de la table `RuleAudit`
--

DROP TABLE IF EXISTS `RuleAudit`;
CREATE TABLE IF NOT EXISTS `RuleAudit` (
`id` int(11) NOT NULL,
  `rule_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `RuleAudit`
--

TRUNCATE TABLE `RuleAudit`;
--
-- Contenu de la table `RuleAudit`
--

INSERT INTO `RuleAudit` (`id`, `rule_id`, `date_created`, `data`) VALUES
(1, '589dc271c55b9', '2017-02-10 13:38:57', 's:329:"{"ruleName":"customers","datereference":"2017-02-10 00:00:00","content":{"fields":{"name":{"last_name":{"champs":["lastname"]},"birthdate":{"champs":["birthday"]},"email1":{"champs":["email"]},"first_name":{"champs":["firstname"]}}},"params":{"mode":"0","rule":{"duplicate_fields":"email1"}}},"filters":null,"relationships":null}";'),
(2, '589dc271c55b9', '2017-02-10 13:45:05', 's:370:"{"ruleName":"customers","datereference":"2017-02-10 00:00:00","content":{"fields":{"name":{"last_name":{"champs":["lastname"]},"birthdate":{"champs":["birthday"]},"email1":{"champs":["email"]},"first_name":{"champs":["firstname"]},"newsletter_c":{"champs":["newsletter"]}}},"params":{"mode":"0","rule":{"duplicate_fields":"email1"}}},"filters":null,"relationships":null}";'),
(3, '589dc66a4dd9d', '2017-02-10 13:55:54', 's:516:"{"ruleName":"addresses","datereference":"2017-02-10 00:00:00","content":{"fields":{"name":{"phone_home":{"champs":["phone"]},"phone_mobile":{"champs":["phone_mobile"]},"primary_address_city":{"champs":["city"]},"primary_address_postalcode":{"champs":["postcode"]},"primary_address_street":{"champs":["address1"]},"primary_address_street_2":{"champs":["address2"]}}},"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"Myddleware_element_id","rule":"589dc271c55b9","source":"id_customer","parent":"0"}]}";'),
(4, '589dc7c5e2413', '2017-02-10 14:01:41', 's:264:"{"ruleName":"product_categories","datereference":"2017-02-10 00:00:00","content":{"fields":{"name":{"name":{"champs":["name"]},"description":{"champs":["description"]}}},"params":{"mode":"0","rule":{"duplicate_fields":"name"}}},"filters":null,"relationships":null}";'),
(5, '589dc88896f8d', '2017-02-10 14:04:56', 's:234:"{"ruleName":"product_categories_parent","datereference":"2017-02-10 00:00:00","content":{"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"parent_category_id","rule":"589dc7c5e2413","source":"id_parent","parent":"0"}]}";'),
(6, '589dc88896f8d', '2017-02-10 14:15:04', 's:495:"{"ruleName":"product_categories_parent","datereference":"2017-02-10 12:23:02","content":{"fields":{"name":{"is_parent":{"champs":["id_parent"],"formule":["( {id_parent} <> \\"\\" ? \\"1\\" : \\"0\\" )"]}}},"params":{"mode":"0"}},"filters":[{"target":"id_parent","filter":"gt","value":"0"}],"relationships":[{"target":"Myddleware_element_id","rule":"589dc7c5e2413","source":"Myddleware_element_id","parent":"0"},{"target":"parent_category_id","rule":"589dc7c5e2413","source":"id_parent","parent":"0"}]}";'),
(7, '589dc88896f8d', '2017-02-10 14:16:48', 's:495:"{"ruleName":"product_categories_parent","datereference":"2017-02-10 12:23:02","content":{"fields":{"name":{"is_parent":{"champs":["id_parent"],"formule":["( {id_parent} != \\"\\" ? \\"1\\" : \\"0\\" )"]}}},"params":{"mode":"0"}},"filters":[{"target":"id_parent","filter":"gt","value":"0"}],"relationships":[{"target":"Myddleware_element_id","rule":"589dc7c5e2413","source":"Myddleware_element_id","parent":"0"},{"target":"parent_category_id","rule":"589dc7c5e2413","source":"id_parent","parent":"0"}]}";'),
(8, '589dc88896f8d', '2017-02-10 14:19:06', 's:495:"{"ruleName":"product_categories_parent","datereference":"2017-02-10 12:23:02","content":{"fields":{"name":{"is_parent":{"champs":["id_parent"],"formule":["( {id_parent} != \\"\\" ? \\"0\\" : \\"1\\" )"]}}},"params":{"mode":"0"}},"filters":[{"target":"id_parent","filter":"gt","value":"0"}],"relationships":[{"target":"Myddleware_element_id","rule":"589dc7c5e2413","source":"Myddleware_element_id","parent":"0"},{"target":"parent_category_id","rule":"589dc7c5e2413","source":"id_parent","parent":"0"}]}";'),
(9, '589dce4fa9e65', '2017-02-10 14:29:35', 's:429:"{"ruleName":"products","datereference":"2017-02-10 00:00:00","content":{"fields":{"name":{"name":{"champs":["name"]},"price":{"champs":["price"]},"description":{"champs":["description"]},"category":{"formule":["\\"Opportunities\\""]}}},"params":{"mode":"0","rule":{"duplicate_fields":"name"}}},"filters":null,"relationships":[{"target":"aos_product_category_id","rule":"589dc7c5e2413","source":"id_category_default","parent":"0"}]}";'),
(10, '589dce4fa9e65', '2017-02-10 14:33:25', 's:394:"{"ruleName":"products","datereference":"2017-02-10 12:23:03","content":{"fields":{"name":{"name":{"champs":["name"]},"price":{"champs":["price"]},"description":{"champs":["description"]},"category":{"formule":["\\"Opportunities\\""]}}},"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"aos_product_category_id","rule":"589dc7c5e2413","source":"id_category_default","parent":"0"}]}";'),
(11, '589ddba1ab608', '2017-02-10 15:26:25', 's:601:"{"ruleName":"orders","datereference":"2017-02-10 00:00:00","content":{"fields":{"name":{"name":{"champs":["reference"],"formule":["\\"Order : \\".{reference}"]},"description":{"champs":["gift_message"]},"tax_amount":{"champs":["total_paid_tax_incl","total_paid_tax_excl"],"formule":["{total_paid_tax_incl}-{total_paid_tax_excl}"]},"total_amount":{"champs":["total_paid_tax_incl"]},"stage":{"formule":["\\"Confirmed\\""]}}},"params":{"mode":"0","rule":{"duplicate_fields":"name"}}},"filters":null,"relationships":[{"target":"billing_contact_id","rule":"589dc271c55b9","source":"id_customer","parent":"0"}]}";'),
(12, '589ddefe70909', '2017-02-10 15:40:46', 's:784:"{"ruleName":"order_products","datereference":"","content":{"fields":{"name":{"name":{"champs":["product_name"]},"product_total_price":{"champs":["total_price_tax_excl"]},"product_unit_price":{"champs":["unit_price_tax_excl"]},"vat_amt":{"champs":["total_price_tax_incl","total_price_tax_excl"],"formule":["{total_price_tax_incl}-{total_price_tax_excl}"]},"discount":{"champs":["reduction_amount_tax_incl"]},"product_discount_amount":{"champs":["reduction_amount_tax_excl"]},"product_qty":{"champs":["product_quantity"]},"parent_name":{"formule":["\\"AOS_Quotes\\""]}}},"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"parent_id","rule":"589ddba1ab608","source":"id_order","parent":"0"},{"target":"product_id","rule":"589dce4fa9e65","source":"product_id","parent":"0"}]}";'),
(13, '589ddefe70909', '2017-02-10 15:42:26', 's:786:"{"ruleName":"order_products","datereference":"16","content":{"fields":{"name":{"name":{"champs":["product_name"]},"product_total_price":{"champs":["total_price_tax_excl"]},"product_unit_price":{"champs":["unit_price_tax_excl"]},"vat_amt":{"champs":["total_price_tax_incl","total_price_tax_excl"],"formule":["{total_price_tax_incl}-{total_price_tax_excl}"]},"discount":{"champs":["reduction_amount_tax_incl"]},"product_discount_amount":{"champs":["reduction_amount_tax_excl"]},"product_qty":{"champs":["product_quantity"]},"parent_type":{"formule":["\\"AOS_Quotes\\""]}}},"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"parent_id","rule":"589ddba1ab608","source":"id_order","parent":"0"},{"target":"product_id","rule":"589dce4fa9e65","source":"product_id","parent":"0"}]}";'),
(14, '589ddefe70909', '2017-02-10 15:55:06', 's:867:"{"ruleName":"order_products","datereference":"16","content":{"fields":{"name":{"name":{"champs":["product_name"]},"product_total_price":{"champs":["total_price_tax_excl"]},"product_unit_price":{"champs":["unit_price_tax_excl"]},"vat_amt":{"champs":["total_price_tax_incl","total_price_tax_excl"],"formule":["{total_price_tax_incl}-{total_price_tax_excl}"]},"discount":{"champs":["reduction_amount_tax_incl"]},"product_discount_amount":{"champs":["reduction_amount_tax_excl"]},"product_list_price":{"champs":["product_price"]},"product_qty":{"champs":["product_quantity"]},"parent_type":{"formule":["\\"AOS_Quotes\\""]},"vat":{"formule":["\\"20.0\\""]}}},"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"parent_id","rule":"589ddba1ab608","source":"id_order","parent":"0"},{"target":"product_id","rule":"589dce4fa9e65","source":"product_id","parent":"0"}]}";'),
(15, '589ddba1ab608', '2017-02-10 16:51:50', 's:1146:"{"ruleName":"orders","datereference":"2017-02-10 12:23:09","content":{"fields":{"name":{"name":{"champs":["reference"],"formule":["\\"Order : \\".{reference}"]},"stage":{"champs":["current_state"],"formule":["({current_state}==\\"5\\"?\\"Delivered\\":\\n    ({current_state}==\\"2\\"?\\"Closed Accepted\\":\\n        ({current_state}==\\"4\\"?\\"Confirmed\\":\\n            ({current_state}==\\"12\\"?\\"Closed Accepted\\":\\n                ({current_state}==\\"6\\"?\\"Closed Dead\\":\\n                    ({current_state}==\\"7\\"?\\"Closed Dead\\":\\n                        ({current_state}==\\"9\\"?\\"Closed Accepted\\":\\n                            \\"On Hold\\"\\n                        )\\n                    )\\n                )\\n            )\\n        )\\n    )\\n)"]},"description":{"champs":["gift_message"]},"tax_amount":{"champs":["total_paid_tax_incl","total_paid_tax_excl"],"formule":["{total_paid_tax_incl}-{total_paid_tax_excl}"]},"total_amount":{"champs":["total_paid_tax_incl"]}}},"params":{"mode":"0","rule":{"duplicate_fields":"name"}}},"filters":null,"relationships":[{"target":"billing_contact_id","rule":"589dc271c55b9","source":"id_customer","parent":"0"}]}";'),
(16, '589ddefe70909', '2017-02-10 16:59:08', 's:866:"{"ruleName":"order_products","datereference":"16","content":{"fields":{"name":{"name":{"champs":["product_name"]},"product_total_price":{"champs":["total_price_tax_excl"]},"product_unit_price":{"champs":["unit_price_tax_excl"]},"vat_amt":{"champs":["total_price_tax_incl","total_price_tax_excl"],"formule":["{total_price_tax_incl}-{total_price_tax_excl}"]},"discount":{"champs":["reduction_amount_tax_incl"]},"product_discount_amount":{"champs":["reduction_amount_tax_excl"]},"product_list_price":{"champs":["product_price"]},"product_qty":{"champs":["product_quantity"]},"parent_type":{"formule":["\\"AOS_Quotes\\""]},"vat":{"formule":["\\"0.0\\""]}}},"params":{"mode":"0"}},"filters":null,"relationships":[{"target":"parent_id","rule":"589ddba1ab608","source":"id_order","parent":"0"},{"target":"product_id","rule":"589dce4fa9e65","source":"product_id","parent":"0"}]}";'),
(17, '589ddba1ab608', '2017-02-10 17:01:41', 's:1357:"{"ruleName":"orders","datereference":"2017-02-10 16:53:38","content":{"fields":{"name":{"name":{"champs":["reference"],"formule":["\\"Order : \\".{reference}"]},"stage":{"champs":["current_state"],"formule":["({current_state}==\\"5\\"?\\"Delivered\\":\\n    ({current_state}==\\"2\\"?\\"Closed Accepted\\":\\n        ({current_state}==\\"4\\"?\\"Confirmed\\":\\n            ({current_state}==\\"12\\"?\\"Closed Accepted\\":\\n                ({current_state}==\\"6\\"?\\"Closed Dead\\":\\n                    ({current_state}==\\"7\\"?\\"Closed Dead\\":\\n                        ({current_state}==\\"9\\"?\\"Closed Accepted\\":\\n                            \\"On Hold\\"\\n                        )\\n                    )\\n                )\\n            )\\n        )\\n    )\\n)"]},"description":{"champs":["gift_message"]},"shipping_amount":{"champs":["total_shipping_tax_excl"]},"shipping_tax_amt":{"champs":["total_discounts_tax_excl","total_discounts_tax_incl"],"formule":["{total_discounts_tax_incl}-{total_discounts_tax_excl}"]},"tax_amount":{"champs":["total_paid_tax_incl","total_paid_tax_excl"],"formule":["{total_paid_tax_incl}-{total_paid_tax_excl}"]},"total_amount":{"champs":["total_paid_tax_incl"]}}},"params":{"mode":"0","rule":{"duplicate_fields":"name"}}},"filters":null,"relationships":[{"target":"billing_contact_id","rule":"589dc271c55b9","source":"id_customer","parent":"0"}]}";');

-- --------------------------------------------------------

--
-- Structure de la table `RuleField`
--

DROP TABLE IF EXISTS `RuleField`;
CREATE TABLE IF NOT EXISTS `RuleField` (
`id` int(11) NOT NULL,
  `rule_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target_field_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `source_field_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `formula` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `RuleField`
--

TRUNCATE TABLE `RuleField`;
--
-- Contenu de la table `RuleField`
--

INSERT INTO `RuleField` (`id`, `rule_id`, `target_field_name`, `source_field_name`, `formula`) VALUES
(5, '589dc271c55b9', 'last_name', 'lastname', NULL),
(6, '589dc271c55b9', 'birthdate', 'birthday', NULL),
(7, '589dc271c55b9', 'email1', 'email', NULL),
(8, '589dc271c55b9', 'first_name', 'firstname', NULL),
(9, '589dc271c55b9', 'newsletter_c', 'newsletter', NULL),
(10, '589dc66a4dd9d', 'phone_home', 'phone', NULL),
(11, '589dc66a4dd9d', 'phone_mobile', 'phone_mobile', NULL),
(12, '589dc66a4dd9d', 'primary_address_city', 'city', NULL),
(13, '589dc66a4dd9d', 'primary_address_postalcode', 'postcode', NULL),
(14, '589dc66a4dd9d', 'primary_address_street', 'address1', NULL),
(15, '589dc66a4dd9d', 'primary_address_street_2', 'address2', NULL),
(16, '589dc7c5e2413', 'name', 'name', NULL),
(17, '589dc7c5e2413', 'description', 'description', NULL),
(20, '589dc88896f8d', 'is_parent', 'id_parent', '( {id_parent} != "" ? "0" : "1" )'),
(25, '589dce4fa9e65', 'name', 'name', NULL),
(26, '589dce4fa9e65', 'price', 'price', NULL),
(27, '589dce4fa9e65', 'description', 'description', NULL),
(28, '589dce4fa9e65', 'category', 'my_value', '"Opportunities"'),
(65, '589ddefe70909', 'name', 'product_name', NULL),
(66, '589ddefe70909', 'product_total_price', 'total_price_tax_excl', NULL),
(67, '589ddefe70909', 'product_unit_price', 'unit_price_tax_excl', NULL),
(68, '589ddefe70909', 'vat_amt', 'total_price_tax_incl;total_price_tax_excl', '{total_price_tax_incl}-{total_price_tax_excl}'),
(69, '589ddefe70909', 'discount', 'reduction_amount_tax_incl', NULL),
(70, '589ddefe70909', 'product_discount_amount', 'reduction_amount_tax_excl', NULL),
(71, '589ddefe70909', 'product_list_price', 'product_price', NULL),
(72, '589ddefe70909', 'product_qty', 'product_quantity', NULL),
(73, '589ddefe70909', 'parent_type', 'my_value', '"AOS_Quotes"'),
(74, '589ddefe70909', 'vat', 'my_value', '"0.0"'),
(75, '589ddba1ab608', 'name', 'reference', '"Order : ".{reference}'),
(76, '589ddba1ab608', 'stage', 'current_state', '({current_state}=="5"?"Delivered":\n    ({current_state}=="2"?"Closed Accepted":\n        ({current_state}=="4"?"Confirmed":\n            ({current_state}=="12"?"Closed Accepted":\n                ({current_state}=="6"?"Closed Dead":\n                    ({current_state}=="7"?"Closed Dead":\n                        ({current_state}=="9"?"Closed Accepted":\n                            "On Hold"\n                        )\n                    )\n                )\n            )\n        )\n    )\n)'),
(77, '589ddba1ab608', 'description', 'gift_message', NULL),
(78, '589ddba1ab608', 'shipping_amount', 'total_shipping_tax_excl', NULL),
(79, '589ddba1ab608', 'shipping_tax_amt', 'total_discounts_tax_excl;total_discounts_tax_incl', '{total_discounts_tax_incl}-{total_discounts_tax_excl}'),
(80, '589ddba1ab608', 'tax_amount', 'total_paid_tax_incl;total_paid_tax_excl', '{total_paid_tax_incl}-{total_paid_tax_excl}'),
(81, '589ddba1ab608', 'total_amount', 'total_paid_tax_incl', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `RuleFilter`
--

DROP TABLE IF EXISTS `RuleFilter`;
CREATE TABLE IF NOT EXISTS `RuleFilter` (
`id` int(11) NOT NULL,
  `rule_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `RuleFilter`
--

TRUNCATE TABLE `RuleFilter`;
--
-- Contenu de la table `RuleFilter`
--

INSERT INTO `RuleFilter` (`id`, `rule_id`, `target`, `type`, `value`) VALUES
(3, '589dc88896f8d', 'id_parent', 'gt', '0');

-- --------------------------------------------------------

--
-- Structure de la table `RuleOrder`
--

DROP TABLE IF EXISTS `RuleOrder`;
CREATE TABLE IF NOT EXISTS `RuleOrder` (
  `rule_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `RuleOrder`
--

TRUNCATE TABLE `RuleOrder`;
--
-- Contenu de la table `RuleOrder`
--

INSERT INTO `RuleOrder` (`rule_id`, `order`) VALUES
('589dc271c55b9', 1),
('589dc66a4dd9d', 2),
('589dc7c5e2413', 1),
('589dc88896f8d', 2),
('589dce4fa9e65', 2),
('589ddba1ab608', 2),
('589ddefe70909', 3);

-- --------------------------------------------------------

--
-- Structure de la table `RuleParam`
--

DROP TABLE IF EXISTS `RuleParam`;
CREATE TABLE IF NOT EXISTS `RuleParam` (
`id` int(11) NOT NULL,
  `rule_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `RuleParam`
--

TRUNCATE TABLE `RuleParam`;
--
-- Contenu de la table `RuleParam`
--

INSERT INTO `RuleParam` (`id`, `rule_id`, `name`, `value`) VALUES
(5, '589dc271c55b9', 'delete', '60'),
(6, '589dc271c55b9', 'datereference', '2000-02-10 12:23:00'),
(7, '589dc271c55b9', 'mode', '0'),
(8, '589dc271c55b9', 'duplicate_fields', 'email1'),
(9, '589dc66a4dd9d', 'delete', '60'),
(10, '589dc66a4dd9d', 'datereference', '2000-02-10 12:23:00'),
(11, '589dc66a4dd9d', 'mode', '0'),
(12, '589dc7c5e2413', 'delete', '60'),
(13, '589dc7c5e2413', 'datereference', '2000-02-10 12:23:02'),
(14, '589dc7c5e2413', 'mode', '0'),
(25, '589dc88896f8d', 'delete', '60'),
(26, '589dc88896f8d', 'datereference', '2000-02-10 12:23:02'),
(27, '589dc88896f8d', 'mode', '0'),
(32, '589dce4fa9e65', 'delete', '60'),
(33, '589dce4fa9e65', 'datereference', '2000-02-10 12:23:03'),
(34, '589dce4fa9e65', 'mode', '0'),
(52, '589ddefe70909', 'delete', '60'),
(53, '589ddefe70909', 'datereference', '16'),
(54, '589ddefe70909', 'mode', '0'),
(55, '589ddba1ab608', 'delete', '60'),
(56, '589ddba1ab608', 'datereference', '2000-02-10 16:53:38'),
(57, '589ddba1ab608', 'mode', '0'),
(58, '589ddba1ab608', 'duplicate_fields', 'name');

-- --------------------------------------------------------

--
-- Structure de la table `RuleRelationShip`
--

DROP TABLE IF EXISTS `RuleRelationShip`;
CREATE TABLE IF NOT EXISTS `RuleRelationShip` (
`id` int(11) NOT NULL,
  `rule_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_name_source` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_name_target` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `RuleRelationShip`
--

TRUNCATE TABLE `RuleRelationShip`;
--
-- Contenu de la table `RuleRelationShip`
--

INSERT INTO `RuleRelationShip` (`id`, `rule_id`, `field_name_source`, `field_name_target`, `field_id`, `parent`) VALUES
(1, '589dc66a4dd9d', 'id_customer', 'Myddleware_element_id', '589dc271c55b9', 0),
(7, '589dc88896f8d', 'Myddleware_element_id', 'Myddleware_element_id', '589dc7c5e2413', 0),
(8, '589dc88896f8d', 'id_parent', 'parent_category_id', '589dc7c5e2413', 0),
(10, '589dce4fa9e65', 'id_category_default', 'aos_product_category_id', '589dc7c5e2413', 0),
(19, '589ddefe70909', 'id_order', 'parent_id', '589ddba1ab608', 0),
(20, '589ddefe70909', 'product_id', 'product_id', '589dce4fa9e65', 0),
(21, '589ddba1ab608', 'id_customer', 'billing_contact_id', '589dc271c55b9', 0);

-- --------------------------------------------------------

--
-- Structure de la table `Solution`
--

-- --------------------------------------------------------

--
-- Structure de la table `Connector`
--

DROP TABLE IF EXISTS `Connector`;
CREATE TABLE IF NOT EXISTS `Connector` (
`id` int(11) NOT NULL,
  `sol_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modified_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `Connector`
--

TRUNCATE TABLE `Connector`;
--
-- Contenu de la table `Connector`
--

INSERT INTO `Connector` (`id`, `sol_id`, `name`, `name_slug`, `date_created`, `date_modified`, `created_by`, `modified_by`) VALUES
(1, 6, 'SuiteCRM demo', 'suitecrm_demo', '2017-02-10 12:51:33', '2017-02-10 12:51:33', '1', '1'),
(2, 3, 'Prestashop demo', 'prestashop_demo', '2017-02-10 13:06:06', '2017-02-10 13:06:06', '1', '1');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Vider la table avant d'insérer `users`
--

TRUNCATE TABLE `users`;
--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'demo', 'demo', 'stephanefaure@myddleware.com', 'stephanefaure@myddleware.com', 1, '8XyLLOg9LSDCkho1t2Jr9.MkdodVaTZOPrBIhHriEQI', 'qYV0APWCf/gsIp5Cimh0vfv+7yryQ5GHn0+rUN9UA1lF1OaXy3QYoYwFJJFKjJX9Ietd6Wljy0lUSz3Dr96iZw==', '2017-09-25 20:35:25', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Connector`
--
ALTER TABLE `Connector`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_967DC7CDCFE66AC9` (`sol_id`);

--
-- Index pour la table `ConnectorParam`
--
ALTER TABLE `ConnectorParam`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Document`
--
ALTER TABLE `Document`
 ADD PRIMARY KEY (`id`), ADD KEY `index_ruleid_status` (`rule_id`,`status`), ADD KEY `index_parent_id` (`parent_id`);

--
-- Index pour la table `DocumentAudit`
--
ALTER TABLE `DocumentAudit`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `DocumentData`
--
ALTER TABLE `DocumentData`
 ADD PRIMARY KEY (`id`), ADD KEY `index_doc_id` (`doc_id`), ADD KEY `index_job_id_type` (`doc_id`,`type`);

--
-- Index pour la table `FuncCat`
--
ALTER TABLE `FuncCat`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Functions`
--
ALTER TABLE `Functions`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_C15DAFAF2265AE41` (`fcat_id`);

--
-- Index pour la table `Job`
--
ALTER TABLE `Job`
 ADD PRIMARY KEY (`id`), ADD KEY `index_status` (`status`);

--
-- Index pour la table `Log`
--
ALTER TABLE `Log`
 ADD PRIMARY KEY (`id`), ADD KEY `index_doc_id` (`doc_id`), ADD KEY `index_job_id` (`job_id`);

--
-- Index pour la table `Rule`
--
ALTER TABLE `Rule`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_E6EA03F21CEEDD83` (`conn_id_source`), ADD KEY `IDX_E6EA03F250B8D0C` (`conn_id_target`), ADD KEY `Krule_name` (`name`);

--
-- Index pour la table `RuleAudit`
--
ALTER TABLE `RuleAudit`
 ADD PRIMARY KEY (`id`), ADD KEY `index_ruleid` (`rule_id`);

--
-- Index pour la table `RuleField`
--
ALTER TABLE `RuleField`
 ADD PRIMARY KEY (`id`), ADD KEY `Krule_id` (`rule_id`);

--
-- Index pour la table `RuleFilter`
--
ALTER TABLE `RuleFilter`
 ADD PRIMARY KEY (`id`), ADD KEY `Krule_id` (`rule_id`);

--
-- Index pour la table `RuleOrder`
--
ALTER TABLE `RuleOrder`
 ADD PRIMARY KEY (`rule_id`);

--
-- Index pour la table `RuleParam`
--
ALTER TABLE `RuleParam`
 ADD PRIMARY KEY (`id`), ADD KEY `Krule_id` (`rule_id`);

--
-- Index pour la table `RuleRelationShip`
--
ALTER TABLE `RuleRelationShip`
 ADD PRIMARY KEY (`id`), ADD KEY `Krule_id` (`rule_id`);

--
-- Index pour la table `Solution`
--
ALTER TABLE `Solution`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_1483A5E992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_1483A5E9A0D96FBF` (`email_canonical`), ADD UNIQUE KEY `UNIQ_1483A5E9C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Connector`
--
ALTER TABLE `Connector`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `ConnectorParam`
--
ALTER TABLE `ConnectorParam`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `DocumentData`
--
ALTER TABLE `DocumentData`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `FuncCat`
--
ALTER TABLE `FuncCat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `Functions`
--
ALTER TABLE `Functions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `Log`
--
ALTER TABLE `Log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `RuleAudit`
--
ALTER TABLE `RuleAudit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `RuleField`
--
ALTER TABLE `RuleField`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT pour la table `RuleFilter`
--
ALTER TABLE `RuleFilter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `RuleParam`
--
ALTER TABLE `RuleParam`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT pour la table `RuleRelationShip`
--
ALTER TABLE `RuleRelationShip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `Solution`
--
ALTER TABLE `Solution`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `Connector`
--
ALTER TABLE `Connector`
ADD CONSTRAINT `FK_967DC7CDCFE66AC9` FOREIGN KEY (`sol_id`) REFERENCES `Solution` (`id`);

--
-- Contraintes pour la table `DocumentData`
--
ALTER TABLE `DocumentData`
ADD CONSTRAINT `FK_8B316CBB895648BC` FOREIGN KEY (`doc_id`) REFERENCES `Document` (`id`);

--
-- Contraintes pour la table `Functions`
--
ALTER TABLE `Functions`
ADD CONSTRAINT `FK_C15DAFAF2265AE41` FOREIGN KEY (`fcat_id`) REFERENCES `FuncCat` (`id`);

--
-- Contraintes pour la table `Rule`
--
ALTER TABLE `Rule`
ADD CONSTRAINT `FK_E6EA03F21CEEDD83` FOREIGN KEY (`conn_id_source`) REFERENCES `Connector` (`id`),
ADD CONSTRAINT `FK_E6EA03F250B8D0C` FOREIGN KEY (`conn_id_target`) REFERENCES `Connector` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
