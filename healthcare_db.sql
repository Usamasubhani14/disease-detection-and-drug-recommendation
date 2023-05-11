-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 03:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare_db`
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
  `id` bigint(20) NOT NULL,
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add medical', 7, 'add_medical'),
(26, 'Can change medical', 7, 'change_medical'),
(27, 'Can delete medical', 7, 'delete_medical'),
(28, 'Can view medical', 7, 'view_medical'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile'),
(33, 'Can add ment', 9, 'add_ment'),
(34, 'Can change ment', 9, 'change_ment'),
(35, 'Can delete ment', 9, 'delete_ment'),
(36, 'Can view ment', 9, 'view_ment');

-- --------------------------------------------------------

--
-- Table structure for table `core_medical`
--

CREATE TABLE `core_medical` (
  `id` bigint(20) NOT NULL,
  `s1` varchar(200) NOT NULL,
  `s2` varchar(200) NOT NULL,
  `s3` varchar(200) NOT NULL,
  `s4` varchar(200) NOT NULL,
  `s5` varchar(200) NOT NULL,
  `disease` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_medical`
--

INSERT INTO `core_medical` (`id`, `s1`, `s2`, `s3`, `s4`, `s5`, `disease`, `medicine`, `created_on`, `doctor_id`, `patient_id`) VALUES
(1, 'vomiting', 'shivering', 'muscle_pain', 'headache', 'diarrhoea', 'Malaria', 'Zerograin 10mg Tablet 10\'S', '2022-08-03 22:35:59.431099', NULL, 5),
(2, 'vomiting', 'headache', 'muscle_pain', 'shivering', 'diarrhoea', 'Malaria', 'Zerograin 10mg Tablet 10\'S', '2022-08-03 23:16:34.229659', NULL, 7),
(3, 'acidity', 'acute_liver_failure', 'altered_sensorium', 'anxiety', 'belly_pain', 'Paralysis (brain hemorrhage)', 'See Doctor', '2022-08-05 01:10:21.932203', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_ment`
--

CREATE TABLE `core_ment` (
  `id` bigint(20) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `time` varchar(200) DEFAULT NULL,
  `ment_day` datetime(6) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `doctor_id` bigint(20) DEFAULT NULL,
  `medical_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_ment`
--

INSERT INTO `core_ment` (`id`, `approved`, `time`, `ment_day`, `created_on`, `doctor_id`, `medical_id`, `patient_id`) VALUES
(1, 1, '11AM', '2022-08-05 00:00:00.000000', '2022-08-03 23:30:48.483524', 2, 2, 7),
(2, 1, '11AM', '2022-08-05 00:00:00.000000', '2022-08-05 01:11:08.656926', 2, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_profile`
--

CREATE TABLE `core_profile` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `region` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_profile`
--

INSERT INTO `core_profile` (`id`, `avatar`, `birth_date`, `region`, `gender`, `country`, `user_id`) VALUES
(4, 'profile/avator.png', '1998-04-12', '', 'Male', 'Pakistan', 5),
(5, 'profile/avator.png', '1999-11-12', 'South Asia', 'Male', 'Pakistan', 7);

-- --------------------------------------------------------

--
-- Table structure for table `core_user`
--

CREATE TABLE `core_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_patient` tinyint(1) NOT NULL,
  `is_doctor` tinyint(1) NOT NULL,
  `phonenumber` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_user`
--

INSERT INTO `core_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_patient`, `is_doctor`, `phonenumber`) VALUES
(1, 'pbkdf2_sha256$320000$VlHDTmfgTjhPFkxz5JtJXz$kGQbdj52lpKcDB7UW4LnpT5OlbqpX1pC/H5wGV7DwuY=', '2022-08-05 01:22:24.881763', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-08-02 20:11:03.218100', 0, 0, NULL),
(2, 'pbkdf2_sha256$320000$jIAd9OCFatJrycM03PU8Pp$qgRRQXJg6vIlTHEXAFQudNOt4TE36cu09F5VGOLK0OA=', '2022-08-05 01:21:36.409364', 0, 'usama', 'Usama', 'Subhani', 'usamasubhani@gmail.com', 0, 1, '2022-08-02 20:14:43.000000', 0, 1, '+923350616908'),
(3, '123ab', NULL, 0, 'absar', 'Absar', 'Tariq', 'absar@gmail.com', 0, 1, '2022-08-02 20:15:11.000000', 1, 0, '+923004900662'),
(4, 'pbkdf2_sha256$320000$AAfRQkfnTBVbYaLgZRWlBG$cxuQRlDIqnQKuARpuxd79dcIg0Lzxlm950fPGIkbBQ4=', NULL, 0, 'Shahzaib', '', '', 'bhatti@gmail.com', 0, 1, '2022-08-02 21:22:27.070748', 1, 0, NULL),
(5, 'pbkdf2_sha256$320000$jIAd9OCFatJrycM03PU8Pp$qgRRQXJg6vIlTHEXAFQudNOt4TE36cu09F5VGOLK0OA=', '2022-08-05 01:12:58.142095', 0, 'shah', '', '', 's@gmail.com', 0, 1, '2022-08-02 21:38:37.402888', 1, 0, NULL),
(6, 'pbkdf2_sha256$320000$dqVGUwNOUDfs4n91BTPf4i$3d2nOWEXon/dV2Y0xiVl8wO/9hJqtklyqSMtvGPfTgc=', NULL, 0, 'ferjad', '', '', 'ferjad@gmail.com', 0, 1, '2022-08-03 00:05:43.552224', 1, 0, NULL),
(7, 'pbkdf2_sha256$320000$ab5hrdjqEIFfbGqn5E9DsP$fKZiX95Y65RtSjwPBUTzwHbR6z25sU9BmD1RhO92vvA=', '2022-08-04 15:51:28.280593', 0, 'ali', '', '', 'ali@gmail.com', 0, 1, '2022-08-03 23:15:38.305476', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-08-02 20:15:07.156978', '2', 'usama', 1, '[{\"added\": {}}]', 6, 1),
(2, '2022-08-02 20:15:40.121734', '3', 'absar', 1, '[{\"added\": {}}]', 6, 1),
(3, '2022-08-02 20:16:07.053480', '3', 'absar', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(4, '2022-08-02 20:16:15.287156', '2', 'usama', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(5, '2022-08-02 20:17:25.367319', '2', 'usama', 2, '[]', 6, 1),
(6, '2022-08-02 21:41:15.137826', '2', 'usama', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 6, 1),
(7, '2022-08-02 21:45:23.296368', '2', 'usama', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 6, 1),
(8, '2022-08-02 21:45:49.622705', '2', 'usama', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 6, 1),
(9, '2022-08-02 21:46:05.424582', '3', 'absar', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Active\"]}}]', 6, 1),
(10, '2022-08-02 21:46:52.184090', '3', 'absar', 2, '[{\"changed\": {\"fields\": [\"Active\"]}}]', 6, 1),
(11, '2022-08-04 15:12:37.764455', '2', 'usama', 2, '[{\"changed\": {\"fields\": [\"Password\"]}}]', 6, 1);

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
(4, 'contenttypes', 'contenttype'),
(7, 'core', 'medical'),
(9, 'core', 'ment'),
(8, 'core', 'profile'),
(6, 'core', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-02 20:07:11.940307'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-08-02 20:07:11.991364'),
(3, 'auth', '0001_initial', '2022-08-02 20:07:12.172850'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-08-02 20:07:12.210672'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-08-02 20:07:12.218232'),
(6, 'auth', '0004_alter_user_username_opts', '2022-08-02 20:07:12.224229'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-08-02 20:07:12.232912'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-08-02 20:07:12.234909'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-08-02 20:07:12.242904'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-08-02 20:07:12.250544'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-08-02 20:07:12.257669'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-08-02 20:07:12.273362'),
(13, 'auth', '0011_update_proxy_permissions', '2022-08-02 20:07:12.280288'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-08-02 20:07:12.286600'),
(15, 'core', '0001_initial', '2022-08-02 20:07:12.788235'),
(16, 'admin', '0001_initial', '2022-08-02 20:07:12.887972'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-08-02 20:07:12.906525'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-02 20:07:12.919273'),
(19, 'sessions', '0001_initial', '2022-08-02 20:07:12.952848');

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
('bv75texjw8quxynb7fpu9oao8kvkwh9k', '.eJxVjEEOwiAQRe_C2pDCFAGX7nsGMsxMpWpoUtqV8e7apAvd_vfef6mE21rS1mRJE6uLMur0u2Wkh9Qd8B3rbdY013WZst4VfdCmh5nleT3cv4OCrXxr2wlFcdmM5EPvwTEFFymcUbyzI_YOcsw5IPgYGKzYDoCMGPDMxEa9P-jtOAo:1oJm2i:p7aBde_VFneuZyz75qZbYff4P-5gEwR4sEQUrR5KzhQ', '2022-08-19 01:22:24.885145');

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
-- Indexes for table `core_medical`
--
ALTER TABLE `core_medical`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_medical_doctor_id_3d50ad37_fk_core_user_id` (`doctor_id`),
  ADD KEY `core_medical_patient_id_5344c821_fk_core_user_id` (`patient_id`);

--
-- Indexes for table `core_ment`
--
ALTER TABLE `core_ment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ment_doctor_id_60a15865_fk_core_user_id` (`doctor_id`),
  ADD KEY `core_ment_medical_id_f2161916_fk_core_medical_id` (`medical_id`),
  ADD KEY `core_ment_patient_id_d91dbfa4_fk_core_user_id` (`patient_id`);

--
-- Indexes for table `core_profile`
--
ALTER TABLE `core_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `core_medical`
--
ALTER TABLE `core_medical`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_ment`
--
ALTER TABLE `core_ment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_profile`
--
ALTER TABLE `core_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
-- Constraints for table `core_medical`
--
ALTER TABLE `core_medical`
  ADD CONSTRAINT `core_medical_doctor_id_3d50ad37_fk_core_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `core_medical_patient_id_5344c821_fk_core_user_id` FOREIGN KEY (`patient_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_ment`
--
ALTER TABLE `core_ment`
  ADD CONSTRAINT `core_ment_doctor_id_60a15865_fk_core_user_id` FOREIGN KEY (`doctor_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `core_ment_medical_id_f2161916_fk_core_medical_id` FOREIGN KEY (`medical_id`) REFERENCES `core_medical` (`id`),
  ADD CONSTRAINT `core_ment_patient_id_d91dbfa4_fk_core_user_id` FOREIGN KEY (`patient_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_profile`
--
ALTER TABLE `core_profile`
  ADD CONSTRAINT `core_profile_user_id_bf8ada58_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
