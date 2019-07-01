-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2019 at 03:36 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.1.27-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fexcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
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

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
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
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('111a648f-d911-e285-2e75-5ccc6097da7b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('1187fdb3-42b1-1e4a-5408-5ccc6110128f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('126fe368-43b1-08a8-d215-5ccc60b63cd9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('127471ea-4ac0-8994-638d-5ccc61504826', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('135595b4-e152-0235-6581-5ccc6156772c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('14270f78-ba60-b728-9693-5ccc61a16ebe', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('1435747a-381b-c9b7-a433-5ccc61d8d95c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'EAPM', 'module', 90, 0),
('14cbe5ed-05cf-79a2-eea7-5ccc61cbff98', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('14f00a75-b592-0263-8ea4-5ccc608cd9ed', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Alerts', 'module', 90, 0),
('1563b7d1-49fc-ad1d-2313-5ccc61190505', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('1685ab56-a9d7-13df-497c-5ccc61660a15', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('16ec0d40-8b08-7152-e655-5ccc608be15e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('1738c879-4264-9c21-fc00-5ccc6189132e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('177734ae-c498-5ec7-275f-5ccc612ffb41', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('18656de4-6d63-515a-ba3e-5ccc6043f89e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Cases', 'module', 90, 0),
('186902ac-1fad-efad-1f07-5ccc60e83be4', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Tasks', 'module', 90, 0),
('19376bd4-fdd2-5192-1917-5ccc607b3e55', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('1978bd14-ddbd-f283-d1cc-5ccc61d2a157', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Spots', 'module', 90, 0),
('19910629-7c4d-ec32-67b6-5ccc610a61f5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('1a0edcd5-9513-6d93-9a38-5ccc6015feb0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Leads', 'module', 90, 0),
('1a6cc53c-759b-11d4-ca56-5ccc619f3c5d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('1ab75f68-7437-c88f-1332-5ccc613e3443', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('1c0e2f4b-d14b-5b9e-42c9-5ccc60adcf76', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Notes', 'module', 89, 0),
('1c1a644a-90fb-fc46-9464-5ccc6101ac2a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'FP_events', 'module', 90, 0),
('1c57a796-00f1-246c-c8a1-5ccc615ab0c6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1c588e4d-992e-4a19-8bbc-5ccc608834e5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('1cde1ce9-ce0d-a88a-7187-5ccc605cf8e5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Users', 'module', 90, 0),
('1d45bc82-7211-a470-a8b9-5ccc60603ff8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('1e21dc5f-21a6-7819-6891-5ccc60ded348', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Tasks', 'module', 90, 0),
('1e4a6aa0-f5fc-7b2a-05df-5ccc614d4dc4', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('1e5ff09b-11b3-9cb5-f6e0-5ccc6026b393', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Contacts', 'module', 90, 0),
('1f30b2ea-77e5-e8af-e6e2-5ccc612a5e65', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('1f6d47ee-2d25-c137-1aea-5ccc615f8494', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('20574be5-40b7-138b-5ace-5ccc619bf5cf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('20c4e6e4-2053-8dc7-630b-5ccc601640bb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('20f8028c-9c6f-d1cf-56ca-5ccc614806f6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('2156cb72-1876-7dd5-7b8c-5ccc60c5d8d7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Emails', 'module', 90, 0),
('220a78b8-5df4-fc19-7ed0-5ccc6042b541', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Accounts', 'module', 90, 0),
('2298cc34-102c-46d0-af65-5ccc61cd4bd5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('240c119a-eee7-9bd0-4a55-5ccc8b44d49d', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'access', 'BW_Monthly_Calculation', 'module', 89, 0),
('243511eb-0f74-5b68-1926-5ccc614b7dce', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('2610ba06-dfc4-1f28-6013-5ccc61accade', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('262eb905-b55e-8a92-edb3-5ccc60adf926', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Meetings', 'module', 90, 0),
('264403a8-7eab-7c23-b4cc-5ccc605e0b32', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('272dc95a-6f05-68c7-0b36-5ccc611e0256', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('276b7dc0-3138-1b94-9042-5ccc6183bd3e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('280474aa-6bd8-94a5-8055-5ccc8c8b7539', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'edit', 'BW_Transaction', 'module', 90, 0),
('28ed665c-6d92-fa49-7cee-5ccc61a15739', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('29c1e14d-312b-b102-6cc4-5ccc61706f52', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('2a650bec-3ebc-943f-0355-5ccc619a1acd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('2ac13d43-9bd7-f54d-0835-5ccc61ad7029', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('2b2a7b02-9d3c-d5a5-8a83-5ccc616c8aa7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('2b70e3f3-106d-54ac-3c00-5ccc611344cf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('2bf80400-d286-f93f-0a46-5ccc61220c69', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('2cf56bc8-bb15-eebf-81b9-5ccc60a86f42', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Calls', 'module', 90, 0),
('2d24221d-350e-4b88-c288-5ccc61e99266', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('2dbf53f9-e486-d6d7-11d9-5ccc61067406', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('2eae08e4-116a-f412-c73f-5ccc60cc7026', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Contacts', 'module', 89, 0),
('2f1345b3-e44a-de6f-a6c3-5ccc619443af', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('2f44ce10-b69d-f419-3538-5ccc608a366c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Alerts', 'module', 90, 0),
('2f729cee-3f2e-1188-a2e4-5ccc61907538', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('2fffb264-a29e-7cd6-cd59-5ccc6080909c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Leads', 'module', 90, 0),
('30399981-ad22-abaf-9be3-5ccc61d0ba13', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('3066c152-07c3-8efd-80bd-5ccc6103b2dd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('30cc9b1e-8955-49e7-0b49-5ccc61a400d3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('31705870-42a2-398f-dd0b-5ccc617a3855', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('31a45d25-31ba-060b-3dc3-5ccc61fe8c96', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'FP_events', 'module', 90, 0),
('31c02c55-d137-d697-4044-5ccc61d6b192', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('323400f1-556d-d241-cb50-5ccc60772ab8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('329c0f6e-18fa-90a8-7fb0-5ccc61864fc3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('32a7bc2c-b77f-7980-176c-5ccc611d9ce9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('32f00fc6-aaa9-f8cd-f50a-5ccc60e3f30e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Emails', 'module', 90, 0),
('333caf0e-b41c-276e-17ff-5ccc610e4302', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('3398280a-c64e-3fdc-f81b-5ccc60d58971', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Prospects', 'module', 90, 0),
('347c8e7c-501f-daac-3666-5ccc60fe1fc8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('349c53c7-96b7-52bd-6ca7-5ccc60620f6e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('34b386be-2fdd-e621-309b-5ccc60437807', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('355fe39b-57e4-05b2-f502-5ccc616c90f5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('35adbed1-261b-19cd-1396-5ccc60caa5bf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('36bd4b4a-b2c4-e96f-c499-5ccc609cf4cf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Cases', 'module', 90, 0),
('37424a30-9589-56a9-a2ed-5ccc60b5f719', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('374e85ce-ed85-db1f-5774-5ccc61ea6fd0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('37763771-66c5-2557-05a8-5ccc8cae8f1e', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'delete', 'BW_Transaction', 'module', 90, 0),
('37a4a357-1999-436d-1146-5ccc617dda3a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('386846b2-d39a-571f-c4a4-5ccc60ab74c0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Users', 'module', 90, 0),
('38d05a44-68fb-7442-5e8d-5ccc6132edad', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('392abbdf-07bb-85c4-9c79-5ccc60419a09', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Emails', 'module', 90, 0),
('398ce562-5061-a267-e4bc-5ccc607adb2c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Notes', 'module', 90, 0),
('39a420c0-de64-2acc-f638-5ccc6180cb96', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('3a1dabb3-46b1-93f6-2eef-5ccc611e1988', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('3b611f75-b8f8-5e76-bc42-5ccc61ec05cb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('3cc4a058-61c9-e4ca-ef29-5ccc605d64ed', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Contacts', 'module', 90, 0),
('3cc8407d-622b-b314-ff2a-5ccc60ce3da8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Accounts', 'module', 90, 0),
('3d61270a-6ffa-648b-1ece-5ccc61cef5b8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('3e23d991-5b97-a67d-92b1-5ccc61ed7d15', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('3e61ee57-5249-115a-f483-5ccc61e14cc3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('3e8ebf57-43a8-e7c3-fb48-5ccc61b11b51', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Spots', 'module', 90, 0),
('3ee9125c-9308-b3ae-e21c-5ccc61797eb4', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('3fb8a9ba-99cc-1d56-aa80-5ccc617938d3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('40843197-8697-b541-895a-5ccc613459b8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('414694d6-af15-0b5c-2466-5ccc607c1399', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Meetings', 'module', 90, 0),
('4176c273-d22e-3e58-075c-5ccc6099bf78', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('41d5aa0e-aed5-98db-aa62-5ccc61b9ea39', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('42f7fd9c-b870-f09e-6303-5ccc61cff964', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('4362fc80-459f-d250-0d3d-5ccc61a41f17', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('4569a37c-4c0f-b594-b86c-5ccc6050f7f6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Project', 'module', 89, 0),
('4613971e-12f6-653a-741b-5ccc61a4f587', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('471186fe-0eb0-d307-ba54-5ccc6122563b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('47121c8b-d88f-1454-15f2-5ccc8b9529c4', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'view', 'BW_Monthly_Calculation', 'module', 90, 0),
('47413e1e-cfab-b741-dc4e-5ccc61148002', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('4782252f-3d1a-f58c-8c49-5ccc60d83a8b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Calls', 'module', 90, 0),
('47e2e157-14cb-7e4e-1ac6-5ccc60b02e86', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Documents', 'module', 89, 0),
('48520077-091f-bd4e-cf93-5ccc6164f4ee', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('491a19c4-319b-93d3-fa64-5ccc612467fb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('493d3e5f-50a8-ad81-919f-5ccc61174a88', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('49501dfc-1038-9865-d445-5ccc60caeeab', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('4b0d7c93-2cd1-96d1-1b39-5ccc61e4abfc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('4b27abd5-b3b4-4711-e7e2-5ccc60fe507d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Leads', 'module', 90, 0),
('4bd8ee12-1160-0514-3825-5ccc603ffb30', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('4bf50aac-bf42-ec65-de48-5ccc615a5e38', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('4c8780ea-3c01-261c-1037-5ccc61bfbc02', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('4d8a1680-b1ba-34db-c042-5ccc8c3500ed', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'import', 'BW_Transaction', 'module', 90, 0),
('4e03f692-ec14-d080-0103-5ccc61ec1507', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('4f05421e-21ce-bb96-6cba-5ccc603ed2a3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Prospects', 'module', 90, 0),
('4f64613a-ef38-1718-4429-5ccc6058bd66', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('50126dbf-ae05-963b-acc1-5ccc607b4c36', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('50763440-4b29-32eb-6c68-5ccc61a8476f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('50c294d0-08dc-55d5-6669-5ccc61383d14', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('5144461d-867c-6a6d-a5eb-5ccc60ddbd81', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Bugs', 'module', 89, 0),
('51dbda2d-23d2-af7c-eee8-5ccc6157ffd2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('527e67e5-0ebd-4028-caa2-5ccc61fb9986', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('53e9d252-357e-6e3e-0511-5ccc603a48da', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Cases', 'module', 90, 0),
('54033974-d93d-59d0-30da-5ccc6097a6fc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Notes', 'module', 90, 0),
('54667cf8-2ebc-8dd7-c5be-5ccc61fbe6fc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('5497867e-6292-3025-85ad-5ccc600b9a2a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('54be6a16-1e32-956b-0ea1-5ccc6052d2f9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('54ca0bbd-49cf-9bfe-2463-5ccc61f91755', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('54da14e9-6af9-84f9-5d46-5ccc60797aa2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('552f1be8-4c97-8f85-127f-5ccc6169ac5e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('558e6de5-9291-c970-a228-5ccc610ab983', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('5627a7ef-d6d1-1971-4910-5ccc60b1ea83', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Emails', 'module', 90, 0),
('56554e47-5b85-fa36-fdfa-5ccc61c258ca', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('566485f3-87ce-d36c-48b8-5ccc61749fad', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('56d30acc-1c64-15b2-fde1-5ccc6074a1b2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Meetings', 'module', 89, 0),
('5751d837-4fda-98f9-0df7-5ccc8b24db30', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'list', 'BW_Monthly_Calculation', 'module', 90, 0),
('58befaaf-3bbc-f7f2-85ad-5ccc619706c2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('58da6e45-5c0b-dc2a-ba93-5ccc61a6fa7d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('598682cc-8dc3-5670-0ece-5ccc61d1d042', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('59c27503-9c13-32e2-d15f-5ccc61a957aa', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Spots', 'module', 90, 0),
('5afc425b-09ca-1860-b36c-5ccc61804d6c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('5b701689-869e-2e70-16dc-5ccc616dd1b1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'EAPM', 'module', 89, 0),
('5b924519-4467-b3fa-376c-5ccc61209268', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('5ba4eff8-3b45-72dd-9fda-5ccc6105d6bd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('5c061f9f-bc01-5951-da24-5ccc614cc61f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('5c27d03e-96d8-1e1e-8913-5ccc61b8c845', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('5d5242bf-8ba3-d6d5-643f-5ccc610ae897', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('5d956bad-234f-3693-a2c1-5ccc60075425', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('5ec0bbc8-b089-7deb-782b-5ccc61150dd2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('5fa04179-b288-0e40-56dc-5ccc60be62d7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Documents', 'module', 90, 0),
('5fec8bbf-3803-c000-4f94-5ccc618add13', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('60240db7-d345-6402-871d-5ccc60807ba4', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Project', 'module', 90, 0),
('6043e81c-cf5d-948e-0152-5ccc60b1570e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('619d5edb-e5e3-9c7b-f861-5ccc61a098d2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('623712fc-d876-eda1-a501-5ccc60aa7949', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Calls', 'module', 90, 0),
('626d04b7-45bd-0dc3-56f2-5ccc604c60e3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('62fc0f39-ea1f-851f-63ce-5ccc610dbaf2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('6363ebcf-a18b-d053-0349-5ccc616d33c9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('64c56665-5e0a-bead-2799-5ccc61577907', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('64fa8a30-6dcd-3e93-76f6-5ccc61fa758f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('656ca5d0-7452-19b8-87f6-5ccc610cb0bf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('66138307-c02e-76cf-acf0-5ccc60927ad2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('66e81399-8bdf-3b37-d11c-5ccc60e5316e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('67a34161-3858-b4d3-266f-5ccc615e25e5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'FP_events', 'module', 89, 0),
('68744cdd-e3f7-36d7-d201-5ccc61035084', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('687e09ba-42e2-b843-70a6-5ccc61a87a29', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('6967c4f4-ca45-99f2-4cc1-5ccc6149cfe7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('69f88829-c378-72bb-f4dc-5ccc6115f47e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('6a264d21-5974-eb67-a856-5ccc6163d6ff', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('6a72531e-9d67-fdaf-3225-5ccc6088faf6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('6b228647-13b4-3794-a3d2-5ccc60931c1e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('6b6601ff-c87d-c038-d70a-5ccc61ab9c70', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('6b66c4f3-bd33-1518-a724-5ccc60395b57', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Leads', 'module', 90, 0),
('6bf80a25-25de-f568-2eda-5ccc61fcde99', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('6c02abe8-cc46-b989-fb5a-5ccc616ae33a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('6c1f8c83-a0a2-5533-92c1-5ccc6046c258', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Bugs', 'module', 90, 0),
('6c717fac-819b-4a49-543a-5ccc61beba4b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('6ceda9af-dc00-d0c3-a4d0-5ccc6190edbb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Surveys', 'module', 90, 0),
('6d97d30b-122d-808b-bb4a-5ccc612884f3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('6e5b7547-6426-c3a6-16f9-5ccc6169e5df', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'EAPM', 'module', 90, 0),
('6e601193-ce47-e855-a50c-5ccc6128feb8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('6f9c9811-73ee-dcb6-0f00-5ccc8cae64f3', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'export', 'BW_Transaction', 'module', 90, 0),
('6fa35f44-6142-df01-24a5-5ccc60a7f7a0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Emails', 'module', 90, 0),
('6fb006f9-c1fe-933c-e3cd-5ccc61651e02', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('6fba1a3f-d735-dc28-927b-5ccc613cc2e1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('7012dcb7-8f60-13e8-dbc8-5ccc619e256f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('702ecfc7-1dd3-4deb-ba69-5ccc60ab0f23', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('70c5797f-da1f-71d3-5f66-5ccc8b0fa38d', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'edit', 'BW_Monthly_Calculation', 'module', 90, 0),
('70d57041-f28d-b4ad-a588-5ccc6041c4d6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('71297ca2-f6ad-4a64-1445-5ccc601d0de0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Cases', 'module', 90, 0),
('728d4a61-2123-8f8f-afd8-5ccc6141b630', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Spots', 'module', 90, 0),
('735748ea-719b-8067-c1f2-5ccc61ffc802', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('7436b3b8-0ce8-1a92-cfc3-5ccc615b6c0b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('74a6af55-4043-c51d-c909-5ccc6141baa5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('7513c96c-608c-a421-09fa-5ccc619629fe', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('76ca9266-2d79-62a1-f814-5ccc60978120', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('788dda9a-6ec4-f270-76e9-5ccc6081b89f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Project', 'module', 90, 0),
('78cf3675-5db1-dad2-fa31-5ccc60e6938c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('78d05942-9eac-5cc2-782a-5ccc61b96b82', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('78d30d4b-3a85-4d7f-a92f-5ccc6108e9c6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('78d4063f-6cdd-5782-d69a-5ccc619c42ea', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('78fe12ad-6fb2-8c46-de1d-5ccc60a8aca7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Tasks', 'module', 90, 0),
('790c7edf-f1ed-e8d0-046a-5ccc61a3164f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('79124764-ecb5-ad17-760c-5ccc6024ec78', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Documents', 'module', 90, 0),
('7940455c-d928-bde8-b8af-5ccc610e2c85', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('794b4ddc-9e30-2584-c3d3-5ccc608a36b5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('7a03100d-c190-514e-32a7-5ccc603ae63e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('7a543b3a-d117-e41e-ebfe-5ccc60e51b4a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Cases', 'module', 89, 0),
('7a975dd4-268b-cc68-071e-5ccc6133ead7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('7bba3689-308e-4768-ea21-5ccc6054064a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Notes', 'module', 90, 0),
('7db5f085-8246-24c9-5e39-5ccc61268ebd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('7dd75a30-ebc4-09b4-4864-5ccc6185d31d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('7e0afbeb-2a1c-6438-7dc8-5ccc6057dc7e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('7e6a6779-9749-6f10-55d6-5ccc6168185a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('7e71038b-0ded-fbe1-7f7a-5ccc61f03c05', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('7e929626-5592-84e1-f509-5ccc614bfab1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('7efc4a2b-c50c-4175-dc05-5ccc60147fc5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('7ffe97d2-3d53-d94c-a7b2-5ccc60c898bd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Users', 'module', 89, 0),
('803924e7-0602-42b4-b316-5ccc61c04f25', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('836795cf-84b6-66ac-4006-5ccc61a1c84c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Surveys', 'module', 90, 0),
('84adceb5-f04f-788c-e06f-5ccc61bd0870', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('857c5b2e-a30a-09e2-cac9-5ccc61005b1a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('860317fd-ba11-57ac-65b8-5ccc6184b64e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'FP_events', 'module', 90, 0),
('86e0a6cb-536c-36f3-e8b6-5ccc60c8251f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('86ff6786-b4b6-15f7-f5ef-5ccc61642b6f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('870acc26-e516-c0f4-a283-5ccc8cb0c30e', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'massupdate', 'BW_Transaction', 'module', 90, 0),
('875ca738-0967-ecc4-3fd3-5ccc60ec9dbf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Calls', 'module', 90, 0),
('8770c985-8f82-d43e-4b52-5ccc60d5d62a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Alerts', 'module', 89, 0),
('8787291c-d90e-ecb7-9f36-5ccc61948230', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'EAPM', 'module', 90, 0),
('87aefbe9-54ec-2baf-42c3-5ccc602eaf1c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Bugs', 'module', 90, 0),
('889a6747-c1a4-b358-ab9d-5ccc8bd5a6ce', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'delete', 'BW_Monthly_Calculation', 'module', 90, 0),
('88d06e30-8925-ed64-dc39-5ccc6142a0c5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('88d074d1-d8c0-6727-6201-5ccc6041bddc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('88d4a397-c680-544a-6820-5ccc61a73211', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('88fe8bfa-b70a-5c9e-637a-5ccc61896a53', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('89cecc8d-40fd-2373-b15d-5ccc60715d2f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Leads', 'module', 90, 0),
('89db7b67-e99f-9fb6-0562-5ccc61af6ddf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('89f913d3-0e0e-5c0b-1c95-5ccc61628929', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('89fc0a56-2306-3c7f-9c48-5ccc60e59e9e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Accounts', 'module', 89, 0),
('8a980868-e7f9-4e88-7d4c-5ccc60642ba0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('8abc94ae-0168-2a57-3ab8-5ccc60d8846d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('8af64201-3a23-d85f-fe9b-5ccc619f38fb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('8b602cf9-5dde-d3bb-9b85-5ccc61e3afc4', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('8bb3c89c-9af9-c3a5-c9fc-5ccc612ce32d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('8cfa3d6f-c6fe-c077-73bd-5ccc619018a9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('8dbcd1a5-679c-559e-538d-5ccc61954a58', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('8e56e21c-feca-fe44-f657-5ccc601635a7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Documents', 'module', 90, 0),
('8f2a3ccd-6868-26e6-7cbb-5ccc61c52d68', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('8f81d8c1-9f42-99ae-a8f6-5ccc6161065b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('90785b59-5e77-9760-58fb-5ccc60f48cfb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('90a4acbd-e32b-c67c-873c-5ccc61789f25', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('91f711a5-08b9-6155-7b6b-5ccc61370c89', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('9213b7f3-816c-d835-6197-5ccc61462986', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('925efa41-c69c-ef2c-5dea-5ccc60d764b7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('92b6fd6d-a8ef-1f3b-28c7-5ccc60481034', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Emails', 'module', 90, 0),
('931d4d7e-f6a5-4133-b1b2-5ccc61a6150f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('93867f1f-b911-3adf-b146-5ccc6128d00b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('93f1e4f2-5a02-a65b-9b3a-5ccc6115228b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('94abaef1-6f83-caf1-6bd2-5ccc6101b324', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Spots', 'module', 90, 0),
('94b2d264-db6e-10fb-31ca-5ccc60fa6b8d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Notes', 'module', 90, 0),
('95ed0400-5c78-7b21-6915-5ccc603b14ba', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Project', 'module', 90, 0),
('962fbb09-f0be-c478-b14d-5ccc6109d3bc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('9637471a-81db-ae01-8d78-5ccc61df2263', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('96cc8175-f9fe-5e7a-944d-5ccc613178da', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('97861c02-7cbb-6b23-741d-5ccc8ba9834a', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'import', 'BW_Monthly_Calculation', 'module', 90, 0),
('97cb00af-07a6-c371-7a3b-5ccc6045c970', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('98ad2bdb-c90a-675d-0c82-5ccc602766f1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Prospects', 'module', 89, 0),
('98bfb88c-84c4-cbd8-1f10-5ccc61c4009a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('99dbd7d8-a491-1d32-86f6-5ccc604749ee', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Project', 'module', 90, 0),
('9a029cc9-b499-2941-0763-5ccc601b8eed', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Tasks', 'module', 90, 0),
('9a666b31-0c77-4ba6-b179-5ccc616b1d85', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('9b675403-1a2a-3abf-39d1-5ccc604937ed', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('9b779a3d-376c-8845-cedb-5ccc6023b0be', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Users', 'module', 90, 0),
('9c873c0f-35c9-ccd4-d3d4-5ccc60b2c935', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Meetings', 'module', 90, 0),
('9d6f5080-b6c6-20cc-5ebe-5ccc6098ab15', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Contacts', 'module', 90, 0),
('9d840204-6d90-f398-f96c-5ccc607f6e09', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('9ebc5014-8755-0c26-e43f-5ccc61f725c3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('9eff8d8a-1bf3-2cbc-3ca8-5ccc61a75906', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('9f08b66a-ce99-da7e-8cf9-5ccc60a1cff6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Alerts', 'module', 90, 0),
('a03060ab-e05c-062b-8742-5ccc600d911c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Documents', 'module', 90, 0),
('a0616ae1-39cf-803f-37b3-5ccc617699ae', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('a091c06a-eddd-68af-a13a-5ccc612142e9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('a112f077-9120-0f4a-3797-5ccc61a93cbc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('a1a30b4e-c43b-25e2-9df8-5ccc6173615b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'FP_events', 'module', 90, 0),
('a262e7ff-34e8-ddee-02b9-5ccc615e17f0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('a2b384b4-d0d2-91a5-9b3b-5ccc6187a695', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('a3414aa4-cdbb-025c-3f61-5ccc6194b6a5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('a3890f54-f630-9fdf-c75e-5ccc6088c9f2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('a3ac48ed-6ae0-6ff5-121b-5ccc61442ea5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('a42d273a-57cc-1632-b4e3-5ccc606c3bff', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('a42db988-1b3b-f604-2d28-5ccc610dc078', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('a43df5dd-939d-88d1-0b0f-5ccc612d4200', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('a4400dc2-6439-cb56-e524-5ccc6198dcec', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('a582d1a5-b6b5-96eb-6f0a-5ccc61654e0d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('a5e5df38-8287-9b12-c4b8-5ccc610dcb11', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('a6b70d1b-d08d-9eb2-1609-5ccc6181320f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('a6e25796-a207-9aae-f161-5ccc6149a34c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('a716d376-6ace-f688-df9e-5ccc609e837f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('a8110fb6-4f14-6bb3-2e69-5ccc6028a719', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('a81bfcd9-74d1-d3a1-692d-5ccc604e43f4', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Calls', 'module', 90, 0),
('a86dd80f-1b04-ad5b-6280-5ccc615b13c7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('a890a79e-db11-c008-821e-5ccc8c7be9f7', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'access', 'BW_Transaction', 'module', 89, 0),
('a9e9bcfa-b34f-91df-5c27-5ccc602f2cfb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('aa2f055c-42ae-d558-b82f-5ccc617f9688', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('aa51e326-686b-df4a-14cb-5ccc6157a6d7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('aa58eea5-29a7-3e3a-5d3c-5ccc617d257b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('aa6b0d77-a261-771d-c199-5ccc603d6e5c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('ab4e8172-8a55-07f0-cd32-5ccc61228a70', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('ab93b150-93a2-2250-0a2a-5ccc608f960f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Notes', 'module', 90, 0),
('ab9fedf7-ee8d-83de-f508-5ccc61c10676', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('abf743a2-e044-1bcb-f957-5ccc61762165', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('ac1ed13c-ae9f-cce8-af0d-5ccc8b18f67b', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'export', 'BW_Monthly_Calculation', 'module', 90, 0),
('ac455533-3afb-bd97-e4d1-5ccc612e76f0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('ac8c6078-afde-4f7d-6a9d-5ccc61415f26', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('ad513e38-75f0-eb9e-e8d9-5ccc60dd350b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('ad8f5b3b-49c8-beb2-c3bb-5ccc611ef202', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('adfd687d-7cdb-0f2f-e13b-5ccc616d118d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('ae1a5959-d8ce-ef1b-d609-5ccc6090557c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('ae20eced-e77a-f6cc-8339-5ccc61b8a415', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('aec7f6b1-7d52-b9b5-1b33-5ccc6182f3ce', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('af850e9a-4df4-01d1-56ad-5ccc60d26b84', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('af8e0585-7b36-98b5-2429-5ccc60d39687', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('af9804c4-799b-c215-b274-5ccc61744334', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('b3bb3f44-e221-1aed-2dd4-5ccc6171321e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('b4890d87-425d-b326-6214-5ccc8c3ae94c', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'list', 'BW_Transaction', 'module', 90, 0),
('b4f713b0-dad2-495c-602e-5ccc60959e07', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('b584001b-d1e7-7c71-4af1-5ccc61cd993d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('b585f124-7d6f-20f2-6f7d-5ccc60114d9b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Users', 'module', 90, 0),
('b5ad3fb2-fa55-11d2-4da7-5ccc60bd4d03', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Leads', 'module', 89, 0),
('b5eac0dd-5144-31cd-5654-5ccc607f5205', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('b63fd95c-c8ca-8916-0915-5ccc60de332d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Accounts', 'module', 90, 0),
('b6a5fe56-1fbe-8803-b8c6-5ccc60bca97b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Prospects', 'module', 90, 0),
('b6e3cd53-e16d-f38f-249a-5ccc6147f418', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('b82503a7-1999-bb29-2907-5ccc61040764', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('b8a1c31d-1c1b-d4b0-56f1-5ccc60ad5fe0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Contacts', 'module', 90, 0),
('ba5982d2-6c68-ca81-44fd-5ccc60a1c681', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Project', 'module', 90, 0),
('baa7b3dd-5f14-43d6-52a7-5ccc6124f8e7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('bab52056-534a-214b-b153-5ccc8b4f2fbe', '2019-05-03 18:41:22', '2019-05-03 18:41:22', '1', '1', 'massupdate', 'BW_Monthly_Calculation', 'module', 90, 0),
('bb9aafc4-db77-a4b4-d9db-5ccc61dfb325', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Surveys', 'module', 89, 0),
('bc031c5b-a35d-b0eb-f787-5ccc615265ed', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('bd35aa8a-3afd-76df-d215-5ccc61372190', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('bdbdd2de-7aa4-b8f1-84cb-5ccc6049cf63', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('bdc8bc79-175e-afcb-2e74-5ccc619db3b1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('be0ffd13-5a93-deb6-e0f3-5ccc61211bc5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('be362dfa-aca8-9d19-1422-5ccc6173d1bf', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('c063a836-b2fb-0a16-60d6-5ccc617ce886', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('c0fb2c9d-0c44-d9f2-6e9c-5ccc60bb62cc', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Alerts', 'module', 90, 0),
('c146c81d-9c63-a6be-29ce-5ccc61b0af9b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('c15ceb58-de3c-135e-7e53-5ccc61b3a29f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('c1b04092-0ea4-fff5-d783-5ccc6142196d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('c2963846-1a96-6800-a98c-5ccc6138287f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('c2e05b1f-6a13-07dc-a10c-5ccc60d24191', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Documents', 'module', 90, 0),
('c38b00c9-3c97-69aa-673a-5ccc60127bdd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Meetings', 'module', 90, 0),
('c3c78931-ba24-502c-d770-5ccc60135627', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('c45406b8-14b4-7e7a-37b7-5ccc602d7fd8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('c4ed8b57-ab24-cb83-5193-5ccc613d9445', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('c5753184-fe02-1d6f-8998-5ccc61539ada', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('c576ebb6-0802-7cee-9be2-5ccc615b055e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('c62179fb-6f4d-5f4f-8f16-5ccc6130b623', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('c644c6e6-b7cf-f0ba-526e-5ccc61fc61c9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('c6996f86-d160-d42e-6acd-5ccc61a36923', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('c7d527c6-5c02-d6b5-c002-5ccc60ef2881', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('c855afa3-83c2-c3af-fce0-5ccc61cd1be9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('c86153e4-1caa-b391-9fc1-5ccc6153f87d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('c861e2c7-d0d4-8243-7db9-5ccc61b2e6c9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('c86c0e8e-4224-9065-6dda-5ccc617c6045', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('c86c852e-0494-b30c-fd6a-5ccc6127651f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('c8e6fe50-d4e1-6004-7942-5ccc61e70106', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('ca2cdcb7-e98d-b722-a81f-5ccc60ea810c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Notes', 'module', 90, 0),
('ca35379f-02b5-dda9-2426-5ccc609e1f3d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('cb5411ef-aeb8-f792-3791-5ccc6050b5da', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Cases', 'module', 90, 0),
('cba12453-659f-f8e5-6a27-5ccc61005d22', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('cbbf0c28-b651-f010-4043-5ccc6166ac3b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('cdee98c4-89ef-f121-841e-5ccc61827b90', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('cf58ff08-139a-056a-da49-5ccc61c9d225', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('cfb38729-918e-f0ae-b173-5ccc60e2b481', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Users', 'module', 90, 0),
('d07f565e-e7d6-d9ef-0f50-5ccc61845b9f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('d15e617d-bc4a-1348-e02f-5ccc60ab3ab3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('d166ce38-59ce-bc69-72e5-5ccc616659f9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('d25a76d1-e1f8-e808-3f81-5ccc61ef2285', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('d27b1495-0a4f-afbd-ad36-5ccc61897135', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('d338f7d3-3d79-8e7c-7ff9-5ccc60f0f5b5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Prospects', 'module', 90, 0),
('d3500b67-f091-05c2-0032-5ccc616e8442', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('d3927e7e-ffd3-cab1-ceaf-5ccc61eb87d5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Spots', 'module', 89, 0),
('d39486fc-c980-beff-2eec-5ccc6107ecab', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('d55a0fe1-f14d-44eb-17d5-5ccc61e34005', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('d5caf130-9e7b-e216-d686-5ccc61a2dfb8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('d5df31a3-1cf8-1d77-d80b-5ccc614e57ce', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('d641001c-fff9-d37d-b5e5-5ccc61ee0ed3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Surveys', 'module', 90, 0),
('d64fc58e-fedc-9e74-96ed-5ccc6165f885', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('d6e0e3e5-dd45-70f4-c739-5ccc6161da26', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('d82d26cd-79a9-9511-be34-5ccc602082c2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Calls', 'module', 89, 0),
('d8da153c-dbab-97ed-196f-5ccc60672307', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('d92e072a-856b-6490-d863-5ccc609e043b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('d99b8343-e9a2-cc95-f505-5ccc60ac86c3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Tasks', 'module', 89, 0),
('da62186a-d571-07b5-4f8d-5ccc615f9aac', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('daa042c1-d532-a34e-5a39-5ccc61b020ba', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('daa5020c-24b3-35a8-4fab-5ccc61cf29fb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('dabd8913-fde8-c916-1406-5ccc60c1ef80', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Emails', 'module', 89, 0),
('dac1a3b7-b880-5461-6938-5ccc60c61ab1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Project', 'module', 90, 0),
('dad106e2-f633-42d3-cc78-5ccc6148b7dd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('dad289ef-346d-da8c-c73d-5ccc613981e5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('db22eaec-52d0-53e3-6040-5ccc60db530e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('dbbe25de-52e0-e832-aa9d-5ccc60dab718', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Accounts', 'module', 90, 0),
('dc5aa035-e155-274d-e28b-5ccc6071ce97', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'Bugs', 'module', 90, 0),
('dcff7a24-c6d5-ca2f-3090-5ccc61761c79', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('dd127ef9-ffa3-1979-d584-5ccc61d8d35b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('dd62b037-67f9-694b-7800-5ccc6189142d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('de466c32-f9bb-f99f-6903-5ccc6191de89', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('de542d4a-35de-c744-455c-5ccc61fb291f', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('de7db6ac-da2b-9ac9-8eac-5ccc6158a6e2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('de9304ae-60e2-31e6-e559-5ccc612b5bd8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('de9497cd-5a44-3eed-db16-5ccc60744426', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('dea4de47-0c23-b1dc-fae6-5ccc612a4f93', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('dec34fd7-4250-9b15-10ad-5ccc60f673e3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Documents', 'module', 90, 0),
('dee8dff4-4eb0-1de8-86b9-5ccc6059371c', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('df1c46bf-d7cc-19c3-6320-5ccc61cd9a92', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('dfb165e9-aea3-4dbe-63da-5ccc607f9117', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('e03375c8-e964-1b23-f4b7-5ccc600e3001', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('e0a22a8b-a0f8-98c6-caaa-5ccc61eba095', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('e140091a-4ad4-6e13-aedf-5ccc60d8ea1b', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('e2c2c066-9e75-302f-ebb8-5ccc61da93f3', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('e2c8ec1e-39d1-1a81-83ef-5ccc619390a6', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('e56a0e8d-bfc1-deb2-ced2-5ccc6156870d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('e5e921f1-e065-b6fe-6adf-5ccc616a57db', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('e67b8e8a-8efd-2b50-256e-5ccc6173fc02', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('e6cc8028-cbb8-6beb-3071-5ccc8c89810a', '2019-05-03 18:47:45', '2019-05-03 18:47:45', '1', '1', 'view', 'BW_Transaction', 'module', 90, 0),
('e8000415-f847-2469-1d92-5ccc61140bdb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('e8a6b6ce-6505-428d-5bc9-5ccc618037e0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('e9739c85-157d-e611-0042-5ccc614a9fe9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('e98672e2-9126-ad4c-cfd2-5ccc61bc8720', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('e9d7761b-2f3b-1194-1bc4-5ccc61d24cb7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('ea7dae31-9ffc-3814-6581-5ccc61a04279', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('eaa1e663-8d4a-3597-5253-5ccc60332d8d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Leads', 'module', 90, 0),
('eb464764-2943-1a25-c27d-5ccc60cc10c5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('eb725def-8f90-e65f-9801-5ccc6033273e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Users', 'module', 90, 0),
('ec59d1bc-a376-ae7f-954e-5ccc60c07f15', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('ed35a88c-bab6-4cf5-a3a4-5ccc61793ac5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('ee2a04d4-f64c-03dc-d797-5ccc61ee28c8', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'EAPM', 'module', 90, 0),
('ee5a7763-cfa0-e71f-9e2d-5ccc61129689', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Spots', 'module', 90, 0),
('eea99f75-f73d-2e70-67ba-5ccc607ed58e', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Cases', 'module', 90, 0),
('ef0d1084-9a7b-ed2e-d08c-5ccc613656a9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('ef6e01ee-b2e3-0aaf-1df2-5ccc615b27cb', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('f04fc1a8-6d3b-1c66-c56b-5ccc61a5c625', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('f1c88cae-7d44-5c14-5ac3-5ccc604def91', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('f22fd1f8-2a5d-28c9-5b38-5ccc6033cf24', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('f28454a7-bc84-0b2e-27f8-5ccc60e39c42', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'export', 'Bugs', 'module', 90, 0),
('f2cf7e00-e894-d76d-de37-5ccc605a45f7', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('f2e6e7ec-d94d-4a27-8ba9-5ccc618398bd', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('f32f5b93-42fd-386c-0eed-5ccc61044eae', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('f33813ca-a688-af7a-6b77-5ccc61a092a0', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('f3662f6d-1b6f-4703-f180-5ccc61e3dfb1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'list', 'Surveys', 'module', 90, 0),
('f56b0967-b677-2c28-0b21-5ccc60e60c90', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'Calls', 'module', 90, 0),
('f6810436-dcca-70c0-ff52-5ccc61afa8f2', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('f71005a2-3ac3-9741-0811-5ccc6174977d', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
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
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
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

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
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

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
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
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
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
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
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
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('172373ec-fb0a-b8ba-f3c2-5d1257208fc1', '', '2019-06-25 17:18:03', '2019-06-25 17:21:26', '1', '1', NULL, 0, '', NULL, 1, 'c297df48-a7c1-e05a-272e-5d1257c2152d', 'AOR_Fields'),
('177bef7e-be12-7721-9d48-5d15d4fbef1a', '', '2019-06-28 08:47:05', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', NULL, 1, '53b103a3-02af-3695-b61d-5d15d4999860', 'AOR_Fields'),
('17fa214c-961b-080d-4d13-5d15c0cd5fce', '', '2019-06-28 07:24:05', '2019-06-28 08:50:10', '1', '1', NULL, 0, '', NULL, 1, '1e300954-0b4d-379e-737e-5d15c095f16f', 'AOR_Conditions'),
('1867085d-3cfd-8250-e9fe-5d0e0876bfda', 'Mr. Wilson Savaliya-Jun-2019', '2019-06-22 10:50:47', '2019-06-22 10:50:47', '1', '1', NULL, 0, NULL, NULL, 1, '8dfa11c3-cc63-14dd-2b40-5d0e08d860c1', 'BW_Monthly_Calculation'),
('18aea968-b84e-5b4e-22bd-5d15d45f6884', '', '2019-06-28 08:50:53', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', NULL, 1, 'ea39f0a9-c336-6f3e-ca2a-5d15d424cbac', 'AOR_Fields'),
('19cd5c57-6523-ab07-9fee-5d0e07d319e7', 'Wilson Savaliya-Jun-2019', '2019-06-22 10:50:05', '2019-06-22 10:50:05', '1', '1', NULL, 0, NULL, NULL, 1, '84615ada-3a16-8109-e65c-5d0e07f6aee9', 'BW_Monthly_Calculation'),
('1ac84578-ad48-5589-b919-5d0e0739ac57', 'Wilson Savaliya-Credited', '2019-06-22 10:50:06', '2019-06-22 10:50:06', '1', '1', NULL, 0, NULL, NULL, 1, '122e1e66-00d1-b3b1-81cc-5d0e07347d34', 'BW_Transaction'),
('1b8acc30-d661-e7cd-dc4d-5d0dfed462cd', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:08:50', '2019-06-22 10:08:50', '1', '1', NULL, 0, NULL, NULL, 1, '5d3e0d2e-dd36-ecce-8560-5d0dfe1fbc40', 'BW_Transaction'),
('1c1b90ef-e9b3-8661-15aa-5d125d0f4adf', '', '2019-06-25 17:42:31', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', NULL, 1, 'cc73c181-2e29-2501-efd0-5d125ddfaef4', 'AOR_Fields'),
('1cff55ca-3490-8518-3ce9-5d0f42794972', 'Customer 2-Debited', '2019-06-23 09:13:02', '2019-06-23 09:13:02', '1', '1', NULL, 0, NULL, NULL, 1, '5fe91e33-c417-373a-1b88-5d0f422b0c87', 'BW_Transaction'),
('1f5bda5b-f0e9-0c87-00a0-5d0f4554408c', 'Mr. Wilson Savaliya-Credited', '2019-06-23 09:26:11', '2019-06-23 09:26:11', '1', '1', NULL, 0, NULL, NULL, 1, '7df25cda-40a1-631b-49ba-5d0f45e6ac9c', 'BW_Transaction'),
('21b6b63d-535c-698f-9300-5cf9365d9cd1', '', '2019-06-06 15:51:23', '2019-06-06 15:54:44', '1', '1', NULL, 0, '', NULL, 1, '8a0b944c-ef47-8c90-5d38-5cf9368608a1', 'AOR_Conditions'),
('23395acb-c0c4-5001-a0bf-5d15d475dea9', '', '2019-06-28 08:50:54', '2019-06-28 09:17:49', '1', '1', NULL, 0, '', NULL, 1, 'ce0b09ba-2c82-225b-e352-5d15d4f69fd7', 'AOR_Conditions'),
('248d0d7a-acdd-2d19-6a27-5d125dd50ae8', 'RTTGS', '2019-06-25 17:45:43', '2019-06-28 07:17:32', '1', '1', NULL, 0, '', NULL, 1, '96d16656-da58-a321-5484-5d125dcabbcd', 'AOR_Charts'),
('265a0b19-28df-9574-3f48-5d125db0d20a', '', '2019-06-25 17:42:30', '2019-06-28 07:10:14', '1', '1', NULL, 0, '', NULL, 1, '65755169-b657-968e-d382-5d125d2579b1', 'AOR_Fields'),
('293a062d-83b1-991f-f723-5d0d178dbe86', 'Customer 3', '2019-06-21 17:43:33', '2019-06-21 17:43:33', '1', '1', NULL, 0, NULL, NULL, 1, 'e66e2611-4020-7724-5fbe-5d0d173e6952', 'Contacts'),
('2bf7324c-9712-0b75-204e-5d1257323014', '', '2019-06-25 17:18:05', '2019-06-25 17:21:30', '1', '1', NULL, 0, '', NULL, 1, 'c4a4343e-dad1-66ff-c9cd-5d1257135e72', 'AOR_Conditions'),
('2ca7e15f-5af7-08a3-7445-5d15c00144f6', '', '2019-06-28 07:24:04', '2019-06-28 08:32:52', '1', '1', NULL, 0, '', NULL, 1, '1eaf5742-d20d-167e-efbc-5d15c00be412', 'AOR_Fields'),
('2cd5a951-95c5-616b-e605-5d0140e55d86', 'Wilson Savaliya-Credited', '2019-06-12 18:11:11', '2019-06-12 18:15:37', '1', '1', NULL, 0, '', NULL, 1, '105992ae-2a00-d852-a8ff-5d0140689e1d', 'BW_Transaction'),
('2ddf9f6f-f2a2-acbc-2ca1-5cf936269220', '', '2019-06-06 15:51:18', '2019-06-25 17:10:35', '1', '1', NULL, 0, '', NULL, 1, 'afd6faaa-2c0b-0f3e-e62f-5cf936fbf33e', 'AOR_Fields'),
('2fc40cb7-8634-db98-178f-5cf936b72eba', '', '2019-06-06 15:51:15', '2019-06-25 17:10:32', '1', '1', NULL, 0, '', NULL, 1, 'ab0fe46c-5e44-8699-2159-5cf936a32632', 'AOR_Fields'),
('3080c9dc-0944-4e61-bab5-5d1255ed3e6e', '', '2019-06-25 17:10:44', '2019-06-25 17:10:44', '1', '1', NULL, 0, NULL, NULL, 1, '58ca0130-e661-09c5-3534-5d12551a6614', 'AOR_Conditions'),
('313ef453-fe69-adbf-25de-5d125dc13c38', '', '2019-06-25 17:42:32', '2019-06-28 07:09:42', '1', '1', NULL, 0, '', NULL, 1, 'e8424dcb-922d-f91d-e73a-5d125db80fe9', 'AOR_Fields'),
('34e3b4ab-9956-48aa-cd34-5d0bc33cdb69', 'Customer 3', '2019-06-20 17:35:25', '2019-06-20 17:35:25', '1', '1', NULL, 0, NULL, NULL, 1, '47468b24-3575-b9eb-49c5-5d0bc3e4e8df', 'Contacts'),
('36d955c3-4c4d-0294-80e5-5d15d4c9b433', '', '2019-06-28 08:50:53', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', NULL, 1, '2a803549-1f62-c4a9-b34d-5d15d4f6f24d', 'AOR_Fields'),
('371fb33b-d87a-f39d-965a-5d15d485a479', '', '2019-06-28 08:47:23', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', NULL, 1, '277e2d97-e0bb-f076-8614-5d15d4f5a417', 'AOR_Fields'),
('3e937854-aa71-a139-6830-5d15d4f9b3a5', '', '2019-06-28 08:47:05', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', NULL, 1, '2b6296c8-10bd-de0c-170e-5d15d4e3f9e7', 'AOR_Fields'),
('4346ec07-628a-7ec0-ee50-5d15d57a132d', '', '2019-06-28 08:52:55', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', NULL, 1, '3540bcdc-aaf6-57c6-540a-5d15d524b2b2', 'AOR_Fields'),
('4354cd7b-66de-b650-24fb-5d0f45b524f5', 'Mr. Wilson Savaliya-Debited', '2019-06-23 09:26:57', '2019-06-23 09:26:57', '1', '1', NULL, 0, NULL, NULL, 1, 'b0486ed3-a5b4-2db9-7fec-5d0f450760c7', 'BW_Transaction'),
('443b46e7-0848-b3ff-196d-5d15bcaa0489', '', '2019-06-28 07:07:10', '2019-06-28 07:09:42', '1', '1', NULL, 0, '', NULL, 1, '31aa3329-0159-1dcf-b7ab-5d15bc10a3b0', 'AOR_Fields'),
('4658e2ce-9f6d-c7be-21be-5d0e08815d8f', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:53:29', '2019-06-22 10:53:29', '1', '1', NULL, 0, NULL, NULL, 1, 'aa5b4777-625e-4514-c0cb-5d0e08ef2349', 'BW_Transaction'),
('47cdc458-6ad5-efd2-b6dc-5cf93636afba', '', '2019-06-06 15:51:16', '2019-06-25 17:10:33', '1', '1', NULL, 0, '', NULL, 1, 'c42b2a08-af27-6c7d-0cb1-5cf936ea4a73', 'AOR_Fields'),
('4921110a-d922-3c3b-7794-5d125d80b0b7', 'Transaction Chart', '2019-06-25 17:42:30', '2019-06-28 07:12:20', '1', '1', NULL, 0, '', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 'AOR_Reports'),
('4a3aaee6-9439-7236-5555-5d15af7af357', '', '2019-06-28 06:11:41', '2019-06-28 06:13:05', '1', '1', NULL, 0, '', NULL, 1, '383e782b-1e83-5cb1-64a7-5d15af6730aa', 'AOR_Fields'),
('4c22f636-1128-3352-9a68-5cffecf0d8a2', 'Wilson Savaliya-Jun-2019', '2019-06-11 18:01:15', '2019-06-11 18:01:15', NULL, NULL, NULL, 0, NULL, NULL, 1, '944d3412-5a24-0bb0-545d-5cffec2b638b', 'BW_Monthly_Calculation'),
('4c4ffc71-0be7-c75a-7162-5d15c032dfba', '', '2019-06-28 07:24:05', '2019-06-28 08:50:10', '1', '1', NULL, 0, '', NULL, 1, '2fa359e1-6674-e145-1118-5d15c05a7ca2', 'AOR_Conditions'),
('4d752637-8e28-3d22-d00a-5d0f46c2affe', 'Mr. Wilson Savaliya-Credited', '2019-06-23 09:27:46', '2019-06-23 09:27:46', '1', '1', NULL, 0, NULL, NULL, 1, 'c5e46e09-e07f-cc51-d9cf-5d0f46a4c5b8', 'BW_Transaction'),
('4df7fd67-d611-beb3-cd9d-5d15d4372cdd', '', '2019-06-28 08:50:54', '2019-06-28 09:17:49', '1', '1', NULL, 0, '', NULL, 1, '391438b8-b922-4024-4d1e-5d15d4baa88a', 'AOR_Conditions'),
('4e409f0a-7bf0-4263-8014-5cf93668e317', 'Monthly Calculation ', '2019-06-06 15:51:14', '2019-06-25 17:10:29', '1', '1', NULL, 0, '', NULL, 1, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 'AOR_Reports'),
('510652b3-e3f2-5165-aeec-5d12571255d7', '', '2019-06-25 17:18:05', '2019-06-25 17:21:27', '1', '1', NULL, 0, '', NULL, 1, 'ad990767-7f78-1e20-6d80-5d12576765fb', 'AOR_Fields'),
('528188f6-f846-3698-7590-5d125d4a3798', '', '2019-06-25 17:42:31', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', NULL, 1, '193d250b-e9ff-538b-2fd0-5d125da507e2', 'AOR_Fields'),
('537f3461-c628-3273-5c77-5d0f454e2a69', 'Mr. Wilson Savaliya-Debited', '2019-06-23 09:24:14', '2019-06-23 09:24:14', '1', '1', NULL, 0, NULL, NULL, 1, '7204f82b-2dbb-d340-4ec2-5d0f45bfa620', 'BW_Transaction'),
('5410deff-76e4-a3da-25b8-5d0e093ef1c6', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:56:12', '2019-06-22 10:56:12', '1', '1', NULL, 0, NULL, NULL, 1, 'a6f8e760-245f-bd90-a7a0-5d0e098140fb', 'BW_Transaction'),
('550d8636-d29d-b161-a365-5cf93691cbe7', '', '2019-06-06 15:51:22', '2019-06-25 17:10:40', '1', '1', NULL, 0, '', NULL, 1, 'ba7283fb-e607-0783-c345-5cf936e0e540', 'AOR_Fields'),
('55544ce0-5f05-8dfa-bde2-5d0dfbe8a525', 'Wilson Savaliya-Credited', '2019-06-22 09:59:20', '2019-06-22 09:59:20', '1', '1', NULL, 0, NULL, NULL, 1, '2a0b476a-804a-2a1c-5923-5d0dfbfbad68', 'BW_Transaction'),
('57086cc6-e26b-4822-d60d-5d125d0b2909', '', '2019-06-25 17:45:42', '2019-06-28 07:17:31', '1', '1', NULL, 0, '', NULL, 1, '3d760635-5077-f736-3b2e-5d125d52f12c', 'AOR_Conditions'),
('576900ab-0dc9-fb3e-a9dc-5cf936e3ea58', '', '2019-06-06 15:51:20', '2019-06-25 17:10:37', '1', '1', NULL, 0, '', NULL, 1, 'b85ec93b-7f92-189f-64a1-5cf936557c0c', 'AOR_Fields'),
('578b79eb-7728-406d-e706-5cf6a6d1a204', 'Wilson Savaliya-Jun-2019', '2019-06-04 17:14:36', '2019-06-04 17:14:36', NULL, NULL, NULL, 0, NULL, NULL, 1, 'e9474ff1-c7e4-e883-3368-5cf6a6031e74', 'BW_Monthly_Calculation'),
('5a1135bc-51ca-225c-1844-5d0dfb0b1781', 'Wilson Savaliya-Jun-2019', '2019-06-22 09:59:20', '2019-06-22 09:59:20', '1', '1', NULL, 0, NULL, NULL, 1, 'b913c764-074c-4f55-d4ca-5d0dfbdde2f7', 'BW_Monthly_Calculation'),
('5baa3864-1dac-9e8a-b48b-5d15d497f9d5', '', '2019-06-28 08:47:23', '2019-06-28 08:48:17', '1', '1', NULL, 0, '', NULL, 1, '48cc3674-0539-3527-1e5d-5d15d44d6aa2', 'AOR_Fields'),
('5d3f4851-2e77-aad0-46fd-5d0f3e3c7dd7', 'Customer 2', '2019-06-23 08:54:24', '2019-06-23 08:54:24', '1', '1', NULL, 0, NULL, NULL, 1, '4d18a71b-c06b-d5e8-242a-5d0f3e51e462', 'Contacts'),
('5ed09960-87b8-26f4-c36b-5cfe8f19f13a', 'Wilson Savaliya-May-2019', '2019-06-10 17:14:32', '2019-06-22 08:15:32', '1', '', NULL, 0, '', NULL, 1, 'c95c43d8-cbbc-3009-659d-5cfe8f2c2315', 'BW_Monthly_Calculation'),
('5f0887ae-1b52-3641-6eee-5d15d40e45f3', '', '2019-06-28 08:50:53', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', NULL, 1, '4a01d89c-359f-433d-87fd-5d15d4790881', 'AOR_Fields'),
('6014be20-df32-20aa-2835-5d15af8eae2d', 'Total', '2019-06-28 06:11:42', '2019-06-28 06:12:13', '1', '1', NULL, 0, '', NULL, 1, '4b755a78-5c3c-eda1-3f6c-5d15afc9aa08', 'AOR_Charts'),
('6254e35d-3c9d-c5b6-a9a6-5d15c045fb8b', '', '2019-06-28 07:24:04', '2019-06-28 07:24:23', '1', '1', NULL, 0, '', NULL, 1, '51883162-7d9c-8d50-7a46-5d15c05d883c', 'AOR_Fields'),
('62c90011-10f9-7977-9aa8-5d0f418e9b86', 'Customer 2-Jun-2019', '2019-06-23 09:07:59', '2019-06-23 09:07:59', '1', '1', NULL, 0, NULL, NULL, 1, '3274d85c-0730-5053-4ced-5d0f4174f101', 'BW_Monthly_Calculation'),
('66dac373-50a0-ca0f-2f1c-5d0e093e69a7', '', '2019-06-22 10:55:44', '2019-06-22 10:55:44', '1', '1', NULL, 0, NULL, NULL, 1, 'ba3c8a57-c491-a21c-a8c5-5d0e093bb840', 'BW_Transaction'),
('68804fad-9fab-0cbb-2b91-5cfe8fb27861', '', '2019-06-10 17:14:26', '2019-06-10 17:14:26', '1', '1', NULL, 0, NULL, NULL, 1, 'baac01eb-0c77-380b-8de0-5cfe8f172215', 'BW_Transaction'),
('69ff0560-e08d-f2f5-c68b-5d0bc49542b6', 'Customer 5', '2019-06-20 17:39:50', '2019-06-20 17:39:50', '1', '1', NULL, 0, NULL, NULL, 1, '4079616d-28b4-a29d-8ab4-5d0bc435f057', 'Contacts'),
('6ab1eebf-9cdf-b890-ee98-5d0bc4c16577', 'Customer 4', '2019-06-20 17:37:33', '2019-06-20 17:37:33', '1', '1', NULL, 0, NULL, NULL, 1, '1c18e632-ee84-c546-9d06-5d0bc46abe80', 'Contacts'),
('6c8c22e5-70c9-5437-edb7-5d12571b7bdf', 'Transaction Report', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '', NULL, 1, '642881bc-db52-ff64-6f72-5d1257e33127', 'AOR_Reports'),
('73ec2a7e-006b-bae4-ed54-5d0f3daca355', 'Customer 1', '2019-06-23 08:53:05', '2019-06-23 08:53:05', '1', '1', NULL, 0, NULL, NULL, 1, '35a4735b-f1cc-5619-18ec-5d0f3d852d7a', 'Contacts'),
('74608437-ed92-656c-2557-5d1257fffb65', '', '2019-06-25 17:18:04', '2019-06-25 17:21:26', '1', '1', NULL, 0, '', NULL, 1, '29a088a1-a0a5-d737-8fb4-5d1257b096e5', 'AOR_Fields'),
('74a08b75-fb6a-2699-9753-5d125d27cf04', 'Cheque', '2019-06-25 17:45:43', '2019-06-28 07:17:31', '1', '1', NULL, 0, '', NULL, 1, '19b709ba-5967-74d6-dde6-5d125de2f815', 'AOR_Charts'),
('76872dc5-a832-bf19-4d3a-5d15c0a6eb63', 'Cheque', '2019-06-28 07:24:05', '2019-06-28 07:24:24', '1', '1', NULL, 0, '', NULL, 1, '6189ba7d-6e1b-d53e-416b-5d15c030a353', 'AOR_Charts'),
('7ac9e85a-77f4-ffde-0a6f-5d0d1933b68b', 'Customer 3', '2019-06-21 17:53:59', '2019-06-21 17:53:59', '1', '1', NULL, 0, NULL, NULL, 1, '53c7b672-5f52-a8bc-7870-5d0d19af8839', 'Contacts'),
('7e3c19de-7813-56a8-671d-5d0f41551088', 'Wilson Savaliya-Debited', '2019-06-23 09:09:33', '2019-06-23 09:09:33', '1', '1', NULL, 0, NULL, NULL, 1, 'cc0b49ec-0e5d-a3dd-805f-5d0f41c1c557', 'BW_Transaction'),
('8074934e-b8ce-f617-ea9d-5d0de2400849', 'Wilson Savaliya-Jun-2019', '2019-06-22 08:08:47', '2019-06-22 08:08:47', NULL, NULL, NULL, 0, NULL, NULL, 1, 'a6bf21e2-e439-837b-5714-5d0de234e284', 'BW_Monthly_Calculation'),
('818dd7e0-886c-377c-1372-5d15d08ff5c2', '', '2019-06-28 08:32:53', '2019-06-28 08:33:21', '1', '1', NULL, 0, '', NULL, 1, '6a79ec10-0bdd-e493-a87e-5d15d045782f', 'AOR_Fields'),
('81f90edb-b11e-32a5-ff3c-5d125d23e336', '', '2019-06-25 17:42:32', '2019-06-28 07:09:42', '1', '1', NULL, 0, '', NULL, 1, '3813f5f3-9fa0-d145-ca22-5d125db20caf', 'AOR_Fields'),
('825bfb12-fd46-8280-ecaa-5d1258200dcc', '', '2019-06-25 17:21:29', '2019-06-25 17:21:29', '1', '1', NULL, 0, NULL, NULL, 1, '1ff68ecd-8b3a-abb7-0ed9-5d1258275f44', 'AOR_Fields'),
('82c00a88-e949-8169-7034-5d15c02979ea', '', '2019-06-28 07:24:04', '2019-06-28 07:24:23', '1', '1', NULL, 0, '', NULL, 1, '761e6da1-2416-b0fa-fc34-5d15c0b5b9fe', 'AOR_Fields'),
('862e7540-af68-e923-c70c-5cf9363ef4e7', '', '2019-06-06 15:51:15', '2019-06-25 17:10:31', '1', '1', NULL, 0, '', NULL, 1, 'f0ab09b6-d4ac-1529-8b9a-5cf93627655e', 'AOR_Fields'),
('888d7702-3c74-037e-de43-5d15d4f18645', '', '2019-06-28 08:50:53', '2019-06-28 08:52:54', '1', '1', NULL, 0, '', NULL, 1, '7bf0c3a4-4edb-21a3-72a2-5d15d4812396', 'AOR_Fields'),
('8b7ac464-a63f-bf9e-3baa-5cf93685405c', '', '2019-06-06 15:51:22', '2019-06-25 17:10:39', '1', '1', NULL, 0, '', NULL, 1, '5c3d0883-1ee6-0ca1-9364-5cf93604e349', 'AOR_Fields'),
('8f106c26-1215-aa38-e945-5cf93634d841', '', '2019-06-06 15:51:20', '2019-06-25 17:10:37', '1', '1', NULL, 0, '', NULL, 1, '501b0cb4-6a9e-fadd-4280-5cf9364cdf3b', 'AOR_Fields'),
('8fc20695-3a93-858b-b87e-5cf5571cc3b3', '', '2019-06-03 17:23:45', '2019-06-05 18:10:33', '1', '1', NULL, 0, '', NULL, 1, 'cc1b5e1a-77d1-c51f-2eb8-5cf5575b6901', 'BW_Transaction'),
('8fd15f48-75b6-cbab-3ff3-5d0e085ab9ba', 'Mr. Wilson Savaliya-Jun-2019', '2019-06-22 10:53:29', '2019-06-22 10:53:29', '1', '1', NULL, 0, NULL, NULL, 1, 'df092921-25e5-c2a1-9cdf-5d0e08f41b1d', 'BW_Monthly_Calculation'),
('90d07ef9-3b87-a56b-9892-5cf936c1ea10', '', '2019-06-06 15:51:16', '2019-06-25 17:10:32', '1', '1', NULL, 0, '', NULL, 1, '40f21b19-7c1d-22c5-eab3-5cf936ac16b5', 'AOR_Fields'),
('980c69a2-b922-670c-f9e9-5d0bd0e55848', 'Customer 8', '2019-06-20 18:28:11', '2019-06-20 18:28:11', '1', '1', NULL, 0, NULL, NULL, 1, '705c9f6e-8992-6d07-29c5-5d0bd0fbf9ce', 'Contacts'),
('993ce887-b16a-67ca-2290-5cf936105656', '', '2019-06-06 15:51:18', '2019-06-25 17:10:34', '1', '1', NULL, 0, '', NULL, 1, '117e5216-4fbe-c196-08ba-5cf9368effc8', 'AOR_Fields'),
('99428359-8f32-1603-bd60-5d15c0c27b98', 'Cash', '2019-06-28 07:24:05', '2019-06-28 07:24:25', '1', '1', NULL, 0, '', NULL, 1, '8a25ec1e-6ecc-3418-18b2-5d15c0a79b8b', 'AOR_Charts'),
('9bb4480e-eeba-ca97-209c-5d0e08b79610', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:50:48', '2019-06-22 10:50:48', '1', '1', NULL, 0, NULL, NULL, 1, '4f47fb6f-766e-5012-046f-5d0e088cec95', 'BW_Transaction'),
('9d37f3d6-cf1b-aad8-a9fd-5cffe4321219', 'Wilson Savaliya-Jun-2019', '2019-06-11 17:28:40', '2019-06-11 17:28:40', NULL, NULL, NULL, 0, NULL, NULL, 1, '59c1018e-3717-349e-779e-5cffe4b20fcb', 'BW_Monthly_Calculation'),
('9fa5055d-4fc0-1fca-9a8e-5d15c0bedb39', '', '2019-06-28 07:24:04', '2019-06-28 08:47:04', '1', '1', NULL, 0, '', NULL, 1, 'eb3df6f4-a11c-c69d-7461-5d15c0cd9997', 'AOR_Fields'),
('9fad7ae4-67ed-454c-a899-5cf6a61f6848', '-Jun-2019', '2019-06-04 17:12:01', '2019-06-04 17:12:01', NULL, NULL, NULL, 0, NULL, NULL, 1, '1500df61-9800-6a9b-6698-5cf6a6ccd0b5', 'BW_Monthly_Calculation'),
('a0371c1c-62bd-142f-d39b-5cfe8f9eca1c', 'Wilson Savaliya-Jun-2019', '2019-06-10 17:12:25', '2019-06-10 17:12:25', NULL, NULL, NULL, 0, NULL, NULL, 1, 'cd9c8c46-3cbb-d860-f369-5cfe8f97fcd0', 'BW_Monthly_Calculation'),
('a0646d87-4ea5-d0f9-1225-5cf6a4ee6640', '', '2019-06-04 17:03:26', '2019-06-04 17:03:26', '1', '1', NULL, 0, NULL, NULL, 1, 'a2450b7b-876b-94b3-4783-5cf6a4be8d3f', 'BW_Monthly_Calculation'),
('a4fc8c56-916b-c553-44ca-5d15c00d49f2', '', '2019-06-28 07:24:04', '2019-06-28 08:33:21', '1', '1', NULL, 0, '', NULL, 1, '96dcebf7-51d3-f897-6ef8-5d15c001d746', 'AOR_Fields'),
('a818e208-23bb-49f1-1124-5d12574f2cf1', '', '2019-06-25 17:18:05', '2019-06-25 17:21:28', '1', '1', NULL, 0, '', NULL, 1, '6835d24c-115f-91ff-e512-5d1257f76630', 'AOR_Fields'),
('a9a34970-b701-6554-2ff7-5d0d12e8dbda', 'Customer 3', '2019-06-21 17:24:01', '2019-06-21 17:24:01', '1', '1', NULL, 0, NULL, NULL, 1, '828eb268-f390-034e-c315-5d0d128462f8', 'Contacts'),
('ae4f34cb-e77d-e3b5-138b-5d15d043024b', '', '2019-06-28 08:32:53', '2019-06-28 08:33:21', '1', '1', NULL, 0, '', NULL, 1, '9a6cf009-ac3f-21a1-10c3-5d15d01e8437', 'AOR_Fields'),
('b1f7ecbd-63fe-f9f5-bbf6-5d15bd3a8ad2', '', '2019-06-28 07:11:51', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', NULL, 1, 'a244698b-bb6c-f48f-39fa-5d15bd2c3c98', 'AOR_Fields'),
('b2f277d6-2922-5121-d89b-5d125daa5fb3', '', '2019-06-25 17:42:33', '2019-06-28 07:17:31', '1', '1', NULL, 0, '', NULL, 1, '48eb5cdd-ecd4-1017-7813-5d125d5948e4', 'AOR_Conditions'),
('b3214aa1-f719-bcfd-3376-5d0bd3be32e5', 'Customer 1', '2019-06-20 18:41:53', '2019-06-20 18:41:53', '1', '1', NULL, 0, NULL, NULL, 1, 'afa51479-39b4-1d25-068c-5d0bd2c0f9d0', 'Contacts'),
('b47aa97a-6cb6-0014-1574-5d0bc1e475c9', 'Customer 1', '2019-06-20 17:25:32', '2019-06-20 17:28:16', '1', '1', NULL, 0, '', NULL, 1, 'cf3e3009-439d-9c64-fe02-5d0bc1adc324', 'Contacts'),
('b70bb198-b29b-d9f2-8887-5d0f3f015455', 'Wilson Savaliya-Credited', '2019-06-23 09:01:29', '2019-06-23 09:01:29', '1', '1', NULL, 0, NULL, NULL, 1, 'c2cb1c2c-cf99-ea35-2d50-5d0f3f36b989', 'BW_Transaction'),
('b8fe0b97-dbad-a354-69d0-5d15d401328b', '', '2019-06-28 08:48:51', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', NULL, 1, 'f18cd061-6f15-de0f-458d-5d15d45e23e8', 'AOR_Fields'),
('ba7684f5-4d7d-c10e-3b2a-5d125d2e2238', '', '2019-06-25 17:42:31', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', NULL, 1, '748cf81e-c8cf-46e2-d67f-5d125d53d527', 'AOR_Fields'),
('bce9b498-957a-a9aa-3d34-5d0f4171d3b7', 'Customer 2-Credited', '2019-06-23 09:08:00', '2019-06-23 09:08:00', '1', '1', NULL, 0, NULL, NULL, 1, 'e96359ef-3c8d-111c-6a4f-5d0f4149b138', 'BW_Transaction'),
('bd2962fe-6a2e-761c-6591-5d0f3f6b8be5', 'Wilson Savaliya-Jun-2019', '2019-06-23 09:01:28', '2019-06-23 09:01:28', '1', '1', NULL, 0, NULL, NULL, 1, '2c946259-c55c-4656-735b-5d0f3ff869f9', 'BW_Monthly_Calculation'),
('c08b1bdc-f624-3c89-e477-5d0bcf1d8894', 'Customer 8', '2019-06-20 18:26:50', '2019-06-20 18:26:50', '1', '1', NULL, 0, NULL, NULL, 1, '6d6c45cf-1e44-b0b1-91b1-5d0bcfad2cec', 'Contacts'),
('c1579899-9899-0359-9849-5d15c0a4397d', '', '2019-06-28 07:24:04', '2019-06-28 08:33:21', '1', '1', NULL, 0, '', NULL, 1, 'b65ecda1-9857-4ef9-6086-5d15c02d0081', 'AOR_Fields'),
('c160c357-592d-573d-18f2-5d15c042cfe1', 'RTTGS', '2019-06-28 07:24:05', '2019-06-28 07:24:25', '1', '1', NULL, 0, '', NULL, 1, 'a9803a46-ef86-312b-e938-5d15c0dd5a09', 'AOR_Charts'),
('c2850416-abe7-63bc-5a2e-5d12589f2d98', '', '2019-06-25 17:21:29', '2019-06-25 17:21:29', '1', '1', NULL, 0, NULL, NULL, 1, '93e932b5-6da7-c363-98a7-5d1258e43caa', 'AOR_Fields'),
('c2d8edc7-58c5-281c-475f-5d0de37d3834', 'Wilson Savaliya-Jun-2019', '2019-06-22 08:16:07', '2019-06-22 08:16:07', NULL, NULL, NULL, 0, NULL, NULL, 1, '1cf4f3ff-b695-609c-9438-5d0de3f2a1b7', 'BW_Monthly_Calculation'),
('c31776a8-8b93-346f-3fac-5d0f3eed0dbf', 'Customer 3', '2019-06-23 08:55:51', '2019-06-23 08:55:51', '1', '1', NULL, 0, NULL, NULL, 1, 'cc6d8663-0885-23be-ba5a-5d0f3eb9d515', 'Contacts'),
('c416fc5c-2031-4ffa-56e2-5d15bd386b1a', '', '2019-06-28 07:10:51', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', NULL, 1, 'b5af28ab-1f72-02f9-06df-5d15bdd4e83b', 'AOR_Fields'),
('c5557722-9c8d-4641-a6b9-5d15d452c06a', '', '2019-06-28 08:50:53', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', NULL, 1, '9e601128-0d1a-bf1d-bf15-5d15d412e551', 'AOR_Fields'),
('cbf0e09b-580e-c51b-3316-5d15d5fc9c20', '', '2019-06-28 08:51:22', '2019-06-28 08:52:21', '1', '1', NULL, 0, '', NULL, 1, 'bab7e0d1-47e7-a029-2a61-5d15d556a3e9', 'AOR_Fields'),
('ceabd700-a496-2749-21f4-5d15d0da6401', '', '2019-06-28 08:32:53', '2019-06-28 08:33:22', '1', '1', NULL, 0, '', NULL, 1, 'bdb7eb78-b595-63a4-b7d9-5d15d01cc1c9', 'AOR_Fields'),
('d04a0eb6-bf24-1911-43fd-5ccc8da6d6b8', 'Mr. Wilson Savaliya', '2019-05-03 18:50:18', '2019-06-20 17:24:04', '1', '1', NULL, 0, '', NULL, 1, '94ca38a8-9342-7b30-3d93-5ccc8d44eda5', 'Contacts'),
('d1e5edc9-3ad8-2d49-7a16-5d0de2cf4245', 'Wilson Savaliya-Jun-2019', '2019-06-22 08:12:34', '2019-06-22 08:12:34', NULL, NULL, NULL, 0, NULL, NULL, 1, '2caa5697-b856-7a72-9561-5d0de2652e26', 'BW_Monthly_Calculation'),
('d20143bd-5993-cbc7-5117-5cf93641576d', '', '2019-06-06 15:51:19', '2019-06-25 17:10:36', '1', '1', NULL, 0, '', NULL, 1, '54ee953a-fdcd-f284-b0a7-5cf93636a6fc', 'AOR_Fields'),
('d3b40956-8fb2-9211-ce62-5d15d4f40182', '', '2019-06-28 08:47:50', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', NULL, 1, '85c0061f-a269-c1bf-30b0-5d15d44fe658', 'AOR_Fields'),
('d4f71946-b8ec-78da-ae35-5d125d843033', '', '2019-06-25 17:42:32', '2019-06-28 07:09:42', '1', '1', NULL, 0, '', NULL, 1, '9448b63c-4aca-2b81-5eb8-5d125d265cb6', 'AOR_Fields'),
('d58fc0f2-77a6-28fb-3ac6-5d1257b1dd84', '', '2019-06-25 17:18:04', '2019-06-25 17:21:27', '1', '1', NULL, 0, '', NULL, 1, '8c490b25-63bf-4a44-fd12-5d12572c7061', 'AOR_Fields'),
('d5fe018a-c9d6-074f-8435-5d125dd516ee', 'Cash', '2019-06-25 17:45:42', '2019-06-28 07:17:32', '1', '1', NULL, 0, '', NULL, 1, '6cd8b10b-08aa-944a-b0e8-5d125d31e23a', 'AOR_Charts'),
('d9196a57-c9e0-6a4b-4070-5d15d40e4a08', 'Transaction Chart', '2019-06-28 08:50:52', '2019-06-28 08:52:53', '1', '1', NULL, 0, '', NULL, 1, 'c0a7e793-d9f1-f0cb-d001-5d15d42cc386', 'AOR_Reports'),
('d96cb54d-670e-7235-93b7-5cf93608b1b1', '', '2019-06-06 15:51:24', '2019-06-06 15:51:24', '1', '1', NULL, 0, NULL, NULL, 1, '4e9fd8d0-1e98-3328-e017-5cf9368553ea', 'AOR_Conditions'),
('d97781ba-1e23-221c-0949-5d15c0e88161', 'Transaction Chart', '2019-06-28 07:24:03', '2019-06-28 08:49:49', '1', '1', NULL, 0, '', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 'AOR_Reports'),
('dcccadb4-2cf0-a140-1f59-5d0dfdf11ee1', 'Wilson Savaliya-Jun-2019', '2019-06-22 10:06:34', '2019-06-22 10:06:34', NULL, NULL, NULL, 0, NULL, NULL, 1, '20f335af-5eae-3b86-2f3e-5d0dfd4cf7db', 'BW_Monthly_Calculation'),
('dd529efe-8a19-6d1c-ec03-5cf563414207', '', '2019-06-03 18:14:53', '2019-06-05 18:10:55', '1', '1', NULL, 0, '', NULL, 1, '23d5276e-1ca4-cbf5-1a09-5cf563f22f0e', 'BW_Transaction'),
('dfe908c9-efff-1b1a-35b1-5d0bc853f95c', 'Customer 6', '2019-06-20 17:55:31', '2019-06-20 17:55:31', '1', '1', NULL, 0, NULL, NULL, 1, 'd73e0d14-6ae2-d855-5806-5d0bc8612962', 'Contacts'),
('e0e60819-9b97-7d96-ccf7-5d0f4232bfa7', 'Mr. Wilson Savaliya-Debited', '2019-06-23 09:10:35', '2019-06-23 09:10:35', '1', '1', NULL, 0, NULL, NULL, 1, '5269e0ab-dd0b-75ea-c4d5-5d0f423214ad', 'BW_Transaction'),
('e0eea239-779e-60d6-1620-5cf938827e18', '', '2019-06-06 15:58:17', '2019-06-06 16:09:54', '1', '1', NULL, 0, '', NULL, 1, '243c3f81-f43c-bd32-e707-5cf938173d83', 'AOR_Conditions'),
('e1c0d610-f8c5-83f8-f622-5d15c05da6bf', '', '2019-06-28 07:24:04', '2019-06-28 08:33:21', '1', '1', NULL, 0, '', NULL, 1, 'd4da4475-3fb3-eeac-37e9-5d15c0088b4b', 'AOR_Fields'),
('e1ffbeea-232b-d77c-9809-5d15d4f26487', '', '2019-06-28 08:47:04', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', NULL, 1, 'd69b41b3-46d3-cb8d-9d4f-5d15d49240bb', 'AOR_Fields'),
('e204e9aa-a631-825b-4e1a-5cf9385fb3da', '', '2019-06-06 15:58:15', '2019-06-25 17:10:42', '1', '1', NULL, 0, '', NULL, 1, '338afb19-05ac-8a3c-ed83-5cf938326665', 'AOR_Conditions'),
('e38904d1-6264-ea57-d30b-5d0bc2472b0b', 'Customer 2', '2019-06-20 17:31:37', '2019-06-20 17:32:13', '1', '1', NULL, 0, '', NULL, 1, 'ab32d623-a36f-8a34-5a67-5d0bc2e10726', 'Contacts'),
('e681ff69-4ce3-9e5b-ed58-5cf936d982d4', '', '2019-06-06 15:51:17', '2019-06-25 17:10:34', '1', '1', NULL, 0, '', NULL, 1, '6792eabd-80bf-97e3-6b14-5cf9364ff780', 'AOR_Fields'),
('e6865c51-ccda-edfd-42fd-5cf936543655', '', '2019-06-06 15:51:14', '2019-06-25 17:10:30', '1', '1', NULL, 0, '', NULL, 1, '772842f7-d552-7f55-6cf1-5cf936a6e9c2', 'AOR_Fields'),
('e81d0bb2-4b60-b7a2-7b79-5cf936f03b19', '', '2019-06-06 15:51:21', '2019-06-25 17:10:38', '1', '1', NULL, 0, '', NULL, 1, '79ae3e82-9c5a-a80e-bb12-5cf9367380bd', 'AOR_Fields'),
('ed4fe33f-906f-118a-d4c9-5d15d47b7bfe', '', '2019-06-28 08:50:53', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', NULL, 1, 'dfadfc95-8aab-c7cf-e7bd-5d15d40b0d63', 'AOR_Fields'),
('edc98a32-b9f6-944b-c7d0-5d15d0980eb5', '', '2019-06-28 08:32:53', '2019-06-28 08:33:22', '1', '1', NULL, 0, '', NULL, 1, 'dcf544e1-5279-bf89-7097-5d15d09c3fbe', 'AOR_Fields');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
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
-- Dumping data for table `aor_charts`
--

INSERT INTO `aor_charts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aor_report_id`, `type`, `x_field`, `y_field`) VALUES
('19b709ba-5967-74d6-dde6-5d125de2f815', 'Cheque', '2019-06-25 17:45:36', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 'bar', 1, 1),
('4b755a78-5c3c-eda1-3f6c-5d15afc9aa08', 'Total', '2019-06-28 06:11:39', '2019-06-28 06:13:03', '1', '1', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 'bar', 7, 7),
('6189ba7d-6e1b-d53e-416b-5d15c030a353', 'Cheque', '2019-06-28 07:24:03', '2019-06-28 08:32:51', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 'bar', 1, 1),
('6cd8b10b-08aa-944a-b0e8-5d125d31e23a', 'Cash', '2019-06-25 17:45:36', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 'bar', 3, 3),
('8a25ec1e-6ecc-3418-18b2-5d15c0a79b8b', 'Cash', '2019-06-28 07:24:03', '2019-06-28 08:32:51', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 'bar', 3, 3),
('96d16656-da58-a321-5484-5d125dcabbcd', 'RTTGS', '2019-06-25 17:45:36', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 'bar', 2, 2),
('a9803a46-ef86-312b-e938-5d15c0dd5a09', 'RTTGS', '2019-06-28 07:24:03', '2019-06-28 08:32:51', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 'bar', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
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
-- Dumping data for table `aor_conditions`
--

INSERT INTO `aor_conditions` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aor_report_id`, `condition_order`, `logic_op`, `parenthesis`, `module_path`, `field`, `operator`, `value_type`, `value`, `parameter`) VALUES
('1e300954-0b4d-379e-737e-5d15c095f16f', '', '2019-06-28 07:24:03', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Equal_To', 'Period', 'dGhpc19tb250aA==', 1),
('243c3f81-f43c-bd32-e707-5cf938173d83', '', '2019-06-06 15:57:37', '2019-06-25 17:10:27', '1', '1', NULL, 1, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 2, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Less_Than_or_Equal_To', 'Value', '2019-05-30 22:00:00', 0),
('2fa359e1-6674-e145-1118-5d15c05a7ca2', '', '2019-06-28 07:24:03', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 1, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'type', 'Equal_To', 'Value', 'Credited', 1),
('338afb19-05ac-8a3c-ed83-5cf938326665', '', '2019-06-06 15:57:37', '2019-06-25 17:10:27', '1', '', NULL, 1, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Greater_Than_or_Equal_To', 'Value', '2019-04-30 22:00:00', 0),
('391438b8-b922-4024-4d1e-5d15d4baa88a', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 1, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'type', 'Equal_To', 'Value', 'Credited', 1),
('3d760635-5077-f736-3b2e-5d125d52f12c', '', '2019-06-25 17:45:36', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 1, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'type', 'Equal_To', 'Value', 'Debited', 1),
('48eb5cdd-ecd4-1017-7813-5d125d5948e4', '', '2019-06-25 17:42:29', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Equal_To', 'Period', 'dGhpc19tb250aA==', 1),
('4e9fd8d0-1e98-3328-e017-5cf9368553ea', '', '2019-06-06 15:51:13', '2019-06-06 15:54:19', '1', '1', NULL, 1, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 2, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Less_Than_or_Equal_To', 'Value', '', 1),
('58ca0130-e661-09c5-3534-5d12551a6614', '', '2019-06-25 17:10:27', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 2, 'AND', NULL, 'YToxOntpOjA7czowOiIiO30=', 'last_sync_c', 'Equal_To', 'Period', 'dGhpc19tb250aA==', 1),
('8a0b944c-ef47-8c90-5d38-5cf9368608a1', '', '2019-06-06 15:51:13', '2019-06-06 15:54:19', '1', '', NULL, 1, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Greater_Than_or_Equal_To', 'Value', NULL, 1),
('c4a4343e-dad1-66ff-c9cd-5d1257135e72', '', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Equal_To', 'Period', 'dGhpc19tb250aA==', 1),
('ce0b09ba-2c82-225b-e352-5d15d4f69fd7', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 0, NULL, NULL, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 'Equal_To', 'Period', 'dGhpc19tb250aA==', 1);

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
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
-- Dumping data for table `aor_fields`
--

INSERT INTO `aor_fields` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `aor_report_id`, `field_order`, `module_path`, `field`, `display`, `link`, `label`, `field_function`, `sort_by`, `format`, `total`, `sort_order`, `group_by`, `group_order`, `group_display`) VALUES
('117e5216-4fbe-c196-08ba-5cf9368effc8', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 6, 'YToxOntpOjA7czowOiIiO30=', 'group_commission', 1, 0, 'Group Commission', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('193d250b-e9ff-538b-2fd0-5d125da507e2', '', '2019-06-25 17:42:29', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 1, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('1eaf5742-d20d-167e-efbc-5d15c00be412', '', '2019-06-28 07:24:03', '2019-06-28 08:32:51', '1', '', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 1, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('1ff68ecd-8b3a-abb7-0ed9-5d1258275f44', '', '2019-06-25 17:21:25', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 4, 'YToxOntpOjA7czowOiIiO30=', 'tds_c', 1, 0, 'TDS', '', '', '', '', NULL, 0, NULL, 0),
('277e2d97-e0bb-f076-8614-5d15d4f5a417', '', '2019-06-28 08:47:22', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 4, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Date Created', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('29a088a1-a0a5-d737-8fb4-5d1257b096e5', '', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 1, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('2a803549-1f62-c4a9-b34d-5d15d4f6f24d', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 1, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('2b6296c8-10bd-de0c-170e-5d15d4e3f9e7', '', '2019-06-28 08:47:03', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 3, 'YToxOntpOjA7czowOiIiO30=', 'rttgs', 1, 0, 'RTTGS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('31aa3329-0159-1dcf-b7ab-5d15bc10a3b0', '', '2019-06-28 07:07:08', '2019-06-28 07:09:41', '1', '', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 7, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Total Cheque', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('3540bcdc-aaf6-57c6-540a-5d15d524b2b2', '', '2019-06-28 08:52:53', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 6, 'YToxOntpOjA7czowOiIiO30=', 'tds_c', 0, 0, 'TDS', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
('3813f5f3-9fa0-d145-ca22-5d125db20caf', '', '2019-06-25 17:42:29', '2019-06-28 07:10:14', '1', '1', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 4, 'YToxOntpOjA7czowOiIiO30=', 'tds_c', 1, 0, 'TDS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('383e782b-1e83-5cb1-64a7-5d15af6730aa', '', '2019-06-28 06:11:39', '2019-06-28 06:13:03', '1', '', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 7, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Total', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('40f21b19-7c1d-22c5-eab3-5cf936ac16b5', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 3, 'YToxOntpOjA7czowOiIiO30=', 'returned_amount', 1, 0, 'Returned Amount', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('48cc3674-0539-3527-1e5d-5d15d44d6aa2', '', '2019-06-28 08:47:22', '2019-06-28 08:48:16', '1', '', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 4, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Date Created', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('4a01d89c-359f-433d-87fd-5d15d4790881', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 2, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('501b0cb4-6a9e-fadd-4280-5cf9364cdf3b', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 9, 'YToxOntpOjA7czowOiIiO30=', 'payment_by_cheque', 1, 0, 'Payment By Cheque', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('51883162-7d9c-8d50-7a46-5d15c05d883c', '', '2019-06-28 07:24:03', '2019-06-28 08:32:51', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 2, 'YToxOntpOjA7czowOiIiO30=', 'rttgs', 1, 0, 'RTTGS', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('53b103a3-02af-3695-b61d-5d15d4999860', '', '2019-06-28 08:47:03', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 2, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('54ee953a-fdcd-f284-b0a7-5cf93636a6fc', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 8, 'YToxOntpOjA7czowOiIiO30=', 'pending_commission', 1, 0, 'Pending Payment', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('5c3d0883-1ee6-0ca1-9364-5cf93604e349', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 12, 'YToxOntpOjA7czowOiIiO30=', 'total_paid_amount', 1, 0, 'Total Paid Amount', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('65755169-b657-968e-d382-5d125d2579b1', '', '2019-06-25 17:42:29', '2019-06-28 07:10:14', '1', '', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_transaction_contacts_name', 1, 0, 'Contacts', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('6792eabd-80bf-97e3-6b14-5cf9364ff780', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 5, 'YToxOntpOjA7czowOiIiO30=', 'owner_commission', 1, 0, 'Owner Commission', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('6835d24c-115f-91ff-e512-5d1257f76630', '', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 6, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Date', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('6a79ec10-0bdd-e493-a87e-5d15d045782f', '', '2019-06-28 08:32:51', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 4, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('748cf81e-c8cf-46e2-d67f-5d125d53d527', '', '2019-06-25 17:42:29', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 2, 'YToxOntpOjA7czowOiIiO30=', 'rttgs', 1, 0, 'RTTGS', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('761e6da1-2416-b0fa-fc34-5d15c0b5b9fe', '', '2019-06-28 07:24:03', '2019-06-28 08:32:51', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 3, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('772842f7-d552-7f55-6cf1-5cf936a6e9c2', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_monthly_calculation_contacts_name', 1, 0, 'Contacts', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('79ae3e82-9c5a-a80e-bb12-5cf9367380bd', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 11, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('7bf0c3a4-4edb-21a3-72a2-5d15d4812396', '', '2019-06-28 08:50:52', '2019-06-28 08:52:53', '1', '', NULL, 1, 'c0a7e793-d9f1-f0cb-d001-5d15d42cc386', 3, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('85c0061f-a269-c1bf-30b0-5d15d44fe658', '', '2019-06-28 08:47:48', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_transaction_contacts_name', 1, 0, 'Client', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('8c490b25-63bf-4a44-fd12-5d12572c7061', '', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 2, 'YToxOntpOjA7czowOiIiO30=', 'rttgs', 1, 0, 'RTTGS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('93e932b5-6da7-c363-98a7-5d1258e43caa', '', '2019-06-25 17:21:25', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 5, 'YToxOntpOjA7czowOiIiO30=', 'type', 1, 0, 'Type', '', '', '', '', NULL, 0, NULL, 0),
('9448b63c-4aca-2b81-5eb8-5d125d265cb6', '', '2019-06-25 17:42:29', '2019-06-28 07:10:14', '1', '1', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 5, 'YToxOntpOjA7czowOiIiO30=', 'type', 1, 0, 'Type', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('96dcebf7-51d3-f897-6ef8-5d15c001d746', '', '2019-06-28 07:24:03', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 1, 'YToxOntpOjA7czowOiIiO30=', 'tds_c', 1, 0, 'TDS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('9a6cf009-ac3f-21a1-10c3-5d15d01e8437', '', '2019-06-28 08:32:51', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 5, 'YToxOntpOjA7czowOiIiO30=', 'cheque', 1, 0, 'Cheque', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('9e601128-0d1a-bf1d-bf15-5d15d412e551', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 4, 'YToxOntpOjA7czowOiIiO30=', 'rttgs', 1, 0, 'RTTGS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('a244698b-bb6c-f48f-39fa-5d15bd2c3c98', '', '2019-06-28 07:11:50', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_transaction_contacts_name', 1, 0, 'Contacts', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('ab0fe46c-5e44-8699-2159-5cf936a32632', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 2, 'YToxOntpOjA7czowOiIiO30=', 'received_amount', 1, 0, 'Received Amount', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('ad990767-7f78-1e20-6d80-5d12576765fb', '', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 3, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('afd6faaa-2c0b-0f3e-e62f-5cf936fbf33e', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 7, 'YToxOntpOjA7czowOiIiO30=', 'total_commission', 1, 0, 'Total Commission', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('b5af28ab-1f72-02f9-06df-5d15bdd4e83b', '', '2019-06-28 07:10:51', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 4, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Date Created', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('b65ecda1-9857-4ef9-6086-5d15c02d0081', '', '2019-06-28 07:24:03', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 2, 'YToxOntpOjA7czowOiIiO30=', 'type', 1, 0, 'Type', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('b85ec93b-7f92-189f-64a1-5cf936557c0c', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 10, 'YToxOntpOjA7czowOiIiO30=', 'all_rtgs', 1, 0, 'All RTGS', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('ba7283fb-e607-0783-c345-5cf936e0e540', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 13, 'YToxOntpOjA7czowOiIiO30=', 'total', 1, 0, 'Total', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('bab7e0d1-47e7-a029-2a61-5d15d556a3e9', '', '2019-06-28 08:51:21', '2019-06-28 08:52:20', '1', '', NULL, 1, 'c0a7e793-d9f1-f0cb-d001-5d15d42cc386', 5, 'YToxOntpOjA7czowOiIiO30=', 'tds_c', 1, 0, 'TDS', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
('bdb7eb78-b595-63a4-b7d9-5d15d01cc1c9', '', '2019-06-28 08:32:51', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 6, 'YToxOntpOjA7czowOiIiO30=', 'rttgs', 1, 0, 'RTTGS', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('c297df48-a7c1-e05a-272e-5d1257c2152d', '', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '642881bc-db52-ff64-6f72-5d1257e33127', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_transaction_contacts_name', 1, 0, 'Contacts', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('c42b2a08-af27-6c7d-0cb1-5cf936ea4a73', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 4, 'YToxOntpOjA7czowOiIiO30=', 'total_amount', 1, 0, 'Total Amount', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('cc73c181-2e29-2501-efd0-5d125ddfaef4', '', '2019-06-25 17:42:29', '2019-06-28 07:17:30', '1', '1', NULL, 0, '', 3, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('d4da4475-3fb3-eeac-37e9-5d15c0088b4b', '', '2019-06-28 07:24:03', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 3, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Date', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('d69b41b3-46d3-cb8d-9d4f-5d15d49240bb', '', '2019-06-28 08:47:03', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 1, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('dcf544e1-5279-bf89-7097-5d15d09c3fbe', '', '2019-06-28 08:32:51', '2019-06-28 08:47:03', '1', '1', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 7, 'YToxOntpOjA7czowOiIiO30=', 'cash', 1, 0, 'Cash', NULL, NULL, NULL, 'SUM', NULL, 0, NULL, NULL),
('dfadfc95-8aab-c7cf-e7bd-5d15d40b0d63', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 5, 'YToxOntpOjA7czowOiIiO30=', 'type', 1, 0, 'Type', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('e8424dcb-922d-f91d-e73a-5d125db80fe9', '', '2019-06-25 17:42:29', '2019-06-28 07:10:14', '1', '1', NULL, 1, '265804b1-fd2a-9ce1-34d0-5d125de6107e', 6, 'YToxOntpOjA7czowOiIiO30=', 'date_entered', 1, 0, 'Date', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('ea39f0a9-c336-6f3e-ca2a-5d15d424cbac', '', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 0, '', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_transaction_contacts_name', 1, 0, 'Client', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('eb3df6f4-a11c-c69d-7461-5d15c0cd9997', '', '2019-06-28 07:24:03', '2019-06-28 08:47:03', '1', '', NULL, 1, 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 0, 'YToxOntpOjA7czowOiIiO30=', 'bw_transaction_contacts_name', 1, 0, 'Contacts', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('f0ab09b6-d4ac-1529-8b9a-5cf93627655e', '', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 1, 'YToxOntpOjA7czowOiIiO30=', 'previous_amount', 1, 0, 'Previous Amount', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
('f18cd061-6f15-de0f-458d-5d15d45e23e8', '', '2019-06-28 08:48:49', '2019-06-28 08:50:09', '1', '1', NULL, 0, '', 5, 'YToxOntpOjA7czowOiIiO30=', 'type', 1, 0, 'Type', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
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
-- Dumping data for table `aor_reports`
--

INSERT INTO `aor_reports` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `report_module`, `graphs_per_row`) VALUES
('265804b1-fd2a-9ce1-34d0-5d125de6107e', 'Transaction Chart', '2019-06-25 17:42:29', '2019-06-28 07:17:30', '1', '1', NULL, 1, '1', 'BW_Transaction', 3),
('642881bc-db52-ff64-6f72-5d1257e33127', 'Transaction Report', '2019-06-25 17:18:02', '2019-06-25 17:21:25', '1', '1', NULL, 0, '1', 'BW_Transaction', 2),
('bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 'Transaction Chart', '2019-06-28 07:24:03', '2019-06-28 08:50:09', '1', '1', NULL, 1, '1', 'BW_Transaction', 2),
('c0a7e793-d9f1-f0cb-d001-5d15d42cc386', 'Transaction Chart', '2019-06-28 08:50:52', '2019-06-28 09:17:48', '1', '1', NULL, 1, '1', 'BW_Transaction', 2),
('ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 'Monthly Calculation ', '2019-06-06 15:51:13', '2019-06-25 17:10:27', '1', '1', NULL, 0, '1', 'BW_Monthly_Calculation', 2);

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
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
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
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
  `number` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
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

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
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

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `bw_monthly_calculation`
--

CREATE TABLE `bw_monthly_calculation` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `previous_amount` decimal(26,0) DEFAULT NULL,
  `received_amount` decimal(26,0) DEFAULT NULL,
  `returned_amount` decimal(26,0) DEFAULT NULL,
  `total_amount` decimal(26,0) DEFAULT NULL,
  `owner_commission` decimal(26,0) DEFAULT NULL,
  `group_commission` decimal(26,0) DEFAULT NULL,
  `total_commission` decimal(26,0) DEFAULT NULL,
  `pending_commission` decimal(26,0) DEFAULT NULL,
  `payment_by_cheque` decimal(26,0) DEFAULT NULL,
  `all_rtgs` decimal(26,0) DEFAULT NULL,
  `cash` decimal(26,0) DEFAULT NULL,
  `total_paid_amount` decimal(26,0) DEFAULT NULL,
  `total` decimal(26,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bw_monthly_calculation_audit`
--

CREATE TABLE `bw_monthly_calculation_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `bw_monthly_calculation_contacts_c`
--

CREATE TABLE `bw_monthly_calculation_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bw_monthly_calculation_contactscontacts_ida` varchar(36) DEFAULT NULL,
  `bw_monthly_calculation_contactsbw_monthly_calculation_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bw_monthly_calculation_cstm`
--

CREATE TABLE `bw_monthly_calculation_cstm` (
  `id_c` char(36) NOT NULL,
  `last_sync_c` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bw_transaction`
--

CREATE TABLE `bw_transaction` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `cheque` decimal(26,6) DEFAULT '0.000000',
  `rttgs` decimal(26,6) DEFAULT '0.000000',
  `cash` decimal(26,6) DEFAULT '0.000000',
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bw_transaction_audit`
--

CREATE TABLE `bw_transaction_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `bw_transaction_contacts_c`
--

CREATE TABLE `bw_transaction_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `bw_transaction_contactscontacts_ida` varchar(36) DEFAULT NULL,
  `bw_transaction_contactsbw_transaction_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bw_transaction_cstm`
--

CREATE TABLE `bw_transaction_cstm` (
  `id_c` char(36) NOT NULL,
  `tds_c` decimal(26,6) DEFAULT '0.000000',
  `currency_id` char(36) DEFAULT NULL,
  `is_calculated_c` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
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

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
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

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
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
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
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

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
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

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.25'),
('MySettings', 'tab', 'YTo2OntpOjA7czo0OiJIb21lIjtpOjE7czo4OiJDb250YWN0cyI7aToyO3M6MjI6IkJXX01vbnRobHlfQ2FsY3VsYXRpb24iO2k6MztzOjE0OiJCV19UcmFuc2FjdGlvbiI7aTo0O3M6NToiU3BvdHMiO2k6NTtzOjExOiJBT1JfUmVwb3J0cyI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('MySettings', 'disable_useredit', 'no'),
('MySettings', 'hide_subpanels', 'YToyNjp7czo1OiJsZWFkcyI7czo1OiJsZWFkcyI7czoxMzoib3Bwb3J0dW5pdGllcyI7czoxMzoib3Bwb3J0dW5pdGllcyI7czoxNDoic2VjdXJpdHlncm91cHMiO3M6MTQ6InNlY3VyaXR5Z3JvdXBzIjtzOjk6Impqd2dfbWFwcyI7czo5OiJqandnX21hcHMiO3M6ODoiYWNjb3VudHMiO3M6ODoiYWNjb3VudHMiO3M6OToiZG9jdW1lbnRzIjtzOjk6ImRvY3VtZW50cyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czoxMzoicHJvc3BlY3RsaXN0cyI7czoxMzoiYW9zX2NvbnRyYWN0cyI7czoxMzoiYW9zX2NvbnRyYWN0cyI7czoxMjoiYW9zX3Byb2R1Y3RzIjtzOjEyOiJhb3NfcHJvZHVjdHMiO3M6Mjk6ImFva19rbm93bGVkZ2VfYmFzZV9jYXRlZ29yaWVzIjtzOjI5OiJhb2tfa25vd2xlZGdlX2Jhc2VfY2F0ZWdvcmllcyI7czoxMDoiamp3Z19hcmVhcyI7czoxMDoiamp3Z19hcmVhcyI7czoxMjoiamp3Z19tYXJrZXJzIjtzOjEyOiJqandnX21hcmtlcnMiO3M6MjI6ImFvc19wcm9kdWN0X2NhdGVnb3JpZXMiO3M6MjI6ImFvc19wcm9kdWN0X2NhdGVnb3JpZXMiO3M6MjE6ImFvcl9zY2hlZHVsZWRfcmVwb3J0cyI7czoyMToiYW9yX3NjaGVkdWxlZF9yZXBvcnRzIjtzOjE3OiJhb2tfa25vd2xlZGdlYmFzZSI7czoxNzoiYW9rX2tub3dsZWRnZWJhc2UiO3M6ODoibWVldGluZ3MiO3M6ODoibWVldGluZ3MiO3M6NToibm90ZXMiO3M6NToibm90ZXMiO3M6NDoiYnVncyI7czo0OiJidWdzIjtzOjEyOiJhb3NfaW52b2ljZXMiO3M6MTI6ImFvc19pbnZvaWNlcyI7czo5OiJwcm9zcGVjdHMiO3M6OToicHJvc3BlY3RzIjtzOjE5OiJhbV9wcm9qZWN0dGVtcGxhdGVzIjtzOjE5OiJhbV9wcm9qZWN0dGVtcGxhdGVzIjtzOjEwOiJhb3NfcXVvdGVzIjtzOjEwOiJhb3NfcXVvdGVzIjtzOjU6ImNhc2VzIjtzOjU6ImNhc2VzIjtzOjc6InByb2plY3QiO3M6NzoicHJvamVjdCI7czo5OiJmcF9ldmVudHMiO3M6OToiZnBfZXZlbnRzIjtzOjExOiJjYW1wYWlnbmxvZyI7czoxMToiY2FtcGFpZ25sb2ciO30='),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
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
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contacts_1_c`
--

CREATE TABLE `contacts_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `contacts_contacts_1contacts_ida` varchar(36) DEFAULT NULL,
  `contacts_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_contacts_1_c`
--

INSERT INTO `contacts_contacts_1_c` (`id`, `date_modified`, `deleted`, `contacts_contacts_1contacts_ida`, `contacts_contacts_1contacts_idb`) VALUES
('657629d6-6a08-81a1-53ad-5d0f3d2ea293', '2019-06-23 08:53:04', 0, '35a4735b-f1cc-5619-18ec-5d0f3d852d7a', '94ca38a8-9342-7b30-3d93-5ccc8d44eda5'),
('6dc38ddb-5689-7bce-e412-5d0f3eb5429d', '2019-06-23 08:54:23', 0, '4d18a71b-c06b-d5e8-242a-5d0f3e51e462', '35a4735b-f1cc-5619-18ec-5d0f3d852d7a'),
('ed7c936e-731d-8bf3-68bd-5d0f3ec05829', '2019-06-23 08:55:50', 0, 'cc6d8663-0885-23be-ba5a-5d0f3eb9d515', '35a4735b-f1cc-5619-18ec-5d0f3d852d7a');

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `default_interest_c` int(255) DEFAULT NULL,
  `current_interest_c` int(255) DEFAULT NULL,
  `pending_payment_c` decimal(26,6) DEFAULT '0.000000',
  `currency_id` char(36) DEFAULT NULL,
  `contact_type_c` varchar(100) DEFAULT NULL,
  `is_calculated_c` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`, `default_interest_c`, `current_interest_c`, `pending_payment_c`, `currency_id`, `contact_type_c`, `is_calculated_c`) VALUES
('35a4735b-f1cc-5619-18ec-5d0f3d852d7a', 0.00000000, 0.00000000, NULL, NULL, 8, 4, '0.000000', NULL, 'Child', 1),
('4d18a71b-c06b-d5e8-242a-5d0f3e51e462', 0.00000000, 0.00000000, NULL, NULL, 6, NULL, '0.000000', NULL, 'Child', 1),
('94ca38a8-9342-7b30-3d93-5ccc8d44eda5', 0.00000000, 0.00000000, '', '', 10, 26, '3000.000000', '', 'Parent', 0),
('cc6d8663-0885-23be-ba5a-5d0f3eb9d515', 0.00000000, 0.00000000, NULL, NULL, 6, 0, '0.000000', NULL, 'Child', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
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
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `iso4217`, `conversion_rate`, `status`, `deleted`, `date_entered`, `date_modified`, `created_by`) VALUES
('b6905bc1-7203-909b-a093-5d15c4025497', 'rupee', '₹', 'INR', 1, 'Active', 1, '2019-06-28 07:41:25', '2019-06-28 07:48:09', '1');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
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

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
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

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
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

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
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

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
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
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
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

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
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

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('1041b9fa-e95c-8452-10b6-5ccc61aef334', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('2091ae39-6795-52bb-029b-5ccc61bfdb73', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, 'system'),
('4d850f8e-3804-29ac-c6b8-5ccc61ce983f', '2013-05-24 14:31:45', '2019-05-03 15:39:50', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'system'),
('5c963466-9d80-09e6-521c-5ccc61e95449', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, 'system'),
('603b568f-38c9-4728-34fe-5ccc6105c6c9', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('950e44fe-ba08-3dc4-aa24-5ccc61dbe874', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, 'system'),
('9dbb7df7-f3fc-8b98-88f9-5ccc618a3c22', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, 'system'),
('cea72055-8c45-f488-1963-5ccc61e2f0b1', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>', 0, NULL, NULL, 'system'),
('d295d307-3df4-9900-b542-5ccc612d35d5', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('ed7f385d-ed9b-6d99-e8cf-5ccc61f1bf9a', '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, 'system');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
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
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `parent_id`, `parent_type`) VALUES
('9242e160-5e8f-30e0-9972-5d0f42b0e03c', 'BW_Transaction 5269e0ab-dd0b-75ea-c4d5-5d0f423214ad 1', '2019-06-23 09:10:58', '2019-06-23 09:10:59', '1', '1', NULL, 1, '1', '5269e0ab-dd0b-75ea-c4d5-5d0f423214ad', 'BW_Transaction');

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
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
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('BW_Monthly_Calculationlast_sync_c', 'last_sync_c', 'LBL_LAST_SYNC', '', '', 'BW_Monthly_Calculation', 'datetimecombo', NULL, 0, '', '2019-06-21 18:02:13', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('BW_Transactioncurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'BW_Transaction', 'currency_id', 36, 0, NULL, '2019-06-10 17:15:42', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('BW_Transactionis_calculated_c', 'is_calculated_c', 'LBL_IS_CALCULATED', '', '', 'BW_Transaction', 'bool', 255, 0, '0', '2019-06-12 17:05:24', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('BW_Transactiontds_c', 'tds_c', 'LBL_TDS', '', '', 'BW_Transaction', 'currency', 26, 0, '0', '2019-06-10 17:15:42', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactscontact_type_c', 'contact_type_c', 'LBL_CONTACT_TYPE', '', '', 'Contacts', 'enum', 100, 0, NULL, '2019-06-20 17:10:29', 0, 0, 0, 0, 1, 'true', 'contact_type_list', '', '', ''),
('Contactscurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'Contacts', 'currency_id', 36, 0, NULL, '2019-06-10 17:20:20', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactscurrent_interest_c', 'current_interest_c', 'LBL_CURRENT_INTEREST', NULL, NULL, 'Contacts', 'int', 255, 0, NULL, '2019-06-10 17:07:36', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactsdefault_interest_c', 'default_interest_c', 'LBL_DEFAULT_INTEREST', NULL, NULL, 'Contacts', 'int', 255, 0, NULL, '2019-06-10 17:08:39', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('Contactsis_calculated_c', 'is_calculated_c', 'LBL_IS_CALCULATED', '', '', 'Contacts', 'bool', 255, 0, '0', '2019-06-20 17:22:28', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactspending_payment_c', 'pending_payment_c', 'LBL_PENDING_PAYMENT', '', '', 'Contacts', 'currency', 26, 0, '0', '2019-06-10 17:20:20', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2019-05-03 15:39:50', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
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

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
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

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
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

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
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

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
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

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
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

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
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
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
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
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
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

-- --------------------------------------------------------

--
-- Table structure for table `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
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

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
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

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
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

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '0',
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
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('655ca8b9-a5fb-1c14-d2d7-5ccc61d22a3d', 'system', 'system', '1', NULL, NULL, 'SMTP', 'other', '', '25', '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
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

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
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

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
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
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
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

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
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
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1169ff0b-c402-a24a-bab6-5d15e2009afe', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1187062c-d2ac-b939-26a0-5d15e287ba80', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11a1dcd1-ec8c-72ae-0268-5d15e23bd427', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('11aaf367-d36c-7dd3-803f-5d15e2f64277', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('134a7270-9fc8-c913-7d17-5d15e2ec79de', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('135c9a60-f573-a594-f72f-5d15e26c99e9', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1398d222-a435-f56a-c247-5d15e2b81de8', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14670876-44d7-5823-7779-5d15e2a39955', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14c3dde2-b639-b9bd-cbf8-5d15e214bf33', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14d6d19a-e1d9-a9aa-f22b-5d15e21dd71c', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('15621135-14d5-e706-4b02-5d15e22a880a', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15680d30-ada9-ee3d-28d8-5d15e2ed1fc0', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15f95b72-8bf1-06a1-2008-5d15e2c72af7', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('163af4a8-931d-e3fe-6f92-5d15e298c45f', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('167af033-d37e-1eed-eda1-5d15e27077e3', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17135bfb-7046-0936-6b4c-5d15e28d20a4', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('17f38786-fd98-5f4d-ded9-5d15e2f79d8f', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1839751b-1751-8cb7-204a-5d15e2b29a3d', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1859329e-68a9-f237-5aae-5d15e28b9bc9', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1982c4bb-7a63-e6e9-4be4-5d15e289060d', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19f90d4e-90cf-2931-2da0-5d15e2f89604', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b2eb50e-8815-c6d8-a45c-5d15e23d89cc', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b312077-1319-d2dc-d9c0-5d15e2496c6f', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b6fc1e6-3bf9-d5bd-7382-5d15e25103d8', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('1bb9664a-42a4-2fed-d565-5d15e208b636', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1bd022a7-e045-6fb7-4943-5d15e22b3c0c', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('1cfce33a-8bbb-b61f-6afb-5d15e251170b', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('1d9930a8-6856-ea5f-b421-5d15e292c61e', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('1e1ffb4a-2787-c684-ae60-5d15e2681fb2', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e95bb25-9a75-a3a8-8bbd-5d15e2cff77a', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ef06ba9-41dc-3d89-551c-5d15e2e0d986', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f37c1b5-aa50-3051-b94f-5d15e286a123', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('1f715622-39e0-1c59-364d-5d15e2e864b4', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20a8c872-031d-b3e1-c639-5d15e2f1f02d', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('20cef167-f5d2-80aa-b3bb-5d15e26f5e8c', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2157ae94-6fcd-e15f-2567-5d15e216cba5', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21a103f3-ab8c-f136-d0d5-5d15e2874e4f', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('22502a30-1228-9883-f73f-5d15e26fca11', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('23910e71-0e6a-2fbb-7808-5d15e28dbf5c', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('23a1de35-8842-7712-a501-5d15e2c69aa2', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23e57795-e5af-cab9-3808-5d15e27f947b', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('24f50187-a9b5-ba76-12e2-5d15e2a337ad', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2530edc2-4ffd-f153-8c8d-5d15e2474a72', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('255f0fa0-198c-f8f5-7c9b-5d15e23aa7c8', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26085a40-de21-4cdf-f3a0-5d15e24920c0', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('2676b154-d040-afb9-6147-5d15e2096b0f', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26882012-b3ae-d695-0988-5d15e2a0caa3', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('275f1568-e366-034f-38a6-5d15e254f5be', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('27c3e325-1dcc-3788-4c34-5d15e2524179', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2841c31e-9fb4-26f9-e533-5d15e2a2ce75', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('28ee30a7-e139-e630-c03c-5d15e2a4118f', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('298d250b-7967-7886-0000-5d15e2e70fb2', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2aa86416-5c1b-50b4-04c1-5d15e2c617ee', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ae8b6b7-747e-2327-6c12-5d15e29b01be', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2aed28e1-c576-7131-137f-5d15e22a945d', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b036a2b-21d8-2eff-4668-5d15e2d3f3cc', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c0f3847-471c-29ae-2f17-5d15e23e0395', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('2d45f0ff-a8d5-1fdc-fee8-5d15e22b4951', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d5a85ce-3a9c-1488-6257-5d15e26d31c5', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f4ebd6e-12cf-2407-bbf3-5d15e2bbe42c', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('2f8cd525-342e-19f1-8e4c-5d15e257e4dd', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('2f904780-94ab-1a39-6193-5d15e2bea014', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('302c13a8-a5a8-b840-85f4-5d15e2b9c33e', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3042358b-52dd-4306-7dd8-5d15e25a8b29', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('30a7ff26-15f1-3045-262b-5d15e2f479d6', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30fbb8d2-a0dd-c917-3768-5d15e298596e', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('311d039f-8179-022b-dc4f-5d15e2815196', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('315485b9-cf1d-8b84-7fbd-5d15e2135d37', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32b6bf62-c8c8-721f-2db8-5d15e2e4f5d8', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32f2b127-ca1c-7a07-27e2-5d15e230678b', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('330d063e-fc44-3c8a-ff6a-5d15e28e5126', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33287461-8b3a-27ff-7e46-5d15e2828795', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33399256-a947-2b1e-a6fa-5d15e2eff021', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34307ffa-62cc-1a31-5694-5d15e2be47db', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('34bec657-2377-058a-a47c-5d15e2ee783e', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('350a79ef-77ce-3abb-f991-5d15e2d226cb', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('38e8032d-84b3-a750-7fed-5d15e21828a3', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('39c6e271-35e4-6c2e-5609-5d15e280c675', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('39c8b95b-bbff-cec6-0681-5d15e2dda3b2', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('3a6e9f95-d083-5b9a-762b-5d15e2df22c0', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('3ad29d62-793d-d03e-1575-5d15e2907e5e', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b0bfbaf-b8a3-61c9-42ab-5d15e2542b60', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b4c14c9-b74c-677e-35c6-5d15e2c1f99d', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('3b9000db-de72-d2b7-bdd9-5d15e2e26b92', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3bb3e780-644c-1fe9-1276-5d15e2b7119d', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c5b945f-7162-a0a9-993e-5d15e2352ecb', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('3d79f21b-85e6-9fdb-602c-5d15e2430edc', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3dffeec6-c002-89a0-c3c2-5d15e288c7a5', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e06eb5d-d4b6-6246-c0b3-5d15e29db9fa', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ee31606-80ad-2495-1ca9-5d15e2c196aa', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f45062c-6cc1-a65b-b67d-5d15e2b5a897', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('41070777-9306-2704-647c-5d15e2efa6df', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('423f7c48-0424-1a30-f91b-5d15e2cbd4fb', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('42bb77d7-26c1-0952-c8f2-5d15e284fc42', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42fe3c76-e89b-ee8a-e535-5d15e236c3ce', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43440a5b-cb73-3000-bbfc-5d15e296666f', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('437163ae-3176-1362-aa29-5d15e2950351', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43ea2490-947c-3daf-8cea-5d15e225c2ee', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('43f773d3-b56f-edd9-31c8-5d15e264f0fd', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('444dcead-971f-6983-8745-5d15e2aa0ba1', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('449a34a4-002c-a190-f8a9-5d15e2c3a94b', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('44a2d447-4401-5bdf-95c7-5d15e20d6fa6', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('453e8f8a-031e-92ab-af63-5d15e2972d0d', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4637e096-30e0-e2c7-a204-5d15e2a8f621', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46bf0d75-df95-a285-c66c-5d15e2061d08', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46ef23ba-ece1-60c6-12c5-5d15e2d4719a', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('47b567cf-8638-dbb3-5a15-5d15e2168dcb', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48500729-3218-9d69-2a3a-5d15e240c065', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('492f4533-97a6-c03a-8ee2-5d15e2aca2b4', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('496f22e8-de6e-98c1-cb94-5d15e22aa924', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('4b23e13e-4d9e-8c00-a318-5d15e219e412', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b3e57e5-64a5-5fc7-f9aa-5d15e2e2256d', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c2ad97e-f6b6-f5d7-4bfb-5d15e24d1abb', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c6a7fb7-3ba8-ef8a-b8dd-5d15e27e0096', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('4cceacab-4a5b-d782-e2c1-5d15e21b63d6', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4ce103f6-b7c2-c471-1d3d-5d15e2977c63', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d67abe0-8a0d-9169-1307-5d15e262107a', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('4d6b1867-c899-4ac7-5275-5d15e233883d', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e284674-3672-15bc-6ec2-5d15e2a44c4f', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('4e3e4840-59a6-f43f-e4ce-5d15e24bb224', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('4e670bb6-a2b2-8fa1-839e-5d15e24ad618', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('4e6d8484-f79f-221c-5846-5d15e28baeb3', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e7a59aa-d477-3880-15de-5d15e2b64ea0', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ec45ef1-2854-778c-2fee-5d15e2d4fd76', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('4f0f34d4-4c3f-ca9a-39d1-5d15e22b970a', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('4ffe271f-1d8e-5ff0-dd05-5d15e2a6f577', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5134feaf-0caa-5d9c-fb5d-5d15e227ece1', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51b20e2a-1e5a-3a7d-0ad5-5d15e24b6d89', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51d98b68-9ac5-841d-6e6d-5d15e2a7086b', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('52c3341a-a989-8913-6127-5d15e2b082fe', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53a3c64f-771e-fb81-9970-5d15e2e7f8e7', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('54e921fe-742c-c204-96ac-5d15e2ad975c', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('5509a593-4787-fe08-deff-5d15e2a91165', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5549c082-ef6c-d1c8-babb-5d15e2beb62f', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('555279d4-6ad8-782e-d30d-5d15e2c85446', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5602fdc1-2566-e26f-6dbc-5d15e2177478', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56848364-355b-4c18-abc6-5d15e2bd94bd', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5699ab30-443d-f518-ebb8-5d15e23f9b9b', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('57376d6b-4b44-c3c0-3fa8-5d15e2926d86', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('579e604c-e728-7c4e-00c1-5d15e266f5f7', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('584a427f-136b-6e1a-8bfa-5d15e26edc1e', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('5859687e-141e-8b8b-4ee6-5d15e26ba6d6', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('58aa92cd-3824-a0c2-9af7-5d15e2639f90', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('5967c3b9-188f-c6b1-27f7-5d15e28b83b7', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ade0025-76e7-9b94-3b00-5d15e2a2523f', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5bedb96e-581e-de93-d66a-5d15e2b02be1', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c0e7df3-3a0c-c3ec-fa5b-5d15e2c22d3f', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('5ceb7c1e-e84b-a43a-ff40-5d15e2614634', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d144f5d-c219-f6b9-cac4-5d15e21832fa', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('5d3b9839-1fba-63a9-5b9b-5d15e2539413', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d43055b-06d4-dccd-c89d-5d15e2745636', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5eea7fa1-72f3-c475-429b-5d15e2b86355', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('5f69ec95-2725-b482-c0a3-5d15e289758b', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('5fea6d6c-cce2-3ff2-64f0-5d15e29c0503', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('601e09b3-fa9a-2741-99d8-5d15e26c06ac', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6068600a-8081-359c-ed7f-5d15e2119a0b', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60cc1947-bbb2-5d84-d688-5d15e28388b3', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('616005e0-06e6-bf51-67ad-5d15e2eae33f', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('61935d5e-1cd5-57d7-48f2-5d15e291ee17', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('626c3207-1fe2-d37c-178f-5d15e29ed8e6', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('62855278-ae2c-88d6-caa0-5d15e205ba9e', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6288b646-2790-d6a1-cc39-5d15e2fe9049', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('62cdf5b0-5e8c-eb3a-1726-5d15e2a3e8d6', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6417b430-b05a-f1b4-3bde-5d15e2b8f1ef', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('646d39d7-1eb7-76ad-3ca5-5d15e2cca1c9', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('652687fa-0813-720e-0cc8-5d15e23399e8', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('65822211-b1cd-1b2a-b051-5d15e228a88b', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('663bb728-2804-b528-1f73-5d15e2d7cb0a', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('66a7e815-10b6-06ae-7466-5d15e28ab34f', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6721253c-4b0c-c340-2dfb-5d15e21c370f', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('676706c6-8250-46a1-71f7-5d15e258e382', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('676c8ea7-396e-2015-b208-5d15e221fd8c', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('677d6325-3d85-f327-a508-5d15e276bd82', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('67bf4a15-1008-a4cc-27ee-5d15e2f1d25e', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a0cf270-f71c-ce50-2bbf-5d15e21c8437', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6af38e67-e759-dabf-9d96-5d15e28a5178', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6b9d0e00-f74e-8dcc-a816-5d15e2d4dc24', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('6c3516c1-ee4e-9286-4374-5d15e21bdc62', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c3b043c-94e9-b3bb-d2fc-5d15e2d07900', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('6ca32ba2-f462-61d1-450d-5d15e2482001', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('6cb3dc1e-02ad-8ce7-4ac7-5d15e22d0990', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d5310dd-b5c4-81d8-ba35-5d15e2119dd4', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('6de9440b-13e9-db9b-7b02-5d15e239c1b5', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e8c79ea-2dfc-f0e5-ba5e-5d15e25362d0', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ea74b94-603e-c530-73fb-5d15e2d74696', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6efab9f3-128a-6501-6572-5d15e2fa2dc3', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f0792a1-b172-44dc-c174-5d15e2b90e61', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f317a31-110a-e0d1-8cb0-5d15e2853f4b', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fae813a-01a7-a133-28ad-5d15e2ef8109', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('6fc94f8f-e744-2b8c-c5c7-5d15e20a3cbd', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('706cea45-2ce2-2bc2-aa0b-5d15e2d0098c', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('714e96b8-36f7-b34b-95da-5d15e291daf2', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71ecdbc1-e53b-ebbe-7907-5d15e28fe0e1', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('722bdaa4-caba-0b77-d3d1-5d15e230908a', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72747915-6a02-c82a-5827-5d15e2362093', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('73ce41a2-c458-8693-eddf-5d15e29cae85', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('741127fe-2dce-7aa4-b423-5d15e2beb18a', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('74f92126-679c-f49e-2e1c-5d15e24cb77d', 'bw_transaction_modified_user', 'Users', 'users', 'id', 'BW_Transaction', 'bw_transaction', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7516bcb1-2a81-1a7c-5e61-5d15e21a53c5', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('752567f1-29e1-e0a1-dd26-5d15e2906bc1', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75792eae-6149-af8c-ee8b-5d15e2ecaa8b', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('76d97f18-378f-92d8-bf5f-5d15e20b9b96', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('77160621-47e3-78d4-3b1d-5d15e21489c0', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('77b20852-1941-b727-1f9b-5d15e2546d8b', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77be222e-887d-d057-39f4-5d15e2c5096d', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77d92ce9-9971-b06c-32e7-5d15e26bf518', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('78ce7f6b-fdac-711f-686e-5d15e2c8c30c', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('79f4d070-3b42-5b7d-8a96-5d15e2472933', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a3b6e3d-654c-d4f9-f8b1-5d15e253bc48', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7aac5408-d9dd-24d9-23b7-5d15e2b35d91', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('7ae6712e-5ea9-213b-0384-5d15e237a8c1', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('7c3b14ad-a9e2-4e25-3d9d-5d15e238e05e', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c534ff0-148c-bd66-131e-5d15e26c2f66', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c735133-f72a-f91b-7085-5d15e281105b', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cc42335-239c-abb8-9e99-5d15e218d47b', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d03e011-5aed-239e-ba1d-5d15e2a48036', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d41f5e2-2022-1848-d38b-5d15e2d770ff', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d512d4a-549c-e88d-0a4f-5d15e235f0fa', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d995e3b-0f8c-e69b-9f51-5d15e2d05342', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('7f58309d-9bfc-fdcb-68ce-5d15e257287c', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fd46247-3239-4480-0005-5d15e27fae22', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fee6c85-ba0e-5a86-60b9-5d15e26ee7bc', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('810614a1-7a25-1668-d50a-5d15e25d7d8d', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('82fd5799-52c8-1a38-0058-5d15e2adcb72', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('83b4e1fc-f7be-dbf4-7838-5d15e2b5aac3', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84626fa9-dc74-f807-cae9-5d15e2036237', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('84755a33-adaf-18c7-3434-5d15e2e88c0b', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('849e60f0-e6f5-b3b2-29fe-5d15e2c13656', 'bw_transaction_created_by', 'Users', 'users', 'id', 'BW_Transaction', 'bw_transaction', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84cc1717-2348-9ebc-7c90-5d15e2d918e8', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('84d3fff7-c57c-4211-fc4a-5d15e2c6bd61', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8564dcd2-9534-980b-dd16-5d15e2182bab', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85bf48fe-7ac1-73ba-9514-5d15e249b9f5', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('85ecb980-c99d-84dc-c518-5d15e22abbb4', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('868eb286-11df-31e4-1791-5d15e26eb569', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('86f96035-c7de-366e-0b0c-5d15e2ebc955', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('872c6661-92d8-25c7-9464-5d15e27a7616', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8776eb6f-ab93-2576-8d95-5d15e2ea5e8d', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8800fcd1-4aaf-b355-dc09-5d15e2e4906d', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('897a45f8-4b56-aa39-e07f-5d15e217f0ce', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('8984e95c-28ca-df89-0adf-5d15e24a62e4', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89a00969-4feb-e335-51c5-5d15e26b41fd', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b200cfa-d477-3443-14b0-5d15e2e61d00', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b8effb6-a0fd-04ad-80c9-5d15e229a07e', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('8bdc8b2d-dc57-18c0-0954-5d15e2276d89', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('8c5dcc8b-6588-1006-c960-5d15e2cdb561', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8c91205a-803b-d65e-d216-5d15e2b84a93', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8dd10dd4-484d-fcc9-d23d-5d15e2f675d7', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('8df959dd-f5c5-d78e-c773-5d15e2144559', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('8ea6e758-6329-23cc-a46e-5d15e214bed4', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('8f05c3f0-e2e5-03e8-ef47-5d15e2eb3f19', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('902cf9b5-c48e-e355-321f-5d15e283825f', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('902e899e-005f-ccf5-3d1e-5d15e2c03e4a', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('9097455e-1b12-42c3-2e8a-5d15e2c3cd40', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90b2cfb9-2479-3788-f848-5d15e2e0d6f4', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('915d0647-4732-477b-f490-5d15e2d9f14d', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91b0c3f2-8a5d-ac40-945a-5d15e2529bae', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('924595e6-52f6-3820-7faa-5d15e2cfe2bd', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('932c0aca-0ae2-cb90-1a2d-5d15e28bef70', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9468ace5-8f06-1f11-7d55-5d15e2a9d068', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94ef83f6-7b22-1113-66dc-5d15e20dd936', 'bw_transaction_assigned_user', 'Users', 'users', 'id', 'BW_Transaction', 'bw_transaction', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('952fdcba-773f-1ccb-38ad-5d15e2272627', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9562642d-bd30-1b83-83b9-5d15e223efda', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95c068ee-a291-e868-d888-5d15e2e59c75', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('95e326f7-0401-e96f-5279-5d15e297dd7f', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('960f844e-1778-8f6b-0a57-5d15e2934ac1', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9619a674-c847-1295-c42d-5d15e2a2e06d', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('969691c5-b8db-5fed-c0f8-5d15e2b4cbd5', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97bf27cc-ca5f-a918-621d-5d15e259b826', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98426d54-c1bf-a52f-ea3b-5d15e204cbba', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('98e1c218-30d9-6c05-7070-5d15e22162f6', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('990ef370-503b-5401-7c81-5d15e24a9284', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('993300f8-1016-31f7-8d6e-5d15e2c92831', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99b20f26-edfa-c73f-ba3e-5d15e2ea1526', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9aa29528-d3bf-88f1-21a5-5d15e28c13b8', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9adebf98-de50-6d3d-7f7d-5d15e2cee0a1', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ae44145-e216-c9d6-826f-5d15e2cdb20d', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('9b120d14-6139-40a3-5aa1-5d15e2ed29c1', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b90c490-6240-f6bc-8e2a-5d15e2eeab0c', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('9bde6e02-08be-c614-d63c-5d15e276af18', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d8f6bb4-0ce6-f61b-ae2f-5d15e2f70ca5', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e3a73d3-cf61-2ce9-cdc6-5d15e28587dd', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('9e9ab5c7-1a9f-982d-b98e-5d15e213e576', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ea2cb16-f3d8-5b94-0aab-5d15e221d1d8', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f057547-149c-79a8-0a21-5d15e29b8d10', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f2b0789-d2f5-ab56-34b5-5d15e20cca5c', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('9fd5a07a-c032-9a83-2c82-5d15e2fa7f84', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9febf24b-1e96-2e3c-f989-5d15e28f87c8', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('9ff30617-6a11-7ee6-bf73-5d15e223d100', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a075c7b4-fa55-8834-4016-5d15e2b73a6a', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a0c1656d-dd90-8f8b-7b99-5d15e2bc04cf', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('a29b46f7-150e-b688-eb92-5d15e2756493', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('a311483c-8fb2-73c3-2540-5d15e2671b97', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a35e0dae-2310-c5f7-b176-5d15e2e6a3c8', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a3840433-5d08-2380-7867-5d15e23fe03f', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5048ac4-dbb2-6b7b-ff1d-5d15e2628dfe', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a51e6858-dbf2-f689-6f6e-5d15e2688926', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('a548d554-53a1-a318-e909-5d15e253900a', 'securitygroups_bw_transaction', 'SecurityGroups', 'securitygroups', 'id', 'BW_Transaction', 'bw_transaction', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'BW_Transaction', 0, 0),
('a5998f13-8eeb-f4b0-3dcc-5d15e2defbf6', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5b8f688-e6ec-231e-5fb7-5d15e21da5b2', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5bfcce5-8041-b023-2010-5d15e2809c0b', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a66f2762-9c8c-c996-b617-5d15e261e025', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('a7fab789-a7e2-4061-9722-5d15e2710cc1', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a80c9f63-ce82-48c4-7160-5d15e223b09f', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('a8a349c6-c865-3efa-8cb0-5d15e28b22b7', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8e00131-1fcb-2866-3a47-5d15e29e813f', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a95d8292-f124-06a1-4766-5d15e2260ca9', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a98adfa8-01d2-a1bf-8ca8-5d15e263d7b4', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa1d2352-80a4-bd0e-38f7-5d15e2b1bfaf', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa1d50e7-f7b5-859a-2e9b-5d15e2673d23', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('aa56eae6-79f2-b34e-7fe2-5d15e2d897a6', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aa9d72ac-2384-d974-d4c0-5d15e29ef982', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aac0bdca-0f2e-9479-d1c9-5d15e2d74d36', 'bw_transaction_contacts', 'Contacts', 'contacts', 'id', 'BW_Transaction', 'bw_transaction', 'id', 'bw_transaction_contacts_c', 'bw_transaction_contactscontacts_ida', 'bw_transaction_contactsbw_transaction_idb', 'many-to-many', NULL, NULL, 0, 0),
('abac73e1-2399-de86-8400-5d15e2da9864', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('abde1ad0-672e-efcf-ea4b-5d15e2a4f182', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac25ae2b-ee42-adf8-b8f5-5d15e2976e98', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad3b8130-d434-1071-7f3a-5d15e28a6b8b', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad550895-f7ca-9a76-1206-5d15e29ee932', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('ad98a245-0e6a-258d-2306-5d15e205ec7b', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adc1c468-2cd7-9682-501e-5d15e2114138', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adcd6840-49e1-5fb1-7792-5d15e275c496', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ade7c222-7902-cfda-a7c0-5d15e2056aca', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae8c9cec-d494-f00f-c9ff-5d15e2a57cf9', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('aed153ea-1d60-4b3f-d0a0-5d15e2431c7f', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aed24647-d154-bb79-1767-5d15e2d5c463', 'bw_monthly_calculation_modified_user', 'Users', 'users', 'id', 'BW_Monthly_Calculation', 'bw_monthly_calculation', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aff09c6c-5f57-0311-0760-5d15e2686896', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b038e297-9bbd-f54e-99fe-5d15e2673e2e', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0678058-b0c6-df2a-d66d-5d15e2107a09', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('b0ba6413-8069-3f62-a7a8-5d15e2430194', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2590fe9-fe8c-db2b-564e-5d15e24251ab', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2fcc3fe-457e-9c4d-29b5-5d15e2236e5b', 'contacts_contacts_1', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'id', 'contacts_contacts_1_c', 'contacts_contacts_1contacts_ida', 'contacts_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('b4480baa-0e1b-fbda-1666-5d15e22b112f', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b450d796-6268-f743-03ad-5d15e298109b', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('b4530d84-d6d5-cdf9-6a48-5d15e2424872', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4815c8e-4a45-325d-c0ee-5d15e2c1f9a7', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4d565ed-a364-19df-fe95-5d15e219a1b4', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b56beac3-fa99-673a-da0d-5d15e2072c7c', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('b5df8506-daf9-1e66-4a4b-5d15e23b260d', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('b6b7db8e-892f-86c7-0952-5d15e2aaac06', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('b7373c54-079c-7a11-3738-5d15e2612888', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('b7659aef-0c59-bb96-272a-5d15e2e7b1d4', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('b774a3f5-1f3e-78aa-b90a-5d15e2606d63', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7c5758a-9b83-e834-c716-5d15e225b9d9', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8c01edc-fef8-fbfa-401f-5d15e24a74f3', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8ed51fc-4154-3cc2-1420-5d15e2e56ad9', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9500a06-e3b1-f54e-2c5f-5d15e2bd8e68', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('baf39bb8-fcf4-ae3b-d8ff-5d15e2717912', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb11ecc9-8955-92ab-c1fb-5d15e2c814a6', 'bw_monthly_calculation_contacts', 'Contacts', 'contacts', 'id', 'BW_Monthly_Calculation', 'bw_monthly_calculation', 'id', 'bw_monthly_calculation_contacts_c', 'bw_monthly_calculation_contactscontacts_ida', 'bw_monthly_calculation_contactsbw_monthly_calculation_idb', 'many-to-many', NULL, NULL, 0, 0),
('bb1c150f-9f40-b084-4353-5d15e21b4657', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb3d248c-9731-8c47-b292-5d15e2223cef', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbe80a91-62a6-51e1-84f7-5d15e24864c7', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc7323cd-9999-da75-fee4-5d15e23a79ca', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd21306f-7678-20ed-662e-5d15e2336381', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd47576b-0c0e-11ef-332f-5d15e25ed97a', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd721945-b19f-1488-8f19-5d15e2f6453e', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd94d655-f62c-de1f-77ca-5d15e26aa1aa', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be15175d-6ad4-ebfb-5353-5d15e20b437c', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be3d4c85-fb9c-561e-a511-5d15e2073f65', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be781bef-0162-6a30-4df0-5d15e2383e45', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('be7b9db8-cff2-f85b-111e-5d15e2e6614f', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('beb2e158-c750-5273-b2fd-5d15e20676f3', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('bee7f53d-775f-1686-10b6-5d15e2c1025a', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('bf7417ea-d025-4e2c-7062-5d15e2e0bb94', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf9df5c0-3326-f60e-0f13-5d15e26794c9', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfc707f4-8e06-9cde-2993-5d15e24f1cdc', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfc83986-0b71-edc2-6cf4-5d15e222fd07', 'bw_monthly_calculation_created_by', 'Users', 'users', 'id', 'BW_Monthly_Calculation', 'bw_monthly_calculation', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1177f4e-aaf8-b9cd-2b23-5d15e2ae7151', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c175d4d1-f9a8-cd62-9d5d-5d15e2b09729', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c196b87b-6a84-ec70-b821-5d15e29d8065', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c3b6dc49-9c81-54e3-f228-5d15e2467fdd', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('c4d00d9c-0049-96ce-a25d-5d15e209ccc5', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('c59cc5d5-413d-f05a-6208-5d15e2e1dee2', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c59e9818-0382-8b66-9746-5d15e2255c68', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5bb08ce-94d9-02e0-398d-5d15e284c065', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c5bb103d-3f2b-0a77-8f2e-5d15e2dc86d0', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c63a9c71-6cfa-585c-5efa-5d15e24e95fb', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('c6a91c20-d39a-b4a9-219b-5d15e256f609', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('c70166ea-5975-33b1-21f4-5d15e261c930', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c77cd28c-5cef-1f46-eb05-5d15e21384e4', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7ebc1a0-5362-3f37-da64-5d15e29a3619', 'bw_monthly_calculation_assigned_user', 'Users', 'users', 'id', 'BW_Monthly_Calculation', 'bw_monthly_calculation', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8288658-f465-7302-9f96-5d15e201eefb', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c84bfac8-66dd-bb91-298f-5d15e21d4693', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8a77aa9-e09a-d2fd-cfe8-5d15e2a06a16', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('c8aa91df-3adb-9b38-088f-5d15e23608ae', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c8d9f699-5b46-fd4f-e275-5d15e2016513', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('c94294a3-a3a9-4174-73e7-5d15e2a8a2aa', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('ca5887ec-72bd-0d71-15fb-5d15e2e316e0', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('cb100fb7-dcfa-83cd-ebb0-5d15e29ab9b6', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('cbcc44c0-7ce9-dca1-dafb-5d15e227cf57', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('cd0351e7-f09e-0223-328c-5d15e234d518', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('ce55c2ed-c1bc-e460-7022-5d15e2737841', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('ce7335ec-4364-f3d7-f11e-5d15e2ddece4', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ced1d19b-03da-c222-5b84-5d15e247d4e2', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf2b506d-74b0-6543-7fe9-5d15e2a0fb2b', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('cf4539dc-cb74-299f-b8cf-5d15e2bb7440', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cfa79f8f-4682-970b-4345-5d15e28937ef', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('d011d032-0413-c4d8-ade1-5d15e2497218', 'securitygroups_bw_monthly_calculation', 'SecurityGroups', 'securitygroups', 'id', 'BW_Monthly_Calculation', 'bw_monthly_calculation', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'BW_Monthly_Calculation', 0, 0),
('d16e13c3-3498-0e21-1cfa-5d15e2d725e2', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d289b03c-6407-411c-874b-5d15e2745bf6', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('d296f2de-cf7e-37f6-471c-5d15e22bee46', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2cb0487-583c-2eda-c9bc-5d15e2e7cefc', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('d2ddad8f-b321-f0a5-f637-5d15e27da5b1', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d312c5f4-d859-2695-3d65-5d15e2c85de2', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('d443db09-2304-d9a6-3187-5d15e207c0d9', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4e3d990-04ec-2979-ba91-5d15e2c65e69', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5f926b4-b323-6f48-940a-5d15e25e6a1b', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('d6702a89-a8a6-fcb1-8c85-5d15e23f90f4', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6844091-e058-a8fe-91e5-5d15e25dc1e6', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('d753b171-a89e-7195-7909-5d15e26b7e7a', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('d7b66c32-c32c-e4e6-b555-5d15e2944825', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7cd1fec-c9d3-d097-4a6e-5d15e260d644', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('d805d66e-731b-eaf6-4af5-5d15e2da8079', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8a8f53b-9d5b-b544-b6d2-5d15e25e2a11', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d96959ae-ca4a-8a18-81ce-5d15e2e0087d', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('d9b0d929-8ea4-bd00-8977-5d15e2b4f265', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('da67db19-dcae-bc44-47b5-5d15e2e0e8e0', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dab1a233-f81a-4c96-b47f-5d15e2278670', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('daf04dcc-e549-88be-66d5-5d15e296710e', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbfe2cf8-b3ff-d2d1-f995-5d15e2a13644', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dcce03cc-fb6a-d45a-88e4-5d15e2e9b9a5', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('dd0478dd-b157-6e82-1991-5d15e2ee8a2c', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('dd09d678-7bbe-424b-be93-5d15e22c80d7', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd0bbf55-82a4-01ae-ade1-5d15e24ca0dc', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('dd161579-74dd-2574-fe7a-5d15e20c063b', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd4ce6aa-a185-3f00-6253-5d15e2027e4f', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('dead680d-61fe-18dd-3b63-5d15e232fad4', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('df774c89-004f-47ee-bcd8-5d15e2047bf5', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('df8c6a86-5d46-e6ce-c1d2-5d15e2bf3c54', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dff2997e-b527-bdec-0fea-5d15e257ab3e', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('e025be0f-a673-e4a4-3128-5d15e240cf02', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e0341c75-0d70-cc24-c6a2-5d15e2b12e5c', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1e074ff-151e-1728-fc37-5d15e2bbffb2', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e209f2c4-cabe-c009-a147-5d15e29b224c', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e262f832-fc13-2186-f4a6-5d15e26bd239', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e2dea8cb-e781-127d-9f5c-5d15e2934614', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('e3d90498-5b3f-59e9-92e7-5d15e26c5ade', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e495a984-c69a-a682-967e-5d15e2f6d3a8', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4dd22d9-49fb-457d-a62f-5d15e2a785db', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e537699c-b5f2-f417-857b-5d15e2391c4d', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('e58b7538-73dc-e20c-5292-5d15e243bffc', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5a730f9-d871-0427-6b73-5d15e2782164', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6c9fdee-c865-0dcd-27d6-5d15e2f401b6', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('e739f340-4072-a1e0-5ac0-5d15e2a5a9db', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('e752df25-37d8-bb7e-77f9-5d15e20062b4', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e76e38aa-9d87-2789-8d4e-5d15e2d91c76', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e7ae674e-670d-e1ea-8283-5d15e250a17d', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('e85a6ab8-26af-fc24-590f-5d15e2aa6a5d', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('e8edf0f9-c163-9514-3e85-5d15e25288a6', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9b8bec8-2a01-52d3-ee60-5d15e2ef02c7', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea2f7e63-d5ed-9967-0b28-5d15e278db9d', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea3503c6-2693-f8d7-de13-5d15e254cd30', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('ea56fd10-17dc-ef06-7112-5d15e2d7ca34', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea8cf4ac-8c66-8f18-07c3-5d15e2a4e965', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('ec101d29-3bab-8f71-1269-5d15e28d3a32', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('ecabcba2-3d74-7e78-ca9b-5d15e29784fa', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed5d8bb0-7000-407f-a39e-5d15e2d2983e', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('edd54821-790a-97cd-c619-5d15e2d6d05f', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee8be111-3a4a-bc2e-ee74-5d15e2fb1c60', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee99040d-4f2c-648c-8cc4-5d15e2b2cf47', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('eec37396-5c10-aea4-0981-5d15e266b242', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('ef02bc4a-4897-bc29-6151-5d15e2cbd5c2', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('efae06c6-ed8a-a1fa-178a-5d15e287ac28', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f01a3a63-d202-03ca-2783-5d15e2a3cd6c', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f082110f-5023-5aa8-8f51-5d15e207f425', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('f175843b-6c41-b014-376a-5d15e21903c5', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('f1873899-7546-65ef-4285-5d15e26a1b85', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1a8e866-1dfb-50f6-46d8-5d15e23ed9f1', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('f253c20e-4de7-e549-1da1-5d15e2599984', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2bd490b-a32a-4149-e8b6-5d15e21da118', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('f3e7e6d5-5e93-a252-5825-5d15e2c9544f', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f40d05b3-fbdc-a445-90db-5d15e27be7ed', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
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

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
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
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
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

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
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

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
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

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
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
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('1b33978a-4c49-d38b-c927-5ccc615c1a54', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 18:15:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('2e6fc6e7-e5e9-5162-10d5-5ccc61d7e93a', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 12:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2fcce242-84fd-f8ac-b9c0-5ccc61cf5660', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 16:15:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('481e927e-625f-f28e-a17b-5ccc611ec0c7', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 17:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('5260e98c-2efb-0767-c406-5ccc6138548a', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 11:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5af9a361-9d3a-6ee7-c465-5ccc612ef21b', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 19:30:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('656b0a64-3915-33b4-a51e-5ccc616fafb8', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 12:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('726e554d-bb73-401a-0318-5ccc61ca0a2d', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 08:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('75263091-5dbc-c4d1-b8c9-5ccc6120704e', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Google Calendar Sync', 'function::syncGoogleCalendar', '2015-01-01 09:45:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('90acc2e0-6187-32ba-53e1-5ccc613bcf3c', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2015-01-01 17:00:01', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 0),
('a0b4e60a-2ac8-c8b7-2bc2-5ccc6105cd02', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 11:30:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('cb3ff6cc-d944-ed7a-74da-5ccc61229d5c', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2015-01-01 07:15:01', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 0),
('da31cc09-f1c4-41ce-987d-5ccc61bc1792', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 16:45:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('ef31692f-0e73-f598-2f04-5ccc618dea64', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 13:15:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
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

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
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

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
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
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('16aede66-f1bd-4bd8-2613-5d0bc16f36c6', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:cf3e3009-439d-9c64-fe02-5d0bc1adc324:Customer 1]', '2019-06-20 17:25:31', '2019-06-20 17:25:31', '1', '1', NULL, 0, '1', 'Contacts', 'cf3e3009-439d-9c64-fe02-5d0bc1adc324', NULL, NULL),
('1bd80172-80fd-0994-a010-5d0f3e201532', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:cc6d8663-0885-23be-ba5a-5d0f3eb9d515:Customer 3]', '2019-06-23 08:55:50', '2019-06-23 08:55:50', '1', '1', NULL, 0, '1', 'Contacts', 'cc6d8663-0885-23be-ba5a-5d0f3eb9d515', NULL, NULL),
('1cdde9a9-e1a3-119a-af47-5d0d13f3bd2e', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:c95adfa3-54f0-ada3-cdd7-5d0d137ee763:Customer 3]', '2019-06-21 17:29:23', '2019-06-21 17:29:23', '1', '1', NULL, 0, '1', 'Contacts', 'c95adfa3-54f0-ada3-cdd7-5d0d137ee763', NULL, NULL),
('1d7a863f-c88e-3d02-e1bd-5d0bc8f5131e', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:d73e0d14-6ae2-d855-5806-5d0bc8612962:Customer 6]', '2019-06-20 17:55:30', '2019-06-20 17:55:30', '1', '1', NULL, 0, '1', 'Contacts', 'd73e0d14-6ae2-d855-5806-5d0bc8612962', NULL, NULL),
('277e9e94-186d-557a-c1ef-5d0d1316ff51', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:dba74e49-0340-b3d0-698d-5d0d13b1256c:Customer 3]', '2019-06-21 17:26:50', '2019-06-21 17:26:50', '1', '1', NULL, 0, '1', 'Contacts', 'dba74e49-0340-b3d0-698d-5d0d13b1256c', NULL, NULL),
('3b9006bb-27f2-939d-c0ea-5d0d17ffe2bc', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:e66e2611-4020-7724-5fbe-5d0d173e6952:Customer 3]', '2019-06-21 17:43:32', '2019-06-21 17:43:32', '1', '1', NULL, 0, '1', 'Contacts', 'e66e2611-4020-7724-5fbe-5d0d173e6952', NULL, NULL),
('3e765c99-1fac-1c47-4f28-5d0bcf894a20', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:4f9c3b04-31b3-dd3b-ed0b-5d0bcf553453:Customer 8]', '2019-06-20 18:26:28', '2019-06-20 18:26:28', '1', '1', NULL, 0, '1', 'Contacts', '4f9c3b04-31b3-dd3b-ed0b-5d0bcf553453', NULL, NULL),
('4baa091f-b28f-fc84-0dfe-5d0bd62c3e0d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b702fa45-2b4e-6d65-08be-5d0bd68b9738:Customer 3]', '2019-06-20 18:55:18', '2019-06-20 18:55:18', '1', '1', NULL, 0, '1', 'Contacts', 'b702fa45-2b4e-6d65-08be-5d0bd68b9738', NULL, NULL),
('4bb7b91f-f521-0a33-b93c-5d0bc9ca9b71', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:877467b7-31bb-1775-9dcd-5d0bc9dfb911:Customer 7]', '2019-06-20 17:57:30', '2019-06-20 17:57:30', '1', '1', NULL, 0, '1', 'Contacts', '877467b7-31bb-1775-9dcd-5d0bc9dfb911', NULL, NULL),
('62a14d42-e4a5-1408-5a2c-5d0d15795a56', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:7fc7a548-6cd9-a263-86c3-5d0d151c9936:Customer 3]', '2019-06-21 17:35:50', '2019-06-21 17:35:50', '1', '1', NULL, 0, '1', 'Contacts', '7fc7a548-6cd9-a263-86c3-5d0d151c9936', NULL, NULL),
('64f286cb-482a-cfe1-855c-5d0bc308392d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:25df28df-ef86-9503-3d4b-5d0bc34ebce8:Customer 3]', '2019-06-20 17:33:44', '2019-06-20 17:33:44', '1', '1', NULL, 0, '1', 'Contacts', '25df28df-ef86-9503-3d4b-5d0bc34ebce8', NULL, NULL),
('66e06723-f89c-752e-00a4-5d0d13a2afed', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:1e9f75cc-4089-62f2-0ba4-5d0d134e1bc3:Customer 3]', '2019-06-21 17:26:32', '2019-06-21 17:26:32', '1', '1', NULL, 0, '1', 'Contacts', '1e9f75cc-4089-62f2-0ba4-5d0d134e1bc3', NULL, NULL),
('7dfa5ea0-2aa1-8cad-d887-5d0bc41a9257', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:1c18e632-ee84-c546-9d06-5d0bc46abe80:Customer 4]', '2019-06-20 17:37:31', '2019-06-20 17:37:31', '1', '1', NULL, 0, '1', 'Contacts', '1c18e632-ee84-c546-9d06-5d0bc46abe80', NULL, NULL),
('7e67e791-e33a-8875-d738-5d0f3d9eac06', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:35a4735b-f1cc-5619-18ec-5d0f3d852d7a:Customer 1]', '2019-06-23 08:53:04', '2019-06-23 08:53:04', '1', '1', NULL, 0, '1', 'Contacts', '35a4735b-f1cc-5619-18ec-5d0f3d852d7a', NULL, NULL),
('8276ab23-0da0-f38c-fd30-5d0bc478d140', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:4079616d-28b4-a29d-8ab4-5d0bc435f057:Customer 5]', '2019-06-20 17:39:49', '2019-06-20 17:39:49', '1', '1', NULL, 0, '1', 'Contacts', '4079616d-28b4-a29d-8ab4-5d0bc435f057', NULL, NULL),
('828264f3-d211-7150-d81e-5d0bc3cc2114', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:47468b24-3575-b9eb-49c5-5d0bc3e4e8df:Customer 3]', '2019-06-20 17:35:22', '2019-06-20 17:35:22', '1', '1', NULL, 0, '1', 'Contacts', '47468b24-3575-b9eb-49c5-5d0bc3e4e8df', NULL, NULL),
('867bc442-fc8c-16b0-ba38-5d0bcf5f7bf1', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:4f9c3b04-31b3-dd3b-ed0b-5d0bcf553453:Customer 8]', '2019-06-20 18:26:28', '2019-06-20 18:26:28', '1', '1', NULL, 0, '1', 'Contacts', '4f9c3b04-31b3-dd3b-ed0b-5d0bcf553453', NULL, NULL),
('87410a91-9d79-98fe-bbd3-5d0d1530ddb0', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ecde422b-1ddc-52e5-cf26-5d0d15a47066:Customer 3]', '2019-06-21 17:36:22', '2019-06-21 17:36:22', '1', '1', NULL, 0, '1', 'Contacts', 'ecde422b-1ddc-52e5-cf26-5d0d15a47066', NULL, NULL),
('8b472ad6-c2b4-4a2f-51db-5d0f3ec22800', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:4d18a71b-c06b-d5e8-242a-5d0f3e51e462:Customer 2]', '2019-06-23 08:54:23', '2019-06-23 08:54:23', '1', '1', NULL, 0, '1', 'Contacts', '4d18a71b-c06b-d5e8-242a-5d0f3e51e462', NULL, NULL),
('97f300d6-840e-6fd9-c184-5d0d149938f9', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:b49be25a-202b-0be1-4bce-5d0d14310e8f:Customer 3]', '2019-06-21 17:32:02', '2019-06-21 17:32:02', '1', '1', NULL, 0, '1', 'Contacts', 'b49be25a-202b-0be1-4bce-5d0d14310e8f', NULL, NULL),
('98cefa76-46cc-9fa1-3d95-5d0d1914eb04', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:53c7b672-5f52-a8bc-7870-5d0d19af8839:Customer 3]', '2019-06-21 17:53:58', '2019-06-21 17:53:58', '1', '1', NULL, 0, '1', 'Contacts', '53c7b672-5f52-a8bc-7870-5d0d19af8839', NULL, NULL),
('b297edb2-8ccd-365d-4d0a-5d0bd0699b66', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:705c9f6e-8992-6d07-29c5-5d0bd0fbf9ce:Customer 8]', '2019-06-20 18:28:10', '2019-06-20 18:28:10', '1', '1', NULL, 0, '1', 'Contacts', '705c9f6e-8992-6d07-29c5-5d0bd0fbf9ce', NULL, NULL),
('b33c0f50-3fc2-dedb-27b0-5d0d153c7116', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:68fcaf20-88a0-a7b6-3c31-5d0d15bf92dc:Customer 3]', '2019-06-21 17:34:36', '2019-06-21 17:34:36', '1', '1', NULL, 0, '1', 'Contacts', '68fcaf20-88a0-a7b6-3c31-5d0d15bf92dc', NULL, NULL),
('b6575e3d-fb34-13d9-9571-5d0bc93caf09', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:877467b7-31bb-1775-9dcd-5d0bc9dfb911:Customer 7]', '2019-06-20 17:57:30', '2019-06-20 17:57:30', '1', '1', NULL, 0, '1', 'Contacts', '877467b7-31bb-1775-9dcd-5d0bc9dfb911', NULL, NULL),
('ba6cd217-6502-0c34-7fb5-5d0bd61d8720', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:75f9db7f-6ff6-cc44-458f-5d0bd6763d26:Customer 3]', '2019-06-20 18:55:09', '2019-06-20 18:55:09', '1', '1', NULL, 0, '1', 'Contacts', '75f9db7f-6ff6-cc44-458f-5d0bd6763d26', NULL, NULL),
('bbf65550-2d6d-580d-f97b-5d0bd3a28df6', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:8bde8f5d-2f34-9a08-c8a2-5d0bd3878357:Customer 2]', '2019-06-20 18:42:37', '2019-06-20 18:42:37', '1', '1', NULL, 0, '1', 'Contacts', '8bde8f5d-2f34-9a08-c8a2-5d0bd3878357', NULL, NULL),
('be981673-3f93-7a12-e8d5-5d0d13c8acfa', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:4be07bbf-d67d-caca-fd98-5d0d13f24110:Customer 3]', '2019-06-21 17:25:56', '2019-06-21 17:25:56', '1', '1', NULL, 0, '1', 'Contacts', '4be07bbf-d67d-caca-fd98-5d0d13f24110', NULL, NULL),
('cbc59461-3e42-e3f9-c4e6-5d0d14d0f842', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:7d79e223-1848-e469-df99-5d0d14fe9e48:Customer 3]', '2019-06-21 17:30:41', '2019-06-21 17:30:41', '1', '1', NULL, 0, '1', 'Contacts', '7d79e223-1848-e469-df99-5d0d14fe9e48', NULL, NULL),
('ce359293-dcbf-e25f-5b3d-5d0d17d3f1a1', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:890a0bee-efa4-5772-5442-5d0d17f9ea69:Customer 3]', '2019-06-21 17:43:01', '2019-06-21 17:43:01', '1', '1', NULL, 0, '1', 'Contacts', '890a0bee-efa4-5772-5442-5d0d17f9ea69', NULL, NULL),
('d31654f3-69d4-a752-9a36-5d0bd6be863b', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:8df10aab-6390-82f9-8759-5d0bd67d40fe:Customer 3]', '2019-06-20 18:53:10', '2019-06-20 18:53:10', '1', '1', NULL, 0, '1', 'Contacts', '8df10aab-6390-82f9-8759-5d0bd67d40fe', NULL, NULL),
('d569d90b-1edd-7bbc-c45e-5d0d15021ffd', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:948ee359-a422-911e-6171-5d0d15ff4f9d:Customer 3]', '2019-06-21 17:36:52', '2019-06-21 17:36:52', '1', '1', NULL, 0, '1', 'Contacts', '948ee359-a422-911e-6171-5d0d15ff4f9d', NULL, NULL),
('d5830292-8b26-5cd4-4f75-5d0d14222b22', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:89730f34-86ab-351d-8c3f-5d0d14977006:Customer 3]', '2019-06-21 17:33:39', '2019-06-21 17:33:39', '1', '1', NULL, 0, '1', 'Contacts', '89730f34-86ab-351d-8c3f-5d0d14977006', NULL, NULL),
('d8c0bec8-1a04-42fa-fe81-5d0d1474fb9d', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:9413e07a-be58-0eac-e6d0-5d0d143697a5:Customer 3]', '2019-06-21 17:29:57', '2019-06-21 17:29:57', '1', '1', NULL, 0, '1', 'Contacts', '9413e07a-be58-0eac-e6d0-5d0d143697a5', NULL, NULL),
('dcac3516-53a6-9c96-2ffa-5d0d122571a8', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:828eb268-f390-034e-c315-5d0d128462f8:Customer 3]', '2019-06-21 17:24:00', '2019-06-21 17:24:00', '1', '1', NULL, 0, '1', 'Contacts', '828eb268-f390-034e-c315-5d0d128462f8', NULL, NULL),
('de9df867-b405-de51-21ce-5d0bd5886f8a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:97fd6bdb-e332-4169-dc99-5d0bd5323c81:Customer 3]', '2019-06-20 18:49:08', '2019-06-20 18:49:08', '1', '1', NULL, 0, '1', 'Contacts', '97fd6bdb-e332-4169-dc99-5d0bd5323c81', NULL, NULL),
('df639386-1e3b-81bf-b933-5ccc8d8a4fea', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:94ca38a8-9342-7b30-3d93-5ccc8d44eda5:Wilson Savaliya]', '2019-05-03 18:50:17', '2019-05-03 18:50:17', '1', '1', NULL, 0, '1', 'Contacts', '94ca38a8-9342-7b30-3d93-5ccc8d44eda5', NULL, NULL),
('e5308231-9d20-4bda-7de1-5d0bc2e5f01a', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ab32d623-a36f-8a34-5a67-5d0bc2e10726:Customer 2]', '2019-06-20 17:31:36', '2019-06-20 17:31:36', '1', '1', NULL, 0, '1', 'Contacts', 'ab32d623-a36f-8a34-5a67-5d0bc2e10726', NULL, NULL),
('eddac7c0-d3f3-4b41-f71d-5d0bd2fbf7bf', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:afa51479-39b4-1d25-068c-5d0bd2c0f9d0:Customer 1]', '2019-06-20 18:38:43', '2019-06-20 18:38:43', '1', '1', NULL, 0, '1', 'Contacts', 'afa51479-39b4-1d25-068c-5d0bd2c0f9d0', NULL, NULL),
('ffd20c9b-53a8-a52a-14ac-5d0bcfd88eeb', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:6d6c45cf-1e44-b0b1-91b1-5d0bcfad2cec:Customer 8]', '2019-06-20 18:26:49', '2019-06-20 18:26:49', '1', '1', NULL, 0, '1', 'Contacts', '6d6c45cf-1e44-b0b1-91b1-5d0bcfad2cec', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
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
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_audit`
--

CREATE TABLE `surveys_audit` (
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

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
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

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
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

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(10, '3352a366-220d-727c-f8c4-5cf6a4ebd594', '1', 'BW_Monthly_Calculation', 'a2450b7b-876b-94b3-4783-5cf6a4be8d3f', NULL, '2019-06-04 17:03:27', 'detailview', '8tqhudvq83m6neodfrv6jffcf3', 0, 0),
(17, '1bfc6a60-7d98-715d-60d8-5cf805521a73', '1', 'BW_Transaction', 'cc1b5e1a-77d1-c51f-2eb8-5cf5575b6901', NULL, '2019-06-05 18:10:34', 'detailview', 'ep8h3rhfblfv2h0hj5739c31r0', 0, 0),
(19, 'c4c66a9c-4867-11ec-b6ab-5cf8055ed49b', '1', 'BW_Transaction', '23d5276e-1ca4-cbf5-1a09-5cf563f22f0e', NULL, '2019-06-05 18:10:56', 'detailview', 'ep8h3rhfblfv2h0hj5739c31r0', 0, 0),
(35, 'a7d6ba98-09ee-d376-7213-5cfe8f25d713', '1', 'BW_Monthly_Calculation', 'cd9c8c46-3cbb-d860-f369-5cfe8f97fcd0', 'Wilson Savaliya-Jun-2019', '2019-06-10 17:13:20', 'editview', 'ohfskcrhh7aepobf9re62t6al7', 0, 0),
(37, '50db13cb-f7ec-00c8-7e83-5cfe90c93e1e', '1', 'BW_Transaction', 'baac01eb-0c77-380b-8de0-5cfe8f172215', NULL, '2019-06-10 17:17:04', 'detailview', 'ohfskcrhh7aepobf9re62t6al7', 1, 0),
(40, '501dfcf1-601a-2155-8e05-5cffedcd9950', '1', 'BW_Monthly_Calculation', 'c95c43d8-cbbc-3009-659d-5cfe8f2c2315', 'Wilson Savaliya-Jun-2019', '2019-06-11 18:07:37', 'editview', 'aphrlf8dr6uhvqbapn3a8jjua2', 1, 0),
(44, 'b1300261-cfc9-2f6e-17c6-5d01413f2256', '1', 'BW_Transaction', '105992ae-2a00-d852-a8ff-5d0140689e1d', 'Wilson Savaliya-Credited', '2019-06-12 18:15:40', 'detailview', '7rk5h2664k0s8t1le7qf00op25', 1, 0),
(57, '6c2902c1-4277-ca3a-f165-5d0bc29eb2ec', '1', 'Contacts', 'cf3e3009-439d-9c64-fe02-5d0bc1adc324', 'Customer 1', '2019-06-20 17:28:17', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(62, 'b478dc51-b179-53ee-7150-5d0bc3fcb31b', '1', 'Contacts', '47468b24-3575-b9eb-49c5-5d0bc3e4e8df', 'Customer 3', '2019-06-20 17:35:25', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(64, '101c6be7-5468-0a7b-7fbd-5d0bc4382a97', '1', 'Contacts', '1c18e632-ee84-c546-9d06-5d0bc46abe80', 'Customer 4', '2019-06-20 17:37:33', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(66, 'b5da063c-106e-c749-07f4-5d0bc44ab5ed', '1', 'Contacts', '4079616d-28b4-a29d-8ab4-5d0bc435f057', 'Customer 5', '2019-06-20 17:39:50', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(69, '8a918f70-9b67-c4cd-0b7d-5d0bc836517b', '1', 'Contacts', 'd73e0d14-6ae2-d855-5806-5d0bc8612962', 'Customer 6', '2019-06-20 17:55:32', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(70, '32504560-405f-1c29-2b72-5d0bc88aed4e', '1', 'Contacts', 'ab32d623-a36f-8a34-5a67-5d0bc2e10726', 'Customer 2', '2019-06-20 17:55:53', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(73, '51939983-9826-cbf1-7ef3-5d0bcfe730b7', '1', 'Contacts', '6d6c45cf-1e44-b0b1-91b1-5d0bcfad2cec', 'Customer 8', '2019-06-20 18:26:51', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(75, '3e1725e0-2301-429e-7acd-5d0bd03e71f1', '1', 'Contacts', '705c9f6e-8992-6d07-29c5-5d0bd0fbf9ce', 'Customer 8', '2019-06-20 18:28:12', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(78, '5144e0db-c8bf-1e78-c6c2-5d0bd3513c86', '1', 'Contacts', 'afa51479-39b4-1d25-068c-5d0bd2c0f9d0', 'Customer 1', '2019-06-20 18:41:54', 'detailview', 'e7seputrgitpco7kfnjh7no3j6', 0, 0),
(82, '43669483-b7af-b0b6-f066-5d0d121bfac0', '1', 'Contacts', '828eb268-f390-034e-c315-5d0d128462f8', 'Customer 3', '2019-06-21 17:24:02', 'detailview', 'q2k7d93odk006o80kagea16b47', 0, 0),
(87, '1c241299-0b37-3cc3-0651-5d0d17c1b10a', '1', 'Contacts', 'e66e2611-4020-7724-5fbe-5d0d173e6952', 'Customer 3', '2019-06-21 17:46:18', 'editview', 'q2k7d93odk006o80kagea16b47', 0, 0),
(88, '174c3ccd-f0a2-d28a-6eff-5d0d19ab4685', '1', 'Contacts', '8bde8f5d-2f34-9a08-c8a2-5d0bd3878357', 'Customer 2', '2019-06-21 17:53:28', 'detailview', 'q2k7d93odk006o80kagea16b47', 0, 0),
(89, '43aa7c59-e62e-40f0-ef13-5d0d19fa3880', '1', 'Contacts', '53c7b672-5f52-a8bc-7870-5d0d19af8839', 'Customer 3', '2019-06-21 17:53:59', 'detailview', 'q2k7d93odk006o80kagea16b47', 0, 0),
(92, 'c20c9ea2-5af3-fcb9-8500-5d0dfb9389b4', '1', 'BW_Transaction', '2a0b476a-804a-2a1c-5923-5d0dfbfbad68', 'Wilson Savaliya-Credited', '2019-06-22 09:59:22', 'detailview', 'qub0lha2hk7u9ns9lv3r28fgj7', 1, 0),
(94, '9b496eb4-4752-4772-6e4e-5d0dfdeebf6e', '1', 'BW_Monthly_Calculation', '1cf4f3ff-b695-609c-9438-5d0de3f2a1b7', 'Wilson Savaliya-Jun-2019', '2019-06-22 10:05:33', 'detailview', 'qub0lha2hk7u9ns9lv3r28fgj7', 0, 0),
(95, 'd07046e0-2a8d-bd2c-226d-5d0dfedfc46f', '1', 'BW_Transaction', '5d3e0d2e-dd36-ecce-8560-5d0dfe1fbc40', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:08:51', 'detailview', 'qub0lha2hk7u9ns9lv3r28fgj7', 1, 0),
(96, '50ad4d1f-1479-5c2c-1c93-5d0e07420aa9', '1', 'BW_Transaction', '122e1e66-00d1-b3b1-81cc-5d0e07347d34', 'Wilson Savaliya-Credited', '2019-06-22 10:50:07', 'detailview', 'nc11sns8u79n43c4hpdnavk4b5', 1, 0),
(97, '655dc675-5969-82f6-cf07-5d0e08f161e0', '1', 'BW_Transaction', '4f47fb6f-766e-5012-046f-5d0e088cec95', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:50:49', 'detailview', 'nc11sns8u79n43c4hpdnavk4b5', 1, 0),
(98, '812d90ba-4a5f-b26e-14e4-5d0e0884d01c', '1', 'BW_Transaction', 'aa5b4777-625e-4514-c0cb-5d0e08ef2349', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:53:31', 'detailview', 'nc11sns8u79n43c4hpdnavk4b5', 0, 0),
(99, 'd9a80181-eb05-ca9e-338e-5d0e09f988dd', '1', 'BW_Transaction', 'ba3c8a57-c491-a21c-a8c5-5d0e093bb840', NULL, '2019-06-22 10:55:44', 'detailview', 'nc11sns8u79n43c4hpdnavk4b5', 0, 0),
(100, '9fac09a3-1c06-7681-89df-5d0e096147c4', '1', 'BW_Transaction', 'a6f8e760-245f-bd90-a7a0-5d0e098140fb', 'Mr. Wilson Savaliya-Credited', '2019-06-22 10:56:12', 'detailview', 'nc11sns8u79n43c4hpdnavk4b5', 0, 0),
(104, '35dd32ee-d772-c406-8690-5d0f3e2fe1bc', '1', 'Contacts', '4d18a71b-c06b-d5e8-242a-5d0f3e51e462', 'Customer 2', '2019-06-23 08:54:24', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(107, '839ca3b4-8966-afcf-1327-5d0f3e845195', '1', 'Contacts', 'cc6d8663-0885-23be-ba5a-5d0f3eb9d515', 'Customer 3', '2019-06-23 08:55:52', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(110, '6f504881-1f0e-33cf-a58f-5d0f3f45d82e', '1', 'BW_Transaction', 'c2cb1c2c-cf99-ea35-2d50-5d0f3f36b989', 'Wilson Savaliya-Credited', '2019-06-23 09:01:30', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(112, '5f8e6f11-a38e-4fb8-df17-5d0f4139287f', '1', 'BW_Transaction', 'e96359ef-3c8d-111c-6a4f-5d0f4149b138', 'Customer 2-Credited', '2019-06-23 09:08:35', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(113, '4d596e0a-ef63-9ac3-3e41-5d0f41c70160', '1', 'BW_Transaction', 'cc0b49ec-0e5d-a3dd-805f-5d0f41c1c557', 'Wilson Savaliya-Debited', '2019-06-23 09:09:34', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(114, 'afcf47d3-2956-810e-cb0e-5d0f42000b7d', '1', 'BW_Transaction', '5269e0ab-dd0b-75ea-c4d5-5d0f423214ad', 'Mr. Wilson Savaliya-Debited', '2019-06-23 09:10:36', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(116, '3325432b-a2c1-922c-0f6c-5d0f44c3048d', '1', 'BW_Transaction', '5fe91e33-c417-373a-1b88-5d0f422b0c87', 'Customer 2-Debited', '2019-06-23 09:20:18', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(117, '1d3ae2d3-84bb-5548-1bda-5d0f456090b1', '1', 'BW_Transaction', '7204f82b-2dbb-d340-4ec2-5d0f45bfa620', 'Mr. Wilson Savaliya-Debited', '2019-06-23 09:24:16', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(118, 'bb2b7fc2-29c0-e22f-091d-5d0f456bfdc7', '1', 'BW_Transaction', '7df25cda-40a1-631b-49ba-5d0f45e6ac9c', 'Mr. Wilson Savaliya-Credited', '2019-06-23 09:26:11', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(119, 'd4ce9cb3-19d2-d9c5-4db0-5d0f454b009b', '1', 'BW_Transaction', 'b0486ed3-a5b4-2db9-7fec-5d0f450760c7', 'Mr. Wilson Savaliya-Debited', '2019-06-23 09:26:57', 'detailview', 'ols15h73psvbf9cjvq934dhke3', 1, 0),
(121, '930927d9-9507-5f0b-a2c5-5d0f6a82ef55', '1', 'BW_Monthly_Calculation', '2c946259-c55c-4656-735b-5d0f3ff869f9', 'Wilson Savaliya-Jun-2019', '2019-06-23 12:01:52', 'detailview', '015m4c88so5b1lslavt9g55ki7', 1, 0),
(122, '4c3db340-e1c4-55e4-ad66-5d0f6acace45', '1', 'Contacts', '94ca38a8-9342-7b30-3d93-5ccc8d44eda5', 'Mr. Wilson Savaliya', '2019-06-23 12:02:59', 'detailview', '015m4c88so5b1lslavt9g55ki7', 1, 0),
(123, 'b0f548c6-5256-21c1-fc02-5d0f6afb4f10', '1', 'Contacts', '35a4735b-f1cc-5619-18ec-5d0f3d852d7a', 'Customer 1', '2019-06-23 12:03:05', 'detailview', '015m4c88so5b1lslavt9g55ki7', 1, 0),
(126, 'f3e3442b-3ec1-7277-228e-5d1255fe822d', '1', 'AOR_Reports', 'ea8e09fa-f256-9924-b14d-5cf9363f2ca2', 'Monthly Calculation ', '2019-06-25 17:10:44', 'detailview', 'uqbfnrv59kq2km9l5ma6jd3e03', 1, 0),
(210, '7d2c2436-7a28-6d72-dae9-5d15bf42c2bd', '1', 'AOR_Reports', '265804b1-fd2a-9ce1-34d0-5d125de6107e', 'Transaction Chart', '2019-06-28 07:17:26', 'detailview', '2q801jt24rij4l6nvugbtr75k9', 0, 0),
(217, 'a90bbbae-d1aa-7116-b9fc-5d15c4d63f15', '1', 'Currencies', 'b6905bc1-7203-909b-a093-5d15c4025497', 'Base Implementation.  Should be overridden.', '2019-06-28 07:41:25', 'save', '2q801jt24rij4l6nvugbtr75k9', 0, 0),
(218, '746db869-37ae-fcee-773d-5d15c49d1c32', '1', 'BW_Transaction', 'c5e46e09-e07f-cc51-d9cf-5d0f46a4c5b8', 'Mr. Wilson Savaliya-Credited', '2019-06-28 07:41:45', 'detailview', '2q801jt24rij4l6nvugbtr75k9', 1, 0),
(237, 'd11705d9-e898-d38a-be74-5d15d4ad5dfb', '1', 'AOR_Reports', '642881bc-db52-ff64-6f72-5d1257e33127', 'Transaction Report', '2019-06-28 08:48:32', 'detailview', '2q801jt24rij4l6nvugbtr75k9', 1, 0),
(241, '9d93037d-4550-d303-d9e5-5d15d4a851b0', '1', 'AOR_Reports', 'bdd3b227-2fe8-e532-79ff-5d15c08c6f0f', 'Transaction Chart', '2019-06-28 08:49:50', 'detailview', '2q801jt24rij4l6nvugbtr75k9', 0, 0),
(248, 'be6b2d6d-847c-0109-3f96-5d15d58d576f', '1', 'AOR_Reports', 'c0a7e793-d9f1-f0cb-d001-5d15d42cc386', 'Transaction Chart', '2019-06-28 08:52:55', 'detailview', '2q801jt24rij4l6nvugbtr75k9', 0, 0),
(249, '8a12c394-3f01-d52b-cb8c-5d15dcc0d972', '1', 'BW_Monthly_Calculation', '3274d85c-0730-5053-4ced-5d0f4174f101', 'Customer 2-Jun-2019', '2019-06-28 09:23:07', 'detailview', '2q801jt24rij4l6nvugbtr75k9', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
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
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('43ef7436-4632-9a67-83b3-5ccc8b0e0e1d', 'upload/upgrades/module/Monthly_Calculation2019_05_03_204123.zip', '7c76b17ff929e1162e20168029920314', 'module', 'installed', '1556908882', 'Monthly_Calculation', '', 'Monthly_Calculation', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiQlciO3M6NjoiYXV0aG9yIjtzOjA6IiI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE5OiJNb250aGx5X0NhbGN1bGF0aW9uIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxOS0wNS0wMyAxODo0MToyMiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE1NTY5MDg4ODI7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo5OntzOjI6ImlkIjtzOjE5OiJNb250aGx5X0NhbGN1bGF0aW9uIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjIyOiJCV19Nb250aGx5X0NhbGN1bGF0aW9uIjtzOjU6ImNsYXNzIjtzOjIyOiJCV19Nb250aGx5X0NhbGN1bGF0aW9uIjtzOjQ6InBhdGgiO3M6NTc6Im1vZHVsZXMvQldfTW9udGhseV9DYWxjdWxhdGlvbi9CV19Nb250aGx5X0NhbGN1bGF0aW9uLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjkzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvYndfbW9udGhseV9jYWxjdWxhdGlvbl9jb250YWN0c19Db250YWN0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkNvbnRhY3RzIjt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MTp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6OTU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9id19tb250aGx5X2NhbGN1bGF0aW9uX2NvbnRhY3RzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjU0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL0JXX01vbnRobHlfQ2FsY3VsYXRpb24iO3M6MjoidG8iO3M6MzA6Im1vZHVsZXMvQldfTW9udGhseV9DYWxjdWxhdGlvbiI7fX1zOjg6Imxhbmd1YWdlIjthOjM6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo3MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9CV19Nb250aGx5X0NhbGN1bGF0aW9uLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MjI6IkJXX01vbnRobHlfQ2FsY3VsYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQ29udGFjdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJDb250YWN0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX1zOjc6InZhcmRlZnMiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjEwNDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL2J3X21vbnRobHlfY2FsY3VsYXRpb25fY29udGFjdHNfQldfTW9udGhseV9DYWxjdWxhdGlvbi5waHAiO3M6OToidG9fbW9kdWxlIjtzOjIyOiJCV19Nb250aGx5X0NhbGN1bGF0aW9uIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjkwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvYndfbW9udGhseV9jYWxjdWxhdGlvbl9jb250YWN0c19Db250YWN0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkNvbnRhY3RzIjt9fXM6MTI6ImxheW91dGZpZWxkcyI7YToxOntpOjA7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2019-05-03 18:41:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
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
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('1', 'admin', '$1$K32.LL1.$VqEbLb4EOh8jkdvFYGlBh/', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('11718cd4-ff74-f182-a3e6-5ccc61716789', 'global', 0, '2019-05-03 15:39:50', '2019-06-28 06:29:28', '1', 'YTozMjp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjZhMTUwYzA1LTc3MTUtOGVlZC1hZmRhLTVjY2M2MWZhMGM0NyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MjoidXQiO3M6MToiMSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjE6IjEiO3M6MTI6Im1haWxfc210cHNzbCI7aToxO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjk6IkNvbnRhY3RzUSI7YToyOntzOjE0OiJkaXNwbGF5Q29sdW1ucyI7TjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE1OiJCV19UcmFuc2FjdGlvblEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoyMzoiQldfTW9udGhseV9DYWxjdWxhdGlvblEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxMjoiQU9SX1JlcG9ydHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTA6IkVtcGxveWVlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxMDoiQ2FtcGFpZ25zUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjY6IlNwb3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('25eb47b3-667b-e285-d0ed-5ccc6150c72f', 'GoogleSync', 0, '2019-05-03 15:39:50', '2019-05-03 15:39:50', '1', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('27127b10-0777-f09f-5487-5d0130a16326', 'Employees2_EMPLOYEE', 0, '2019-06-12 17:04:08', '2019-06-12 17:04:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('497696df-262a-4ed6-9e0c-5ccc882b9070', 'Home2_LEAD_bf8b336c-ea2e-ba97-6585-5ccc887f8093', 0, '2019-05-03 18:29:03', '2019-05-03 18:29:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ac8e7ef-5d91-5460-99dc-5ccc88a8b860', 'Home', 0, '2019-05-03 18:28:33', '2019-06-10 16:16:51', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjYzOTQ3MmRmLWY4YTItN2E0OC0zNWQ0LTVjZmU4MmVjMGE2YyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6Ijc0YTJlZTFlLTEzOWEtZjRjMy1lNjUyLTVjZmU4Mjk5NmZkYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijg0YjFjYjE3LTk0OGItNjBlMi0yNDk4LTVjZmU4MmMwODc4ZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjkyYzk4MDU0LTE0YjQtYjZhZi0wODI0LTVjZmU4Mjk1ZTBmZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYTU5OTY3NGEtMzM5Yi02MGFmLWNkYWYtNWNmZTgyYzgxODU3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjQxZGEzYzItODlmNi1hYzdlLTAxMjEtNWNmZTgyMjNjMDgyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjA6e319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MDp7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('5c15ee5a-8dda-1b0c-dfb7-5cf54b252e71', 'BW_Transaction2_BW_TRANSACTION', 0, '2019-06-03 16:30:57', '2019-06-03 16:30:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('630b0034-1c7b-ca99-3176-5ccc888175ba', 'Contacts2_CONTACT', 0, '2019-05-03 18:29:43', '2019-05-03 18:29:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('72a1d600-1b75-9179-7521-5ccc886acefa', 'Home2_CALL', 0, '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7d9ea697-47da-4208-ac75-5d0f3ccf7ea8', 'Contacts', 0, '2019-06-23 08:48:30', '2019-06-23 08:48:30', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('8d4babb2-b95a-9950-d672-5ccc8885cbfe', 'Home2_MEETING', 0, '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('97b57275-a615-4631-7de9-5d0a6ee78adf', 'Accounts2_ACCOUNT', 0, '2019-06-19 17:19:19', '2019-06-19 17:19:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9e3d5da6-c562-5caf-6c06-5ccc8bb5a3ed', 'ETag', 0, '2019-05-03 18:41:22', '2019-06-05 16:34:48', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('a38705b4-f367-1c9a-4364-5d0bd2836e8b', 'Campaigns2_CAMPAIGN', 0, '2019-06-20 18:38:14', '2019-06-20 18:38:14', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a5dcfeb1-4f1a-08ab-f505-5ccc88a2e0d1', 'Home2_OPPORTUNITY', 0, '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b7d6e0f5-00ca-c3c4-4e44-5ccc882e8a6f', 'Home2_ACCOUNT', 0, '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('be628641-4c92-bfdd-3e1b-5cf54e2dd8b7', 'BW_Monthly_Calculation2_BW_MONTHLY_CALCULATION', 0, '2019-06-03 16:46:01', '2019-06-03 16:46:01', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bfc15718-b463-f82b-509d-5d15b312e22d', 'Spots2_SPOTS', 0, '2019-06-28 06:29:28', '2019-06-28 06:29:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c724dddd-031f-e8ae-27da-5ccc884b7086', 'Home2_LEAD', 0, '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('da028d6e-9370-d8eb-88de-5ccc8816f7de', 'Home2_SUGARFEED', 0, '2019-05-03 18:28:33', '2019-05-03 18:28:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e589ead2-83e7-cca9-006f-5cf934cbe3ec', 'AOR_Reports2_AOR_REPORT', 0, '2019-06-06 15:44:57', '2019-06-06 15:44:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
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
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `bw_monthly_calculation`
--
ALTER TABLE `bw_monthly_calculation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bw_monthly_calculation_audit`
--
ALTER TABLE `bw_monthly_calculation_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bw_monthly_calculation_parent_id` (`parent_id`);

--
-- Indexes for table `bw_monthly_calculation_contacts_c`
--
ALTER TABLE `bw_monthly_calculation_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bw_monthly_calculation_contacts_ida1` (`bw_monthly_calculation_contactscontacts_ida`),
  ADD KEY `bw_monthly_calculation_contacts_alt` (`bw_monthly_calculation_contactsbw_monthly_calculation_idb`);

--
-- Indexes for table `bw_monthly_calculation_cstm`
--
ALTER TABLE `bw_monthly_calculation_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `bw_transaction`
--
ALTER TABLE `bw_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bw_transaction_audit`
--
ALTER TABLE `bw_transaction_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bw_transaction_parent_id` (`parent_id`);

--
-- Indexes for table `bw_transaction_contacts_c`
--
ALTER TABLE `bw_transaction_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bw_transaction_contacts_ida1` (`bw_transaction_contactscontacts_ida`),
  ADD KEY `bw_transaction_contacts_alt` (`bw_transaction_contactsbw_transaction_idb`);

--
-- Indexes for table `bw_transaction_cstm`
--
ALTER TABLE `bw_transaction_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_contacts_1_c`
--
ALTER TABLE `contacts_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_contacts_1_ida1` (`contacts_contacts_1contacts_ida`),
  ADD KEY `contacts_contacts_1_alt` (`contacts_contacts_1contacts_idb`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indexes for table `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
