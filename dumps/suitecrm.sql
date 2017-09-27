-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 10 Février 2017 à 17:31
-- Version du serveur :  5.6.28-0ubuntu0.15.04.1
-- Version de PHP :  5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `livedemo_suitecrm`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts`
--

TRUNCATE TABLE `accounts`;
--
-- Contenu de la table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('d2ae26f6-ce73-751c-8b48-589dd229e63f', 'test', '2017-02-10 14:47:33', '2017-02-10 14:47:33', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'http://', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
CREATE TABLE IF NOT EXISTS `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts_audit`
--

TRUNCATE TABLE `accounts_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
CREATE TABLE IF NOT EXISTS `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts_bugs`
--

TRUNCATE TABLE `accounts_bugs`;
-- --------------------------------------------------------

--
-- Structure de la table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
CREATE TABLE IF NOT EXISTS `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts_cases`
--

TRUNCATE TABLE `accounts_cases`;
-- --------------------------------------------------------

--
-- Structure de la table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
CREATE TABLE IF NOT EXISTS `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts_contacts`
--

TRUNCATE TABLE `accounts_contacts`;
-- --------------------------------------------------------

--
-- Structure de la table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
CREATE TABLE IF NOT EXISTS `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts_cstm`
--

TRUNCATE TABLE `accounts_cstm`;
--
-- Contenu de la table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('d2ae26f6-ce73-751c-8b48-589dd229e63f', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
CREATE TABLE IF NOT EXISTS `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `accounts_opportunities`
--

TRUNCATE TABLE `accounts_opportunities`;
--
-- Contenu de la table `accounts_opportunities`
--

INSERT INTO `accounts_opportunities` (`id`, `opportunity_id`, `account_id`, `date_modified`, `deleted`) VALUES
('9d8c4259-646f-6d39-47b0-589dd22e8640', '9c5a0639-f442-e06d-5ccb-589dd204b2d5', 'd2ae26f6-ce73-751c-8b48-589dd229e63f', '2017-02-10 14:48:08', 1);

-- --------------------------------------------------------

--
-- Structure de la table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
CREATE TABLE IF NOT EXISTS `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `acl_actions`
--

TRUNCATE TABLE `acl_actions`;
--
-- Contenu de la table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('111f14a9-d110-ebea-b2b6-589db26aaf26', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Documents', 'module', 90, 0),
('1225d55f-c0d1-ca07-38e2-589db2ae1983', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('12365c13-ae6f-5fdd-4b30-589db20c910f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('123824b8-0048-3e84-b5f3-589db24536b4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Accounts', 'module', 90, 0),
('12720397-3729-fa32-83d5-589db2f7c7fb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Prospects', 'module', 90, 0),
('12b0046e-c19f-e767-b7f1-589db211ffe2', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('13297b63-4b0e-1d9d-3dee-589db2aa4378', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'FP_events', 'module', 90, 0),
('1369be73-9b69-2b48-8781-589db2d3a483', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Documents', 'module', 90, 0),
('15b5abc6-d194-9147-c7f5-589db28e8e5c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('16454095-40d8-af08-6328-589db2583f20', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('168516d5-9108-9c71-5fe7-589db2b3dff3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'FP_events', 'module', 90, 0),
('16916d86-7e67-8db1-e129-589db2dedd6c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('16a1c2e8-e120-2404-bd3c-589db29ad6a5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Documents', 'module', 90, 0),
('16af9dd3-f5ae-4e0a-35cd-589db214aa0a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('180e79d5-f8df-0b13-543c-589db21ff4c6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('1818b37a-1011-a405-4ee6-589db206dacc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Emails', 'module', 90, 0),
('18860c55-6ea9-8d2d-60f5-589db27daff9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('19080fa5-8abb-2cad-8d72-589db2a27c59', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Cases', 'module', 90, 0),
('1918f255-d0a3-4f5a-02c5-589db2fa3ed6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('19c14afa-5d0a-4fc8-dd44-589db2649380', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('19d0f4ba-ea52-449a-0073-589db2b63349', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('1a8121ee-fea7-78f7-a7dd-589db22a997f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Emails', 'module', 90, 0),
('1aeb3f3c-13d8-1ea6-81eb-589db21cc00a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'EAPM', 'module', 89, 0),
('1b13c3dd-e3aa-c56f-b62d-589db2e9def7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('1bebdf28-bef3-c764-6ce4-589db20bf2c7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('1bf9535b-53f9-6f10-daaf-589db2b935d4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('1c250154-3df1-0110-c694-589db2161598', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('1cc24a5a-c235-3264-6cd1-589db2091435', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Emails', 'module', 90, 0),
('1d093dc8-ea8d-786b-5760-589db2ee2841', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'EAPM', 'module', 90, 0),
('1d36722d-c3bd-d980-5cc4-589db29ae557', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'FP_events', 'module', 90, 0),
('1da10287-c041-d12c-d97b-589db2d563be', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Documents', 'module', 90, 0),
('1da6f717-2264-acbe-ddb3-589db2183b4c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Accounts', 'module', 90, 0),
('1de96d12-9e38-5764-2e9a-589db221b32b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('1e050ca7-0712-0bb2-d788-589db2de88cb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('1f7b8239-997e-b47d-3df4-589db2c04ee4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('1fdb586c-c6de-feb1-33df-589db2f3e349', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'FP_events', 'module', 90, 0),
('20d84cfe-d77e-fe4d-b945-589db2d661d6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('21d3e4c6-3950-fbb4-e0ae-589db2ebd761', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'EAPM', 'module', 90, 0),
('21f1cc67-2f0f-2f0a-6819-589db2df5dc5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('23b26b97-c210-8bd4-0b6f-589db2b97d76', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('23be6cde-8d6b-e36f-35fb-589db22fc5f3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('243e23da-80a0-55a7-407d-589db27b03d7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('24bfa2cb-5f22-5213-96ae-589db2df41a6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Accounts', 'module', 90, 0),
('255e0659-24a7-0bbb-a1e5-589db222562e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('25a14957-dfd0-5858-a3f9-589db2305f8d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('25f7d3b2-5d25-bec9-6466-589db20325bf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('26410df7-191a-4ac4-d35b-589db25c3c66', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('27400e92-bde0-8244-2e95-589db277bae1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('28560e4e-397c-2f48-bd71-589db2bb9e70', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('28729651-9cfa-f9a4-5445-589db2f58aeb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('289fd39f-908a-cb42-0891-589db272be4a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('2ac6d3a6-5d10-5b93-f399-589db22ed2b8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'EAPM', 'module', 90, 0),
('2ad381e1-49a7-502e-32f0-589db238fb3f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('2b389cb2-901a-efc7-30fb-589db2838d13', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Project', 'module', 89, 0),
('2b3de2c0-4852-2395-f26c-589db2169dee', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('2b96172a-e244-ab6b-28fa-589db217d4ed', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('2bb4d9f2-136a-6b9e-3740-589db26af8dd', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('2cafc742-349a-0cab-8748-589db2915507', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'EAPM', 'module', 90, 0),
('2d67a3b1-38a2-bd85-0bfd-589db2e58134', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('2da6ca4b-e4c6-8fa0-94cc-589db2b5a630', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Project', 'module', 90, 0),
('2e2b0a54-ecd3-0232-0b45-589db23b3301', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('2e3f1581-e1cf-912e-a632-589db2da463b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('2e71371b-3a5b-aeea-9959-589db2178cab', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('2ea25725-b41c-c0f4-6c60-589db20f4053', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('2f494644-5639-7a0a-f8fe-589db2892759', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('2f936655-1a9c-a14f-82a5-589db20efc5b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('2fe13a4d-4994-579a-fc7d-589db27d909b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Project', 'module', 90, 0),
('30b52dc8-e851-0687-b5ab-589db23c07cc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('31542c74-67ff-6101-1fa1-589db24cfb84', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('31ac1581-6f9d-5a1a-14eb-589db2c5d353', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('31b78894-a7e0-a362-04b1-589db2c46679', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('321b707c-535f-a4d7-7800-589db2e7f354', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('32ef5edc-6e3b-e207-fb8d-589db2fa71db', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('32f9e165-34d8-80f7-b50c-589db2bf2456', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Project', 'module', 90, 0),
('331e38b5-7b1a-bc22-efae-589db293bd29', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('33a69f3e-1c2c-f34f-8b54-589db25fddd4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Leads', 'module', 89, 0),
('3415e327-14c7-00f4-5ba1-589db200ec25', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('34d3451a-a2b7-fe18-f0b9-589db2858896', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Project', 'module', 90, 0),
('34f5180e-96d3-c844-6f88-589db2a56c30', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('35464b92-b64b-efb3-7515-589db27d3937', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('35553df0-4eee-1e2c-0c96-589db294762b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('35553f59-b60c-a607-5cec-589db20d483a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('360f1fcd-3ea8-3ed7-5a2a-589db29de0e7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('3672ef2a-c735-4d77-79e7-589db27a2ecf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('372f7d55-3beb-f116-a42b-589db2650cfc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('3782f2c9-771d-4bc0-6a52-589db2f52e15', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Project', 'module', 90, 0),
('37d0fd15-30cc-850a-f573-589db268df73', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('384cfeae-3937-c551-1985-589db201b206', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('3914b5f1-920d-a531-fa7e-589db2d32bf2', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('393363b0-a861-38c6-d1f6-589db24eeb53', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('39b4f8c6-fc96-0f64-9982-589db2b4551a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('39db2fff-eae0-71e3-2f77-589db2582639', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('39e7471d-1890-4d5b-17f9-589db24fbbc2', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('3a4bd9b3-5cad-327f-f536-589db210f3c8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Project', 'module', 90, 0),
('3af8fead-1994-47cf-8a0d-589db2afed3b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('3b6e1ecf-9691-17ab-528b-589db25d318b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('3c1b05db-45ac-a108-f898-589db2581a80', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('3c66638d-e469-c88b-cd89-589db2ca35b4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('3d07a43c-567b-7c9f-0c1d-589db23ca316', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('3d10275d-d1a5-66f7-2d7a-589db2289be4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('3d26f934-942a-d2ab-85d3-589db21bd49c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('3e81508f-3ef2-f146-c956-589db2aea24e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('3f400ead-5624-9d15-81fa-589db21023ac', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Cases', 'module', 90, 0),
('3f7607ef-7873-7f71-6660-589db2aabac8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('3fc370cb-d6e2-6b5f-4c2a-589db270c847', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('3fcc25ff-5a9c-4759-844d-589db2e8138e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('400a6c2e-7ca3-25dc-b6d9-589db2f68009', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('40efebc8-8e5e-5b9b-05fe-589db20b3205', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('41c19fc4-2a60-2fd6-5509-589db2e04c72', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('424b96b4-4801-6124-e39a-589db2d6401a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('42db8d7f-6d74-706b-385b-589db2c5ddd7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Leads', 'module', 90, 0),
('436f4bff-c28d-f395-756f-589db250bd09', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('446f589c-49cf-ce2d-6826-589db286347b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('448d24ab-a74c-40e0-22f0-589db2f82f7d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Bugs', 'module', 89, 0),
('450fe7d5-e98d-8651-ed12-589db21e9403', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('45f0b182-dcdc-f403-8074-589db2ff2465', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Leads', 'module', 90, 0),
('462a0cfe-e3a5-601a-d948-589db28232d3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Emails', 'module', 90, 0),
('4770922b-6db3-7f0e-91f4-589db2d9e3f8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Bugs', 'module', 90, 0),
('478a37c4-f459-dc3f-02ad-589db22a3493', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('47f00740-29a0-9556-1534-589db2f93f67', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Emails', 'module', 89, 0),
('483fe0ee-a6ee-96bd-26a9-589db299ec26', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('49060cf7-b438-03a9-ee7d-589db284b57a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('4926403e-c698-b8f0-2156-589db2186c61', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('49327c85-b175-fd28-32e9-589db204b43c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Leads', 'module', 90, 0),
('4936ab04-d24d-ab87-825f-589db26c0adf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Bugs', 'module', 90, 0),
('49de878d-a50b-cbe1-1679-589db26d3b7c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('4b3c7853-dd02-98f6-7cb6-589db2a2d408', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('4b55e724-fed1-9a71-cee9-589db2259b07', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Leads', 'module', 90, 0),
('4bba29dc-9f6b-072b-25d4-589db2906fec', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('4d1e0631-5427-aa5f-9caa-589db21bd264', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('4d892257-b189-e53b-79f1-589db20522c8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Leads', 'module', 90, 0),
('4f66ae44-03eb-ed8c-ec5f-589db21c0506', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Leads', 'module', 90, 0),
('4fdd3cef-95ac-7636-69ea-589db22db2cc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Bugs', 'module', 90, 0),
('5116ad02-e620-926f-cb37-589db2e2cd4a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('520e635a-1e73-e241-4300-589db2815c38', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('52933195-a05c-b183-7141-589db2747110', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Bugs', 'module', 90, 0),
('542dced6-24cd-d64e-13e2-589db241bbf4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('54573544-b5e2-4822-b8c2-589db2eafaea', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('545981f2-9d8a-9305-fb18-589db2ed3688', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('54d744c2-addc-a1da-59dd-589db2ecaa14', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Notes', 'module', 89, 0),
('5756ee02-ceed-59be-0f30-589db2cb1711', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Notes', 'module', 90, 0),
('5791b4bb-b0e7-072c-badd-589db299a2bd', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('58787ff3-db3b-31b2-7b75-589db2b9a5b0', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('595aaa0e-a305-5d51-f94e-589db2cfa5a9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Notes', 'module', 90, 0),
('5b5e02fc-3a9c-d077-2a6d-589db2a90156', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('5b6f7e7d-a1d9-0a31-bd3b-589db21cd539', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Notes', 'module', 90, 0),
('5d82a783-a331-9c60-c694-589db2aacb1a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('5d943b73-2555-968a-e8d3-589db239dcc8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Notes', 'module', 90, 0),
('5d9f9cb7-d814-6412-b086-589db270daf8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('5f46e069-8a9b-de39-f6ae-589db24a139e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('5f8870a6-784c-ce9a-467b-589db2ce9fef', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Notes', 'module', 90, 0),
('5fb50c1e-1fd9-b990-40ba-589db2874ef0', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('61786f86-195d-5a0e-e637-589db2bb3a72', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('619e35e6-6d34-a385-f9b6-589db2f9e66a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Notes', 'module', 90, 0),
('61a15b33-4d7b-9a53-4abf-589db2a98651', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('62cf08a8-2f76-8cfe-c233-589db23689db', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('630384f9-c47c-af10-8635-589db2fca7a7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('634853a1-9889-2cda-01cd-589db248007f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('636208e4-7cbe-bc54-a99b-589db202f855', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('63a205c3-2dab-6c62-a3f1-589db28ef16a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('6479acca-b0bb-c46f-540f-589db298b45e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('64c2e403-1c44-ea28-03e3-589db2e3fa6d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('65d32eaa-f9a8-eb5b-5a1b-589db22da908', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('66f31957-94b1-1413-8ac1-589db20752a7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Spots', 'module', 89, 0),
('6770b65d-81d3-0963-6a50-589db2274139', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('67aa54c2-5cb7-3c61-12cb-589db2c3c251', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('67ca1e78-e389-d8c1-af34-589db272c34b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('691b0e29-32d2-2f9c-3438-589db236793c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('6a20cce5-3dad-f4df-a507-589db230435e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Spots', 'module', 90, 0),
('6b266007-1413-a900-1c50-589db21775fc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('6b91d929-428e-e78d-ca3e-589db25cdebe', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('6bec85dc-9395-cb7e-ddf3-589db206a915', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('6d15d720-920c-3249-94e2-589db2fb4d69', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Spots', 'module', 90, 0),
('6e184cfa-0d23-ecab-82ee-589db2c7744b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('6e326c13-d7b8-f677-8219-589db22b1aa2', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('6eca652b-5e4c-17c7-a4f9-589db20427bc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('6f91d978-505a-d592-3655-589db2076be1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Spots', 'module', 90, 0),
('6ffd5b15-0e7b-dbd7-e9ba-589db2765634', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('70c2a3a5-4e06-5a37-d2f4-589db2e64696', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('70c5f32e-6d8c-8564-bf33-589db2e8e490', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('714a4f07-1563-6150-831e-589db230c42b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('722c301d-e6b9-294a-2690-589db259e48c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('724028ab-e07b-8713-2351-589db2227da9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('72a46051-9320-bbc2-cc08-589db299ab57', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Spots', 'module', 90, 0),
('73760cbd-6d6c-c9b3-7fcf-589db2fb5fc7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('73cce5fa-289e-d96e-4b03-589db281da9d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('741eca6f-13cb-7066-5e23-589db2340cfb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('74522bf9-b660-4e31-433a-589db26bfd93', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Meetings', 'module', 89, 0),
('749f5d38-02d5-b7e7-39c0-589db270c4c3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('758cba7f-1795-ebdb-c4a9-589db20ed8c4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('75b36a4d-84bb-c003-474f-589db210f1b4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('7614017a-b1ad-ecbe-6fda-589db2b52496', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Meetings', 'module', 90, 0),
('7625bf7f-ff09-c962-8435-589db269e9ea', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('762766df-6b4f-23d3-0f11-589db2abb991', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Spots', 'module', 90, 0),
('76924378-3015-59ab-d6c9-589db2adbf03', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('77a90485-995d-f1ab-c623-589db2fa00e5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('77e8c796-970b-9871-30e9-589db237f9d1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Meetings', 'module', 90, 0),
('7816021f-590f-abd2-3ac3-589db2a99778', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('784f02dd-264a-15f4-55b2-589db2f2abd6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Spots', 'module', 90, 0),
('78879ceb-1ce7-9f5a-c90e-589db2bdf6fb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('78c4ebba-b7d9-98db-f0f4-589db2f46719', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('78d8b09c-5575-b7d1-760f-589db2a98c00', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('790830d3-9a21-1978-5ef1-589db2ec1d24', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('79290cb1-d794-93bc-1be0-589db21e57ad', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('79b591b1-b1e8-9dbe-120c-589db26fd994', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('7a591056-669d-3235-0df8-589db29f4086', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('7a91f920-b9be-29a9-9dfd-589db231082f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('7b08d258-a1eb-27ea-0d72-589db2741f50', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('7b2496e1-f973-9a2b-7602-589db275a4a9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('7b438027-054e-4b38-4387-589db2813a31', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('7bae6fdd-6244-6086-27f8-589db2502870', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('7c869ff5-959d-45c6-e822-589db2a4b2dc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('7c8ad740-43cc-0422-081f-589db2807f6b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('7cf4005a-aece-0b5b-d6fe-589db22e2961', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('7d16f51f-0d4f-dfab-9c12-589db237c089', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('7e921b27-a90d-4bd0-ca27-589db27fc451', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('7eb42f07-d60f-aaa9-fe3c-589db25d10c7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('7f44297d-d09b-0e94-dd74-589db2adab72', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Meetings', 'module', 90, 0),
('7f720a9c-cb91-0848-5b1f-589db2b9c5d8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('7f90c365-2106-15f9-32ea-589db29841f0', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('80fb6e54-1977-b2e8-f4f4-589db275cf52', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Meetings', 'module', 90, 0),
('819bb8b9-4f0c-2bd7-86eb-589db2d0e08e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('82a3af67-ef43-2017-0bef-589db2f4e2c3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('842799c7-aca4-2743-5b75-589db25c7449', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('851beae6-4722-d094-0a66-589db26ea9b4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('856ef49f-b01b-8d17-7a48-589db28bdd1a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('86731ef2-bd58-8ff9-9fbc-589db2e79fe3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('876c2545-f686-22ed-3e56-589db2feea0f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('880cd96c-ac9d-fa3c-6710-589db2eb55dc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('88fc0306-4df1-9306-06d6-589db2f39392', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('89bbba95-bb7f-3970-f67f-589db2a7553e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('89d08167-fe1b-95c9-c408-589db24bc116', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('8a197235-adc4-a97a-454d-589db2b828c5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('8b65974b-ff91-6763-6bf4-589db2d31b09', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('8c64696f-bea6-21a9-3504-589db26dc411', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('8c9cba1a-a141-b282-a465-589db259ecfa', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('8d1943bc-7a8b-93cb-cc7d-589db288ba4f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('8d7ff3d0-cf08-bfd1-e595-589db23c5187', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('8d800cc0-15aa-ab1a-3094-589db204117e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('8eb700dd-1112-0ff9-fd38-589db2a3f073', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('8ff2986e-610a-c39d-efa2-589db266aa46', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('91cfbd17-b3dd-fcad-5500-589db2f9337a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('9266501b-a2c9-654c-26d4-589db2d57830', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('92906355-c9b1-b01b-decc-589db291f65d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('92b8ebbd-0e78-202d-0edc-589db29e6474', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('92f265e9-14b9-e145-fb26-589db2e5cfc3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Alerts', 'module', 89, 0),
('92fa8915-acb6-6c1e-0d4d-589db2927b98', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Cases', 'module', 89, 0),
('93cc1601-3387-d2fc-0339-589db292de37', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('93f53716-d3e9-a7ce-a316-589db2b2c352', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Users', 'module', 89, 0),
('95256e47-d716-23f4-ef13-589db2924474', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('95382a60-127f-75d5-e604-589db288ce03', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('962f9689-f136-a878-76dc-589db2bf6e1f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Users', 'module', 90, 0),
('96714d45-bab2-22bf-f1b1-589db228f273', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('97038b5d-f766-9c72-05a4-589db20f2f73', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('972b3472-5342-9151-6a33-589db2447b0e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('9795dc04-877f-4f97-2688-589db2afcf8e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Alerts', 'module', 90, 0),
('984942f3-aeff-38c6-80fa-589db243270b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Users', 'module', 90, 0),
('986f434e-ce75-3dfd-f098-589db2970f98', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('989b03ce-c2cf-6f3b-b5ec-589db2145fb0', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('98ef947d-6278-db0a-825f-589db28a0d53', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Calls', 'module', 89, 0),
('98f2ef45-79fb-4d32-1f0a-589db27ad051', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('9909e40b-82f7-3709-75c6-589db20553f9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Cases', 'module', 90, 0),
('99a1e614-0665-f329-e622-589db21c8484', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('99f1bc1a-e801-ab0d-d1c0-589db2b06ddc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Alerts', 'module', 90, 0),
('9ab34c8e-a10a-a8ee-f36f-589db22d7311', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Users', 'module', 90, 0),
('9ad8099f-046f-b325-2015-589db21b1c88', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Emails', 'module', 90, 0),
('9ae1029d-fc6a-1879-fcbf-589db2066cd3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('9b201a65-32b4-6583-be72-589db21bf8cd', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Calls', 'module', 90, 0),
('9b284a25-2330-9f16-8cb5-589db2589feb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('9c160d73-f380-eec8-2de4-589db2ab8ff0', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Documents', 'module', 90, 0),
('9cd1a7f6-b9c9-bd6d-5f4e-589db2063368', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Users', 'module', 90, 0),
('9d09c168-ee86-9a58-acfb-589db2da5e4a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Calls', 'module', 90, 0),
('9d46fd68-1512-3adc-07fc-589db2d6b819', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('9ead43a4-6860-4308-8b05-589db2d23748', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Calls', 'module', 90, 0),
('9eb7cf2f-2a62-b467-411a-589db27edcf1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('9f00f73a-0c67-21f3-f7d9-589db22b9eaa', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('9f2841fe-ba0b-afa9-26b8-589db26d0cde', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Users', 'module', 90, 0),
('a0496d33-7996-4f32-4fd2-589db2142576', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Calls', 'module', 90, 0),
('a0d586e2-496e-4be7-eb95-589db21d542d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Users', 'module', 90, 0),
('a0fab1ad-381f-62e6-e2ac-589db2194c9e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('a22862b7-328e-d78b-135f-589db296903f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('a3356255-db26-5932-d81b-589db290b5c2', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Calls', 'module', 90, 0),
('a4121e59-9f16-aaf1-d39e-589db2d90ee9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('a556d07a-18cf-c3e6-d6b4-589db20bfc7a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Calls', 'module', 90, 0),
('a56071d5-a20d-f919-1b06-589db2865264', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('a6a296b9-57f9-726a-4c01-589db24cd730', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('a6b45410-2891-66a7-e6d8-589db2160114', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('a7366a83-3e40-2893-ad04-589db2a05b48', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('a8917540-6c76-f026-406c-589db2d07eb6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('a946c212-c83b-8a0f-3099-589db22cfc39', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('a981af2c-6aa5-2a08-d4d0-589db255082f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('abbd66d6-722d-9ec5-7c1b-589db25e1e47', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('acb6fcd0-69e6-d4ae-7b0f-589db26859af', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('acbece5e-673e-4142-85e0-589db2bad14c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('ad146df6-a54b-82a0-dd86-589db29abe1a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Tasks', 'module', 89, 0),
('ad2e56ef-d901-fc51-9d98-589db2e2710c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('ad450883-6a28-e263-af19-589db2936eb5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('adfaf9a4-c90b-9c26-e218-589db2770552', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('aea3c967-41d8-83b5-5517-589db2b763eb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('aee427d8-f897-5360-896a-589db219c593', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Alerts', 'module', 90, 0),
('af6ab0e2-5b0a-0c77-1950-589db25b02f7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Tasks', 'module', 90, 0),
('afcfea40-9384-fece-fb26-589db2ab1c63', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('afd8f580-f31f-d04a-409f-589db26a87c6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('b0268736-7305-1205-107a-589db2a58525', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('b089d72b-974b-d205-6307-589db2e54b14', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('b111a3fb-22d8-382d-fbbe-589db2899ecf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Alerts', 'module', 90, 0),
('b11a9bbe-280b-c894-87d0-589db2a30943', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Tasks', 'module', 90, 0),
('b1e3582c-082f-408d-b373-589db281a6fd', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('b2123781-c134-2d62-49a4-589db283f41a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('b238760c-58f9-0a33-00c8-589db2329f2c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('b2b0f661-ec6f-4b37-1cda-589db2841fc2', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('b2f46425-6a00-172b-3797-589db2b369f6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('b37d1999-d701-029b-d076-589db2c4c6ea', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('b37e616a-a7eb-de6c-8090-589db2e9674c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('b38e5ae4-d817-a810-5299-589db24893d8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('b41ea33a-956a-0608-d69f-589db2d6f7ed', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('b46fae4e-607e-8474-c310-589db241ed68', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('b4d9a884-d594-f825-5870-589db23b6c96', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('b5e4da3d-fb3c-f177-da59-589db2090c93', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('b6179b46-5db6-4b24-fefb-589db27d071c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('b63f57c7-5f7b-83c3-82de-589db2071356', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('b6833974-b539-f669-5a13-589db21a2f3a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('b73cc2f7-b418-6505-ef95-589db2ac34d1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('b780efb9-209f-0d1e-b595-589db2ba264a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('b8b4ce05-e217-28d1-0f6d-589db2099264', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('b8d92781-2502-dcf4-2eaa-589db224a209', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('b8f3747e-b44c-c5be-e203-589db2c5a193', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Tasks', 'module', 90, 0),
('ba551d03-3d2c-b189-04a7-589db201523c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('ba57ea51-74bf-b807-735b-589db2f1e8cc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('ba63f157-e7ca-54b8-32de-589db28c53d6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('ba7e1997-3775-158a-731a-589db2706dff', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('bafb7dab-13bd-1922-8ba9-589db2b6ff05', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('bb86681e-acda-34c7-151c-589db22808da', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('bbcb08c0-bc92-33f1-a5a2-589db2aa492f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Accounts', 'module', 89, 0),
('bc7fd925-2197-162d-25cc-589db2f518a9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('bd9955f5-de0d-0df5-26c3-589db2fb303b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('be466692-e30d-d1a0-dc2c-589db2488cf1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Tasks', 'module', 90, 0),
('be4e9dd7-41dd-7b57-ca0b-589db2bc66e8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('be8c5827-41a3-0994-b70b-589db287d6c6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('bea92738-07e9-ea6a-883a-589db274c9c3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('c0957c2a-f80a-1ab9-65d9-589db23f3868', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('c236d558-32ad-644e-e687-589db21bd8fb', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('c270491c-41cb-fa6d-cc85-589db23dae82', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('c2dd9c4a-0b48-0a9e-40fa-589db24e411c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('c44425d5-6770-faaf-88ad-589db21f69cf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('c593f351-5ca4-e9da-db02-589db29f6080', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('c5b7235d-3a87-4f6e-e901-589db2ac362f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('c5d1a15b-01f8-760e-9387-589db2752b52', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('c677f40a-f3be-f187-0b91-589db2a96931', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Contacts', 'module', 89, 0),
('c7991e30-b0d0-a3c7-4559-589db2c82c72', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('c8831f20-9707-3b46-f35b-589db279d36d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Contacts', 'module', 90, 0),
('c8fca755-3890-ed89-9bce-589db271fd36', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('cae645de-399d-9355-c1b7-589db2d2aa1b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Contacts', 'module', 90, 0),
('cc852fdc-5112-6b4e-7a87-589db267f712', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('ce1fa9b6-a7ef-bf22-e610-589db27f63fe', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('d19c4f38-9aa2-43ef-b4fa-589db2810da5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Contacts', 'module', 90, 0),
('d1b3081c-9346-cf6d-f834-589db2144bb3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('d3a447f1-d39f-2200-b2f5-589db2aab904', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('d476e088-fc22-13c3-0d88-589db2fd2e27', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'Contacts', 'module', 90, 0),
('d4c81483-c2dc-9a99-659a-589db2ce6884', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('d58662f4-3c0e-c771-3dc6-589db274b946', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('d71625b9-dded-8d5e-ae20-589db272f0db', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'Contacts', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('d7b21b06-2320-fe41-8463-589db25de6f1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('d7ce25aa-ee5f-1c36-1d96-589db2f24cac', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('d8d20af0-eb99-4191-7309-589db2aed17f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Emails', 'module', 90, 0),
('d9961d64-a5b4-8779-59a1-589db2002c8e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('d9cb0478-76b9-b9b4-fb41-589db2f6cd46', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('da5d0765-f2fa-759a-9135-589db26a9ad1', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('dc5c03be-4344-37a4-de11-589db2c8e672', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('dd4bf9bc-f246-7abe-ea07-589db298caa9', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('de9aca2a-86de-729c-13e3-589db23919bf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('e095c8bf-97fb-3708-5fee-589db20a2194', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e14b485d-845d-54ff-6387-589db2854f09', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('e1500906-e671-f012-f334-589db2553b0c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('e44e21e2-33db-15f7-c1c0-589db2ebfa5f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('e50777b1-f684-2fad-df1f-589db2b51231', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('e66a3ffd-11cc-a0d2-d4af-589db2e6aecf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('e66f0066-28d2-4655-aac6-589db2a6a1c4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('e69c52ca-979a-fde8-c03e-589db2df3282', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('e788037f-753d-369c-d457-589db2ddafd5', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('e7e2a4b1-3ea3-9fc6-aa59-589db243599d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Prospects', 'module', 89, 0),
('e84216ff-5a65-f3e0-7b01-589db299c546', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('e8892fd1-275c-f699-7a07-589db282e5a7', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('ea32e8de-de0f-760d-c1ef-589db2b045dc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Prospects', 'module', 90, 0),
('eb01098c-0ec4-cf91-b1cd-589db2260246', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Accounts', 'module', 90, 0),
('eb2eb685-ada1-96de-ff83-589db26fd85c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('eb620a44-ac33-efa7-2cc8-589db2e6482d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('eb68bd14-cefa-8636-fba5-589db230223d', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('ebe6e2f9-1911-c16a-c867-589db2001b63', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Prospects', 'module', 90, 0),
('edff8398-8461-8dd3-4de7-589db28a5161', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('ee93f18d-3102-54e1-fd5c-589db2caa5a6', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'list', 'Cases', 'module', 90, 0),
('eeb3f094-9245-9259-b6f3-589db2b92d02', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('efa3bc8e-9749-1e51-8377-589db2a51be3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'Documents', 'module', 89, 0),
('efb803aa-64eb-e158-3357-589db2cabc6e', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('f0a4212b-9f8f-2260-f827-589db2983532', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('f0d7f4d8-1b44-5785-3461-589db24f4efd', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'edit', 'Cases', 'module', 90, 0),
('f0e23d14-f344-29e2-d1c5-589db2c27304', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('f1721644-2b46-848b-bf9c-589db230c475', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('f1b9da3a-065e-1edd-9811-589db274ec01', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('f1f389d2-3150-ec69-ba1b-589db21ebac3', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('f28bb4e3-b15f-1508-ca94-589db2c15c6c', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'import', 'Prospects', 'module', 90, 0),
('f2bb2ea7-f578-7b6f-8fe0-589db2d6aae0', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'view', 'Documents', 'module', 90, 0),
('f2bbf328-1efb-08d4-9416-589db201b849', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('f2c0cc81-52e0-6ea8-16c9-589db2631e8b', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('f37c0c80-eaf7-950d-c034-589db25d70a4', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'access', 'FP_events', 'module', 89, 0),
('f3980cd4-0bbb-ea6c-1f24-589db2b4094f', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'delete', 'Cases', 'module', 90, 0),
('f3f9ce22-283b-7b53-4ab8-589db25bcbae', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('f41001ef-613b-6235-5b7b-589db237562a', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Structure de la table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
CREATE TABLE IF NOT EXISTS `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `acl_roles`
--

TRUNCATE TABLE `acl_roles`;
-- --------------------------------------------------------

--
-- Structure de la table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
CREATE TABLE IF NOT EXISTS `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `acl_roles_actions`
--

TRUNCATE TABLE `acl_roles_actions`;
-- --------------------------------------------------------

--
-- Structure de la table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
CREATE TABLE IF NOT EXISTS `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `acl_roles_users`
--

TRUNCATE TABLE `acl_roles_users`;
-- --------------------------------------------------------

--
-- Structure de la table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
CREATE TABLE IF NOT EXISTS `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `address_book`
--

TRUNCATE TABLE `address_book`;
-- --------------------------------------------------------

--
-- Structure de la table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
CREATE TABLE IF NOT EXISTS `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `alerts`
--

TRUNCATE TABLE `alerts`;
-- --------------------------------------------------------

--
-- Structure de la table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
CREATE TABLE IF NOT EXISTS `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_projecttemplates`
--

TRUNCATE TABLE `am_projecttemplates`;
-- --------------------------------------------------------

--
-- Structure de la table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
CREATE TABLE IF NOT EXISTS `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_projecttemplates_audit`
--

TRUNCATE TABLE `am_projecttemplates_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
CREATE TABLE IF NOT EXISTS `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_projecttemplates_contacts_1_c`
--

TRUNCATE TABLE `am_projecttemplates_contacts_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
CREATE TABLE IF NOT EXISTS `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_projecttemplates_project_1_c`
--

TRUNCATE TABLE `am_projecttemplates_project_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
CREATE TABLE IF NOT EXISTS `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_projecttemplates_users_1_c`
--

TRUNCATE TABLE `am_projecttemplates_users_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
CREATE TABLE IF NOT EXISTS `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_tasktemplates`
--

TRUNCATE TABLE `am_tasktemplates`;
-- --------------------------------------------------------

--
-- Structure de la table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
CREATE TABLE IF NOT EXISTS `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_tasktemplates_am_projecttemplates_c`
--

TRUNCATE TABLE `am_tasktemplates_am_projecttemplates_c`;
-- --------------------------------------------------------

--
-- Structure de la table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
CREATE TABLE IF NOT EXISTS `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `am_tasktemplates_audit`
--

TRUNCATE TABLE `am_tasktemplates_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
CREATE TABLE IF NOT EXISTS `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aobh_businesshours`
--

TRUNCATE TABLE `aobh_businesshours`;
-- --------------------------------------------------------

--
-- Structure de la table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
CREATE TABLE IF NOT EXISTS `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aod_index`
--

TRUNCATE TABLE `aod_index`;
--
-- Contenu de la table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Structure de la table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
CREATE TABLE IF NOT EXISTS `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aod_indexevent`
--

TRUNCATE TABLE `aod_indexevent`;
--
-- Contenu de la table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('1c34993e-1798-4d4c-d4dd-589dc76caf46', 'Summer Dresses', '2017-02-10 14:01:55', '2017-02-10 14:20:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '11889645-dbcc-d8f8-f34e-589dc78d2227', 'AOS_Product_Categories'),
('1f64d1a9-39f9-bcbd-1722-589dc8a67cd8', '', '2017-02-10 14:05:08', '2017-02-10 14:05:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '15a3d9b6-ee43-1e22-b6d4-589dc884097e', 'AOS_Product_Categories'),
('2a2348ed-c4dc-994f-19a1-589dc79c041b', 'Home', '2017-02-10 14:01:54', '2017-02-10 14:22:43', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '212192d0-34b0-b4d7-daad-589dc7930e82', 'AOS_Product_Categories'),
('472d3abc-0f7c-8479-2604-589dc8ac53dd', '', '2017-02-10 14:05:07', '2017-02-10 14:05:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '3b6215aa-5f95-e5e3-fd56-589dc89502fb', 'AOS_Product_Categories'),
('48501ef3-2925-f5e4-389a-589dc7fd1bcf', 'Women', '2017-02-10 14:01:54', '2017-02-10 14:22:43', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '3929eb94-2b11-f399-2f31-589dc71adea6', 'AOS_Product_Categories'),
('4b7eb5f2-4a5d-e699-ea93-589dc32568ab', 'John DOE', '2017-02-10 13:45:16', '2017-02-10 13:56:38', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '11b19f34-ce97-1764-e997-589dc3844c0d', 'Contacts'),
('657a09af-4d14-8628-82a4-589dc899a537', '', '2017-02-10 14:05:07', '2017-02-10 14:05:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '5939c294-eeda-274c-106a-589dc8e18e0d', 'AOS_Product_Categories'),
('6adf7954-b218-d63c-62cb-589dc7bb8dcf', 'T-shirts', '2017-02-10 14:01:54', '2017-02-10 14:23:21', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '5f0fc259-5dd9-c2ab-531e-589dc72014e4', 'AOS_Product_Categories'),
('84d10eac-5c2b-451c-6b5c-589dc8dbb57e', '', '2017-02-10 14:05:07', '2017-02-10 14:05:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '73430908-761b-ccf3-ade2-589dc8bb43d8', 'AOS_Product_Categories'),
('864bb4ea-0a32-752d-2d56-589dc7a8426f', 'Tops', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '7b4ee87b-39ed-1407-8a45-589dc7f4333a', 'AOS_Product_Categories'),
('9f7ca11f-4b60-331b-3e51-589dc729f729', 'Blouses', '2017-02-10 14:01:54', '2017-02-10 14:23:20', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '95424c25-e4e7-5f6d-0587-589dc7bd1957', 'AOS_Product_Categories'),
('a8461cfd-0340-9ad4-e66a-589dc8c6da67', '', '2017-02-10 14:05:09', '2017-02-10 14:05:09', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '2d7227b1-352a-c803-4e20-589dc87b9587', 'AOS_Product_Categories'),
('aede86d2-0915-4165-43dd-589dc8620a41', '', '2017-02-10 14:05:07', '2017-02-10 14:05:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '99d88095-d046-d33b-305c-589dc803d73b', 'AOS_Product_Categories'),
('ba27c0b3-a710-c7e0-b8ab-589dc75b159d', 'Dresses', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3', 'AOS_Product_Categories'),
('c8a5089c-42cf-7386-0790-589dc7f4188e', 'Root', '2017-02-10 14:01:54', '2017-02-10 14:22:43', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, '14b40989-f78f-f557-bef3-589dc73faca6', 'AOS_Product_Categories'),
('d24f171e-bba3-178a-d760-589dc8b2f6aa', '', '2017-02-10 14:05:07', '2017-02-10 14:05:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, 'be658c37-6e9f-6cf2-1f76-589dc8611eb7', 'AOS_Product_Categories'),
('d86024b2-f580-def2-fa2e-589dc702b792', 'Casual Dresses', '2017-02-10 14:01:54', '2017-02-10 14:22:44', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, 'cc40d083-90e8-9703-e66f-589dc79088b3', 'AOS_Product_Categories'),
('e3a5a28e-821a-7364-530b-589dd2985e78', 'test', '2017-02-10 14:47:54', '2017-02-10 14:47:54', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, '9c5a0639-f442-e06d-5ccb-589dd204b2d5', 'Opportunities'),
('ed020af4-4911-a957-4b12-589dd249c19b', 'test', '2017-02-10 14:47:33', '2017-02-10 14:47:33', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, 'd2ae26f6-ce73-751c-8b48-589dd229e63f', 'Accounts'),
('f1f72f3d-13cd-ebfa-4423-589dc7dd8096', 'Evening Dresses', '2017-02-10 14:01:54', '2017-02-10 14:20:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', NULL, 1, 'eafd717c-59a3-e7f4-5e26-589dc7e23e54', 'AOS_Product_Categories'),
('f3370acb-b25a-a53d-30a8-589dc800d7d5', '', '2017-02-10 14:05:07', '2017-02-10 14:05:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, NULL, NULL, 1, 'e66a2510-1295-d99a-6d5e-589dc8fd2f08', 'AOS_Product_Categories');

-- --------------------------------------------------------

--
-- Structure de la table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
CREATE TABLE IF NOT EXISTS `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aod_indexevent_audit`
--

TRUNCATE TABLE `aod_indexevent_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
CREATE TABLE IF NOT EXISTS `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aod_index_audit`
--

TRUNCATE TABLE `aod_index_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
CREATE TABLE IF NOT EXISTS `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aok_knowledgebase`
--

TRUNCATE TABLE `aok_knowledgebase`;
-- --------------------------------------------------------

--
-- Structure de la table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
CREATE TABLE IF NOT EXISTS `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aok_knowledgebase_audit`
--

TRUNCATE TABLE `aok_knowledgebase_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
CREATE TABLE IF NOT EXISTS `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aok_knowledgebase_categories`
--

TRUNCATE TABLE `aok_knowledgebase_categories`;
-- --------------------------------------------------------

--
-- Structure de la table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
CREATE TABLE IF NOT EXISTS `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aok_knowledge_base_categories`
--

TRUNCATE TABLE `aok_knowledge_base_categories`;
-- --------------------------------------------------------

--
-- Structure de la table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
CREATE TABLE IF NOT EXISTS `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aok_knowledge_base_categories_audit`
--

TRUNCATE TABLE `aok_knowledge_base_categories_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
CREATE TABLE IF NOT EXISTS `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aop_case_events`
--

TRUNCATE TABLE `aop_case_events`;
-- --------------------------------------------------------

--
-- Structure de la table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
CREATE TABLE IF NOT EXISTS `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aop_case_events_audit`
--

TRUNCATE TABLE `aop_case_events_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
CREATE TABLE IF NOT EXISTS `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aop_case_updates`
--

TRUNCATE TABLE `aop_case_updates`;
-- --------------------------------------------------------

--
-- Structure de la table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
CREATE TABLE IF NOT EXISTS `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aop_case_updates_audit`
--

TRUNCATE TABLE `aop_case_updates_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
CREATE TABLE IF NOT EXISTS `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aor_charts`
--

TRUNCATE TABLE `aor_charts`;
-- --------------------------------------------------------

--
-- Structure de la table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
CREATE TABLE IF NOT EXISTS `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aor_conditions`
--

TRUNCATE TABLE `aor_conditions`;
-- --------------------------------------------------------

--
-- Structure de la table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
CREATE TABLE IF NOT EXISTS `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aor_fields`
--

TRUNCATE TABLE `aor_fields`;
-- --------------------------------------------------------

--
-- Structure de la table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
CREATE TABLE IF NOT EXISTS `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aor_reports`
--

TRUNCATE TABLE `aor_reports`;
-- --------------------------------------------------------

--
-- Structure de la table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
CREATE TABLE IF NOT EXISTS `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aor_reports_audit`
--

TRUNCATE TABLE `aor_reports_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
CREATE TABLE IF NOT EXISTS `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aor_scheduled_reports`
--

TRUNCATE TABLE `aor_scheduled_reports`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
CREATE TABLE IF NOT EXISTS `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_contracts`
--

TRUNCATE TABLE `aos_contracts`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
CREATE TABLE IF NOT EXISTS `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_contracts_audit`
--

TRUNCATE TABLE `aos_contracts_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
CREATE TABLE IF NOT EXISTS `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_contracts_documents`
--

TRUNCATE TABLE `aos_contracts_documents`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
CREATE TABLE IF NOT EXISTS `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_invoices`
--

TRUNCATE TABLE `aos_invoices`;
--
-- Contenu de la table `aos_invoices`
--

INSERT INTO `aos_invoices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `number`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `quote_number`, `quote_date`, `invoice_date`, `due_date`, `status`, `template_ddown_c`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('7db993ec-0828-1c33-b960-589dd2f41291', 'test', '2017-02-10 14:49:30', '2017-02-10 14:55:19', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 16.510000, 0.000000, 16.510000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 16.510000, 0.000000, '-99', 1, '2017-02-10', '2017-02-10', NULL, 'Paid', ' ', 0.000000, 0.000000);

-- --------------------------------------------------------

--
-- Structure de la table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
CREATE TABLE IF NOT EXISTS `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_invoices_audit`
--

TRUNCATE TABLE `aos_invoices_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
CREATE TABLE IF NOT EXISTS `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_line_item_groups`
--

TRUNCATE TABLE `aos_line_item_groups`;
--
-- Contenu de la table `aos_line_item_groups`
--

INSERT INTO `aos_line_item_groups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `total_amt`, `total_amt_usdollar`, `discount_amount`, `discount_amount_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`, `total_amount`, `total_amount_usdollar`, `parent_type`, `parent_id`, `number`, `currency_id`) VALUES
('6f9f5209-e238-b263-10f7-589dd2a03c4f', NULL, '2017-02-10 14:48:55', '2017-02-10 14:55:19', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, 0.000000, 0.000000, NULL, 0.000000, 16.510000, 0.000000, 'AOS_Invoices', '', 1, '-99'),
('85c03b02-619d-55eb-ea3e-589dd288a44a', NULL, '2017-02-10 14:48:55', '2017-02-10 14:55:19', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, 'AOS_Invoices', '', 1, '-99'),
('a5a9da98-0807-3285-feb9-589df0a74d1a', NULL, '2017-02-10 16:55:44', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0, '', 69.510000, 0.000000, 0.000000, 0.000000, 69.510000, 0.000000, 0.000000, 0.000000, NULL, 0.000000, 69.510000, 0.000000, 'AOS_Quotes', '', 1, '-99');

-- --------------------------------------------------------

--
-- Structure de la table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
CREATE TABLE IF NOT EXISTS `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_line_item_groups_audit`
--

TRUNCATE TABLE `aos_line_item_groups_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
CREATE TABLE IF NOT EXISTS `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_pdf_templates`
--

TRUNCATE TABLE `aos_pdf_templates`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
CREATE TABLE IF NOT EXISTS `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_pdf_templates_audit`
--

TRUNCATE TABLE `aos_pdf_templates_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
CREATE TABLE IF NOT EXISTS `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_products`
--

TRUNCATE TABLE `aos_products`;
--
-- Contenu de la table `aos_products`
--

INSERT INTO `aos_products` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `maincode`, `part_number`, `category`, `type`, `cost`, `cost_usdollar`, `currency_id`, `price`, `price_usdollar`, `url`, `contact_id`, `product_image`, `aos_product_category_id`) VALUES
('1a991ff8-211c-30c7-f539-589dd024e734', 'Faded Short Sleeves T-shirt', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 16.510000, 0.000000, NULL, NULL, NULL, '5f0fc259-5dd9-c2ab-531e-589dc72014e4'),
('33ebedb4-f92e-0221-6f14-589dd04b6a7c', 'Blouse', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 26.990000, 0.000000, NULL, NULL, NULL, '95424c25-e4e7-5f6d-0587-589dc7bd1957'),
('4e1b467c-6729-1aef-c830-589dd0dc1850', 'Printed Dress', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 25.990000, 0.000000, NULL, NULL, NULL, 'cc40d083-90e8-9703-e66f-589dc79088b3'),
('832c5f68-266d-c6a8-8dc5-589dce5b838a', 'Printed Chiffon Dress', '2017-02-10 14:29:57', '2017-02-10 14:35:03', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 20.501236, 0.000000, NULL, NULL, NULL, '11889645-dbcc-d8f8-f34e-589dc78d2227'),
('8b4c5103-4fb0-b1d5-e4f6-589dd029a85f', 'Printed Dress', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 50.990000, 0.000000, NULL, NULL, NULL, 'eafd717c-59a3-e7f4-5e26-589dc7e23e54'),
('94820a91-3e8e-14df-d7af-589dcea067d1', 'Faded Short Sleeves T-shirt', '2017-02-10 14:29:57', '2017-02-10 14:35:03', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 16.510000, 0.000000, NULL, NULL, NULL, '5f0fc259-5dd9-c2ab-531e-589dc72014e4'),
('9dad6a0d-eed8-658d-5acb-589dd05a67e3', 'Printed Summer Dress', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 30.500000, 0.000000, NULL, NULL, NULL, '11889645-dbcc-d8f8-f34e-589dc78d2227'),
('a5f6bfe9-76ee-4238-7962-589dcef9012c', 'Blouse', '2017-02-10 14:29:57', '2017-02-10 14:35:03', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 26.990000, 0.000000, NULL, NULL, NULL, '95424c25-e4e7-5f6d-0587-589dc7bd1957'),
('ab900f27-2284-6a93-8324-589dd0e76a05', 'Printed Summer Dress', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 30.500000, 0.000000, NULL, NULL, NULL, '11889645-dbcc-d8f8-f34e-589dc78d2227'),
('bac21d0c-b287-a1e9-d719-589dcedac55e', 'Printed Dress', '2017-02-10 14:29:57', '2017-02-10 14:35:03', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, '', 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, '', 25.990000, 0.000000, NULL, '', NULL, 'cc40d083-90e8-9703-e66f-589dc79088b3'),
('c0be1d26-9a3b-7f31-f13d-589dd07b44dc', 'Printed Chiffon Dress', '2017-02-10 14:38:49', '2017-02-10 17:11:04', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, NULL, 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, NULL, 20.501236, 0.000000, NULL, NULL, NULL, '11889645-dbcc-d8f8-f34e-589dc78d2227'),
('d1cf0347-3e11-87f4-5f9f-589dceaf2398', 'Printed Summer Dress', '2017-02-10 14:29:57', '2017-02-10 14:35:03', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, '', 'XXXX', NULL, 'Opportunities', 'Good', NULL, 0.000000, '', 30.500000, 0.000000, NULL, '', NULL, '11889645-dbcc-d8f8-f34e-589dc78d2227');

-- --------------------------------------------------------

--
-- Structure de la table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
CREATE TABLE IF NOT EXISTS `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_products_audit`
--

TRUNCATE TABLE `aos_products_audit`;
--
-- Contenu de la table `aos_products_audit`
--

INSERT INTO `aos_products_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('232191fc-ae72-4956-f0a9-589dce231f82', 'bac21d0c-b287-a1e9-d719-589dcedac55e', '2017-02-10 14:32:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'price', 'currency', '50.990000', '25.99', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
CREATE TABLE IF NOT EXISTS `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_products_quotes`
--

TRUNCATE TABLE `aos_products_quotes`;
--
-- Contenu de la table `aos_products_quotes`
--

INSERT INTO `aos_products_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `currency_id`, `part_number`, `item_description`, `number`, `product_qty`, `product_cost_price`, `product_cost_price_usdollar`, `product_list_price`, `product_list_price_usdollar`, `product_discount`, `product_discount_usdollar`, `product_discount_amount`, `product_discount_amount_usdollar`, `discount`, `product_unit_price`, `product_unit_price_usdollar`, `vat_amt`, `vat_amt_usdollar`, `product_total_price`, `product_total_price_usdollar`, `vat`, `parent_type`, `parent_id`, `product_id`, `group_id`) VALUES
('190b0ce7-ca3f-0724-ddd6-589de2610b81', 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', '2017-02-10 15:57:07', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 16.510000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, '0.0', 'AOS_Quotes', 'c319be09-e942-d28c-8528-589ddbbc3bda', '1a991ff8-211c-30c7-f539-589dd024e734', ''),
('25f102fd-b754-c17f-8b4d-589de29ce0a1', 'Printed Summer Dress - Color : Yellow, Size : M', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 30.502569, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 30.500000, 0.000000, 0.000000, 0.000000, 30.500000, 0.000000, '0.0', 'AOS_Quotes', '94773fbf-510f-8ec1-aec3-589ddbf56c02', 'ab900f27-2284-6a93-8324-589dd0e76a05', ''),
('2a98a978-4cf0-caf7-e8a6-589de21eb0c7', 'Printed Dress - Color : Orange, Size : S', '2017-02-10 15:57:07', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 25.999852, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 26.000000, 0.000000, 0.000000, 0.000000, 26.000000, 0.000000, '0.0', 'AOS_Quotes', 'c319be09-e942-d28c-8528-589ddbbc3bda', '4e1b467c-6729-1aef-c830-589dd0dc1850', ''),
('484dfb7f-cb05-ca47-2ecf-589de281e89a', 'Printed Summer Dress - Color : Yellow, Size : S', '2017-02-10 15:57:07', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 30.506321, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 28.980000, 0.000000, 0.000000, 0.000000, 28.980000, 0.000000, '0.0', 'AOS_Quotes', 'c319be09-e942-d28c-8528-589ddbbc3bda', '9dad6a0d-eed8-658d-5acb-589dd05a67e3', ''),
('59244f37-8c49-9741-fd9e-589de28421e6', 'Printed Chiffon Dress - Color : Yellow, Size : S', '2017-02-10 15:57:07', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 20.501236, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 16.400000, 0.000000, 0.000000, 0.000000, 16.400000, 0.000000, '0.0', 'AOS_Quotes', 'c319be09-e942-d28c-8528-589ddbbc3bda', 'c0be1d26-9a3b-7f31-f13d-589dd07b44dc', ''),
('67ffa79c-71e3-4f35-962d-589de29d028a', 'Blouse - Color : White, Size : M', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 26.999852, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 27.000000, 0.000000, 0.000000, 0.000000, 27.000000, 0.000000, '0.0', 'AOS_Quotes', '72be7739-7f69-7352-86b9-589ddb81c3e4', '33ebedb4-f92e-0221-6f14-589dd04b6a7c', ''),
('7653bbc7-549b-6e32-2c50-589dd2efc623', 'Faded Short Sleeves T-shirt', '2017-02-10 14:48:55', '2017-02-10 14:55:47', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '', 1, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '-99', '', '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, 1.0000, 0.000000, 0.000000, 16.510000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 'Percentage', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, '0.0', 'AOS_Quotes', '634f2209-a2e1-ac94-cb46-589dd20b45c8', '1a991ff8-211c-30c7-f539-589dd024e734', '6f9f5209-e238-b263-10f7-589dd2a03c4f'),
('7ddc455e-4e1e-4a57-3d8f-589de2ba07a1', 'Printed Dress - Color : Orange, Size : S', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 25.999852, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 26.000000, 0.000000, 0.000000, 0.000000, 26.000000, 0.000000, '0.0', 'AOS_Quotes', '72be7739-7f69-7352-86b9-589ddb81c3e4', '4e1b467c-6729-1aef-c830-589dd0dc1850', ''),
('7faa0d9a-2447-8808-674e-589de113f658', 'Printed Dress - Color : Orange, Size : S', '2017-02-10 15:49:51', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '-99', NULL, NULL, 3, 1.0000, NULL, 0.000000, 26.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 26.000000, 0.000000, 0.000000, 0.000000, 26.000000, 0.000000, '0.0', 'AOS_Quotes', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '4e1b467c-6729-1aef-c830-589dd0dc1850', 'a5a9da98-0807-3285-feb9-589df0a74d1a'),
('88205abf-e770-04a5-a9ce-589dd2bb93ee', 'Faded Short Sleeves T-shirt', '2017-02-10 14:48:55', '2017-02-10 14:55:19', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '-99', NULL, '<p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which have since evolved into a full ready-to-wear collection in which every item is a vital part of a woman''s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>', 1, 1.0000, 0.000000, 0.000000, 16.510000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 'Percentage', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, '0.0', 'AOS_Invoices', '7db993ec-0828-1c33-b960-589dd2f41291', '1a991ff8-211c-30c7-f539-589dd024e734', '6f9f5209-e238-b263-10f7-589dd2a03c4f'),
('8d79e3b7-c203-d9a6-8676-589de28d707c', 'Blouse - Color : White, Size : M', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 26.999852, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 27.000000, 0.000000, 0.000000, 0.000000, 27.000000, 0.000000, '0.0', 'AOS_Quotes', '832fb89b-9964-2550-6399-589ddba0e388', '33ebedb4-f92e-0221-6f14-589dd04b6a7c', ''),
('a86adfd7-54fe-fa2a-a7d2-589de229f0ec', 'Printed Summer Dress - Color : Yellow, Size : M', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 30.502569, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 30.500000, 0.000000, 0.000000, 0.000000, 30.500000, 0.000000, '0.0', 'AOS_Quotes', '832fb89b-9964-2550-6399-589ddba0e388', 'ab900f27-2284-6a93-8324-589dd0e76a05', ''),
('b2cb4342-a182-916d-4404-589de23fafef', 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', '2017-02-10 15:57:07', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '-99', NULL, NULL, 2, 1.0000, NULL, 0.000000, 16.510000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, '0.0', 'AOS_Quotes', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '1a991ff8-211c-30c7-f539-589dd024e734', 'a5a9da98-0807-3285-feb9-589df0a74d1a'),
('bd1f8225-3652-d27c-86de-589de211d822', 'Printed Chiffon Dress - Color : Yellow, Size : S', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 20.501236, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 16.400000, 0.000000, 0.000000, 0.000000, 16.400000, 0.000000, '0.0', 'AOS_Quotes', '832fb89b-9964-2550-6399-589ddba0e388', 'c0be1d26-9a3b-7f31-f13d-589dd07b44dc', ''),
('c0c47e66-16e0-2ee5-82b3-589de2adcda5', 'Blouse - Color : Black, Size : S', '2017-02-10 15:57:07', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '-99', NULL, NULL, 1, 1.0000, NULL, 0.000000, 27.000000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 'Percentage', 27.000000, 0.000000, 0.000000, 0.000000, 27.000000, 0.000000, '0.0', 'AOS_Quotes', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '33ebedb4-f92e-0221-6f14-589dd04b6a7c', 'a5a9da98-0807-3285-feb9-589df0a74d1a'),
('d15d1239-a77d-0d94-dade-589de23dc75a', 'Faded Short Sleeve T-shirts - Color : Orange, Size : S', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 16.510000, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 16.510000, 0.000000, 0.000000, 0.000000, 16.510000, 0.000000, '0.0', 'AOS_Quotes', '94773fbf-510f-8ec1-aec3-589ddbf56c02', '1a991ff8-211c-30c7-f539-589dd024e734', ''),
('e791fa9f-8471-18c3-eda1-589de23abafa', 'Blouse - Color : White, Size : M', '2017-02-10 15:57:06', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '1', NULL, 1, '', '', NULL, NULL, NULL, 1.0000, NULL, 0.000000, 26.999852, 0.000000, NULL, 0.000000, 0.000000, 0.000000, '0.000000', 27.000000, 0.000000, 0.000000, 0.000000, 27.000000, 0.000000, '0.0', 'AOS_Quotes', '94773fbf-510f-8ec1-aec3-589ddbf56c02', '33ebedb4-f92e-0221-6f14-589dd04b6a7c', '');

-- --------------------------------------------------------

--
-- Structure de la table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
CREATE TABLE IF NOT EXISTS `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_products_quotes_audit`
--

TRUNCATE TABLE `aos_products_quotes_audit`;
--
-- Contenu de la table `aos_products_quotes_audit`
--

INSERT INTO `aos_products_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('5809b093-a108-3f25-354f-589df17980a1', 'b2cb4342-a182-916d-4404-589de23fafef', '2017-02-10 16:59:19', '1', 'discount', 'enum', 'Percentage', '0.000000', NULL, NULL),
('59ada67a-e34d-22c1-1f96-589df121993a', 'b2cb4342-a182-916d-4404-589de23fafef', '2017-02-10 16:59:19', '1', 'vat_amt', 'currency', '3.300000', '0', NULL, NULL),
('654d01b1-7d59-41ce-73d0-589de23674d5', '7faa0d9a-2447-8808-674e-589de113f658', '2017-02-10 15:55:16', '1', 'product_list_price', 'currency', NULL, '25.999852', NULL, NULL),
('6a8117da-90a2-4b90-d20a-589df183b03c', 'c0c47e66-16e0-2ee5-82b3-589de2adcda5', '2017-02-10 16:59:19', '1', 'product_list_price', 'currency', '27.000000', '26.999852', NULL, NULL),
('6c12c828-2d09-44ae-4357-589df10aa779', 'c0c47e66-16e0-2ee5-82b3-589de2adcda5', '2017-02-10 16:59:19', '1', 'discount', 'enum', 'Percentage', '0.000000', NULL, NULL),
('6d5ff615-7054-f45b-7b2f-589df1ec978f', 'c0c47e66-16e0-2ee5-82b3-589de2adcda5', '2017-02-10 16:59:19', '1', 'vat_amt', 'currency', '5.400000', '0', NULL, NULL),
('7cd37e04-0284-c035-a32f-589df1e96b5f', '7faa0d9a-2447-8808-674e-589de113f658', '2017-02-10 16:59:19', '1', 'product_list_price', 'currency', '26.000000', '25.999852', NULL, NULL),
('7eb4209b-38db-3501-231a-589df11a0bfb', '7faa0d9a-2447-8808-674e-589de113f658', '2017-02-10 16:59:19', '1', 'discount', 'enum', 'Percentage', '0.000000', NULL, NULL),
('801d1869-7ad1-3d23-3f88-589df1a3cb22', '7faa0d9a-2447-8808-674e-589de113f658', '2017-02-10 16:59:19', '1', 'vat_amt', 'currency', '5.200000', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
CREATE TABLE IF NOT EXISTS `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_product_categories`
--

TRUNCATE TABLE `aos_product_categories`;
--
-- Contenu de la table `aos_product_categories`
--

INSERT INTO `aos_product_categories` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `is_parent`, `parent_category_id`) VALUES
('11889645-dbcc-d8f8-f34e-589dc78d2227', 'Summer Dresses', '2017-02-10 14:01:55', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Short dress, long dress, silk dress, printed dress, you will find the perfect dress for summer.', 1, '', 0, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3'),
('14b40989-f78f-f557-bef3-589dc73faca6', 'Root', '2017-02-10 14:01:53', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', 0, ''),
('15a3d9b6-ee43-1e22-b6d4-589dc884097e', '', '2017-02-10 14:05:08', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3'),
('212192d0-34b0-b4d7-daad-589dc7930e82', 'Home', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', 0, '14b40989-f78f-f557-bef3-589dc73faca6'),
('2d7227b1-352a-c803-4e20-589dc87b9587', '', '2017-02-10 14:05:08', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3'),
('3929eb94-2b11-f399-2f31-589dc71adea6', 'Women', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p><strong>You will find here all woman fashion collections.</strong></p>\n<p>This category includes all the basics of your wardrobe and much more:</p>\n<p>shoes, accessories, printed t-shirts, feminine dresses, women''s jeans!</p>', 1, '', 0, '212192d0-34b0-b4d7-daad-589dc7930e82'),
('3b6215aa-5f95-e5e3-fd56-589dc89502fb', '', '2017-02-10 14:05:07', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, ''),
('5939c294-eeda-274c-106a-589dc8e18e0d', '', '2017-02-10 14:05:07', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, '14b40989-f78f-f557-bef3-589dc73faca6'),
('5f0fc259-5dd9-c2ab-531e-589dc72014e4', 'T-shirts', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>The must have of your wardrobe, take a look at our different colors,</p>\n<p>shapes and style of our collection!</p>', 1, '', 0, '7b4ee87b-39ed-1407-8a45-589dc7f4333a'),
('73430908-761b-ccf3-ade2-589dc8bb43d8', '', '2017-02-10 14:05:07', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, '212192d0-34b0-b4d7-daad-589dc7930e82'),
('7b4ee87b-39ed-1407-8a45-589dc7f4333a', 'Tops', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Choose from t-shirts, tops, blouses, short sleeves, long sleeves, tank tops, 3/4 sleeves and more.</p>\n<p>Find the cut that suits you the best!</p>', 1, '', 0, ''),
('95424c25-e4e7-5f6d-0587-589dc7bd1957', 'Blouses', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Match your favorites blouses with the right accessories for the perfect look.', 1, '', 0, '7b4ee87b-39ed-1407-8a45-589dc7f4333a'),
('99d88095-d046-d33b-305c-589dc803d73b', '', '2017-02-10 14:05:07', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, '3929eb94-2b11-f399-2f31-589dc71adea6'),
('aa82c1c7-3304-c73c-a3f5-589dc74ec7a3', 'Dresses', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>Find your favorites dresses from our wide choice of evening, casual or summer dresses!</p>\n<p>We offer dresses for every day, every style and every occasion.</p>', 1, '', 0, ''),
('be658c37-6e9f-6cf2-1f76-589dc8611eb7', '', '2017-02-10 14:05:07', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, '3929eb94-2b11-f399-2f31-589dc71adea6'),
('cc40d083-90e8-9703-e66f-589dc79088b3', 'Casual Dresses', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '<p>You are looking for a dress for every day? Take a look at</p>\n<p>our selection of dresses to find one that suits you.</p>', 1, '', 0, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3'),
('e66a2510-1295-d99a-6d5e-589dc8fd2f08', '', '2017-02-10 14:05:07', '2017-02-10 14:06:34', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 0, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3'),
('eafd717c-59a3-e7f4-5e26-589dc7e23e54', 'Evening Dresses', '2017-02-10 14:01:54', '2017-02-10 17:11:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Browse our different dresses to choose the perfect dress for an unforgettable evening!', 1, '', 0, 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3');

-- --------------------------------------------------------

--
-- Structure de la table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
CREATE TABLE IF NOT EXISTS `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_product_categories_audit`
--

TRUNCATE TABLE `aos_product_categories_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
CREATE TABLE IF NOT EXISTS `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_quotes`
--

TRUNCATE TABLE `aos_quotes`;
--
-- Contenu de la table `aos_quotes`
--

INSERT INTO `aos_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `approval_issue`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `expiration`, `number`, `opportunity_id`, `template_ddown_c`, `total_amt`, `total_amt_usdollar`, `subtotal_amount`, `subtotal_amount_usdollar`, `discount_amount`, `discount_amount_usdollar`, `tax_amount`, `tax_amount_usdollar`, `shipping_amount`, `shipping_amount_usdollar`, `shipping_tax`, `shipping_tax_amt`, `shipping_tax_amt_usdollar`, `total_amount`, `total_amount_usdollar`, `currency_id`, `stage`, `term`, `terms_c`, `approval_status`, `invoice_status`, `subtotal_tax_amount`, `subtotal_tax_amount_usdollar`) VALUES
('634f2209-a2e1-ac94-cb46-589dd20b45c8', 'test', '2017-02-10 14:48:55', '2017-02-10 14:55:47', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10', 1, '', NULL, 16.510000, 0.000000, 16.510000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, '0.0', 0.000000, 0.000000, 16.510000, 0.000000, '-99', 'Draft', 'Net 15', NULL, 'Approved', 'Invoiced', NULL, 0.000000),
('72be7739-7f69-7352-86b9-589ddb81c3e4', 'Order : XKBKNABJK', '2017-02-10 15:27:26', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', NULL, '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10', 2, '', NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, NULL, 0.000000, 0.000000, 55.000000, 0.000000, '', 'Closed Dead', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('832fb89b-9964-2550-6399-589ddba0e388', 'Order : OHSATSERP', '2017-02-10 15:27:26', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', NULL, '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10', 3, '', NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, NULL, 0.000000, 0.000000, 75.900000, 0.000000, '', 'On Hold', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('94773fbf-510f-8ec1-aec3-589ddbf56c02', 'Order : UOYEVOLI', '2017-02-10 15:27:26', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', NULL, '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10', 4, '', NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, NULL, 0.000000, 0.000000, 76.010000, 0.000000, '', 'On Hold', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('c319be09-e942-d28c-8528-589ddbbc3bda', 'Order : FFATNOMMJ', '2017-02-10 15:27:26', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', NULL, '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10', 5, '', NULL, NULL, 0.000000, NULL, 0.000000, NULL, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, NULL, 0.000000, 0.000000, 89.890000, 0.000000, '', 'On Hold', NULL, NULL, NULL, 'Not Invoiced', NULL, 0.000000),
('d34817a8-b1ca-557d-6640-589ddb73a63c', 'Order : KHWLILZLL', '2017-02-10 15:27:26', '2017-02-10 17:10:28', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', NULL, '', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-03-10', 6, '', NULL, 69.510000, 0.000000, 69.510000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 2.000000, 0.000000, '0.0', 0.000000, 0.000000, 71.510000, 0.000000, '-99', 'Closed Accepted', 'Net 15', NULL, 'Approved', 'Not Invoiced', NULL, 0.000000);

-- --------------------------------------------------------

--
-- Structure de la table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
CREATE TABLE IF NOT EXISTS `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_quotes_aos_invoices_c`
--

TRUNCATE TABLE `aos_quotes_aos_invoices_c`;
--
-- Contenu de la table `aos_quotes_aos_invoices_c`
--

INSERT INTO `aos_quotes_aos_invoices_c` (`id`, `date_modified`, `deleted`, `aos_quotes77d9_quotes_ida`, `aos_quotes6b83nvoices_idb`) VALUES
('8383f3cf-8ed6-1a71-7169-589dd29b1fa4', '2017-02-10 14:55:19', 1, '634f2209-a2e1-ac94-cb46-589dd20b45c8', '7db993ec-0828-1c33-b960-589dd2f41291');

-- --------------------------------------------------------

--
-- Structure de la table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
CREATE TABLE IF NOT EXISTS `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_quotes_audit`
--

TRUNCATE TABLE `aos_quotes_audit`;
--
-- Contenu de la table `aos_quotes_audit`
--

INSERT INTO `aos_quotes_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('48d94d88-cb95-f15c-46ca-589df05b7ce8', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:54:04', '1', 'stage', 'enum', 'On Hold', 'Closed Accepted', NULL, NULL),
('4e702a5d-6bd9-6788-b146-589defc7d2b8', '72be7739-7f69-7352-86b9-589ddb81c3e4', '2017-02-10 16:52:40', '1', 'stage', 'enum', 'Confirmed', 'Closed Dead', NULL, NULL),
('5f73fd3f-6280-bd16-b817-589def8e85e8', '832fb89b-9964-2550-6399-589ddba0e388', '2017-02-10 16:52:40', '1', 'stage', 'enum', 'Confirmed', 'On Hold', NULL, NULL),
('6d1a3861-6aec-6983-a707-589def0dab65', '94773fbf-510f-8ec1-aec3-589ddbf56c02', '2017-02-10 16:52:40', '1', 'stage', 'enum', 'Confirmed', 'On Hold', NULL, NULL),
('78ac07bc-6735-1a22-387b-589defae28f3', 'c319be09-e942-d28c-8528-589ddbbc3bda', '2017-02-10 16:52:40', '1', 'stage', 'enum', 'Confirmed', 'On Hold', NULL, NULL),
('7b820522-a7e5-adde-a4e0-589dd2dabfce', '634f2209-a2e1-ac94-cb46-589dd20b45c8', '2017-02-10 14:49:30', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'invoice_status', 'enum', 'Not Invoiced', 'Invoiced', NULL, NULL),
('87b515a7-0851-5dd3-2d41-589defc38468', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:52:40', '1', 'stage', 'enum', 'Confirmed', 'On Hold', NULL, NULL),
('8a0bf560-5776-779e-e2d0-589df0dabc8e', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:55:44', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'total_amt', 'currency', NULL, '69.51', NULL, NULL),
('8cc47fe3-d7a5-6b8b-fa51-589df060245b', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:55:44', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'subtotal_amount', 'currency', NULL, '69.51', NULL, NULL),
('98bf3e99-b4a0-6dae-3cb9-589df0fba33f', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:55:44', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'tax_amount', 'currency', '0.000000', '13.9', NULL, NULL),
('9d82d042-e69a-45f9-3344-589df02b568b', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:55:44', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'term', 'enum', NULL, 'Net 15', NULL, NULL),
('a1b49a4e-0d83-b604-9eef-589df08e477c', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:55:44', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'approval_status', 'enum', NULL, 'Approved', NULL, NULL),
('d5cfd5f7-47fb-69a4-d7c2-589df1e90388', 'd34817a8-b1ca-557d-6640-589ddb73a63c', '2017-02-10 16:59:53', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'tax_amount', 'currency', '13.900000', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
CREATE TABLE IF NOT EXISTS `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_quotes_os_contracts_c`
--

TRUNCATE TABLE `aos_quotes_os_contracts_c`;
-- --------------------------------------------------------

--
-- Structure de la table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
CREATE TABLE IF NOT EXISTS `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aos_quotes_project_c`
--

TRUNCATE TABLE `aos_quotes_project_c`;
-- --------------------------------------------------------

--
-- Structure de la table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
CREATE TABLE IF NOT EXISTS `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aow_actions`
--

TRUNCATE TABLE `aow_actions`;
-- --------------------------------------------------------

--
-- Structure de la table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
CREATE TABLE IF NOT EXISTS `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aow_conditions`
--

TRUNCATE TABLE `aow_conditions`;
-- --------------------------------------------------------

--
-- Structure de la table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
CREATE TABLE IF NOT EXISTS `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aow_processed`
--

TRUNCATE TABLE `aow_processed`;
-- --------------------------------------------------------

--
-- Structure de la table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
CREATE TABLE IF NOT EXISTS `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aow_processed_aow_actions`
--

TRUNCATE TABLE `aow_processed_aow_actions`;
-- --------------------------------------------------------

--
-- Structure de la table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
CREATE TABLE IF NOT EXISTS `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aow_workflow`
--

TRUNCATE TABLE `aow_workflow`;
-- --------------------------------------------------------

--
-- Structure de la table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
CREATE TABLE IF NOT EXISTS `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `aow_workflow_audit`
--

TRUNCATE TABLE `aow_workflow_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
CREATE TABLE IF NOT EXISTS `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `bugs`
--

TRUNCATE TABLE `bugs`;
-- --------------------------------------------------------

--
-- Structure de la table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
CREATE TABLE IF NOT EXISTS `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `bugs_audit`
--

TRUNCATE TABLE `bugs_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `calls`
--

DROP TABLE IF EXISTS `calls`;
CREATE TABLE IF NOT EXISTS `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `calls`
--

TRUNCATE TABLE `calls`;
-- --------------------------------------------------------

--
-- Structure de la table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
CREATE TABLE IF NOT EXISTS `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `calls_contacts`
--

TRUNCATE TABLE `calls_contacts`;
-- --------------------------------------------------------

--
-- Structure de la table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
CREATE TABLE IF NOT EXISTS `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `calls_leads`
--

TRUNCATE TABLE `calls_leads`;
-- --------------------------------------------------------

--
-- Structure de la table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
CREATE TABLE IF NOT EXISTS `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `calls_reschedule`
--

TRUNCATE TABLE `calls_reschedule`;
-- --------------------------------------------------------

--
-- Structure de la table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
CREATE TABLE IF NOT EXISTS `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `calls_reschedule_audit`
--

TRUNCATE TABLE `calls_reschedule_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
CREATE TABLE IF NOT EXISTS `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `calls_users`
--

TRUNCATE TABLE `calls_users`;
-- --------------------------------------------------------

--
-- Structure de la table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `campaigns`
--

TRUNCATE TABLE `campaigns`;
-- --------------------------------------------------------

--
-- Structure de la table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
CREATE TABLE IF NOT EXISTS `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `campaigns_audit`
--

TRUNCATE TABLE `campaigns_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
CREATE TABLE IF NOT EXISTS `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `campaign_log`
--

TRUNCATE TABLE `campaign_log`;
-- --------------------------------------------------------

--
-- Structure de la table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
CREATE TABLE IF NOT EXISTS `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
`tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `campaign_trkrs`
--

TRUNCATE TABLE `campaign_trkrs`;
-- --------------------------------------------------------

--
-- Structure de la table `cases`
--

DROP TABLE IF EXISTS `cases`;
CREATE TABLE IF NOT EXISTS `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
`case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `cases`
--

TRUNCATE TABLE `cases`;
-- --------------------------------------------------------

--
-- Structure de la table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
CREATE TABLE IF NOT EXISTS `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `cases_audit`
--

TRUNCATE TABLE `cases_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
CREATE TABLE IF NOT EXISTS `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `cases_bugs`
--

TRUNCATE TABLE `cases_bugs`;
-- --------------------------------------------------------

--
-- Structure de la table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
CREATE TABLE IF NOT EXISTS `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `cases_cstm`
--

TRUNCATE TABLE `cases_cstm`;
-- --------------------------------------------------------

--
-- Structure de la table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `config`
--

TRUNCATE TABLE `config`;
--
-- Contenu de la table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.24'),
('MySettings', 'tab', 'YTozNjp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6OToiamp3Z19NYXBzIjtpOjI5O3M6MTI6Impqd2dfTWFya2VycyI7aTozMDtzOjEwOiJqandnX0FyZWFzIjtpOjMxO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7aTozMjtzOjExOiJBT1JfUmVwb3J0cyI7aTozMztzOjEyOiJBT1dfV29ya0Zsb3ciO2k6MzQ7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO2k6MzU7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Cases', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'Myddleware'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('captcha', 'on', '0'),
('captcha', 'public_key', ''),
('captcha', 'private_key', ''),
('ldap', 'hostname', ''),
('ldap', 'port', ''),
('ldap', 'base_dn', ''),
('ldap', 'login_filter', ''),
('ldap', 'bind_attr', ''),
('ldap', 'login_attr', ''),
('ldap', 'group_dn', ''),
('ldap', 'group_name', ''),
('ldap', 'group_user_attr', ''),
('ldap', 'group_attr', ''),
('ldap', 'admin_user', ''),
('ldap', 'admin_password', ''),
('ldap', 'auto_create_users', '0'),
('ldap', 'enc_key', ''),
('system', 'ldap_enabled', '0'),
('ldap', 'group_attr_req_dn', '0'),
('ldap', 'group', '0'),
('ldap', 'authentication', '0');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `contacts`
--

TRUNCATE TABLE `contacts`;
--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('11b19f34-ce97-1764-e997-589dc3844c0d', '2017-02-10 13:45:16', '2017-02-10 17:10:36', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '', NULL, 'John', 'DOE', NULL, NULL, NULL, 0, '0102030405', NULL, NULL, NULL, NULL, '16, Main street\n2nd floor', 'Miami', NULL, '33133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '1970-01-15', '', NULL, 0, 'Single');

-- --------------------------------------------------------

--
-- Structure de la table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
CREATE TABLE IF NOT EXISTS `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `contacts_audit`
--

TRUNCATE TABLE `contacts_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
CREATE TABLE IF NOT EXISTS `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `contacts_bugs`
--

TRUNCATE TABLE `contacts_bugs`;
-- --------------------------------------------------------

--
-- Structure de la table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
CREATE TABLE IF NOT EXISTS `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `contacts_cases`
--

TRUNCATE TABLE `contacts_cases`;
-- --------------------------------------------------------

--
-- Structure de la table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
CREATE TABLE IF NOT EXISTS `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `newsletter_c` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `contacts_cstm`
--

TRUNCATE TABLE `contacts_cstm`;
--
-- Contenu de la table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `newsletter_c`) VALUES
('11b19f34-ce97-1764-e997-589dc3844c0d', 0.00000000, 0.00000000, '', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
CREATE TABLE IF NOT EXISTS `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `contacts_users`
--

TRUNCATE TABLE `contacts_users`;
-- --------------------------------------------------------

--
-- Structure de la table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
CREATE TABLE IF NOT EXISTS `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `cron_remove_documents`
--

TRUNCATE TABLE `cron_remove_documents`;
-- --------------------------------------------------------

--
-- Structure de la table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `currencies`
--

TRUNCATE TABLE `currencies`;
-- --------------------------------------------------------

--
-- Structure de la table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `custom_fields`
--

TRUNCATE TABLE `custom_fields`;
-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `documents`
--

TRUNCATE TABLE `documents`;
-- --------------------------------------------------------

--
-- Structure de la table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
CREATE TABLE IF NOT EXISTS `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `documents_accounts`
--

TRUNCATE TABLE `documents_accounts`;
-- --------------------------------------------------------

--
-- Structure de la table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
CREATE TABLE IF NOT EXISTS `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `documents_bugs`
--

TRUNCATE TABLE `documents_bugs`;
-- --------------------------------------------------------

--
-- Structure de la table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
CREATE TABLE IF NOT EXISTS `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `documents_cases`
--

TRUNCATE TABLE `documents_cases`;
-- --------------------------------------------------------

--
-- Structure de la table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
CREATE TABLE IF NOT EXISTS `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `documents_contacts`
--

TRUNCATE TABLE `documents_contacts`;
-- --------------------------------------------------------

--
-- Structure de la table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
CREATE TABLE IF NOT EXISTS `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `documents_opportunities`
--

TRUNCATE TABLE `documents_opportunities`;
-- --------------------------------------------------------

--
-- Structure de la table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
CREATE TABLE IF NOT EXISTS `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `document_revisions`
--

TRUNCATE TABLE `document_revisions`;
-- --------------------------------------------------------

--
-- Structure de la table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
CREATE TABLE IF NOT EXISTS `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `eapm`
--

TRUNCATE TABLE `eapm`;
-- --------------------------------------------------------

--
-- Structure de la table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
CREATE TABLE IF NOT EXISTS `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
`id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `emailman`
--

TRUNCATE TABLE `emailman`;
-- --------------------------------------------------------

--
-- Structure de la table `emails`
--

DROP TABLE IF EXISTS `emails`;
CREATE TABLE IF NOT EXISTS `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `emails`
--

TRUNCATE TABLE `emails`;
-- --------------------------------------------------------

--
-- Structure de la table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
CREATE TABLE IF NOT EXISTS `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `emails_beans`
--

TRUNCATE TABLE `emails_beans`;
-- --------------------------------------------------------

--
-- Structure de la table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
CREATE TABLE IF NOT EXISTS `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `emails_email_addr_rel`
--

TRUNCATE TABLE `emails_email_addr_rel`;
-- --------------------------------------------------------

--
-- Structure de la table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
CREATE TABLE IF NOT EXISTS `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `emails_text`
--

TRUNCATE TABLE `emails_text`;
-- --------------------------------------------------------

--
-- Structure de la table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
CREATE TABLE IF NOT EXISTS `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `email_addresses`
--

TRUNCATE TABLE `email_addresses`;
--
-- Contenu de la table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('4a088313-3733-ddd8-c3e7-589db5f7bf58', 'contact@myddleware.com', 'CONTACT@MYDDLEWARE.COM', 0, 0, '2017-02-10 12:45:01', '2017-02-10 12:45:01', 0),
('4ef09301-2d40-6b82-23eb-589dc3d2fb6b', 'pub@prestashop.com', 'PUB@PRESTASHOP.COM', 0, 0, '2017-02-10 13:45:16', '2017-02-10 13:45:16', 0),
('d5b5e4d8-8685-235d-7960-589db22fcb61', 'stephanefaure@myddleware.com', 'STEPHANEFAURE@MYDDLEWARE.COM', 0, 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', 0);

-- --------------------------------------------------------

--
-- Structure de la table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
CREATE TABLE IF NOT EXISTS `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `email_addr_bean_rel`
--

TRUNCATE TABLE `email_addr_bean_rel`;
--
-- Contenu de la table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('49f42c28-1fa8-9d4d-5ca0-589db5a6f419', '4a088313-3733-ddd8-c3e7-589db5f7bf58', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Users', 1, 0, '2017-02-10 12:45:01', '2017-02-10 12:45:01', 0),
('4ee35218-63e0-fda8-e3a7-589dc32a7b44', '4ef09301-2d40-6b82-23eb-589dc3d2fb6b', '11b19f34-ce97-1764-e997-589dc3844c0d', 'Contacts', 1, 0, '2017-02-10 13:45:16', '2017-02-10 17:10:36', 1),
('d5a50d1e-53d9-8d90-6375-589db2f90d31', 'd5b5e4d8-8685-235d-7960-589db22fcb61', '1', 'Users', 1, 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', 0);

-- --------------------------------------------------------

--
-- Structure de la table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
CREATE TABLE IF NOT EXISTS `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `email_cache`
--

TRUNCATE TABLE `email_cache`;
-- --------------------------------------------------------

--
-- Structure de la table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
CREATE TABLE IF NOT EXISTS `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `email_marketing`
--

TRUNCATE TABLE `email_marketing`;
-- --------------------------------------------------------

--
-- Structure de la table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
CREATE TABLE IF NOT EXISTS `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `email_marketing_prospect_lists`
--

TRUNCATE TABLE `email_marketing_prospect_lists`;
-- --------------------------------------------------------

--
-- Structure de la table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `email_templates`
--

TRUNCATE TABLE `email_templates`;
--
-- Contenu de la table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('1b37c17a-631a-0b16-8156-589db2abfbcf', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border="0"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('1ecd7f0d-7f48-c87d-3870-589db2b10b88', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they''ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href="$portal_address">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('225b3367-7fc9-2fd9-2104-589db2e7b156', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\n\n					   We''ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We''ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border="0"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('2a3983c3-247d-1fb5-3eab-589db2e7fdc8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\n\n					   You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style="padding-left:30px;">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('2f3dd5dc-5b7c-06eb-711e-589db2568bde', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\n\n					   You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style="padding-left:30px;">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ', 0, NULL, NULL, NULL),
('3527a1b8-7d5f-8f3e-4d9c-589db2ddc6a8', '2013-05-24 14:31:45', '2017-02-10 12:29:09', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n', 0, NULL, NULL, 'email'),
('d44fda7a-5f7a-1edb-b206-589db22875f8', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('e159d08f-53ce-cf3a-2fba-589db2aaa6fc', '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user''s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width="550"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `favorites`
--

TRUNCATE TABLE `favorites`;
-- --------------------------------------------------------

--
-- Structure de la table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
CREATE TABLE IF NOT EXISTS `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fields_meta_data`
--

TRUNCATE TABLE `fields_meta_data`;
--
-- Contenu de la table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsnewsletter_c', 'newsletter_c', 'LBL_NEWSLETTER', '', '', 'Contacts', 'bool', 255, 0, '0', '2017-02-10 13:40:07', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2017-02-10 12:29:09', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `folders`
--

DROP TABLE IF EXISTS `folders`;
CREATE TABLE IF NOT EXISTS `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `folders`
--

TRUNCATE TABLE `folders`;
-- --------------------------------------------------------

--
-- Structure de la table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
CREATE TABLE IF NOT EXISTS `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `folders_rel`
--

TRUNCATE TABLE `folders_rel`;
-- --------------------------------------------------------

--
-- Structure de la table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
CREATE TABLE IF NOT EXISTS `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `folders_subscriptions`
--

TRUNCATE TABLE `folders_subscriptions`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
CREATE TABLE IF NOT EXISTS `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events`
--

TRUNCATE TABLE `fp_events`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
CREATE TABLE IF NOT EXISTS `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events_audit`
--

TRUNCATE TABLE `fp_events_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
CREATE TABLE IF NOT EXISTS `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events_contacts_c`
--

TRUNCATE TABLE `fp_events_contacts_c`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
CREATE TABLE IF NOT EXISTS `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events_fp_event_delegates_1_c`
--

TRUNCATE TABLE `fp_events_fp_event_delegates_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
CREATE TABLE IF NOT EXISTS `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events_fp_event_locations_1_c`
--

TRUNCATE TABLE `fp_events_fp_event_locations_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
CREATE TABLE IF NOT EXISTS `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events_leads_1_c`
--

TRUNCATE TABLE `fp_events_leads_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
CREATE TABLE IF NOT EXISTS `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_events_prospects_1_c`
--

TRUNCATE TABLE `fp_events_prospects_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
CREATE TABLE IF NOT EXISTS `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_event_locations`
--

TRUNCATE TABLE `fp_event_locations`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
CREATE TABLE IF NOT EXISTS `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_event_locations_audit`
--

TRUNCATE TABLE `fp_event_locations_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
CREATE TABLE IF NOT EXISTS `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `fp_event_locations_fp_events_1_c`
--

TRUNCATE TABLE `fp_event_locations_fp_events_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
CREATE TABLE IF NOT EXISTS `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `import_maps`
--

TRUNCATE TABLE `import_maps`;
-- --------------------------------------------------------

--
-- Structure de la table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
CREATE TABLE IF NOT EXISTS `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `inbound_email`
--

TRUNCATE TABLE `inbound_email`;
-- --------------------------------------------------------

--
-- Structure de la table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
CREATE TABLE IF NOT EXISTS `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `inbound_email_autoreply`
--

TRUNCATE TABLE `inbound_email_autoreply`;
-- --------------------------------------------------------

--
-- Structure de la table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
CREATE TABLE IF NOT EXISTS `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `inbound_email_cache_ts`
--

TRUNCATE TABLE `inbound_email_cache_ts`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
CREATE TABLE IF NOT EXISTS `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_address_cache`
--

TRUNCATE TABLE `jjwg_address_cache`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
CREATE TABLE IF NOT EXISTS `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_address_cache_audit`
--

TRUNCATE TABLE `jjwg_address_cache_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
CREATE TABLE IF NOT EXISTS `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_areas`
--

TRUNCATE TABLE `jjwg_areas`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
CREATE TABLE IF NOT EXISTS `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_areas_audit`
--

TRUNCATE TABLE `jjwg_areas_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
CREATE TABLE IF NOT EXISTS `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_maps`
--

TRUNCATE TABLE `jjwg_maps`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
CREATE TABLE IF NOT EXISTS `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_maps_audit`
--

TRUNCATE TABLE `jjwg_maps_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
CREATE TABLE IF NOT EXISTS `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_maps_jjwg_areas_c`
--

TRUNCATE TABLE `jjwg_maps_jjwg_areas_c`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
CREATE TABLE IF NOT EXISTS `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_maps_jjwg_markers_c`
--

TRUNCATE TABLE `jjwg_maps_jjwg_markers_c`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
CREATE TABLE IF NOT EXISTS `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_markers`
--

TRUNCATE TABLE `jjwg_markers`;
-- --------------------------------------------------------

--
-- Structure de la table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
CREATE TABLE IF NOT EXISTS `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `jjwg_markers_audit`
--

TRUNCATE TABLE `jjwg_markers_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
CREATE TABLE IF NOT EXISTS `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `job_queue`
--

TRUNCATE TABLE `job_queue`;
-- --------------------------------------------------------

--
-- Structure de la table `leads`
--

DROP TABLE IF EXISTS `leads`;
CREATE TABLE IF NOT EXISTS `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `leads`
--

TRUNCATE TABLE `leads`;
-- --------------------------------------------------------

--
-- Structure de la table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
CREATE TABLE IF NOT EXISTS `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `leads_audit`
--

TRUNCATE TABLE `leads_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
CREATE TABLE IF NOT EXISTS `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `leads_cstm`
--

TRUNCATE TABLE `leads_cstm`;
-- --------------------------------------------------------

--
-- Structure de la table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
CREATE TABLE IF NOT EXISTS `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `linked_documents`
--

TRUNCATE TABLE `linked_documents`;
-- --------------------------------------------------------

--
-- Structure de la table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `meetings`
--

TRUNCATE TABLE `meetings`;
-- --------------------------------------------------------

--
-- Structure de la table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
CREATE TABLE IF NOT EXISTS `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `meetings_contacts`
--

TRUNCATE TABLE `meetings_contacts`;
-- --------------------------------------------------------

--
-- Structure de la table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
CREATE TABLE IF NOT EXISTS `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `meetings_cstm`
--

TRUNCATE TABLE `meetings_cstm`;
-- --------------------------------------------------------

--
-- Structure de la table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
CREATE TABLE IF NOT EXISTS `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `meetings_leads`
--

TRUNCATE TABLE `meetings_leads`;
-- --------------------------------------------------------

--
-- Structure de la table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
CREATE TABLE IF NOT EXISTS `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `meetings_users`
--

TRUNCATE TABLE `meetings_users`;
-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `notes`
--

TRUNCATE TABLE `notes`;
-- --------------------------------------------------------

--
-- Structure de la table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `oauth_consumer`
--

TRUNCATE TABLE `oauth_consumer`;
-- --------------------------------------------------------

--
-- Structure de la table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `oauth_nonce`
--

TRUNCATE TABLE `oauth_nonce`;
-- --------------------------------------------------------

--
-- Structure de la table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `oauth_tokens`
--

TRUNCATE TABLE `oauth_tokens`;
-- --------------------------------------------------------

--
-- Structure de la table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
CREATE TABLE IF NOT EXISTS `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `opportunities`
--

TRUNCATE TABLE `opportunities`;
--
-- Contenu de la table `opportunities`
--

INSERT INTO `opportunities` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `opportunity_type`, `campaign_id`, `lead_source`, `amount`, `amount_usdollar`, `currency_id`, `date_closed`, `next_step`, `sales_stage`, `probability`) VALUES
('9c5a0639-f442-e06d-5ccb-589dd204b2d5', 'test', '2017-02-10 14:47:54', '2017-02-10 14:48:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '', 1, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '', '', '', 200, 200, '-99', '2017-02-10', '', 'Prospecting', 10);

-- --------------------------------------------------------

--
-- Structure de la table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
CREATE TABLE IF NOT EXISTS `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `opportunities_audit`
--

TRUNCATE TABLE `opportunities_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
CREATE TABLE IF NOT EXISTS `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `opportunities_contacts`
--

TRUNCATE TABLE `opportunities_contacts`;
-- --------------------------------------------------------

--
-- Structure de la table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
CREATE TABLE IF NOT EXISTS `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `opportunities_cstm`
--

TRUNCATE TABLE `opportunities_cstm`;
--
-- Contenu de la table `opportunities_cstm`
--

INSERT INTO `opportunities_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('9c5a0639-f442-e06d-5ccb-589dd204b2d5', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
CREATE TABLE IF NOT EXISTS `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `outbound_email`
--

TRUNCATE TABLE `outbound_email`;
--
-- Contenu de la table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('9d39f7cc-d567-8147-3bb0-589db2ff3342', 'system', 'system', '1', 'SMTP', 'other', '', 25, '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
CREATE TABLE IF NOT EXISTS `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `outbound_email_audit`
--

TRUNCATE TABLE `outbound_email_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `project`
--

TRUNCATE TABLE `project`;
-- --------------------------------------------------------

--
-- Structure de la table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
CREATE TABLE IF NOT EXISTS `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `projects_accounts`
--

TRUNCATE TABLE `projects_accounts`;
-- --------------------------------------------------------

--
-- Structure de la table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
CREATE TABLE IF NOT EXISTS `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `projects_bugs`
--

TRUNCATE TABLE `projects_bugs`;
-- --------------------------------------------------------

--
-- Structure de la table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
CREATE TABLE IF NOT EXISTS `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `projects_cases`
--

TRUNCATE TABLE `projects_cases`;
-- --------------------------------------------------------

--
-- Structure de la table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
CREATE TABLE IF NOT EXISTS `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `projects_contacts`
--

TRUNCATE TABLE `projects_contacts`;
-- --------------------------------------------------------

--
-- Structure de la table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
CREATE TABLE IF NOT EXISTS `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `projects_opportunities`
--

TRUNCATE TABLE `projects_opportunities`;
-- --------------------------------------------------------

--
-- Structure de la table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
CREATE TABLE IF NOT EXISTS `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `projects_products`
--

TRUNCATE TABLE `projects_products`;
-- --------------------------------------------------------

--
-- Structure de la table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
CREATE TABLE IF NOT EXISTS `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `project_contacts_1_c`
--

TRUNCATE TABLE `project_contacts_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
CREATE TABLE IF NOT EXISTS `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `project_cstm`
--

TRUNCATE TABLE `project_cstm`;
-- --------------------------------------------------------

--
-- Structure de la table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
CREATE TABLE IF NOT EXISTS `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `project_task`
--

TRUNCATE TABLE `project_task`;
-- --------------------------------------------------------

--
-- Structure de la table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
CREATE TABLE IF NOT EXISTS `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `project_task_audit`
--

TRUNCATE TABLE `project_task_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
CREATE TABLE IF NOT EXISTS `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `project_users_1_c`
--

TRUNCATE TABLE `project_users_1_c`;
-- --------------------------------------------------------

--
-- Structure de la table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
CREATE TABLE IF NOT EXISTS `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
`tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `prospects`
--

TRUNCATE TABLE `prospects`;
-- --------------------------------------------------------

--
-- Structure de la table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
CREATE TABLE IF NOT EXISTS `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `prospects_cstm`
--

TRUNCATE TABLE `prospects_cstm`;
-- --------------------------------------------------------

--
-- Structure de la table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
CREATE TABLE IF NOT EXISTS `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `prospect_lists`
--

TRUNCATE TABLE `prospect_lists`;
-- --------------------------------------------------------

--
-- Structure de la table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
CREATE TABLE IF NOT EXISTS `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `prospect_lists_prospects`
--

TRUNCATE TABLE `prospect_lists_prospects`;
-- --------------------------------------------------------

--
-- Structure de la table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
CREATE TABLE IF NOT EXISTS `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `prospect_list_campaigns`
--

TRUNCATE TABLE `prospect_list_campaigns`;
-- --------------------------------------------------------

--
-- Structure de la table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE IF NOT EXISTS `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `relationships`
--

TRUNCATE TABLE `relationships`;
--
-- Contenu de la table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('10721061-5547-9abf-e9c8-589dc2aca9b7', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('109d2cab-96af-d6ac-6459-589dc2ffef4c', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('10a9637e-2734-4bb8-60c0-589dc2ef2215', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('123c2840-57fd-897e-cf8f-589dc2bdb1bb', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1310eceb-886e-6a8c-3f64-589dc2779c65', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('132076dd-b127-3007-675b-589dc2b41a6e', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('132700e5-486c-25e6-c8be-589dc245281c', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('13cd151f-718d-b383-4087-589dc23171e7', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('153809a8-ad76-141b-3cfe-589dc2932978', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('155f2165-ae54-62dc-9849-589dc24d9688', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('1598c179-5c4b-60e8-7dac-589dc225e4d3', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('15fe92a7-c33c-6fb5-cf7b-589dc26c704c', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('16560c53-bc57-a1ee-6c8a-589dc2ad0306', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18350f04-eaf5-8fc9-536b-589dc2c4264c', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('188cd482-7eaf-ec1f-7cab-589dc2296c39', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('18b5d2a4-c3e4-3a31-5c7a-589dc2b77c68', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('18e41e8b-8331-7de0-bc23-589dc2b0bae2', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19520aed-be81-35de-323d-589dc26cd5da', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('19ab5d81-b828-119d-fab2-589dc2dd1a5c', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a53053e-7932-442c-ec98-589dc2dcce2e', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('1b3b4b3c-841c-72ce-2094-589dc2f3f78f', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('1c0d23dd-6f9b-87ca-4ac5-589dc264a61e', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('1de95414-63ce-8ed6-8ab8-589dc2c71429', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('1e1596dd-4598-b59f-e7cb-589dc23999c8', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e3a30be-cfd9-81bf-6d4f-589dc224d4d0', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('203c0f84-bda2-794e-f200-589dc2dd7cc4', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('20e84796-13a5-7375-459f-589dc2875992', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('215530b9-0a2b-64d5-9b02-589dc21dcf66', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2188359e-91bd-0502-2bcd-589dc23cb698', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('218abd5a-3dcc-f903-1f4a-589dc23f5cda', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21c5a424-409d-0661-f4b0-589dc2ca97f3', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('21e26b12-a782-cb9e-f2dc-589dc263ef7c', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23e9d657-fe77-c00c-8f65-589dc2d99038', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('24609253-5ce2-1867-77af-589dc2e1b1fb', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('247421d8-28bb-02e1-9da5-589dc24b77eb', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26070d69-2a15-11ae-9b3c-589dc28e48aa', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('26314e22-29c7-2d26-6573-589dc280c08b', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('266fdd38-02b8-ed23-9452-589dc23410f6', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2779c49c-e4a5-495d-f444-589dc227f6f9', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('27eb0640-ff45-7e9a-8d92-589dc265c874', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29165969-d859-9488-aefc-589dc28e4b9c', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('297e5304-3157-b4a9-aac0-589dc2351574', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29d82991-0e50-7c22-fc16-589dc2294695', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a1c9f24-2716-a8f9-991c-589dc212ad10', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('2abf99f6-d0a7-d053-0407-589dc235cbeb', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('2c1bd03c-40dc-4c43-d342-589dc27ef365', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c1faf90-31a7-a53c-ca9c-589dc26b7723', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('2cbae401-5421-aca1-1ce2-589dc280776b', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d3fd72f-da0f-8b9f-af20-589dc2bc59a8', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d6f42c6-0364-f7f5-15b0-589dc295566c', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2def24fe-c873-0145-44f0-589dc25f94ce', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e410603-2e8f-acc4-6f6a-589dc20a9040', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ea2215f-2bc5-f22a-1fda-589dc28c3a18', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f1184ad-696e-e23e-58a8-589dc294ce81', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('2f22f464-59a2-8379-9f61-589dc2a27a1e', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f7168a9-0e09-f762-43b6-589dc28b89d7', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('2f93a502-f95a-bd64-8242-589dc281c441', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30dc1e8d-8a7a-45a9-6566-589dc28d185c', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31764395-ecb1-a939-f5e6-589dc2a5440c', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('31c41cb9-5fe6-a865-8361-589dc286564b', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('31faa6aa-5631-b4d8-3ff5-589dc263a1a7', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('329cef3f-3962-33bf-27a4-589dc2385c65', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33645408-adcc-ad60-1e3c-589dc221598c', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('33ff0d70-f9b0-a580-8ae8-589dc2326577', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('343342b6-b525-ed7e-d586-589dc259aae4', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('344a3fd6-b3ea-19d4-1590-589dc2e30e06', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34ba103e-6a77-97da-87ff-589dc2855c50', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('350aacb5-5f7a-0de0-2b75-589dc26f1108', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('354aea7b-3097-0033-dfc7-589dc2e36fa0', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('35ffd9b4-c555-e11e-450c-589dc224b0e4', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('36a6a024-ac51-e6f5-1d48-589dc212a95f', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('36b70fc2-17fb-037a-b5ab-589dc2c4cf02', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('374ec1d1-b14c-662e-dd60-589dc22a3350', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('37b60c80-5c5a-e50e-f607-589dc294ae9b', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37b812af-adf7-c15e-05f9-589dc2949033', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('384294dd-2760-a107-7e6e-589dc2a85cdc', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('3944cee2-a27a-fc7c-2a4a-589dc29f8b4d', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('3aa087cc-e4d9-6ad4-3541-589dc200eb37', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ae2bbc0-6f54-c790-75ac-589dc2ded49b', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('3c02007c-b69a-c50b-c4a7-589dc2d07aeb', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c4cd29a-54ca-5562-4865-589dc2dff1f2', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('3dc003b8-fdae-2fa3-a296-589dc26d08dd', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3dc7b4d4-0b24-825e-9241-589dc2b8e4a4', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3dd897b2-3671-a7e7-359e-589dc2d64a15', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e11d33d-b306-9f85-6a5f-589dc24d98f5', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('3e515e2c-8781-3e1c-f716-589dc295c773', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('3e8a008d-70f5-e0b2-cb53-589dc2603347', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('3f2af075-d5ac-7f55-5bf4-589dc2a53463', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('402e167e-d9fd-15c5-425c-589dc26d0e28', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('406a2646-baac-5125-59d6-589dc2b43bdc', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40b64be3-f324-9048-5600-589dc20d3c1c', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('42227241-9551-4d9d-c681-589dc2cc907e', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('42d4724b-d5ce-6b1a-26d1-589dc2cd3c5b', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('432f0f68-5a23-8119-95e9-589dc2c4f75a', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('4403eb25-3fed-bcd3-dcc7-589dc2a5af1e', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('440bb2e9-39a3-8074-62f8-589dc291b296', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('44bc0a62-ef90-e371-57a9-589dc27f847b', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('44cd467a-d637-0bfa-b064-589dc27da471', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('453906b9-79d3-d5cb-f521-589dc28a2f35', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45de24e3-5ece-af9c-e615-589dc2e29814', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4704c132-5d08-cc5b-81e6-589dc2ee5873', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('475c0011-b2ed-2bce-d861-589dc2abe9ef', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('476bce70-90b5-3f98-6d38-589dc2165a4d', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('496bfb02-8c0d-4d7a-5905-589dc296447e', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('4a94be50-79f2-18a0-835f-589dc2417fe0', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ac2ea2a-faf6-033d-2f84-589dc2b7538c', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b8892db-2880-7c0b-6ae9-589dc28d7a4e', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bbd1d94-cd44-dba1-d3df-589dc2586026', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('4be29174-cadf-447d-1c3d-589dc2e3eda6', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('4c440eab-eabf-28f1-e6d6-589dc2fbfb61', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('4d85fd78-3df0-e6c0-edfd-589dc2bdf509', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e9d83ce-652e-e69c-8347-589dc28b3a81', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fd6f20c-e659-cca9-78d9-589dc20fa4cf', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('52214132-57de-f960-9764-589dc2beefdb', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('536fa41d-a312-50ed-e8d3-589dc2dde189', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('53c10e09-89a1-363e-82a9-589dc2e8b06b', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('54b65c35-4abd-26d1-0484-589dc2e07f4c', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55d872ea-56d6-b83c-798a-589dc2a7b390', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('572c92a6-1b9a-ad19-8583-589dc2c70844', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('579c03e6-28b1-79f6-d04a-589dc2485597', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5973398c-903c-3dcb-5e93-589dc2bb6123', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('59ceac68-3788-21f1-feb8-589dc25f2cd6', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59d11240-f390-9e1c-96df-589dc2a18c8b', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('5be8c1b7-93a4-d440-27b8-589dc2692a2e', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('5d058a98-4da8-4569-2eec-589dc2b4c418', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('5de08c74-7b6b-bfac-82ac-589dc2f96cf7', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5eaece27-d751-f0e1-1296-589dc28db45a', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('5f7f9561-cd3a-adf2-0a28-589dc248000d', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('61ff9c5f-099c-c48b-6917-589dc204ba05', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('640de550-10cf-bcbc-bdb8-589dc279b919', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6418a5cb-6f3b-b07f-271c-589dc2642ba8', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('65715c4c-21a8-d804-fcf7-589dc2b8cee9', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('65ed2662-6fc6-0dc5-ced3-589dc251d0fc', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6691d2aa-cd76-6b7c-54a9-589dc200dfc6', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('695050eb-8545-e113-ad55-589dc2f3da76', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('69828966-88d0-aa19-06e0-589dc260f1cb', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('698bda35-6ca3-854b-68f2-589dc295cd74', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6a5cbbff-b5f8-b38d-cea1-589dc2af20d7', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a98ba30-5ef3-85ec-0c10-589dc2770562', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('6c952653-fc58-4086-601d-589dc2950f28', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6cbd2b82-0504-95cf-abbe-589dc2baf8fe', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('6cf2b144-938e-402e-b9e7-589dc281f02e', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('6d17b07f-a902-322a-a102-589dc20d71e1', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6dd58988-a67b-7641-7de8-589dc2b45cca', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6eb24b3b-2cb9-8c70-b0d1-589dc2901f1a', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f2a8ecc-2839-534f-6788-589dc20eef52', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fac8ea4-8f52-eff6-746a-589dc28ad6ea', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70ad5200-57c7-6f93-010b-589dc28e92e8', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('713b4d80-f8dd-6b48-bad0-589dc273b1d1', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71705afd-3c18-a66e-66f1-589dc2a8e469', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('71dd3946-9f26-6e77-b4b6-589dc2014b62', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('72fa4e46-b3f4-1b81-8f85-589dc2bda91a', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('7323173d-bf70-2a21-b531-589dc268fc23', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('73aa5576-2851-006f-91de-589dc274b69d', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7435a760-bf4c-3cd9-009f-589dc21b2c89', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('74aa586c-e5fa-77a1-10fe-589dc2710de8', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('7562eb32-d63e-7191-bee5-589dc2248d35', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75670c97-7cf2-1683-1cb9-589dc2b40cb7', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75f889fc-a1c2-487d-9a47-589dc2628d8d', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('7657c35e-66bf-62ac-176b-589dc26de9fe', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76730304-7db5-6977-8b41-589dc20dc451', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('76753df8-0ef5-26c3-18f3-589dc2fb7a92', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('767f2ed8-b84f-f66b-60a8-589dc2c73251', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7695d9ae-33fa-0a72-1b67-589dc2f6f32e', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('783b0092-d036-204d-6d45-589dc25c9471', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('79036d2a-bc30-dfa6-03a1-589dc2eedf24', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('7957fa00-ebbc-9064-1e84-589dc2f46d8e', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('79763eaf-434b-a174-85b6-589dc2cf4db7', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b5c32e6-eb21-2e29-20a8-589dc260575e', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c189129-9739-e3ae-2aee-589dc26c50b4', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d5330a3-91eb-bd2a-cc46-589dc2eac84e', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e0f51d9-2a07-0f66-d190-589dc28f542e', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('7e45fce7-4ce3-8cf3-a67f-589dc23cc15a', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e9b27da-aacd-0f5a-7149-589dc2399deb', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fb10546-93ce-da9d-d83b-589dc21eba2e', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('8013634c-1ca5-2d49-6512-589dc2768266', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('807e79d4-c579-8e3c-e23c-589dc2c46baf', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8229bbeb-4115-92d2-854f-589dc2332c7d', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('831574c2-9c95-15bd-d475-589dc241282d', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8397a4fb-7a14-91a1-bbff-589dc2c3a4bd', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('843302ff-aa04-d6fe-4e71-589dc2a3823b', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('850f0e95-9830-59c4-dc0d-589dc25abbe0', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8657ce33-413c-ebe4-122d-589dc2b3028c', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('870304be-ccec-3648-3efa-589dc2f7afa2', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('880ef248-42e6-8113-ff04-589dc26f8393', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('88401a68-316f-8e8f-d255-589dc2635905', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('886ff5b8-aacb-0fec-9c9a-589dc2c1cfdb', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('89983dc8-cef8-6f1d-558c-589dc259b17f', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('89c80086-d826-00db-a2e4-589dc259fb5b', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('8b1210e6-4ff0-f239-2922-589dc23d4d9b', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b2af2a6-1e04-d897-a8f7-589dc2ee8647', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b530174-aa19-041a-3389-589dc2ca7775', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8cee00cb-c3b9-c16b-0932-589dc2a39751', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ec47d4a-da5c-83fe-9c35-589dc20b222c', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8f836290-908a-bbf9-c672-589dc25d5ab2', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('907ac352-d3de-1ee3-452b-589dc2489a05', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('90eb6a01-fc1e-ca67-1df8-589dc21478dd', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9264c119-4894-7326-999d-589dc20ffea0', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('929d6cb7-f9cb-8ed9-6f10-589dc20d7751', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('954c62a3-b11b-3766-2c55-589dc2da0949', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('958647db-a584-37b9-d4b8-589dc2dc4af5', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('969dbd8a-99ac-21c1-fca3-589dc25e35c9', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('9781ebd3-5e54-3fd2-0a6e-589dc2f8383e', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9784361c-e7e8-7535-d080-589dc27bd8b5', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('993ac7a5-5802-0e71-f13b-589dc2896a0c', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('993df401-562f-cd90-0258-589dc24b3341', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a553fab-1c1c-c431-fa7e-589dc2bdf8fe', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('9a979618-2892-e92a-6782-589dc2bbde24', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c858dca-db15-ddc6-bc78-589dc2215208', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cbcd9ea-098a-7631-59fb-589dc24c0d7a', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d7b0182-a9a4-3add-9002-589dc29da470', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('9e1c31ad-29b1-b4cf-dc95-589dc2e3f9fa', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f54932c-b16c-b581-897f-589dc2e53765', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a07bad03-e6db-2a26-5643-589dc27f9d79', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a08e6d3f-80da-cb6f-6f5b-589dc2ac30bd', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1143ade-2886-9a12-aee4-589dc24578bb', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a26f76c7-a1ab-5f13-5b21-589dc2ef4e75', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2826289-8464-f17b-bd92-589dc2f9a8f4', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('a2e3cd0f-bd7f-7f08-d0fe-589dc214d65c', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3173ae1-4806-ff90-012a-589dc22cf39a', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('a35e68c3-a1aa-aec7-18ae-589dc2e4187c', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5aface5-f474-8950-3ef8-589dc27945d2', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6f42f6e-5654-ca6a-02ef-589dc240496f', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7a71fe6-d4c2-9498-19eb-589dc24032fc', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7ab9b0a-a1a9-1091-5e14-589dc230ffad', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7b74d94-a273-ba03-c281-589dc2d0a059', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('a9165df6-5c8b-7c9a-7a9e-589dc21af244', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('a9699515-fb00-4376-0f33-589dc201f2d8', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9d79be8-1728-d4e9-4344-589dc24b0108', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('ab38e7d8-e134-7e9a-88f8-589dc245d0ce', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab6ee939-3647-5b07-7038-589dc22b9128', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac6badc3-a101-ba57-9f50-589dc23ae317', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('ac8b12aa-3d2a-c73c-54fb-589dc297fadc', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad3d0ffb-9670-2d16-8754-589dc29dedb4', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('adcb12e4-5656-e119-1a5c-589dc2f5b22e', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae036625-ca5c-5b66-2b18-589dc21dacb0', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae1c02bc-f57b-ea6e-d4a3-589dc2d4a725', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae5a3fa6-9b98-8aa8-0704-589dc27736b2', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('ae73f065-a759-208a-425a-589dc201d24a', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('aec60c88-1dd1-9101-319a-589dc25cf791', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aee9833f-2c8a-33ba-70e6-589dc2fa52fa', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('af69343b-6729-1d2f-1433-589dc22cf823', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('afc14309-aa67-d2af-dda7-589dc2ce4fed', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b126c58b-e38e-b46c-665f-589dc2458950', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('b19b16bf-3c40-a42e-0620-589dc2806100', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1c20c6c-f128-1a62-7fca-589dc2b06c37', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1c380da-836a-fc11-4920-589dc20e16cf', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b21738ce-38b6-652b-de8e-589dc2bebd87', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('b26a6856-150f-49ff-c75d-589dc2a8a242', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('b2878d7a-6fa9-06c3-4145-589dc23cc8dc', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b393f3ff-2de8-12ea-a34f-589dc23fb7c3', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3cb5391-8230-e4e8-1efa-589dc2d8ebba', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('b3f26ca2-2390-06d9-19ad-589dc2a638e8', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b40d657e-6710-85f4-9513-589dc2582b6d', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4da075e-29e2-21b1-36c4-589dc2fb2e1b', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4ec144f-a7ef-ccdc-90c7-589dc2ae9fe6', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b5c4506b-859c-2496-e17a-589dc2b5491f', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6586e9b-83f9-2cf7-2a94-589dc2588ba5', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6df7f20-73f8-64c3-48fb-589dc2aa491c', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b702cbea-fb3b-9790-0327-589dc2fc1795', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7aa0415-a0c7-b37c-2195-589dc276b734', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b843929d-fd36-efd5-04c1-589dc288e664', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8ed04b2-bbac-2d7b-b104-589dc25ceb90', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('b90f795f-657b-b4f9-095f-589dc29381f0', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('b96c3f41-818b-85ea-da28-589dc231b57e', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('b99e7bb9-2b37-18ad-1e85-589dc2dcb911', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('b9b91c56-14c2-c932-695d-589dc21053b4', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9e30895-78ba-db2c-f5c7-589dc2a56fb7', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba0f026e-75cd-d32f-68c6-589dc23afac2', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bac5320f-5e9f-a38c-734c-589dc21d7f76', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bace0276-9669-eec6-c43f-589dc2c95f25', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('bb024dbd-f2b4-e205-a0f8-589dc221c80c', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbef4acd-9368-572f-8e3b-589dc2dad3c8', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('bc3a0129-0658-655e-beaf-589dc2827aec', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc50c2bd-edc0-67e7-e1d3-589dc20b4969', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('bd8f30d2-2852-9bf9-584c-589dc2deae5e', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('bd949d39-0c9a-d889-33ca-589dc2a2a4ca', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be195402-e166-cc24-e6a5-589dc215cf74', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('be6d6bdf-6a90-1898-3649-589dc21a8a34', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be7f9f0f-ac32-1166-70ca-589dc230c243', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf020afb-4f90-e537-e289-589dc2d498b9', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf1e10bc-0da6-5cf8-a7c8-589dc268825d', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('bf283214-e677-cf2d-44e9-589dc2d9806b', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('bf836509-c2db-bbd9-ec76-589dc2a106f4', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c05ad06b-e12a-df20-82b0-589dc2ae1b0f', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c13a4bef-343e-c4b3-b89a-589dc279f4bb', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c13b9736-2f9a-b2b3-5a52-589dc21a7258', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1b7fe98-e732-648c-8917-589dc29e93cb', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1f72a2b-6fa3-787c-e971-589dc29bf221', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c2cbc1c1-da13-ee0d-ca8c-589dc2b3703d', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c2f4c71e-12c4-d456-53a7-589dc2161d9a', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('c31e73bd-e478-f18b-3fce-589dc29410e0', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('c3ea8c92-aef0-6830-0f7c-589dc2c642ce', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c40dcb37-512e-f484-1f45-589dc2857001', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c4520bce-c80e-318b-4d52-589dc20f17ef', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c49a08a9-e610-2549-59cc-589dc202fc61', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c4da1ff4-1ade-df0b-7c26-589dc23afe10', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('c4e9d9da-cd10-5c2e-bd07-589dc26f2edf', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('c4fbd73b-7311-adec-cb2d-589dc2c615e4', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('c50d4de8-69d6-ce68-2e16-589dc2779fb0', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c60174ae-1f19-8130-17ae-589dc2233a9a', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6852478-057e-14b4-6b72-589dc2c9a302', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('c6ac8c75-7c4f-154a-3794-589dc24e2fe9', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('c6f1e79b-a3af-ad6f-fbea-589dc2436b7f', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c77d71ce-17b8-3284-7d88-589dc290f52f', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c78c3819-2534-cc39-2024-589dc2d0d9a8', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('c7ee5818-e175-ba99-9945-589dc284002c', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c82593c2-2e74-2654-440a-589dc24b5363', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('c8d347a0-1e57-6da0-384d-589dc24710e0', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c99dacca-f485-c7fe-5e3a-589dc2be0c91', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9b870c8-05df-860d-df14-589dc207cc28', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('c9ec23bf-8b16-a74f-27ed-589dc2fbac79', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca8ecce5-5e02-4cd7-203e-589dc2ed8deb', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb2c32e4-1b60-0dfd-a023-589dc25dc2c8', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb79f91f-2973-ebba-364e-589dc2dc12c8', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('cc9b04cf-b3bb-b3be-ef5b-589dc2e8355e', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ccb0a846-4333-04d0-5205-589dc2fee077', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('ccc92235-0516-448a-b262-589dc2775f45', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd5c50ce-b58e-293c-ee22-589dc2046d2d', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('cd604dfa-e042-65ee-2301-589dc2f4e018', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd8bf40c-b8cc-a90c-720c-589dc291ad12', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('cd996a8e-9273-c75d-659d-589dc2b33b6a', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce96e3d6-6e5c-0179-c24b-589dc2fdc705', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf26cb7f-4038-c6f2-496f-589dc2436b85', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cfc4382e-4f19-1020-2300-589dc292e667', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cfe702da-6ad3-836d-d75e-589dc2b08f78', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d05da2a5-5381-571f-cff1-589dc2a2ba1b', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d095caf9-5cc8-a597-59df-589dc2e65215', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d0c86ea2-567f-a047-1dcd-589dc2e8a4ba', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1062ad5-646e-3b94-b9bf-589dc2b6cc51', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('d1a6269e-9001-4aa1-abd3-589dc24b6974', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('d21179c3-6543-799c-3699-589dc264e8b2', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d228e28b-fd06-ee07-7e3f-589dc25c3a44', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d23ee919-0338-795b-b817-589dc298967f', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d37eb3de-a88f-8bee-17c1-589dc230707f', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('d38bdd22-2d4b-2be4-a9b2-589dc2edd885', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d3a05e67-6017-29f7-0299-589dc26a75e4', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('d4b20720-6867-566d-12ea-589dc293db5f', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d4f0e487-87c1-71f7-d297-589dc2916d62', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('d52b3508-3d66-e30e-29d6-589dc2a5a1c8', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d56025fe-651e-64e4-5160-589dc298855f', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d669e409-6fd9-b30c-d432-589dc2b1cb2f', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('d6ac3f2f-76a4-1858-38bf-589dc29ad6e7', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('d6f16ab1-1e65-e31d-4ff3-589dc20b7207', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d787f463-f756-eaf4-c0e0-589dc2eebcf5', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('d796e379-c429-4611-f86c-589dc2c8921d', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d85d227a-e832-9906-0e6a-589dc2e0a303', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d878effc-6df0-bd7f-67de-589dc2774f44', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8adfacb-d5f7-f1fd-53f1-589dc2f45db2', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('d940895d-6060-26a2-73fe-589dc20ed4af', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da0c2760-89d1-1a6c-b4a3-589dc294e285', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('da41ac8a-80a6-c10f-0ebd-589dc26f03c9', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('da5503a5-76c0-5ae4-d20f-589dc24554d9', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da9ef04c-c55b-0782-b9eb-589dc23a0738', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db270571-3611-7eab-2217-589dc25e5e00', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db8768b4-7fe3-d512-79be-589dc2d51794', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbb8fbbe-04d6-75c9-d273-589dc2bfeaf1', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc1b8187-e6a0-e5f0-d547-589dc2dfdc32', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('dc4b09e5-729f-7c72-bd9d-589dc20c0358', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc7dd5cf-7740-df5c-98b0-589dc2ad3096', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dcabf356-be32-f6ad-887a-589dc2d3ef09', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dceb7d64-69fb-8508-6f22-589dc26bc121', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd21b953-b002-6bf3-ec39-589dc29b5289', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de735515-1037-51ac-bd26-589dc22d0b43', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('de871cd1-fa18-d1bc-4c5d-589dc2535177', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('debfaabf-59d3-bd67-63d2-589dc2b95980', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('deca1513-d20c-092b-dbcf-589dc2d6d39a', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('dee0fa02-5fda-46ea-b4ef-589dc2f89d56', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dfe09087-e1c0-c373-d0ec-589dc2695d49', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('dfff4775-5ea4-74b7-6562-589dc2cfcbb6', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e086ff52-400c-96ef-c130-589dc208362e', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('e18315bd-515a-8015-232e-589dc2f0f03c', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e195578f-1ca1-2cd2-6ece-589dc25322b3', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1a597ab-ad31-d721-e9a9-589dc28c5d47', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e2264f1c-5cbb-a16e-a73e-589dc2055f7f', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2450a73-a397-4abd-0f68-589dc23b2a54', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e246f971-dafe-4655-1a87-589dc2ba517c', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('e29e03d7-7a91-1878-7426-589dc204ede3', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e32159d1-1ff3-700a-ae39-589dc228e652', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e333b0b3-179e-db43-7756-589dc2490974', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3881364-60c1-738c-f03f-589dc233aa48', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3a42ef1-10a1-3fbe-e64f-589dc23bc3df', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4c5244a-50e9-4466-901e-589dc2310ea4', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5729bd6-85ed-ce0c-c96d-589dc27ea7a3', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6132e7b-95e3-80c8-f83e-589dc286baf3', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6ab91ab-3b41-2881-9e17-589dc2b80b8b', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6c32869-5b6f-f2c6-c1fb-589dc2a20803', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e708e180-f071-be9f-3c2b-589dc23c8b8c', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e77965c1-03e0-fc54-3d9d-589dc2d54d4d', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e80624ea-3404-ce36-882f-589dc287885f', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9223c6d-26dd-1f8a-560b-589dc2d34547', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9493ca7-7900-e167-532c-589dc2d8a564', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eac64601-0f8e-4962-abbd-589dc2b0209f', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eadf45c4-cf14-e8aa-c756-589dc20775f4', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eafea4dd-cd40-7d36-64a5-589dc2992c91', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb3ea67d-fbb2-347c-fe46-589dc2bbaf44', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb4159ce-405c-0728-bd72-589dc2d6a18e', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb4e29d7-e04b-6919-d804-589dc22db1eb', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb79301e-0dce-f139-b777-589dc204913d', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('ecd43e0e-9df4-a774-8c2c-589dc29151ef', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ece7d44a-d5b5-ef2d-3450-589dc27c8131', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('ed233860-c98e-4b13-c284-589dc21b4aa5', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee0987b1-2aae-b200-5b3a-589dc22c0eb9', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee0acddf-343e-cc1f-0049-589dc2fc6d05', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee87c683-cdf6-2eac-fd6e-589dc29fdb34', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eebbac44-b760-7557-db12-589dc23bd667', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('ef24f7ce-8b25-31b2-77cb-589dc21b1989', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef2d5a7c-ed8c-f743-54a1-589dc23c1696', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('f003c32f-7ac8-ca85-fa36-589dc2f2e441', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('f0a88943-6daf-4363-961f-589dc2d79cac', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('f0ebf68b-0d11-b1f1-b1ca-589dc210a155', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0ffdbaf-6272-8e94-4c0f-589dc255c7f9', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1210c32-8ae3-6f60-5db5-589dc23a68c8', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1312cb3-ca97-2cc4-0278-589dc242d44f', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('f16082bc-1c42-d01a-0ef1-589dc26dbd2a', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1b4d2ee-9e1e-4a8b-4088-589dc221bad4', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1beeef7-9e58-b50d-72a3-589dc2da3737', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('f2c20b51-0ca6-1739-d6d5-589dc2bbfd5a', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2ed4ac7-9405-5043-e931-589dc23f002c', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('f35a46c8-4e10-ff37-0f64-589dc24b9fe8', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3761ac6-e57d-c67f-1e85-589dc2c7306a', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('f3a00621-618b-cbd1-156f-589dc2bd47e3', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3a1f2ea-6a73-3990-017a-589dc21df781', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3a4e2c0-3a5d-5408-1e3b-589dc2250950', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('fa880e40-6a2d-a3ae-be27-589dc283ee98', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `releases`
--

DROP TABLE IF EXISTS `releases`;
CREATE TABLE IF NOT EXISTS `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `releases`
--

TRUNCATE TABLE `releases`;
-- --------------------------------------------------------

--
-- Structure de la table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `reminders`
--

TRUNCATE TABLE `reminders`;
-- --------------------------------------------------------

--
-- Structure de la table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
CREATE TABLE IF NOT EXISTS `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `reminders_invitees`
--

TRUNCATE TABLE `reminders_invitees`;
-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `roles`
--

TRUNCATE TABLE `roles`;
-- --------------------------------------------------------

--
-- Structure de la table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
CREATE TABLE IF NOT EXISTS `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `roles_modules`
--

TRUNCATE TABLE `roles_modules`;
-- --------------------------------------------------------

--
-- Structure de la table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `roles_users`
--

TRUNCATE TABLE `roles_users`;
-- --------------------------------------------------------

--
-- Structure de la table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
CREATE TABLE IF NOT EXISTS `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `saved_search`
--

TRUNCATE TABLE `saved_search`;
-- --------------------------------------------------------

--
-- Structure de la table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
CREATE TABLE IF NOT EXISTS `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `schedulers`
--

TRUNCATE TABLE `schedulers`;
--
-- Contenu de la table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('4d993b71-00f1-69ca-9f6a-589db27c1e1e', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 16:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('4fc537c8-30f9-f9ee-9c73-589db26b73ce', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 11:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('53c2cb61-cee4-3361-b515-589db26f5db2', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 06:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('55800635-3e51-26b1-610e-589db2eade2f', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 18:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('5745384e-7b7d-7449-def9-589db285996f', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 09:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5967f86b-6938-7ab8-d1c2-589db2147d2b', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 09:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5b0e5885-c3df-0aad-12a8-589db2a78eef', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 09:15:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('5cde7ef5-06dc-ed37-b1fb-589db219d18a', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 11:30:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('5f0a40f2-b563-02b7-b435-589db26f6ffe', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 06:30:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('6127b974-edc4-2a67-daed-589db228125f', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 07:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('62f15804-9822-d8dc-1efc-589db283e5e2', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 09:30:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('650103bb-dfc9-3987-6726-589db2f433b8', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 11:00:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('6697b2f0-b6fb-abe2-ae59-589db218edb5', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 09:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Structure de la table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
CREATE TABLE IF NOT EXISTS `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `securitygroups`
--

TRUNCATE TABLE `securitygroups`;
--
-- Contenu de la table `securitygroups`
--

INSERT INTO `securitygroups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `noninheritable`) VALUES
('6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'Global', '2017-02-10 12:46:26', '2017-02-10 12:46:58', '1', '1', NULL, 0, '1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
CREATE TABLE IF NOT EXISTS `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `securitygroups_acl_roles`
--

TRUNCATE TABLE `securitygroups_acl_roles`;
-- --------------------------------------------------------

--
-- Structure de la table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
CREATE TABLE IF NOT EXISTS `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `securitygroups_audit`
--

TRUNCATE TABLE `securitygroups_audit`;
-- --------------------------------------------------------

--
-- Structure de la table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
CREATE TABLE IF NOT EXISTS `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `securitygroups_default`
--

TRUNCATE TABLE `securitygroups_default`;
--
-- Contenu de la table `securitygroups_default`
--

INSERT INTO `securitygroups_default` (`id`, `securitygroup_id`, `module`, `date_modified`, `deleted`) VALUES
('0b3100ce-ef8f-11e6-a7f0-fa163eb37c15', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'All', '2017-02-10 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
CREATE TABLE IF NOT EXISTS `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `securitygroups_records`
--

TRUNCATE TABLE `securitygroups_records`;
--
-- Contenu de la table `securitygroups_records`
--

INSERT INTO `securitygroups_records` (`id`, `securitygroup_id`, `record_id`, `module`, `date_modified`, `modified_user_id`, `created_by`, `deleted`) VALUES
('13b1ee03-e7aa-80de-94c4-589dc77ddc18', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '11889645-dbcc-d8f8-f34e-589dc78d2227', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('184e3ea2-ae4c-c58a-1dad-589dc814e875', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '15a3d9b6-ee43-1e22-b6d4-589dc884097e', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('1ec29222-4bc6-9315-1ae0-589dd03907b7', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '1a991ff8-211c-30c7-f539-589dd024e734', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('20d82e59-dcb6-e055-1d1a-589dc3bb4eb0', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '11b19f34-ce97-1764-e997-589dc3844c0d', 'Contacts', '2017-02-10 17:10:36', NULL, NULL, 1),
('23a14e23-e8df-7de0-99a8-589dc7ac2935', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '212192d0-34b0-b4d7-daad-589dc7930e82', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('33da4f01-ea9f-6370-68b1-589dc89a4234', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '2d7227b1-352a-c803-4e20-589dc87b9587', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('36e21ed1-57a9-beaf-2253-589dd0f4a70d', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '33ebedb4-f92e-0221-6f14-589dd04b6a7c', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('3e64030d-2808-0c64-730d-589dc722e374', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '3929eb94-2b11-f399-2f31-589dc71adea6', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('3eec6ae1-2794-a75a-673d-589dc86614d3', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '3b6215aa-5f95-e5e3-fd56-589dc89502fb', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('5001007d-4651-a5db-d79d-589dd02e6a73', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '4e1b467c-6729-1aef-c830-589dd0dc1850', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('5b86964b-0900-8dc8-0203-589dc8276f36', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '5939c294-eeda-274c-106a-589dc8e18e0d', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('62fb8e66-554e-c842-4a5f-589dc7c4f2a4', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '5f0fc259-5dd9-c2ab-531e-589dc72014e4', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('69e70b9e-d063-d798-7c21-589dc7dd7595', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '14b40989-f78f-f557-bef3-589dc73faca6', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('6a463421-ded0-0b4b-ad25-589dd2a818d7', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '634f2209-a2e1-ac94-cb46-589dd20b45c8', 'AOS_Quotes', '2017-02-10 14:55:47', NULL, NULL, 1),
('74ececca-afd7-aa06-c9bf-589ddbef1de7', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '72be7739-7f69-7352-86b9-589ddb81c3e4', 'AOS_Quotes', '2017-02-10 17:10:28', NULL, NULL, 1),
('75b384ae-5a7d-cb96-31c2-589dc8962fd9', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '73430908-761b-ccf3-ade2-589dc8bb43d8', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('7e4f8103-6977-c0a7-8b07-589dc70ac92e', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '7b4ee87b-39ed-1407-8a45-589dc7f4333a', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('7f6445e5-eafc-183a-c1ad-589dd2406f00', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '7db993ec-0828-1c33-b960-589dd2f41291', 'AOS_Invoices', '2017-02-10 14:55:19', NULL, NULL, 1),
('856ea1a6-1ef4-a4e5-092a-589dce726bd1', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '832c5f68-266d-c6a8-8dc5-589dce5b838a', 'AOS_Products', '2017-02-10 14:35:03', NULL, NULL, 1),
('85ea7b09-e6fa-5505-0d36-589ddb434450', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '832fb89b-9964-2550-6399-589ddba0e388', 'AOS_Quotes', '2017-02-10 17:10:28', NULL, NULL, 1),
('8ed50f61-0211-ccbc-4921-589dd083aa0b', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '8b4c5103-4fb0-b1d5-e4f6-589dd029a85f', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('964cdb12-8aef-628d-079b-589ddbcb713f', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '94773fbf-510f-8ec1-aec3-589ddbf56c02', 'AOS_Quotes', '2017-02-10 17:10:28', NULL, NULL, 1),
('972533a5-53ac-5ac0-e3dc-589dce5a05b5', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '94820a91-3e8e-14df-d7af-589dcea067d1', 'AOS_Products', '2017-02-10 14:35:03', NULL, NULL, 1),
('97ef5019-0a25-555e-2ad7-589dc72d986f', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '95424c25-e4e7-5f6d-0587-589dc7bd1957', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('9f5da5d0-fca4-78ac-5255-589dd065db79', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '9dad6a0d-eed8-658d-5acb-589dd05a67e3', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('a11518b8-5c90-1143-ee14-589dc8220488', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '99d88095-d046-d33b-305c-589dc803d73b', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('ac702836-7bfc-81f8-8544-589dce916dd3', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'a5f6bfe9-76ee-4238-7962-589dcef9012c', 'AOS_Products', '2017-02-10 14:35:03', NULL, NULL, 1),
('adc49bc2-e92b-507b-26ae-589dd099d879', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'ab900f27-2284-6a93-8324-589dd0e76a05', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('b0515fd1-d44c-95d4-4d22-589dc77c40ad', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('be3d25d8-8233-84a6-254c-589dce646a16', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'bac21d0c-b287-a1e9-d719-589dcedac55e', 'AOS_Products', '2017-02-10 14:35:03', NULL, NULL, 1),
('c31624c5-138b-30e3-0718-589dd04ce97c', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'c0be1d26-9a3b-7f31-f13d-589dd07b44dc', 'AOS_Products', '2017-02-10 17:11:04', NULL, NULL, 1),
('c47d07e2-5c2d-6a8a-92c6-589dc8e36c34', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'be658c37-6e9f-6cf2-1f76-589dc8611eb7', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('c5caa8ff-8196-9424-b69b-589ddbed066f', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'c319be09-e942-d28c-8528-589ddbbc3bda', 'AOS_Quotes', '2017-02-10 17:10:28', NULL, NULL, 1),
('ceb6494b-b1e6-3a71-e446-589dc7183a27', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'cc40d083-90e8-9703-e66f-589dc79088b3', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1),
('d3b98d3e-69c2-13dc-368b-589dd238a3f1', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '9c5a0639-f442-e06d-5ccb-589dd204b2d5', 'Opportunities', '2017-02-10 14:48:08', NULL, NULL, 1),
('d5700531-fcac-eaa5-4611-589ddba8d1cf', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'd34817a8-b1ca-557d-6640-589ddb73a63c', 'AOS_Quotes', '2017-02-10 17:10:28', NULL, NULL, 1),
('d6461036-dae2-db59-bb4a-589dcef8971d', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'd1cf0347-3e11-87f4-5f9f-589dceaf2398', 'AOS_Products', '2017-02-10 14:35:03', NULL, NULL, 1),
('dc4e8002-90f0-ebc4-f020-589dd2b498fc', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'd2ae26f6-ce73-751c-8b48-589dd229e63f', 'Accounts', '2017-02-10 00:00:00', NULL, NULL, 0),
('e9166231-3247-a2c9-3f04-589dc8c5b0aa', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'e66a2510-1295-d99a-6d5e-589dc8fd2f08', 'AOS_Product_Categories', '2017-02-10 14:06:34', NULL, NULL, 1),
('ecd644af-1cea-d768-4768-589dc7a283fa', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'eafd717c-59a3-e7f4-5e26-589dc7e23e54', 'AOS_Product_Categories', '2017-02-10 17:11:11', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
CREATE TABLE IF NOT EXISTS `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `securitygroups_users`
--

TRUNCATE TABLE `securitygroups_users`;
--
-- Contenu de la table `securitygroups_users`
--

INSERT INTO `securitygroups_users` (`id`, `date_modified`, `deleted`, `securitygroup_id`, `user_id`, `primary_group`, `noninheritable`) VALUES
('bac00213-c662-496c-ce9a-589db6d05ef0', '2017-02-10 12:46:58', 0, '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 0),
('dc540e3e-f872-1308-9a54-589db6fca02d', '2017-02-10 12:46:58', 0, '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', '1', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `spots`
--

DROP TABLE IF EXISTS `spots`;
CREATE TABLE IF NOT EXISTS `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `spots`
--

TRUNCATE TABLE `spots`;
-- --------------------------------------------------------

--
-- Structure de la table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
CREATE TABLE IF NOT EXISTS `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `sugarfeed`
--

TRUNCATE TABLE `sugarfeed`;
--
-- Contenu de la table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('12f5f267-69ad-eca7-ada0-589dc3000a9d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:11b19f34-ce97-1764-e997-589dc3844c0d:John DOE]', '2017-02-10 13:45:16', '2017-02-10 17:15:52', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, NULL, 'Contacts', '11b19f34-ce97-1764-e997-589dc3844c0d', NULL, NULL),
('c6972c30-b70a-5b68-8013-589dd261f8c1', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:9c5a0639-f442-e06d-5ccb-589dd204b2d5:test] {SugarFeed.WITH} [Accounts:d2ae26f6-ce73-751c-8b48-589dd229e63f:test] {SugarFeed.FOR} €200.00', '2017-02-10 14:47:54', '2017-02-10 17:15:51', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', NULL, 1, '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Opportunities', '9c5a0639-f442-e06d-5ccb-589dd204b2d5', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `tasks`
--

TRUNCATE TABLE `tasks`;
-- --------------------------------------------------------

--
-- Structure de la table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
CREATE TABLE IF NOT EXISTS `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `templatesectionline`
--

TRUNCATE TABLE `templatesectionline`;
-- --------------------------------------------------------

--
-- Structure de la table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
CREATE TABLE IF NOT EXISTS `tracker` (
`id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `tracker`
--

TRUNCATE TABLE `tracker`;
--
-- Contenu de la table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(4, 'afa4a5b7-5910-97d1-2552-589db62bbf71', '1', 'SecurityGroups', '6b3e96fa-90b8-0dc3-00b3-589db634cbd6', 'Global', '2017-02-10 12:46:45', 'detailview', 'tp79ace7dhmu7j7k9hp2ob5cs2', 1, 0),
(9, '292d9b4a-ce9f-e54b-3d91-589dc4526e55', '1', 'Contacts', '11b19f34-ce97-1764-e997-589dc3844c0d', 'John DOE', '2017-02-10 13:47:43', 'detailview', 'f91461hnfs06m3rkubq2qn6k44', 0, 0),
(15, '8c56a73b-8e9c-61ee-1a2e-589dc59240ea', '1', 'Users', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'demo demo', '2017-02-10 13:50:47', 'save', 'ckr94vkd86vo8ni5g6efrqb283', 1, 0),
(16, 'a185fdac-8c7b-ab5c-bf6c-589dc57318b7', '1', 'Users', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'demo demo', '2017-02-10 13:50:47', 'detailview', 'ckr94vkd86vo8ni5g6efrqb283', 1, 0),
(28, 'efd60d64-62c9-6d49-989f-589dcd29ada8', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', '14b40989-f78f-f557-bef3-589dc73faca6', 'Root', '2017-02-10 14:24:13', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(29, '447c27dc-6106-e481-9a5e-589dcd5e24ff', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', '212192d0-34b0-b4d7-daad-589dc7930e82', 'Home', '2017-02-10 14:24:18', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(32, 'd5b7940c-1e62-ad46-cab1-589dcd20ad59', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', '95424c25-e4e7-5f6d-0587-589dc7bd1957', 'Blouses', '2017-02-10 14:24:28', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(33, 'b62e0d24-89c2-26b9-7c2b-589dcd594d08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', '7b4ee87b-39ed-1407-8a45-589dc7f4333a', 'Tops', '2017-02-10 14:24:32', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(34, '20b9c276-787d-75c5-bcca-589dcdfea01c', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', '3929eb94-2b11-f399-2f31-589dc71adea6', 'Women', '2017-02-10 14:24:34', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(35, 'e1862f04-177f-5a74-256a-589dcdf8b62f', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', 'aa82c1c7-3304-c73c-a3f5-589dc74ec7a3', 'Dresses', '2017-02-10 14:24:46', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(36, 'f3eed42b-6836-ac4a-0608-589dcd5cbb06', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', 'cc40d083-90e8-9703-e66f-589dc79088b3', 'Casual Dresses', '2017-02-10 14:24:49', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(38, '8b17f727-6836-0f9f-5fb4-589dd0644520', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Product_Categories', '11889645-dbcc-d8f8-f34e-589dc78d2227', 'Summer Dresses', '2017-02-10 14:39:15', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(39, 'ac575cf0-daa8-a6d3-3218-589dd04acbb3', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Products', '9dad6a0d-eed8-658d-5acb-589dd05a67e3', 'Printed Summer Dress', '2017-02-10 14:39:30', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(40, 'b47a07d3-1a2c-94ab-9000-589dd2b5aaa0', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Opportunities', '9c5a0639-f442-e06d-5ccb-589dd204b2d5', 'test', '2017-02-10 14:47:55', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(50, '8a642e1b-785d-02f1-927f-589dd3b92636', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Products', '1a991ff8-211c-30c7-f539-589dd024e734', 'Faded Short Sleeves T-shirt', '2017-02-10 14:50:39', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(55, 'af538543-6916-35fa-35d5-589dd45af8f0', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Invoices', '7db993ec-0828-1c33-b960-589dd2f41291', 'test', '2017-02-10 14:55:15', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(56, '5afbe33a-6d16-7e38-4783-589dd4159c52', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Quotes', '634f2209-a2e1-ac94-cb46-589dd20b45c8', 'test', '2017-02-10 14:55:41', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(68, '3e1b0f2b-f763-373d-cebf-589df030768e', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Products', '33ebedb4-f92e-0221-6f14-589dd04b6a7c', 'Blouse', '2017-02-10 16:54:23', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(76, 'bb074952-6efd-91af-ae9b-589df2568197', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Quotes', 'd34817a8-b1ca-557d-6640-589ddb73a63c', 'Order : KHWLILZLL', '2017-02-10 17:02:05', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(78, 'a1274559-fbb1-28a3-1f00-589df2a803bb', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Quotes', '832fb89b-9964-2550-6399-589ddba0e388', 'Order : OHSATSERP', '2017-02-10 17:03:06', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(80, '2a0a01bf-d241-90a9-461e-589df3970ef3', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'AOS_Quotes', '72be7739-7f69-7352-86b9-589ddb81c3e4', 'Order : XKBKNABJK', '2017-02-10 17:10:07', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0),
(81, '73ebc2b0-f45c-5b3e-c112-589df447c406', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'Contacts', '11b19f34-ce97-1764-e997-589dc3844c0d', 'John DOE', '2017-02-10 17:10:26', 'detailview', '06hm1ndseqo0n7l6m7o3oea8e2', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
CREATE TABLE IF NOT EXISTS `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `upgrade_history`
--

TRUNCATE TABLE `upgrade_history`;
-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `users`
--

TRUNCATE TABLE `users`;
--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$i2Ka9vwG$cb9CQ8NZmsaH82IoOws1b1', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'demo', '$1$clm7rTjf$9AukelqfYRnVVnk2a4iwo/', 0, '2017-02-10 13:50:47', NULL, 1, 'demo', 'demo', 0, 0, 1, NULL, '2017-02-10 12:45:01', '2017-02-10 13:50:47', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
CREATE TABLE IF NOT EXISTS `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `users_feeds`
--

TRUNCATE TABLE `users_feeds`;
-- --------------------------------------------------------

--
-- Structure de la table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
CREATE TABLE IF NOT EXISTS `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `users_last_import`
--

TRUNCATE TABLE `users_last_import`;
-- --------------------------------------------------------

--
-- Structure de la table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
CREATE TABLE IF NOT EXISTS `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `users_password_link`
--

TRUNCATE TABLE `users_password_link`;
-- --------------------------------------------------------

--
-- Structure de la table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
CREATE TABLE IF NOT EXISTS `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `users_signatures`
--

TRUNCATE TABLE `users_signatures`;
-- --------------------------------------------------------

--
-- Structure de la table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `user_preferences`
--

TRUNCATE TABLE `user_preferences`;
--
-- Contenu de la table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('137e0ab1-020d-03f3-073d-589dc3163a50', 'Contacts2_CONTACT', 0, '2017-02-10 13:45:33', '2017-02-10 13:45:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('13af8d5c-62f9-1544-693d-589db7a2a56d', 'Home2_OPPORTUNITY', 0, '2017-02-10 12:50:08', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1568700e-7de5-54e1-c884-589db2bb04eb', 'Home2_ACCOUNT', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('19a49b08-6c62-c01e-04cc-589db260e902', 'Home2_LEAD', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('19cd0884-5bae-cd25-5674-589db7c9700e', 'Home2_ACCOUNT', 0, '2017-02-10 12:50:08', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1b701280-3fdc-ba17-e748-589dd306af94', 'Contacts', 0, '2017-02-10 14:53:37', '2017-02-10 14:53:37', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjE0OiJzdWJwYW5lbExheW91dCI7YToxNTp7aTowO3M6MTg6ImNvbnRhY3RfYW9zX3F1b3RlcyI7aToxO3M6MTA6ImFjdGl2aXRpZXMiO2k6MjtzOjc6Imhpc3RvcnkiO2k6MztzOjk6ImRvY3VtZW50cyI7aTo0O3M6MTM6Im9wcG9ydHVuaXRpZXMiO2k6NTtzOjU6ImxlYWRzIjtpOjY7czo5OiJjYW1wYWlnbnMiO2k6NztzOjU6ImNhc2VzIjtpOjg7czo0OiJidWdzIjtpOjk7czo4OiJjb250YWN0cyI7aToxMDtzOjIwOiJjb250YWN0X2Fvc19pbnZvaWNlcyI7aToxMTtzOjIxOiJjb250YWN0X2Fvc19jb250cmFjdHMiO2k6MTI7czoxODoiZnBfZXZlbnRzX2NvbnRhY3RzIjtpOjEzO3M6NzoicHJvamVjdCI7aToxNDtzOjE0OiJzZWN1cml0eWdyb3VwcyI7fX0='),
('1f227266-d102-9b23-c3ce-589db7f16b24', 'Home2_LEAD', 0, '2017-02-10 12:50:08', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1fa987b3-f5eb-5446-52c2-589db29cc756', 'Home2_SUGARFEED', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('20c60ac8-1ccc-eacb-f658-589db7756c1e', 'Home2_CALL', 0, '2017-02-10 12:50:08', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('21674b70-4dab-8c58-c1a9-589df42ab0f0', 'Home2_AOS_PRODUCTS_c36516d3-d931-b941-6761-589df4c', 0, '2017-02-10 17:14:19', '2017-02-10 17:14:19', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('26f07b0d-fb0b-a159-5528-589db74f8e3d', 'Home2_SUGARFEED', 0, '2017-02-10 12:50:08', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2cfd0791-e34a-7600-76e1-589db2cf0c74', 'Home2_MEETING', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('38446d72-11c4-cd1c-a7fe-589db5e546c0', 'SecurityGroups2_SECURITYGROUP', 0, '2017-02-10 12:45:12', '2017-02-10 12:45:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3a494554-fc74-b863-98cc-589db4d44d01', 'Users2_USER', 0, '2017-02-10 12:38:21', '2017-02-10 12:38:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('402ad071-67a3-4c43-49de-589df48e6896', 'Home2_CONTACT', 0, '2017-02-10 17:13:57', '2017-02-10 17:13:57', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4a372811-1676-532e-cac9-589db277ee9c', 'global', 0, '2017-02-10 12:29:09', '2017-02-10 13:50:28', '1', 'YTozNjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjRhMTBkNmE4LTlhNzAtNWFlYi1mYzg2LTU4OWRiMjE1NWU5ZSI7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0xvbmRvbiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7TjtzOjI6InV0IjtzOjE6IjEiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjE6IjEiO3M6MTI6Im1haWxfc210cHNzbCI7aToxO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNToiU2VjdXJpdHlHcm91cHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVGFza3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),
('4a9adc9e-b526-22b7-d58f-589db7545cb9', 'Home2_LEAD_dd37944b-473d-a15b-f849-589db7608cb5', 0, '2017-02-10 12:50:10', '2017-02-10 12:50:10', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4bba903c-6a5c-b565-eb4c-589db2c505a5', 'Home2_LEAD_263aff4d-a959-cc57-836c-589db203bff9', 0, '2017-02-10 12:30:46', '2017-02-10 12:30:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5a08b24d-5ddc-2a15-beff-589dc541fc3d', 'Accounts2_ACCOUNT', 0, '2017-02-10 13:50:28', '2017-02-10 13:50:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5e8c66c5-65e1-17db-6d0a-589dd41c6572', 'AOS_Invoices2_AOS_INVOICES', 0, '2017-02-10 14:55:20', '2017-02-10 14:55:20', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('613c2b59-6dd3-f5df-ab2a-589db547a5b0', 'global', 0, '2017-02-10 12:45:01', '2017-02-10 14:55:20', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YTo0ODp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9Mb25kb24iO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiNjExNGUyMjAtODViMy1lMWI4LWQ2NWUtNTg5ZGI1ZmRjNGIxIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQ29udGFjdHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6IkFPU19Qcm9kdWN0c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoyMzoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToiQU9TX1F1b3Rlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo2OiJUYXNrc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMzoiQU9TX0ludm9pY2VzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('8e861b20-7c5b-b3d5-d3eb-589df4438850', 'Home2_CONTACT_201dac53-1b43-926d-7768-589df4c2df17', 0, '2017-02-10 17:13:57', '2017-02-10 17:13:57', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('99dce446-bcde-7534-42b9-589df4a46fa8', 'Home2_AOS_PRODUCT_CATEGORIES', 0, '2017-02-10 17:14:11', '2017-02-10 17:14:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9e2807e5-60f5-deca-4cd2-589db72496f8', 'Home2_MEETING', 0, '2017-02-10 12:50:08', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a4cab066-4cba-4a3b-4ede-589dc7b85ad1', 'AOS_Product_Categories2_AOS_PRODUCT_CATEGORIES', 0, '2017-02-10 14:02:12', '2017-02-10 14:02:12', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b813d54f-d18f-529a-9c2f-589df45de4ab', 'Home2_AOS_QUOTES', 0, '2017-02-10 17:14:07', '2017-02-10 17:14:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c2f9d105-a76f-ae78-a0ab-589db244560c', 'Home', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjIzMGQ5MGIwLTEwOGItMmVhOC0wNTYzLTU4OWRiMmNjZmI5YiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjIzZGI5NGRhLTM3NDEtYjY0NC01MWRmLTU4OWRiMjE3ZmUwMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI0YmI1YmRlLTI1ZTItNjVjNC04YjFlLTU4OWRiMjJlZGI3ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI1MjY5ZjZmLWQwNWUtMzI3Mi05YWIzLTU4OWRiMjZkZmI3YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjVhNTdjNzctYzYwZS1hMzBmLWM1ZGEtNTg5ZGIyOWY5NzdiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMjYzYWZmNGQtYTk1OS1jYzU3LTgzNmMtNTg5ZGIyMDNiZmY5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIyM2RiOTRkYS0zNzQxLWI2NDQtNTFkZi01ODlkYjIxN2ZlMDEiO2k6MTtzOjM2OiIyNGJiNWJkZS0yNWUyLTY1YzQtOGIxZS01ODlkYjIyZWRiN2QiO2k6MjtzOjM2OiIyNTI2OWY2Zi1kMDVlLTMyNzItOWFiMy01ODlkYjI2ZGZiN2EiO2k6MztzOjM2OiIyNWE1N2M3Ny1jNjBlLWEzMGYtYzVkYS01ODlkYjI5Zjk3N2IiO2k6NDtzOjM2OiIyNjNhZmY0ZC1hOTU5LWNjNTctODM2Yy01ODlkYjIwM2JmZjkiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjIzMGQ5MGIwLTEwOGItMmVhOC0wNTYzLTU4OWRiMmNjZmI5YiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('c6c10ad5-e76d-a958-ff9e-589dc41bbb67', 'Contacts2_CONTACT', 0, '2017-02-10 13:47:12', '2017-02-10 13:47:12', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c94fbbd6-9bcb-5ab1-357f-589db2eac08e', 'Home2_CALL', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cd9148b8-dfea-b096-7b26-589df438c5ff', 'Home2_AOS_PRODUCT_CATEGORIES_7fcc85a4-e1c9-9323-0c', 0, '2017-02-10 17:14:11', '2017-02-10 17:14:11', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d1bdf391-3d05-20fa-b4e9-589db653a1e3', 'ETag', 0, '2017-02-10 12:48:10', '2017-02-10 12:50:08', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('d4a3cbe6-c6a3-188c-7be4-589dd242426e', 'Opportunities2_OPPORTUNITY', 0, '2017-02-10 14:47:19', '2017-02-10 14:47:19', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('da65134e-97df-25f5-08f6-589db24af496', 'ETag', 0, '2017-02-10 12:29:09', '2017-02-10 12:29:09', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('db63091e-4361-8a5f-619e-589db22680a8', 'Home2_OPPORTUNITY', 0, '2017-02-10 12:30:42', '2017-02-10 12:30:42', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dfe09956-4505-8989-c798-589df463da3b', 'Home2_AOS_PRODUCTS', 0, '2017-02-10 17:14:18', '2017-02-10 17:14:18', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e7eaa0e7-f877-a9d8-045f-589db7f58be2', 'Home', 0, '2017-02-10 12:50:08', '2017-02-10 17:15:35', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjU6e3M6MzY6ImRjN2ZjMmZmLTAzNjItZWQzNi04OTllLTU4OWRiN2EyODc4ZiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjIwMWRhYzUzLTFiNDMtOTI2ZC03NzY4LTU4OWRmNGMyZGYxNyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlDb250YWN0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkNvbnRhY3RzIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjE6e3M6MTI6ImRhdGVfZW50ZXJlZCI7YTowOnt9fXM6NToidGl0bGUiO3M6ODoiQ29udGFjdHMiO3M6MTE6Im15SXRlbXNPbmx5IjtiOjA7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6NTp7aTowO3M6NDoibmFtZSI7aToxO3M6NToidGl0bGUiO2k6MjtzOjEwOiJwaG9uZV93b3JrIjtpOjM7czoxMjoiZGF0ZV9lbnRlcmVkIjtpOjQ7czoxODoiYXNzaWduZWRfdXNlcl9uYW1lIjt9czoxMToiYXV0b1JlZnJlc2giO3M6MjoiLTEiO31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQ29udGFjdHMvRGFzaGxldHMvTXlDb250YWN0c0Rhc2hsZXQvTXlDb250YWN0c0Rhc2hsZXQucGhwIjt9czozNjoiOWNlMDNmNjctZDA4OC1mY2E2LWY4MDMtNTg5ZGY0Mjc0NjcyIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJBT1NfUXVvdGVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTA6IkFPU19RdW90ZXMiO3M6Nzoib3B0aW9ucyI7YTo2OntzOjc6ImZpbHRlcnMiO2E6MTp7czoxMjoiZGF0ZV9lbnRlcmVkIjthOjA6e319czo1OiJ0aXRsZSI7czo2OiJRdW90ZXMiO3M6MTE6Im15SXRlbXNPbmx5IjtiOjA7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6NTp7aTowO3M6NjoibnVtYmVyIjtpOjE7czo0OiJuYW1lIjtpOjI7czo1OiJzdGFnZSI7aTozO3M6MTI6InRvdGFsX2Ftb3VudCI7aTo0O3M6MTA6ImV4cGlyYXRpb24iO31zOjExOiJhdXRvUmVmcmVzaCI7czoyOiItMSI7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NzoibW9kdWxlcy9BT1NfUXVvdGVzL0Rhc2hsZXRzL0FPU19RdW90ZXNEYXNobGV0L0FPU19RdW90ZXNEYXNobGV0LnBocCI7fXM6MzY6IjdmY2M4NWE0LWUxYzktOTMyMy0wYzUzLTU4OWRmNGMzMTVmOSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyOToiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjI6e3M6MTI6ImRhdGVfZW50ZXJlZCI7YTowOnt9czoxMzoiZGF0ZV9tb2RpZmllZCI7YTowOnt9fXM6NToidGl0bGUiO3M6MTg6IlByb2R1Y3QgQ2F0ZWdvcmllcyI7czoxMToibXlJdGVtc09ubHkiO2I6MDtzOjExOiJkaXNwbGF5Um93cyI7czoxOiI1IjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7YToyOntpOjA7czo0OiJuYW1lIjtpOjE7czoxMjoiZGF0ZV9lbnRlcmVkIjt9czoxMToiYXV0b1JlZnJlc2giO3M6MjoiLTEiO31zOjEyOiJmaWxlTG9jYXRpb24iO3M6MTAzOiJtb2R1bGVzL0FPU19Qcm9kdWN0X0NhdGVnb3JpZXMvRGFzaGxldHMvQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllc0Rhc2hsZXQvQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllc0Rhc2hsZXQucGhwIjt9czozNjoiYzM2NTE2ZDMtZDkzMS1iOTQxLTY3NjEtNTg5ZGY0Y2RjY2NkIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE5OiJBT1NfUHJvZHVjdHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMjoiQU9TX1Byb2R1Y3RzIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjI6e3M6MTI6ImRhdGVfZW50ZXJlZCI7YTowOnt9czoxMzoiZGF0ZV9tb2RpZmllZCI7YTowOnt9fXM6NToidGl0bGUiO3M6ODoiUHJvZHVjdHMiO3M6MTE6Im15SXRlbXNPbmx5IjtiOjA7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6Mjp7aTowO3M6NDoibmFtZSI7aToxO3M6MTI6ImRhdGVfZW50ZXJlZCI7fXM6MTE6ImF1dG9SZWZyZXNoIjtzOjI6Ii0xIjt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjczOiJtb2R1bGVzL0FPU19Qcm9kdWN0cy9EYXNobGV0cy9BT1NfUHJvZHVjdHNEYXNobGV0L0FPU19Qcm9kdWN0c0Rhc2hsZXQucGhwIjt9fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIyMDFkYWM1My0xYjQzLTkyNmQtNzc2OC01ODlkZjRjMmRmMTciO2k6MTtzOjM2OiI5Y2UwM2Y2Ny1kMDg4LWZjYTYtZjgwMy01ODlkZjQyNzQ2NzIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6Mzp7aTowO3M6MzY6ImMzNjUxNmQzLWQ5MzEtYjk0MS02NzYxLTU4OWRmNGNkY2NjZCI7aToxO3M6MzY6IjdmY2M4NWE0LWUxYzktOTMyMy0wYzUzLTU4OWRmNGMzMTVmOSI7aToyO3M6MzY6ImRjN2ZjMmZmLTAzNjItZWQzNi04OTllLTU4OWRiN2EyODc4ZiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('e81a34a7-c205-633c-5f97-589df4cb70c1', 'Home2_AOS_QUOTES_9ce03f67-d088-fca6-f803-589df4274', 0, '2017-02-10 17:14:07', '2017-02-10 17:14:07', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eae97574-7f5a-0041-930c-589dd254bac3', 'AOS_Quotes2_AOS_QUOTES', 0, '2017-02-10 14:48:17', '2017-02-10 14:48:17', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ee34f5dd-25e9-10ba-d001-589dd2d61f49', 'Accounts2_ACCOUNT', 0, '2017-02-10 14:47:24', '2017-02-10 14:47:24', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f5aa0f00-d930-3113-ca9e-589dc6351970', 'AOS_Products2_AOS_PRODUCTS', 0, '2017-02-10 13:57:17', '2017-02-10 13:57:17', '32a2a5b3-53fd-009b-ff29-589db5bbd2f4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Structure de la table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
CREATE TABLE IF NOT EXISTS `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vider la table avant d'insérer `vcals`
--

TRUNCATE TABLE `vcals`;
--
-- Index pour les tables exportées
--

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_accnt_id_del` (`id`,`deleted`), ADD KEY `idx_accnt_name_del` (`name`,`deleted`), ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`), ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Index pour la table `accounts_audit`
--
ALTER TABLE `accounts_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Index pour la table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_acc_bug_acc` (`account_id`), ADD KEY `idx_acc_bug_bug` (`bug_id`), ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Index pour la table `accounts_cases`
--
ALTER TABLE `accounts_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_acc_case_acc` (`account_id`), ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Index pour la table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_account_contact` (`account_id`,`contact_id`), ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Index pour la table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`), ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Index pour la table `acl_actions`
--
ALTER TABLE `acl_actions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aclaction_id_del` (`id`,`deleted`), ADD KEY `idx_category_name` (`category`,`name`);

--
-- Index pour la table `acl_roles`
--
ALTER TABLE `acl_roles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Index pour la table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_acl_role_id` (`role_id`), ADD KEY `idx_acl_action_id` (`action_id`), ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Index pour la table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aclrole_id` (`role_id`), ADD KEY `idx_acluser_id` (`user_id`), ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Index pour la table `address_book`
--
ALTER TABLE `address_book`
 ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Index pour la table `alerts`
--
ALTER TABLE `alerts`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Index pour la table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Index pour la table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`), ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Index pour la table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Index pour la table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
 ADD PRIMARY KEY (`id`), ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`), ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Index pour la table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Index pour la table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aod_index`
--
ALTER TABLE `aod_index`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_record_module` (`record_module`), ADD KEY `idx_record_id` (`record_id`);

--
-- Index pour la table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Index pour la table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Index pour la table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Index pour la table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
 ADD PRIMARY KEY (`id`), ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Index pour la table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Index pour la table `aop_case_events`
--
ALTER TABLE `aop_case_events`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Index pour la table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Index pour la table `aor_charts`
--
ALTER TABLE `aor_charts`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aor_conditions`
--
ALTER TABLE `aor_conditions`
 ADD PRIMARY KEY (`id`), ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Index pour la table `aor_fields`
--
ALTER TABLE `aor_fields`
 ADD PRIMARY KEY (`id`), ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Index pour la table `aor_reports`
--
ALTER TABLE `aor_reports`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Index pour la table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_contracts`
--
ALTER TABLE `aos_contracts`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Index pour la table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
 ADD PRIMARY KEY (`id`), ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Index pour la table `aos_invoices`
--
ALTER TABLE `aos_invoices`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Index pour la table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Index pour la table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Index pour la table `aos_products`
--
ALTER TABLE `aos_products`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Index pour la table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Index pour la table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Index pour la table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Index pour la table `aos_quotes`
--
ALTER TABLE `aos_quotes`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
 ADD PRIMARY KEY (`id`), ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Index pour la table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Index pour la table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
 ADD PRIMARY KEY (`id`), ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Index pour la table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
 ADD PRIMARY KEY (`id`), ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Index pour la table `aow_actions`
--
ALTER TABLE `aow_actions`
 ADD PRIMARY KEY (`id`), ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Index pour la table `aow_conditions`
--
ALTER TABLE `aow_conditions`
 ADD PRIMARY KEY (`id`), ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Index pour la table `aow_processed`
--
ALTER TABLE `aow_processed`
 ADD PRIMARY KEY (`id`), ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`), ADD KEY `aow_processed_index_status` (`status`), ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Index pour la table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`), ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Index pour la table `aow_workflow`
--
ALTER TABLE `aow_workflow`
 ADD PRIMARY KEY (`id`), ADD KEY `aow_workflow_index_status` (`status`);

--
-- Index pour la table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Index pour la table `bugs`
--
ALTER TABLE `bugs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `bugsnumk` (`bug_number`), ADD KEY `bug_number` (`bug_number`), ADD KEY `idx_bug_name` (`name`), ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Index pour la table `bugs_audit`
--
ALTER TABLE `bugs_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Index pour la table `calls`
--
ALTER TABLE `calls`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_call_name` (`name`), ADD KEY `idx_status` (`status`), ADD KEY `idx_calls_date_start` (`date_start`), ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`), ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Index pour la table `calls_contacts`
--
ALTER TABLE `calls_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_call_call` (`call_id`), ADD KEY `idx_con_call_con` (`contact_id`), ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Index pour la table `calls_leads`
--
ALTER TABLE `calls_leads`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_lead_call_call` (`call_id`), ADD KEY `idx_lead_call_lead` (`lead_id`), ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Index pour la table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Index pour la table `calls_users`
--
ALTER TABLE `calls_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_usr_call_call` (`call_id`), ADD KEY `idx_usr_call_usr` (`user_id`), ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Index pour la table `campaigns`
--
ALTER TABLE `campaigns`
 ADD PRIMARY KEY (`id`), ADD KEY `camp_auto_tracker_key` (`tracker_key`), ADD KEY `idx_campaign_name` (`name`);

--
-- Index pour la table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Index pour la table `campaign_log`
--
ALTER TABLE `campaign_log`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_camp_tracker` (`target_tracker_key`), ADD KEY `idx_camp_campaign_id` (`campaign_id`), ADD KEY `idx_camp_more_info` (`more_information`), ADD KEY `idx_target_id` (`target_id`), ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Index pour la table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
 ADD PRIMARY KEY (`id`), ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Index pour la table `cases`
--
ALTER TABLE `cases`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `casesnumk` (`case_number`), ADD KEY `case_number` (`case_number`), ADD KEY `idx_case_name` (`name`), ADD KEY `idx_account_id` (`account_id`), ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Index pour la table `cases_audit`
--
ALTER TABLE `cases_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Index pour la table `cases_bugs`
--
ALTER TABLE `cases_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cas_bug_cas` (`case_id`), ADD KEY `idx_cas_bug_bug` (`bug_id`), ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Index pour la table `cases_cstm`
--
ALTER TABLE `cases_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `config`
--
ALTER TABLE `config`
 ADD KEY `idx_config_cat` (`category`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`), ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`), ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`), ADD KEY `idx_reports_to_id` (`reports_to_id`), ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`), ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Index pour la table `contacts_audit`
--
ALTER TABLE `contacts_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Index pour la table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_bug_con` (`contact_id`), ADD KEY `idx_con_bug_bug` (`bug_id`), ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Index pour la table `contacts_cases`
--
ALTER TABLE `contacts_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_case_con` (`contact_id`), ADD KEY `idx_con_case_case` (`case_id`), ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Index pour la table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `contacts_users`
--
ALTER TABLE `contacts_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_users_con` (`contact_id`), ADD KEY `idx_con_users_user` (`user_id`), ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Index pour la table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`), ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Index pour la table `currencies`
--
ALTER TABLE `currencies`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Index pour la table `custom_fields`
--
ALTER TABLE `custom_fields`
 ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Index pour la table `documents_accounts`
--
ALTER TABLE `documents_accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`), ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Index pour la table `documents_bugs`
--
ALTER TABLE `documents_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`), ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Index pour la table `documents_cases`
--
ALTER TABLE `documents_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_cases_case_id` (`case_id`,`document_id`), ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Index pour la table `documents_contacts`
--
ALTER TABLE `documents_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`), ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Index pour la table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`), ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Index pour la table `document_revisions`
--
ALTER TABLE `document_revisions`
 ADD PRIMARY KEY (`id`), ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Index pour la table `eapm`
--
ALTER TABLE `eapm`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Index pour la table `emailman`
--
ALTER TABLE `emailman`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`), ADD KEY `idx_eman_campaign_id` (`campaign_id`), ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Index pour la table `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_email_name` (`name`), ADD KEY `idx_message_id` (`message_id`), ADD KEY `idx_email_parent_id` (`parent_id`), ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Index pour la table `emails_beans`
--
ALTER TABLE `emails_beans`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_emails_beans_bean_id` (`bean_id`), ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Index pour la table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`), ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Index pour la table `emails_text`
--
ALTER TABLE `emails_text`
 ADD PRIMARY KEY (`email_id`), ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Index pour la table `email_addresses`
--
ALTER TABLE `email_addresses`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`), ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Index pour la table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_email_address_id` (`email_address_id`), ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Index pour la table `email_cache`
--
ALTER TABLE `email_cache`
 ADD KEY `idx_ie_id` (`ie_id`), ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`), ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`), ADD KEY `idx_mail_subj` (`subject`), ADD KEY `idx_mail_to` (`toaddr`);

--
-- Index pour la table `email_marketing`
--
ALTER TABLE `email_marketing`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_emmkt_name` (`name`), ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Index pour la table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
 ADD PRIMARY KEY (`id`), ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Index pour la table `email_templates`
--
ALTER TABLE `email_templates`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_email_template_name` (`name`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_meta_id_del` (`id`,`deleted`), ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Index pour la table `folders`
--
ALTER TABLE `folders`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Index pour la table `folders_rel`
--
ALTER TABLE `folders_rel`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`), ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Index pour la table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Index pour la table `fp_events`
--
ALTER TABLE `fp_events`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Index pour la table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
 ADD PRIMARY KEY (`id`), ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Index pour la table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`), ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Index pour la table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Index pour la table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Index pour la table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Index pour la table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Index pour la table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`), ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Index pour la table `import_maps`
--
ALTER TABLE `import_maps`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Index pour la table `inbound_email`
--
ALTER TABLE `inbound_email`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Index pour la table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Index pour la table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Index pour la table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Index pour la table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
 ADD PRIMARY KEY (`id`), ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Index pour la table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
 ADD PRIMARY KEY (`id`), ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Index pour la table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Index pour la table `job_queue`
--
ALTER TABLE `job_queue`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`), ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`), ADD KEY `idx_status_entered` (`status`,`date_entered`), ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Index pour la table `leads`
--
ALTER TABLE `leads`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`), ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`), ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`), ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`), ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`), ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`), ADD KEY `idx_lead_assigned` (`assigned_user_id`), ADD KEY `idx_lead_contact` (`contact_id`), ADD KEY `idx_reports_to` (`reports_to_id`), ADD KEY `idx_lead_phone_work` (`phone_work`), ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Index pour la table `leads_audit`
--
ALTER TABLE `leads_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Index pour la table `leads_cstm`
--
ALTER TABLE `leads_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `linked_documents`
--
ALTER TABLE `linked_documents`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Index pour la table `meetings`
--
ALTER TABLE `meetings`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_mtg_name` (`name`), ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`), ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`), ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Index pour la table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_mtg_mtg` (`meeting_id`), ADD KEY `idx_con_mtg_con` (`contact_id`), ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Index pour la table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `meetings_leads`
--
ALTER TABLE `meetings_leads`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_lead_meeting_meeting` (`meeting_id`), ADD KEY `idx_lead_meeting_lead` (`lead_id`), ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Index pour la table `meetings_users`
--
ALTER TABLE `meetings_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_usr_mtg_mtg` (`meeting_id`), ADD KEY `idx_usr_mtg_usr` (`user_id`), ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_note_name` (`name`), ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`), ADD KEY `idx_note_contact` (`contact_id`), ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Index pour la table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Index pour la table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
 ADD PRIMARY KEY (`conskey`,`nonce`), ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Index pour la table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
 ADD PRIMARY KEY (`id`,`deleted`), ADD KEY `oauth_state_ts` (`tstate`,`token_ts`), ADD KEY `constoken_key` (`consumer`);

--
-- Index pour la table `opportunities`
--
ALTER TABLE `opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_opp_name` (`name`), ADD KEY `idx_opp_assigned` (`assigned_user_id`), ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Index pour la table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Index pour la table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_con_opp_con` (`contact_id`), ADD KEY `idx_con_opp_opp` (`opportunity_id`), ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Index pour la table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `outbound_email`
--
ALTER TABLE `outbound_email`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projects_accounts`
--
ALTER TABLE `projects_accounts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_acct_proj` (`project_id`), ADD KEY `idx_proj_acct_acct` (`account_id`), ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Index pour la table `projects_bugs`
--
ALTER TABLE `projects_bugs`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_bug_proj` (`project_id`), ADD KEY `idx_proj_bug_bug` (`bug_id`), ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Index pour la table `projects_cases`
--
ALTER TABLE `projects_cases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_case_proj` (`project_id`), ADD KEY `idx_proj_case_case` (`case_id`), ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Index pour la table `projects_contacts`
--
ALTER TABLE `projects_contacts`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_con_proj` (`project_id`), ADD KEY `idx_proj_con_con` (`contact_id`), ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Index pour la table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_opp_proj` (`project_id`), ADD KEY `idx_proj_opp_opp` (`opportunity_id`), ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Index pour la table `projects_products`
--
ALTER TABLE `projects_products`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_proj_prod_project` (`project_id`), ADD KEY `idx_proj_prod_product` (`product_id`), ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Index pour la table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Index pour la table `project_cstm`
--
ALTER TABLE `project_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `project_task`
--
ALTER TABLE `project_task`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `project_task_audit`
--
ALTER TABLE `project_task_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Index pour la table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
 ADD PRIMARY KEY (`id`), ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Index pour la table `prospects`
--
ALTER TABLE `prospects`
 ADD PRIMARY KEY (`id`), ADD KEY `prospect_auto_tracker_key` (`tracker_key`), ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`), ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`), ADD KEY `idx_prospects_id_del` (`id`,`deleted`), ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Index pour la table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
 ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `prospect_lists`
--
ALTER TABLE `prospect_lists`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_prospect_list_name` (`name`);

--
-- Index pour la table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_plp_pro_id` (`prospect_list_id`), ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Index pour la table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_pro_id` (`prospect_list_id`), ADD KEY `idx_cam_id` (`campaign_id`), ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Index pour la table `relationships`
--
ALTER TABLE `relationships`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Index pour la table `releases`
--
ALTER TABLE `releases`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Index pour la table `reminders`
--
ALTER TABLE `reminders`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_reminder_name` (`name`), ADD KEY `idx_reminder_deleted` (`deleted`), ADD KEY `idx_reminder_related_event_module` (`related_event_module`), ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Index pour la table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_reminder_invitee_name` (`name`), ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`), ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`), ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`), ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Index pour la table `roles_modules`
--
ALTER TABLE `roles_modules`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_role_id` (`role_id`), ADD KEY `idx_module_id` (`module_id`);

--
-- Index pour la table `roles_users`
--
ALTER TABLE `roles_users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_ru_role_id` (`role_id`), ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Index pour la table `saved_search`
--
ALTER TABLE `saved_search`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Index pour la table `schedulers`
--
ALTER TABLE `schedulers`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Index pour la table `securitygroups`
--
ALTER TABLE `securitygroups`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Index pour la table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`), ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Index pour la table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
 ADD PRIMARY KEY (`id`), ADD KEY `securitygroups_users_idxa` (`securitygroup_id`), ADD KEY `securitygroups_users_idxb` (`user_id`), ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`), ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Index pour la table `spots`
--
ALTER TABLE `spots`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sugarfeed`
--
ALTER TABLE `sugarfeed`
 ADD PRIMARY KEY (`id`), ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_tsk_name` (`name`), ADD KEY `idx_task_con_del` (`contact_id`,`deleted`), ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`), ADD KEY `idx_task_assigned` (`assigned_user_id`), ADD KEY `idx_task_status` (`status`);

--
-- Index pour la table `templatesectionline`
--
ALTER TABLE `templatesectionline`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tracker`
--
ALTER TABLE `tracker`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_tracker_iid` (`item_id`), ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`), ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`), ADD KEY `idx_tracker_monitor_id` (`monitor_id`), ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Index pour la table `upgrade_history`
--
ALTER TABLE `upgrade_history`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Index pour la table `users_feeds`
--
ALTER TABLE `users_feeds`
 ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Index pour la table `users_last_import`
--
ALTER TABLE `users_last_import`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Index pour la table `users_password_link`
--
ALTER TABLE `users_password_link`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_username` (`username`);

--
-- Index pour la table `users_signatures`
--
ALTER TABLE `users_signatures`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Index pour la table `user_preferences`
--
ALTER TABLE `user_preferences`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Index pour la table `vcals`
--
ALTER TABLE `vcals`
 ADD PRIMARY KEY (`id`), ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bugs`
--
ALTER TABLE `bugs`
MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `campaigns`
--
ALTER TABLE `campaigns`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cases`
--
ALTER TABLE `cases`
MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `emailman`
--
ALTER TABLE `emailman`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prospects`
--
ALTER TABLE `prospects`
MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tracker`
--
ALTER TABLE `tracker`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
