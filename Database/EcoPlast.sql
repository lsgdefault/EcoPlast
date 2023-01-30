-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 09:42 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EcoPlast`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add company', 7, 'add_company'),
(26, 'Can change company', 7, 'change_company'),
(27, 'Can delete company', 7, 'delete_company'),
(28, 'Can view company', 7, 'view_company'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add master', 9, 'add_master'),
(34, 'Can change master', 9, 'change_master'),
(35, 'Can delete master', 9, 'delete_master'),
(36, 'Can view master', 9, 'view_master'),
(37, 'Can add plastic c', 10, 'add_plasticc'),
(38, 'Can change plastic c', 10, 'change_plasticc'),
(39, 'Can delete plastic c', 10, 'delete_plasticc'),
(40, 'Can view plastic c', 10, 'view_plasticc'),
(41, 'Can add plastic product', 11, 'add_plasticproduct'),
(42, 'Can change plastic product', 11, 'change_plasticproduct'),
(43, 'Can delete plastic product', 11, 'delete_plasticproduct'),
(44, 'Can view plastic product', 11, 'view_plasticproduct'),
(45, 'Can add transaction', 12, 'add_transaction'),
(46, 'Can change transaction', 12, 'change_transaction'),
(47, 'Can delete transaction', 12, 'delete_transaction'),
(48, 'Can view transaction', 12, 'view_transaction'),
(49, 'Can add schedule order', 13, 'add_scheduleorder'),
(50, 'Can change schedule order', 13, 'change_scheduleorder'),
(51, 'Can delete schedule order', 13, 'delete_scheduleorder'),
(52, 'Can view schedule order', 13, 'view_scheduleorder'),
(53, 'Can add recycling data', 14, 'add_recyclingdata'),
(54, 'Can change recycling data', 14, 'change_recyclingdata'),
(55, 'Can delete recycling data', 14, 'delete_recyclingdata'),
(56, 'Can view recycling data', 14, 'view_recyclingdata'),
(57, 'Can add recycle product', 15, 'add_recycleproduct'),
(58, 'Can change recycle product', 15, 'change_recycleproduct'),
(59, 'Can delete recycle product', 15, 'delete_recycleproduct'),
(60, 'Can view recycle product', 15, 'view_recycleproduct'),
(61, 'Can add plastic request', 16, 'add_plasticrequest'),
(62, 'Can change plastic request', 16, 'change_plasticrequest'),
(63, 'Can delete plastic request', 16, 'delete_plasticrequest'),
(64, 'Can view plastic request', 16, 'view_plasticrequest'),
(65, 'Can add order', 17, 'add_order'),
(66, 'Can change order', 17, 'change_order'),
(67, 'Can delete order', 17, 'delete_order'),
(68, 'Can view order', 17, 'view_order'),
(69, 'Can add customer data', 18, 'add_customerdata'),
(70, 'Can change customer data', 18, 'change_customerdata'),
(71, 'Can delete customer data', 18, 'delete_customerdata'),
(72, 'Can view customer data', 18, 'view_customerdata'),
(73, 'Can add add to cart', 19, 'add_addtocart'),
(74, 'Can change add to cart', 19, 'change_addtocart'),
(75, 'Can delete add to cart', 19, 'delete_addtocart'),
(76, 'Can view add to cart', 19, 'view_addtocart'),
(77, 'Can add plastic data', 14, 'add_plasticdata'),
(78, 'Can change plastic data', 14, 'change_plasticdata'),
(79, 'Can delete plastic data', 14, 'delete_plasticdata'),
(80, 'Can view plastic data', 14, 'view_plasticdata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(19, 'ep', 'addtocart'),
(7, 'ep', 'company'),
(8, 'ep', 'customer'),
(18, 'ep', 'customerdata'),
(9, 'ep', 'master'),
(17, 'ep', 'order'),
(10, 'ep', 'plasticc'),
(14, 'ep', 'plasticdata'),
(11, 'ep', 'plasticproduct'),
(16, 'ep', 'plasticrequest'),
(15, 'ep', 'recycleproduct'),
(13, 'ep', 'scheduleorder'),
(12, 'ep', 'transaction'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-04 06:16:59.144556'),
(2, 'auth', '0001_initial', '2021-04-04 06:17:01.261769'),
(3, 'admin', '0001_initial', '2021-04-04 06:17:13.116096'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-04 06:17:15.070487'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-04 06:17:15.238003'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-04 06:17:16.742294'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-04 06:17:18.170642'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-04 06:17:18.312479'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-04 06:17:18.378215'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-04 06:17:19.692569'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-04 06:17:19.760544'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-04 06:17:19.831626'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-04 06:17:20.007224'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-04 06:17:20.161564'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-04 06:17:20.292144'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-04 06:17:20.369261'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-04 06:17:20.560087'),
(18, 'ep', '0001_initial', '2021-04-04 06:17:27.975283'),
(19, 'sessions', '0001_initial', '2021-04-04 06:17:54.673337'),
(20, 'ep', '0002_addtocart_order_comment', '2021-04-04 11:54:16.817817'),
(21, 'ep', '0003_auto_20210407_1553', '2021-04-07 10:23:51.434492'),
(22, 'ep', '0002_auto_20210414_1221', '2021-04-14 06:51:13.403644'),
(23, 'ep', '0003_auto_20210414_1234', '2021-04-14 07:04:58.930341'),
(24, 'ep', '0002_auto_20210418_2001', '2021-04-18 14:31:35.050828'),
(25, 'ep', '0003_auto_20210420_0112', '2021-04-19 19:43:11.987295');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0rrbvns2789mqdkz6ga8ph8kmpham2p6', 'e30:1lZfGx:vmBOppAjG9qnKT9fFNAo2DAGfF1imJjkX2j_P81JLBo', '2021-05-06 19:45:59.129851'),
('1y914nmj8sjizv6fnuwfbucxspwfjo0d', 'e30:1lZBUy:-s-XAryu6NXyWGYIsecptOUO7sJFAp8x1Lcd6ceslfI', '2021-05-05 11:58:28.447348'),
('3aoc1yq1wtfibne3thygoiz7nxto0eg6', '.eJw9zTEOgzAMBdC7eEaVIJ2YOpWFdignsCBqgkhSxUYdKu7e74XRz9_fP_KJ40Y95RhilcDBXW9vs8tcEjX0YZFvqYtFpO0c6FU2j3HeRUvyFXLHqWZOxk8rgo180oRayODzgnhPD0ZBQ5Oy2nrYV66skIg37vgDW5Uvyg:1lWjCv:xh7fC5HqfqPsTEj6SQ1dSVpZLkPMkE5GWECFyfdouXE', '2021-04-28 17:21:41.336302'),
('3ivq2moqancqb9suwvjz6368ykq2m60v', 'eyJlbWFpbCI6InhpamV4MTQwOTZAd2hpcGpveS5jb20ifQ:1lWZLB:NOm7PoPjas-tTqzIArmsZ-H0Ns1vAJDkVB3vGuNppgU', '2021-04-28 06:49:33.344704'),
('49njs4znf2ri4c7mepd3snjae4zqubed', 'e30:1lYXrV:63xCyKbGqGx7-oHPQMtCkMiO9w6Aytd-awWr1MIuwXU', '2021-05-03 17:39:05.266197'),
('4zo4gj32jkoljpifxw7jg8oa6xoauzi0', '.eJxNj0EOgjAQRa9CZk1MUVRkZeLCJcQbjG2RiaVj2ioL490tWBJ3r_-_mUnfoAckAzWgkz2F4OilFW2LsjjyMxjm-0ryADk80PuRnYpq8MV6EyOKj10OFzY6pq1BH0ie2BgtA7sotNLiMHVpbYZWZZ6tnztU07Jzjz9VsoW6OlRC7Euxrqaou0ZhLinOJDRkFwwjhYVHneSmS0cnNn9802mwmU-JCMvn4fMFSYFO1Q:1lVXua:d1teoUwNmfZtCs3BUaHob64EbE_itvJBZHrzc7XON6I', '2021-04-25 11:05:52.855998'),
('52jhogr6hby2b3us5bni3acmytgbrqh2', '.eJw9jTEOwjAMRe_iuUIKlKUTLHSBBXoBK7HAqGmQ49IBcXdskBj9_v_PL6CMPEIHKPHGqsJPSrwNbdhdPVnFkqGBB9a6FEle1LDeGDqXkeyMc9WSSYwcWKpOmB3vvzqDR_yz4Sc32NOUbNLBCU3SwEVRvdHPdxT0Gdur9v0Be3Uziw:1lWNAQ:H35WjKo_rq4MM06J5lseMqcrBSphKuVKQfjZhsrelrk', '2021-04-27 17:49:38.224696'),
('6n0z5bfjwo6l80wur83ntn69jw1mzyl3', '.eJxNkE1OwzAQha9iecHKQg1pRJQV6YIKCRREygGm8bQx8k9lO80CcXfGwUWRN28-z8yz3zf_DOgtGOQNB2mU5YK_Qwiz83KF0IDSqfbDqGL06opSVcW2eDqnm_vBGeq6rAZj8VASUlRsBf9wOjkMU4jOoE8mQ3bdgXeR3bHe2bBwkGlBuanFDi7Qjx6RtVe0Ewp26F6YdyAFCxBRaxUJtqNBCcdleHCWN3VRVfVjSSeh05HWLZeKHLLU9K0s46ziTc-Ym7tTfl7SeqXPmAe7xWpD4hYOwWflQ8zd7ZIVwVf4Z4e_5Aju0UoKouFvQNEI3kf6EJX76Qs8RP7zC1x-fLQ:1lX4Fe:mZo0EIJCZbR37d8G7WIdh1Enl1EBeSNhq-TjEbR6vDI', '2021-04-29 15:49:54.367841'),
('8buml9hcfr1lz11krtpjk5xql4ipcaia', '.eJxNkM0OgjAQhF-F7METIcpflJOJiSRGxYgvsEKBGmgJLeFgfHe3pBhvs99Mu5l9A-uQt5CA4A0fVINNEO5rw7xCduBCj0pNcihNRG38gBCnIXDhLltGtBiVlh0byLgVAjvD8lFw7ZwadFbOQXqzhaX54yF7NY-FFJDs4sCPwk28jQyqnhSYTS7UIlsuFqknrhc9MRvOKrvT6PZP18w-zOZVaxJLV4JHKqtt-mqqEzvjD-V0CCIpEyU1S-CC1NWFXKM2djq-cEANny95913p:1lVu3O:xCIABYnjUV96-mQjrzdR_QJnJkDA-GRWjp8GXa6rfqI', '2021-04-26 10:44:26.958000'),
('aiub49ivslm87ccs6xcc0lyp016kxlok', '.eJw9zTEOgzAMBdC7eEaVIJ2YOpWFdignsCBqgkhSxUYdKu7e74XRz9_fP_KJ40Y95RhilcDBXW9vs8tcEjX0YZFvqYtFpO0c6FU2j3HeRUvyFXLHqWZOxk8rgo180oRayODzgnhPD0ZBQ5Oy2nrYV66skIg37vgDW5Uvyg:1lY7mT:R85wjuaEHsNUrVctSFYCzSDta-CUl80WgWjiUhmkYnI', '2021-05-02 13:48:09.277289'),
('b34an3vwf17uhj8wk6djlm3jtf3urkcj', 'e30:1lYnkn:JLX4_OOvkhPNpnS2EosHdxxWdoRr_TqKjv9Lq8epUcM', '2021-05-04 10:37:13.247685'),
('enc6ij3hq4v8p9iog02lcw7yek38j3pw', '.eJw9zTEOgzAMBdC7eEaVIJ2YOpWFdignsCBqgkhSxUYdKu7e74XRz9_fP_KJ40Y95RhilcDBXW9vs8tcEjX0YZFvqYtFpO0c6FU2j3HeRUvyFXLHqWZOxk8rgo180oRayODzgnhPD0ZBQ5Oy2nrYV66skIg37vgDW5Uvyg:1lXqug:rCYxuLhyB-Vry_LKcnZqKsKwex6UKu0lHut0opigHVs', '2021-05-01 19:47:30.664324'),
('ioo45usdgd3iwk74f6y8opdk2jili3zj', 'eyJSb2xlIjoiYWRtaW4iLCJwYXNzd29yZCI6ImFkbWluIn0:1lZhfD:MzzWHgfyiSmAObUMJCnUae6sTLYL5QOaEne65Z8Eags', '2021-05-06 22:19:11.629425'),
('li1kiul1zntmv7nccae31iem00egmbcd', 'e30:1lWGCc:ofHoEF4O2YlDuh22JpJ2TZVSOwUmvKiiskVj9ZXjoJo', '2021-04-27 10:23:26.094525'),
('ma8d3bzlu6d9s0q1f6bpwr3hgzly081t', '.eJw9zTEOgzAMBdC7eEaVIJ2YOpWFdignsCBqgkhSxUYdKu7e74XRz9_fP_KJ40Y95RhilcDBXW9vs8tcEjX0YZFvqYtFpO0c6FU2j3HeRUvyFXLHqWZOxk8rgo180oRayODzgnhPD0ZBQ5Oy2nrYV66skIg37vgDW5Uvyg:1lYAhM:EYDasuEJq3CDFEm0--6_r5yufPqbCEL_b60X0WDXbI8', '2021-05-02 16:55:04.624543'),
('mvrhvs4ejgamxi796qdyvmww7eqhykcd', '.eJxNkMFuwjAMhl8lyoFTNAWqahUnYKedimAv4KYGItwYJYEe0N59TtVKUy5fPtu_o7w1DuBJbzXEeweR88Zau7sW-eF40EY_IKWRYy89XVpvKlFeLrXRJyYUeyRI2bsvJkKXOUrD0QUYSu1QItVKnTmkyUNfgirbmAM84HyLiGr_wvBEo37abxUZeqMSZCTyWeT-NmAP3TTsOOhts67r5rOSU9Slk7ip6GXDjOTDgnn0eeER5-b2Mj-vMP3jK86D7bTKCiz_o3__AFbHWKk:1lWm9m:BfKDew3gTsQz9rm-3H0TaLcryKfgPkB1FhdaQoZ1qgU', '2021-04-28 20:30:38.306265'),
('oys5wxlcri1x79azn38l6bl64e63cx97', '.eJw9zTEOgzAMBdC7eEaVIJ2YOpWFdignsCBqgkhSxUYdKu7e74XRz9_fP_KJ40Y95RhilcDBXW9vs8tcEjX0YZFvqYtFpO0c6FU2j3HeRUvyFXLHqWZOxk8rgo180oRayODzgnhPD0ZBQ5Oy2nrYV66skIg37vgDW5Uvyg:1lXp12:M5gQY0b6HKcWVrgTWt6zn1vxM7uU0xlYgFmG6oW_Pdw', '2021-05-01 17:45:56.819902'),
('pkeew2i5pk6g38dmircz59u1xopaonjf', '.eJxlkE1uwyAQha-CWFs2YDc_XqXNoqumUqIeYGITg2rAAiLLqnr3zlSWGqli8-ab4fGYL64d2JG33FtjYzJgVN1sDgPRsguOF3yClOYQexpKUtWILBay4OcwaqRn3S3daP1wDG4Cv-DA0YOj1gUNGfiekSAOPfnITcE-8ifgg-wSOqvzUrBTLNmLufcQp3sE9gquYM_uCjP0lq52wfN236j9biubJ4XkdkUvalmfVoUxVpVnm1c5axo0OU9tVUm1LQUe2e6EEBX2329r2hPtgMD4EJ_qQZPrG-B3sfoNwsVfFIL_9lg3D1v8_gE-Nmpq:1lWahO:qsBlZF21Qtz7OP4Yi7n52FidOuQEuZcxJ9TWwsnqayg', '2021-04-28 08:16:34.596997'),
('synxxoc8n60hrvm666jzkou0e0s9heyf', '.eJw9zTEOgzAMBdC7eEaVIJ2YOpWFdignsCBqgkhSxUYdKu7e74XRz9_fP_KJ40Y95RhilcDBXW9vs8tcEjX0YZFvqYtFpO0c6FU2j3HeRUvyFXLHqWZOxk8rgo180oRayODzgnhPD0ZBQ5Oy2nrYV66skIg37vgDW5Uvyg:1lWGXJ:Ja5UroPXnEnQvGWKuaNuw98W79HmKbS6USSd42fTgo8', '2021-04-27 10:44:49.832349'),
('vaz3l7ku386ve0i7v6tmj08ao7er1ysl', '.eJxNkD9vwyAQxb8KYuiEIhLLqpWpTqYOVaymS6fqjC8JCn8ioGWo-t17UFeOWPg97h737psPEGP2YeJbDpPVjguOFrQpHK4jBJ82UsqncxFXylsquC09Y1xvGpI0QSv4qzdI6mAgJq323hhUyQcqGJQDW952xZI9sKN3seowFaNGdmIHNzheAiLrv9B9omBvh2cWPEyCRUhojE4k9heLE4y1WXnHt926bbvHhk6RTiPZveOfuaZPFjKUb6GUdbrDjKUx57yqqeesh9M8dx-uBc2MrOYoyhmL6QtQcqI6kKTL_xar2Qft8m6FP7-pP3Tw:1la1ab:8FFLahL93NzZn2tEIF0SNzQwDBVijKv6bRPd3W7P9wo', '2021-05-07 19:35:45.496260'),
('wmoxdvdo6zifxe3tzhkxhk7yughngimf', 'e30:1lY9Ug:hjljOSlBZVx3oHPRtrzOudXwpYmOBR5-Lhz4ntziH60', '2021-05-02 15:37:54.304245'),
('yy454k1dwepsjhijq86tpaf9n3y3h9kr', 'e30:1lYSbn:1uf0zVf391dn-rJ7RGZ6YC02wRteB1NWTWnhnlYODiA', '2021-05-03 12:02:31.448080'),
('ziy4oj615ifu7m0hekiulyouaxn5axsr', '.eJxlkE1uwyAQha-CWFs2YDc_XqXNoqumUqIeYGITg2rAAiLLqnr3zlSWGqli8-ab4fGYL64d2JG33FtjYzJgVN1sDgPRsguOF3yClOYQexpKUtWILBay4OcwaqRn3S3daP1wDG4Cv-DA0YOj1gUNGfiekSAOPfnITcE-8ifgg-wSOqvzUrBTLNmLufcQp3sE9gquYM_uCjP0lq52wfN236j9biubJ4XkdkUvalmfVoUxVpVnm1c5axo0OU9tVUm1LQUe2e6EEBX2329r2hPtgMD4EJ_qQZPrG-B3sfoNwsVfFIL_9lg3D1v8_gE-Nmpq:1lWZq9:CizQT72vlmuj4MohGti3Go66DSm9m7oB3H4Yt4fRip0', '2021-04-28 07:21:33.105991');

-- --------------------------------------------------------

--
-- Table structure for table `ep_addtocart`
--

CREATE TABLE `ep_addtocart` (
  `id` int(11) NOT NULL,
  `cart_price` bigint(20) NOT NULL,
  `cart_quantity` bigint(20) NOT NULL,
  `cart_date` datetime(6) NOT NULL,
  `cart_subtotal` bigint(20) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `company_id_id` int(11) NOT NULL,
  `cust_id_id` int(11) NOT NULL,
  `rp_id_id` int(11) NOT NULL,
  `transaction_id_id` int(11) DEFAULT NULL,
  `order_comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_addtocart`
--

INSERT INTO `ep_addtocart` (`id`, `cart_price`, `cart_quantity`, `cart_date`, `cart_subtotal`, `order_date`, `payment_status`, `order_status`, `company_id_id`, `cust_id_id`, `rp_id_id`, `transaction_id_id`, `order_comment`) VALUES
(5, 50, 2, '2021-04-04 11:46:55.631374', 100, '2021-04-04 11:46:55.639259', 'TXN_SUCCESS', 'Out of Delivery', 1, 1, 1, 6, 'Please deliver my order ASAP!'),
(6, 12, 3, '2021-04-04 11:47:10.445171', 36, '2021-04-04 11:47:10.451018', 'TXN_SUCCESS', 'Order Placed', 2, 1, 4, 6, 'Great service'),
(7, 6, 2, '2021-04-04 12:13:24.528111', 12, '2021-04-04 12:13:24.600238', 'TXN_SUCCESS', 'Shipped', 1, 2, 2, 7, 'Handle with care'),
(8, 6, 3, '2021-04-04 12:13:33.273856', 18, '2021-04-04 12:13:33.278966', 'TXN_SUCCESS', 'Order Placed', 2, 2, 3, 7, 'Please follow covid guidelines'),
(9, 6, 5, '2021-04-04 12:28:41.385980', 30, '2021-04-04 12:28:41.392958', 'TXN_FAILURE', 'Failed', 1, 2, 2, 8, 'Great work guys keep it up !'),
(17, 50, 2, '2021-04-15 15:50:04.515166', 100, '2021-04-15 15:50:04.515166', 'TXN_FAILURE', 'Failed', 1, 2, 1, 11, 'please follow covid guidelines'),
(18, 10, 10, '2021-04-15 15:51:09.053265', 100, '2021-04-15 15:51:09.053265', 'TXN_FAILURE', 'Failed', 1, 2, 10, 13, ''),
(19, 50, 2, '2021-04-15 15:51:47.419278', 100, '2021-04-15 15:51:47.419278', 'TXN_FAILURE', 'Failed', 1, 2, 1, 14, ''),
(20, 10, 10, '2021-04-15 15:52:54.560471', 100, '2021-04-15 15:52:54.560471', 'PENDING', 'Failed', 1, 2, 10, 15, ''),
(23, 16, 4, '2021-04-21 09:26:31.361077', 64, '2021-04-21 09:26:31.361077', 'TXN_SUCCESS', 'Order Placed', 1, 1, 14, 20, 'Please deliver my order ASAP!'),
(24, 65, 5, '2021-04-21 09:26:52.062491', 325, '2021-04-21 09:26:52.062491', 'TXN_SUCCESS', 'Order Placed', 1, 1, 15, 20, 'please follow covid guidelines'),
(25, 50, 10, '2021-04-22 07:55:28.120708', 500, '2021-04-22 07:55:28.120708', 'TXN_SUCCESS', 'Order Placed', 1, 1, 1, 21, ''),
(26, 6, 5, '2021-04-22 07:57:05.811938', 30, '2021-04-22 07:57:05.811938', 'TXN_FAILURE', 'Failed', 1, 1, 2, 22, ''),
(27, 50, 2, '2021-04-22 09:49:10.246168', 100, '2021-04-22 09:49:10.246168', 'TXN_FAILURE', 'Failed', 1, 1, 1, 23, ''),
(28, 50, 2, '2021-04-22 09:59:12.971979', 100, '2021-04-22 09:59:12.971979', 'TXN_SUCCESS', 'Order Placed', 1, 1, 1, 24, 'please follow covid guidelines'),
(29, 6, 60, '2021-04-22 10:02:36.196855', 360, '2021-04-22 10:02:36.196855', 'TXN_SUCCESS', 'Order Placed', 1, 1, 2, 27, ''),
(30, 50, 20, '2021-04-22 10:05:02.893737', 1000, '2021-04-22 10:05:02.893737', 'TXN_FAILURE', 'Failed', 1, 1, 1, 28, '');

-- --------------------------------------------------------

--
-- Table structure for table `ep_company`
--

CREATE TABLE `ep_company` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(50) NOT NULL,
  `comp_address` varchar(500) NOT NULL,
  `comp_contact` bigint(20) NOT NULL,
  `comp_image` varchar(100) NOT NULL,
  `comp_city` varchar(30) NOT NULL,
  `comp_state` varchar(50) NOT NULL,
  `comp_postalcode` bigint(20) DEFAULT NULL,
  `comp_fb` varchar(1000) NOT NULL,
  `comp_insta` varchar(1000) NOT NULL,
  `comp_linkedin` varchar(1000) NOT NULL,
  `comp_twitter` varchar(1000) NOT NULL,
  `comp_website` varchar(200) NOT NULL,
  `owner_fname` varchar(50) NOT NULL,
  `owner_lname` varchar(50) NOT NULL,
  `owner_gender` varchar(50) NOT NULL,
  `owner_contact` varchar(50) NOT NULL,
  `owner_email` varchar(50) NOT NULL,
  `master_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_company`
--

INSERT INTO `ep_company` (`id`, `comp_name`, `comp_address`, `comp_contact`, `comp_image`, `comp_city`, `comp_state`, `comp_postalcode`, `comp_fb`, `comp_insta`, `comp_linkedin`, `comp_twitter`, `comp_website`, `owner_fname`, `owner_lname`, `owner_gender`, `owner_contact`, `owner_email`, `master_id_id`) VALUES
(1, 'Shah and Shah', '16, Utkarsh Society, Nr. Bhudarpura Gam, Ambawadi', 9429871452, '', 'Ahmedabad', 'Gujarat', 380015, 'Yes', 'No', 'Yes', 'Yes', 'http://127.0.0.1:8000/', 'Nihir', 'Shah', 'Male', '09429871452', 'nihirshah34@gmail.com', 1),
(2, 'Nihir and Co.', '725 , B, Gopal Sudhan, Old Pump House, Chakala M.i.d.c.', 9865412987, '', ' Mumbai', ' Maharashtra', 400093, 'No', 'No', 'Yes', 'Yes', 'www.Nihir.co.in', 'Jatin', 'Shah', 'Male', '09658745632', 'raviha1026@gridmire.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ep_customer`
--

CREATE TABLE `ep_customer` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postalcode` bigint(20) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `master_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_customer`
--

INSERT INTO `ep_customer` (`id`, `fname`, `lname`, `contact`, `address`, `gender`, `state`, `city`, `postalcode`, `image`, `master_id_id`) VALUES
(1, 'Nihir N', 'Shah', 9429871452, '16, Utkarsh Society, Nr. Bhudarpura Gam, Ambawadi', 'Male', 'Gujarat', 'Ahmedabad', 380015, '', 3),
(2, 'Kaivalya', 'Ahir', 8980074026, 'L-406,Shrinandnagar,Vejalpur', 'Male', 'Gujarat', 'Ahmedabad', 380051, '', 4),
(3, 'Nidhi', 'Shah', 8562478563, '3713 /, Shabi Market, Chowk, Mori Gate', 'Female', 'Delhi', 'Delhi', NULL, '', 8),
(4, 'Jhanvi', 'Kapoor', 7895645896, '34 /, W E A, Ajmal Khan Road, Karol Bagh', 'Female', ' Bangalore', ' Karnataka', 110001, '', 9),
(5, 'Nitin', 'Shah', 9854756894, '98 , Amrapali Arcade, Vasant Vihar, Thane (west)', 'Female', ' Maharashtra', ' Mumbai', 400602, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ep_customerdata`
--

CREATE TABLE `ep_customerdata` (
  `id` int(11) NOT NULL,
  `total_collection` double NOT NULL,
  `wastage` double NOT NULL,
  `usage` double NOT NULL,
  `collection_date` date NOT NULL,
  `cust_id_id` int(11) NOT NULL,
  `plastic_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_customerdata`
--

INSERT INTO `ep_customerdata` (`id`, `total_collection`, `wastage`, `usage`, `collection_date`, `cust_id_id`, `plastic_id_id`) VALUES
(1, 30, 80, 50, '2021-04-10', 1, 1),
(2, 100, 50, 50, '2021-04-11', 1, 1),
(3, 50, 20, 30, '2021-04-11', 2, 1),
(4, 70, 20, 50, '2021-04-18', 1, 1),
(5, 130, 80, 50, '2021-04-25', 1, 1),
(6, 80, 50, 30, '2021-04-10', 1, 1),
(7, 160, 80, 80, '2021-04-18', 1, 1),
(8, 100, 20, 80, '2021-04-24', 1, 1),
(9, 100, 20, 80, '2021-04-17', 1, 1),
(10, 130, 80, 50, '2021-04-30', 1, 1),
(11, 96, 26, 70, '2021-04-24', 1, 1),
(12, 130, 80, 50, '2021-04-24', 1, 2),
(13, 160, 100, 60, '2021-04-10', 1, 2),
(14, 90, 30, 60, '2021-04-25', 1, 2),
(15, 70, 20, 50, '2021-04-23', 1, 2),
(16, 90, 20, 70, '2021-04-10', 1, 2),
(17, 170, 100, 70, '2020-06-17', 1, 2),
(18, 90, 30, 60, '2021-04-17', 1, 2),
(19, 170, 100, 70, '2021-04-18', 1, 2),
(20, 100, 20, 80, '2021-04-24', 1, 2),
(21, 70, 35, 35, '2021-04-16', 1, 2),
(22, 150, 75, 75, '2021-04-17', 1, 2),
(23, 110, 35, 75, '2021-04-15', 1, 2),
(24, 55, 20, 35, '2021-04-16', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ep_master`
--

CREATE TABLE `ep_master` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` bigint(20) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_created` datetime(6) NOT NULL,
  `is_updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_master`
--

INSERT INTO `ep_master` (`id`, `role`, `email`, `password`, `otp`, `is_verified`, `is_active`, `is_created`, `is_updated`) VALUES
(1, 'RecyclingCompany', 'nihirshah2346@gmail.com', 'ns123', 73685, 0, 1, '2021-04-04 06:23:32.748611', '2021-04-04 06:23:32.748611'),
(2, 'RecyclingCompany', 'nihirshah24@gmail.com', 'ns123', 87704, 0, 1, '2021-04-04 07:09:41.921535', '2021-04-04 07:09:41.921535'),
(3, 'customer', 'nihirshah34@gmail.com', 'ns123', 69455, 0, 1, '2021-04-04 07:17:38.838648', '2021-04-04 07:17:38.838648'),
(4, 'customer', 'Kaivalyaahir@gmail.com', 'at123', 86209, 1, 1, '2021-04-04 12:09:59.226585', '2021-04-18 13:50:50.634974'),
(5, 'PlasticCollector', 'arkbarot2000@gmail.com', 'bs123', 79512, 1, 0, '2021-04-07 10:12:25.831612', '2021-04-18 13:52:10.275671'),
(6, 'PlasticCollector', 'Kaivalyaahir@outlook.com', 'ts123', 48787, 1, 1, '2021-04-11 10:06:13.625523', '2021-04-18 13:28:40.960098'),
(7, 'PlasticCollector', 'yeyay58207@ddwfzp.com', 'sj123', 31972, 0, 1, '2021-04-12 09:41:13.165971', '2021-04-12 09:41:13.165971'),
(8, 'customer', 'xijex14096@whipjoy.com', 'ns123', 46896, 0, 1, '2021-04-14 06:49:27.099085', '2021-04-18 13:28:27.298778'),
(9, 'customer', 'nihirshah4@gmail.com', 'ss123', 23417, 0, 1, '2021-04-15 11:28:07.343264', '2021-04-18 13:21:43.311902'),
(10, 'customer', 'raviha1026@gridmire.com', 'ns123', 26290, 0, 1, '2021-04-23 14:42:22.599004', '2021-04-23 14:42:22.599004');

-- --------------------------------------------------------

--
-- Table structure for table `ep_order`
--

CREATE TABLE `ep_order` (
  `id` int(11) NOT NULL,
  `order_qty` bigint(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `is_placed` datetime(6) NOT NULL,
  `customer_id_id` int(11) NOT NULL,
  `product_id_id` int(11) NOT NULL,
  `transaction_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ep_plasticc`
--

CREATE TABLE `ep_plasticc` (
  `id` int(11) NOT NULL,
  `pc_name` varchar(50) NOT NULL,
  `pc_address` varchar(50) NOT NULL,
  `pc_contact` bigint(20) NOT NULL,
  `pc_image` varchar(100) NOT NULL,
  `pc_fb` varchar(1000) NOT NULL,
  `pc_insta` varchar(1000) NOT NULL,
  `pc_linkedin` varchar(1000) NOT NULL,
  `pc_twitter` varchar(1000) NOT NULL,
  `pc_website` varchar(200) NOT NULL,
  `owner_fname` varchar(50) NOT NULL,
  `owner_lname` varchar(50) NOT NULL,
  `owner_gender` varchar(50) NOT NULL,
  `owner_contact` bigint(20) NOT NULL,
  `owner_email` varchar(50) NOT NULL,
  `master_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_plasticc`
--

INSERT INTO `ep_plasticc` (`id`, `pc_name`, `pc_address`, `pc_contact`, `pc_image`, `pc_fb`, `pc_insta`, `pc_linkedin`, `pc_twitter`, `pc_website`, `owner_fname`, `owner_lname`, `owner_gender`, `owner_contact`, `owner_email`, `master_id_id`) VALUES
(1, 'Barot & Sons', '308,BapaShree Avenue, TOI road, satellite, Ahmedab', 8155873737, '', 'Yes', 'Yes', 'Yes', 'Yes', 'www.barot.com', 'Ark', ' Barot', 'Male', 8659754865, 'barot_ark@gmail.com', 5),
(2, 'Ahir and sons', 'A-14 Nandjyot Industrial Est., M Vasanji Marg, And', 8980074028, '', 'Yes', 'No', 'Yes', 'Yes', 'www.ahir&sons.com', 'Kaivalya ', 'Ahir', 'Male', 7845968574, 'TrivediSons@gmail.com', 6),
(3, 'Sunit Jha & Co.', '48 , Mahalaxmi Five Road, Paldi', 9632541685, '', 'Yes', 'No', 'No', 'No', 'www.jhascorpor.com', 'Sunit', 'Jha', 'Male', 8987546215, 'shahandcorp@gmail.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ep_plasticdata`
--

CREATE TABLE `ep_plasticdata` (
  `id` int(11) NOT NULL,
  `total_collection` double NOT NULL,
  `wastage` double NOT NULL,
  `usage` double NOT NULL,
  `collection_date` date NOT NULL,
  `types` varchar(100) NOT NULL,
  `plastic_id_id` int(11) NOT NULL,
  `rc_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_plasticdata`
--

INSERT INTO `ep_plasticdata` (`id`, `total_collection`, `wastage`, `usage`, `collection_date`, `types`, `plastic_id_id`, `rc_id_id`) VALUES
(1, 70, 20, 50, '2021-04-14', 'PVC/Polyvinyl Chloride', 1, 1),
(2, 10, 1, 9, '2021-04-16', 'PS/Polystyrene', 2, 2),
(3, 10, 1, 9, '2021-04-16', 'PS/Polystyrene', 2, 1),
(4, 30, 10, 20, '2021-04-06', 'LDPE/Low-Density Polyethylene', 3, 1),
(5, 70, 10, 60, '2021-04-21', 'PVC/Polyvinyl Chloride', 2, 1),
(6, 25, 15, 10, '2021-04-16', 'HDPE/High-Density Polyethylene', 1, 1),
(7, 5010, 10, 50, '2021-04-21', 'LDPE/Low-Density Polyethylene', 2, 1),
(8, 13010, 10, 130, '2021-04-22', 'PVC/Polyvinyl Chloride', 3, 1),
(9, 6040, 40, 60, '2021-04-26', 'Others', 1, 1),
(10, 6040, 40, 60, '2021-04-23', 'PVC/Polyvinyl Chloride', 1, 1),
(11, 100, 10, 90, '2021-04-20', 'Others', 3, 1),
(12, 140, 70, 70, '2021-04-13', 'PS/Polystyrene', 3, 1),
(13, 130, 40, 90, '2021-04-20', 'PET/Polyethylene Terephthalate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ep_plasticproduct`
--

CREATE TABLE `ep_plasticproduct` (
  `id` int(11) NOT NULL,
  `pproduct_name` varchar(100) NOT NULL,
  `pproduct_date` datetime(6) NOT NULL,
  `pproduct_price` bigint(20) NOT NULL,
  `pproduct_image` varchar(100) NOT NULL,
  `pproduct_quantity` bigint(20) NOT NULL,
  `plasticc_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_plasticproduct`
--

INSERT INTO `ep_plasticproduct` (`id`, `pproduct_name`, `pproduct_date`, `pproduct_price`, `pproduct_image`, `pproduct_quantity`, `plasticc_id_id`) VALUES
(1, 'Crush Plastic ', '2021-04-07 18:30:00.000000', 50, 'pproductimg/Natural_Plastic_crushed_EXjQUGB_xSP34mZ.jpg', 400, 1),
(2, 'Multi Color Scrape Plastic', '2021-04-14 18:30:00.000000', 60, 'pproductimg/scrape_plastic_rU96u2H.jpeg', 1235, 1),
(3, 'Multi Color Plastic Cups', '2021-04-13 18:30:00.000000', 20, 'pproductimg/multi_color_plastic_cup_uIm24lC.jpg', 255, 1),
(4, 'Plastic Cas', '2021-04-14 06:52:40.561513', 10, 'pproductimg/Plasticc_Case_UVx8K9z.jpg', 318, 1),
(5, 'Minor Crush Plastic ', '2021-04-14 07:06:18.104057', 25, 'pproductimg/Minor_Crushed_Plastic_na1OnWx_Nyau5iP.jpg', 936, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ep_plasticrequest`
--

CREATE TABLE `ep_plasticrequest` (
  `id` int(11) NOT NULL,
  `request_date` datetime(6) NOT NULL,
  `request_quantity` bigint(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `comp_id_id` int(11) NOT NULL,
  `plasticc_id_id` int(11) NOT NULL,
  `pproduct_id_id` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `transaction_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_plasticrequest`
--

INSERT INTO `ep_plasticrequest` (`id`, `request_date`, `request_quantity`, `status`, `comp_id_id`, `plasticc_id_id`, `pproduct_id_id`, `payment_status`, `transaction_id_id`) VALUES
(1, '2021-04-07 18:30:00.000000', 4, 'pending', 2, 1, 1, 'pending', 19),
(2, '2021-04-14 18:30:00.000000', 81, 'Rejected', 1, 1, 5, 'pending', NULL),
(3, '2021-04-14 18:30:00.000000', 81, 'Accepted', 1, 1, 5, 'TXN_SUCCESS', 29),
(4, '2021-04-14 18:30:00.000000', 81, 'Rejected', 1, 1, 5, 'pending', NULL),
(5, '2021-04-13 18:30:00.000000', 3, 'pending', 1, 1, 4, 'pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ep_recycleproduct`
--

CREATE TABLE `ep_recycleproduct` (
  `id` int(11) NOT NULL,
  `rproduct_name` varchar(100) NOT NULL,
  `rproduct_date` datetime(6) NOT NULL,
  `rproduct_price` bigint(20) NOT NULL,
  `rproduct_image` varchar(100) NOT NULL,
  `rproduct_quantity` int(10) UNSIGNED NOT NULL,
  `rproduct_desc` varchar(500) NOT NULL,
  `company_id_id` int(11) NOT NULL
) ;

--
-- Dumping data for table `ep_recycleproduct`
--

INSERT INTO `ep_recycleproduct` (`id`, `rproduct_name`, `rproduct_date`, `rproduct_price`, `rproduct_image`, `rproduct_quantity`, `rproduct_desc`, `company_id_id`) VALUES
(1, 'Casset', '2021-04-07 18:30:00.000000', 50, 'rproductimg/Casset_j7MMRaf.webp', 448, '', 1),
(2, 'Plastic Lids', '2021-04-05 18:30:00.000000', 15, 'rproductimg/Plastic_Lids_TSGePgo.jpg', 828, 'This are adjustable lids that can easily fit according to your bottle size ', 1),
(3, 'Spoon', '2021-04-05 18:30:00.000000', 6, 'rproductimg/Plastic_Spoon_1B5lNXz.jpg', 87, 'This product is totally created from recycled plastic ', 2),
(4, 'Straws', '2021-04-06 18:30:00.000000', 12, 'rproductimg/Straws_Lql66wD.webp', 227, '', 2),
(10, 'Recycle Bin ', '2021-03-28 18:30:00.000000', 100, 'rproductimg/Recycle_Bin_bNx0qKM.png', 10, 'If you have plastic that can  be recycled then you can drop it into this for better discriminations of plastic that can be recycled and non recycling plastic product and this also helps you in such way that when Plastic collector arrives then you don\'t need to find here and there it will be in this bin. ', 1),
(14, 'Plastic Knob', '2021-03-30 18:30:00.000000', 16, 'rproductimg/PLastic_Knob_1L5w36y.jpg', 60, '', 1),
(15, 'Plastic Mirror Sheet', '2021-03-30 18:30:00.000000', 40, 'rproductimg/PLastic_Mirror_Sheet_qgnloYa.jpg', 4, 'This product is totally created from recycled plastic ', 1),
(18, 'Plastic Broom', '2021-04-14 18:30:00.000000', 20, 'rproductimg/Plastic_Broom_8G7LRFz.jpg', 0, 'It will help you to remove excess dirt that simply cant be drop to dustbin as a result neat and clean house   ', 1),
(19, 'Plastic Bottles', '2021-03-30 18:30:00.000000', 65, 'rproductimg/bottle_Ph9qPx8.webp', 4, 'Plastic bottle created from junk of recycled plastic products and this bottle is soo thick that one can not easily break it.', 2),
(21, 'Medicine Plastic Jar', '2021-03-28 18:30:00.000000', 15, 'rproductimg/jar_wXrG7V6.webp', 36, 'This plastic jar is completely safe for using as medicine container ', 2),
(22, 'Plastic Golves', '2021-04-06 18:30:00.000000', 20, 'rproductimg/Plastic_Gloves_pjkrTtH.jpg', 10, 'In recent time, due to this pandemic people have started using this plastic gloves but those are use and  throw but our product will help environment by recycling our plastic glove.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ep_scheduleorder`
--

CREATE TABLE `ep_scheduleorder` (
  `id` int(11) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_number` bigint(20) NOT NULL,
  `sc_date_time` datetime(6) NOT NULL,
  `sc_comment` varchar(200) NOT NULL,
  `pickup_status` varchar(50) NOT NULL,
  `cust_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_scheduleorder`
--

INSERT INTO `ep_scheduleorder` (`id`, `cust_name`, `cust_number`, `sc_date_time`, `sc_comment`, `pickup_status`, `cust_id_id`) VALUES
(1, 'Nihir Shah', 9429871452, '2021-04-15 05:35:00.000000', 'I have tones of plastic just sitting at mi home, it might help you guys', 'Accepted', 1),
(2, 'Nihir Shah', 9429871452, '2021-04-15 05:35:00.000000', 'I have Plenty of plastic with me it might help you guys to built some interesting item.', 'Accepted', 1),
(3, 'Nihir Shah', 9429871452, '2021-04-21 07:34:00.000000', 'Hope my plastic helps reduction for less plastic production  ', 'pending', 1),
(4, 'Kaivalya Ahir', 8980074028, '2021-04-18 21:35:00.000000', 'You guys are doing great job happy to help you', 'pending', 2),
(5, 'Kaivalya Ahir', 8980074028, '2021-04-17 09:42:00.000000', 'I see tones of plastic laying here and there, so I collected it, hope it helps you', 'Accepted', 2),
(6, 'Kaivalya Ahir', 8980074028, '2021-04-22 08:52:00.000000', 'Hope you follow Covid Protocol', 'Accepted', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ep_transaction`
--

CREATE TABLE `ep_transaction` (
  `id` int(11) NOT NULL,
  `made_on` datetime(6) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `checksum` varchar(100) DEFAULT NULL,
  `made_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ep_transaction`
--

INSERT INTO `ep_transaction` (`id`, `made_on`, `amount`, `order_id`, `checksum`, `made_by_id`) VALUES
(1, '2021-04-04 11:54:31.674078', 136, 'PAY2ME20210404ODR1', NULL, 3),
(2, '2021-04-04 11:55:29.289538', 136, 'PAY2ME20210404ODR2', NULL, 3),
(3, '2021-04-04 11:57:58.432509', 136, 'PAY2ME20210404ODR3', NULL, 3),
(4, '2021-04-04 12:02:26.556069', 136, 'PAY2ME20210404ODR4', 'vR33bd/Y8dd7mduh5YoiqeBXHg84aWU8GgvUKhJ33ykAZUN4fd7tyMkd3/JEEHfjK5C41rYN1xAhHTu9PxSZ89DbU1QgxWxtRGAk', 3),
(5, '2021-04-04 12:02:55.834741', 136, 'PAY2ME20210404ODR5', 'sGBV+oEdUxiORQAwrV0tlSmB4zj7LCfq5Z7jRQFjECn+dssWK3kjBxc6Yk2TH/ixC3/2PQTm8LCOhRJYR6GCZQ2XRdi1t5RNbynF', 3),
(6, '2021-04-04 12:03:32.278259', 136, 'PAY2ME20210404ODR6', 'I8AcboF5Gh1MMANQ7zbrIrQfrCLLDztvZAwXJa9nB45TvC7LvkHBD1vFjWpqfaVRvBcsHo2ByZzbQ/PhXypcYjlE43XAuUBAOKPt', 3),
(7, '2021-04-04 12:14:09.400798', 30, 'PAY2ME20210404ODR7', '3HcVgEbuVe+N+Ujg2zi39GZeIyf36w9jp72cVp1jfaNfPfxxTHyEu1zbsgnLl8nB48ZfugCeC+i/i4VFD66KLj6FG99DRcOBMnGo', 4),
(8, '2021-04-04 12:29:12.042084', 30, 'PAY2ME20210404ODR8', 'hFPBkZjy5PRyd0Psh+JZwMX/36msvubKOvzxJVYVjvimPyLiJQ+aIPeUoRppeyqyFnlzCpKljkxiyGC94hv6EF3zmcdnCfzngWvP', 4),
(9, '2021-04-04 12:29:57.973871', 24, 'PAY2ME20210404ODR9', '9L46Lm3Imab0K2id/IjCR/ArBGuDX+wbRTODTxP1P4x/alKMe+moKm8fFIHCFYON59zorICJGmFqoFIxSuUikQruBgTuXIPyW1M1', 4),
(10, '2021-04-04 12:30:07.177227', 24, 'PAY2ME20210404ODR10', 'ij1fFFdHXqKSU/tXC+BhUVGqyGp57FS4vacm7bDjnqHNF6DoOWpi9hB0wwCGQIlfUMq+5CJGjV8JSrKo9yrzqTlmjkLPRprB6v2R', 4),
(11, '2021-04-15 15:50:29.559722', 100, 'PAY2ME20210415ODR11', 'xYcpiU7MnElscfTzBph8ZrgvLBio6958mMnQNVka0Gc1bogNOHz88K+DbXjOVyYb0oN4RYgDQPPzjtUH7D/O33e0hfYLe3kpUVHR', 4),
(12, '2021-04-15 15:50:42.637558', 100, 'PAY2ME20210415ODR12', 'NHfuF1e04rr7++qeYWv1tf54yaxdp+usvk1hLY3F3ifrQbWpTLcHjiSAIOOJHh8q1fKFX9JhuZV0Q+a0ZP2hosXYXbU23zhJ21ZZ', 4),
(13, '2021-04-15 15:51:24.603030', 100, 'PAY2ME20210415ODR13', 'N2rjh1K+LFBYxTjlHSYr13pyVWggvQDKbNJthGzF9bKAzvg/25SBCMt4ZnxtMBdIyCwtBh21PC23RAyB0gJSa15jt+c0esK2u7D8', 4),
(14, '2021-04-15 15:52:12.642026', 100, 'PAY2ME20210415ODR14', 'k+ygwkEY8BgYa3ZcdRzxuDIgDHUcaiERJ7iHb91RSGPYWYXOkYzitsoSJZl+VLZQl7vVCwlYmOF3mLIMwDsFyFALHM1RPQ7rk90i', 4),
(15, '2021-04-15 15:54:29.487612', 100, 'PAY2ME20210415ODR15', 'PHtTH30YaDxmnlw/MmGFK2ufnfPFe0QuUltldsrrsqOkAvq3fgx67E9PaIlSgmnoqkzBv4JEnsY026V+qybQjRthz6cfFZcq/18x', 4),
(16, '2021-04-20 10:43:33.133920', 405, 'PAY2ME20210420ODR16', NULL, 1),
(17, '2021-04-20 10:45:18.314481', 405, 'PAY2ME20210420ODR17', NULL, 1),
(18, '2021-04-20 10:45:35.411755', 405, 'PAY2ME20210420ODR18', NULL, 1),
(19, '2021-04-20 10:46:43.490860', 405, 'PAY2ME20210420ODR19', 'P4U+Mw4qb9ttuSH0GeOgXyxhlmDuByFtsjec6HzxtK4TgASg22ww/IwwuYTkzQe9CK+dWcZg1Ephw2nCzvXg2SKpmwmsJfanzwdO', 1),
(20, '2021-04-21 13:10:03.988033', 389, 'PAY2ME20210421ODR20', 'Q7tA8OAnSTErLf8NnxAN3C2FsWm8wxWCuBZ6sALCezbfBYhXhMIElgM4CUdDY8Bwe0xTIVuYe2OCD60mHijOM8aTWca8zhNMZxr7', 3),
(21, '2021-04-22 07:55:33.388240', 500, 'PAY2ME20210422ODR21', 'CU0lhvE+OdpPMtdBNgyro+bdSc87yeIOm4xpYAf896zZlpGNIH+UWY9KuLz1Tl6mfbSvRW5L63mK9Uh2lSorGp5Yzbt2jGSHWkNr', 3),
(22, '2021-04-22 07:57:11.605867', 30, 'PAY2ME20210422ODR22', 'YDSGkDQxM70s6w4DMZO9U04UDroUqF9eBzQGXggccvjmDFveJ75Rm7PwMzIr/p5nV7nLCCL/zlqUOsOjKdqyfyXRWg9PgTS/MxmD', 3),
(23, '2021-04-22 09:49:15.548479', 100, 'PAY2ME20210422ODR23', 'OymKNOE/5kLCRkNcr+uelA/Tc56h60F4IqXz5/ml71n/Gk6b+X9s5PJ6dukY7ixk8rghhrlFMnq4FlpRy0Zs6LcpHnZ2xnAhphMm', 3),
(24, '2021-04-22 09:59:28.241889', 100, 'PAY2ME20210422ODR24', 's+ySCH29tfttUB8nPBO6tJanhdMjCtOHdbsjZrgrDZZ8AAceiNj71klc5wnPhbl00ipbh2cqa+ypbbr619GVvC4l9e8QtDf59GiL', 3),
(25, '2021-04-22 10:02:40.302707', 36, 'PAY2ME20210422ODR25', 'jBbnzQg2f4RCmpaccYuqjv5D0MFc/3jRFUXQ9PRaXFd0yR4ayDmoOjyMfMnIRCNUZH49SL9brSe/2UVxXyUSf/uxQrfDqMhtnYLZ', 3),
(26, '2021-04-22 10:03:08.495151', 360, 'PAY2ME20210422ODR26', 'b9RmGbD7lpAqcyuGu5iWiCeq9NsMp8y/rWF3RIQUyEGckVKUHIyjA2NjjjYsKQWBzRoqqlE/VByczBAz/xxGwi2Yj0Xy0tV9ghkN', 3),
(27, '2021-04-22 10:03:42.705788', 360, 'PAY2ME20210422ODR27', 'flF41xzjqWuYuRx1cUJmSauENVVtxOD7asVkl5O8XcYKn39zAamkBUbq2xzcPvTXdQ6bfnHo+VDZ4DjMq+LXZP4s9TQZOK75e1aK', 3),
(28, '2021-04-22 10:05:07.744806', 1000, 'PAY2ME20210422ODR28', '/GT802RN0CkbinTWADGt47a7wYmDbJD8Sc/t5QQ6euvWy1+Okq/BcgxBP/XSaE8brwnQHkEMIOdf/RkaWNgEcTQ+17IDpMLZkwky', 3),
(29, '2021-04-22 18:37:39.216261', 405, 'PAY2ME20210422ODR29', 'xw8r45rXnqSu9uPemhindtR4KohItv/MPUJtfmZgrMnF83EiPfLEeu4RaAOG8cIp8htqU0tpMmpp3vy4nGKKwuM6Siu9NweJ8GUI', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `ep_addtocart`
--
ALTER TABLE `ep_addtocart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_addtocart_company_id_id_996a94ef_fk_ep_company_id` (`company_id_id`),
  ADD KEY `ep_addtocart_cust_id_id_a0f20342_fk_ep_customer_id` (`cust_id_id`),
  ADD KEY `ep_addtocart_rp_id_id_31e59cf7_fk_ep_recycleproduct_id` (`rp_id_id`),
  ADD KEY `ep_addtocart_transaction_id_id_c80e5521_fk_ep_transaction_id` (`transaction_id_id`);

--
-- Indexes for table `ep_company`
--
ALTER TABLE `ep_company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_company_master_id_id_0baea115_fk_ep_master_id` (`master_id_id`);

--
-- Indexes for table `ep_customer`
--
ALTER TABLE `ep_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_customer_master_id_id_f4b19182_fk_ep_master_id` (`master_id_id`);

--
-- Indexes for table `ep_customerdata`
--
ALTER TABLE `ep_customerdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_customerdata_cust_id_id_763b9789_fk_ep_customer_id` (`cust_id_id`),
  ADD KEY `ep_customerdata_plastic_id_id_7a534b9c_fk_ep_plasticc_id` (`plastic_id_id`);

--
-- Indexes for table `ep_master`
--
ALTER TABLE `ep_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ep_order`
--
ALTER TABLE `ep_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_order_customer_id_id_36c43bef_fk_ep_customer_id` (`customer_id_id`),
  ADD KEY `ep_order_product_id_id_cdf0a5fd_fk_ep_recycleproduct_id` (`product_id_id`),
  ADD KEY `ep_order_transaction_id_id_3392c670_fk_ep_transaction_id` (`transaction_id_id`);

--
-- Indexes for table `ep_plasticc`
--
ALTER TABLE `ep_plasticc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_plasticc_master_id_id_831015b5_fk_ep_master_id` (`master_id_id`);

--
-- Indexes for table `ep_plasticdata`
--
ALTER TABLE `ep_plasticdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_recyclingdata_plastic_id_id_6aae0472_fk_ep_plasticc_id` (`plastic_id_id`),
  ADD KEY `ep_recyclingdata_rc_id_id_09ef33f7_fk_ep_company_id` (`rc_id_id`);

--
-- Indexes for table `ep_plasticproduct`
--
ALTER TABLE `ep_plasticproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_plasticproduct_plasticc_id_id_3f8d5e54_fk_ep_plasticc_id` (`plasticc_id_id`);

--
-- Indexes for table `ep_plasticrequest`
--
ALTER TABLE `ep_plasticrequest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_plasticrequest_comp_id_id_380e4e18_fk_ep_company_id` (`comp_id_id`),
  ADD KEY `ep_plasticrequest_plasticc_id_id_dd9e05ec_fk_ep_plasticc_id` (`plasticc_id_id`),
  ADD KEY `ep_plasticrequest_pproduct_id_id_c9f5171e_fk_ep_plasti` (`pproduct_id_id`),
  ADD KEY `ep_plasticrequest_transaction_id_id_f7d070c7_fk_ep_transa` (`transaction_id_id`);

--
-- Indexes for table `ep_recycleproduct`
--
ALTER TABLE `ep_recycleproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_recycleproduct_company_id_id_fd03cdf2_fk_ep_company_id` (`company_id_id`);

--
-- Indexes for table `ep_scheduleorder`
--
ALTER TABLE `ep_scheduleorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ep_scheduleorder_cust_id_id_b94bd707_fk_ep_customer_id` (`cust_id_id`);

--
-- Indexes for table `ep_transaction`
--
ALTER TABLE `ep_transaction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `ep_transaction_made_by_id_fe039c37_fk_ep_master_id` (`made_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ep_addtocart`
--
ALTER TABLE `ep_addtocart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ep_company`
--
ALTER TABLE `ep_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ep_customer`
--
ALTER TABLE `ep_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ep_customerdata`
--
ALTER TABLE `ep_customerdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ep_master`
--
ALTER TABLE `ep_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ep_order`
--
ALTER TABLE `ep_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ep_plasticc`
--
ALTER TABLE `ep_plasticc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ep_plasticdata`
--
ALTER TABLE `ep_plasticdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ep_plasticproduct`
--
ALTER TABLE `ep_plasticproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ep_plasticrequest`
--
ALTER TABLE `ep_plasticrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ep_recycleproduct`
--
ALTER TABLE `ep_recycleproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ep_scheduleorder`
--
ALTER TABLE `ep_scheduleorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ep_transaction`
--
ALTER TABLE `ep_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ep_addtocart`
--
ALTER TABLE `ep_addtocart`
  ADD CONSTRAINT `ep_addtocart_company_id_id_996a94ef_fk_ep_company_id` FOREIGN KEY (`company_id_id`) REFERENCES `ep_company` (`id`),
  ADD CONSTRAINT `ep_addtocart_cust_id_id_a0f20342_fk_ep_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `ep_customer` (`id`),
  ADD CONSTRAINT `ep_addtocart_rp_id_id_31e59cf7_fk_ep_recycleproduct_id` FOREIGN KEY (`rp_id_id`) REFERENCES `ep_recycleproduct` (`id`),
  ADD CONSTRAINT `ep_addtocart_transaction_id_id_c80e5521_fk_ep_transaction_id` FOREIGN KEY (`transaction_id_id`) REFERENCES `ep_transaction` (`id`);

--
-- Constraints for table `ep_company`
--
ALTER TABLE `ep_company`
  ADD CONSTRAINT `ep_company_master_id_id_0baea115_fk_ep_master_id` FOREIGN KEY (`master_id_id`) REFERENCES `ep_master` (`id`);

--
-- Constraints for table `ep_customer`
--
ALTER TABLE `ep_customer`
  ADD CONSTRAINT `ep_customer_master_id_id_f4b19182_fk_ep_master_id` FOREIGN KEY (`master_id_id`) REFERENCES `ep_master` (`id`);

--
-- Constraints for table `ep_customerdata`
--
ALTER TABLE `ep_customerdata`
  ADD CONSTRAINT `ep_customerdata_cust_id_id_763b9789_fk_ep_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `ep_customer` (`id`),
  ADD CONSTRAINT `ep_customerdata_plastic_id_id_7a534b9c_fk_ep_plasticc_id` FOREIGN KEY (`plastic_id_id`) REFERENCES `ep_plasticc` (`id`);

--
-- Constraints for table `ep_order`
--
ALTER TABLE `ep_order`
  ADD CONSTRAINT `ep_order_customer_id_id_36c43bef_fk_ep_customer_id` FOREIGN KEY (`customer_id_id`) REFERENCES `ep_customer` (`id`),
  ADD CONSTRAINT `ep_order_product_id_id_cdf0a5fd_fk_ep_recycleproduct_id` FOREIGN KEY (`product_id_id`) REFERENCES `ep_recycleproduct` (`id`),
  ADD CONSTRAINT `ep_order_transaction_id_id_3392c670_fk_ep_transaction_id` FOREIGN KEY (`transaction_id_id`) REFERENCES `ep_transaction` (`id`);

--
-- Constraints for table `ep_plasticc`
--
ALTER TABLE `ep_plasticc`
  ADD CONSTRAINT `ep_plasticc_master_id_id_831015b5_fk_ep_master_id` FOREIGN KEY (`master_id_id`) REFERENCES `ep_master` (`id`);

--
-- Constraints for table `ep_plasticdata`
--
ALTER TABLE `ep_plasticdata`
  ADD CONSTRAINT `ep_recyclingdata_plastic_id_id_6aae0472_fk_ep_plasticc_id` FOREIGN KEY (`plastic_id_id`) REFERENCES `ep_plasticc` (`id`),
  ADD CONSTRAINT `ep_recyclingdata_rc_id_id_09ef33f7_fk_ep_company_id` FOREIGN KEY (`rc_id_id`) REFERENCES `ep_company` (`id`);

--
-- Constraints for table `ep_plasticproduct`
--
ALTER TABLE `ep_plasticproduct`
  ADD CONSTRAINT `ep_plasticproduct_plasticc_id_id_3f8d5e54_fk_ep_plasticc_id` FOREIGN KEY (`plasticc_id_id`) REFERENCES `ep_plasticc` (`id`);

--
-- Constraints for table `ep_plasticrequest`
--
ALTER TABLE `ep_plasticrequest`
  ADD CONSTRAINT `ep_plasticrequest_comp_id_id_380e4e18_fk_ep_company_id` FOREIGN KEY (`comp_id_id`) REFERENCES `ep_company` (`id`),
  ADD CONSTRAINT `ep_plasticrequest_plasticc_id_id_dd9e05ec_fk_ep_plasticc_id` FOREIGN KEY (`plasticc_id_id`) REFERENCES `ep_plasticc` (`id`),
  ADD CONSTRAINT `ep_plasticrequest_pproduct_id_id_c9f5171e_fk_ep_plasti` FOREIGN KEY (`pproduct_id_id`) REFERENCES `ep_plasticproduct` (`id`),
  ADD CONSTRAINT `ep_plasticrequest_transaction_id_id_f7d070c7_fk_ep_transa` FOREIGN KEY (`transaction_id_id`) REFERENCES `ep_transaction` (`id`);

--
-- Constraints for table `ep_recycleproduct`
--
ALTER TABLE `ep_recycleproduct`
  ADD CONSTRAINT `ep_recycleproduct_company_id_id_fd03cdf2_fk_ep_company_id` FOREIGN KEY (`company_id_id`) REFERENCES `ep_company` (`id`);

--
-- Constraints for table `ep_scheduleorder`
--
ALTER TABLE `ep_scheduleorder`
  ADD CONSTRAINT `ep_scheduleorder_cust_id_id_b94bd707_fk_ep_customer_id` FOREIGN KEY (`cust_id_id`) REFERENCES `ep_customer` (`id`);

--
-- Constraints for table `ep_transaction`
--
ALTER TABLE `ep_transaction`
  ADD CONSTRAINT `ep_transaction_made_by_id_fe039c37_fk_ep_master_id` FOREIGN KEY (`made_by_id`) REFERENCES `ep_master` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
