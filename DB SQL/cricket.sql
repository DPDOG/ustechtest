-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2020 at 06:25 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add match', 7, 'add_match'),
(26, 'Can change match', 7, 'change_match'),
(27, 'Can delete match', 7, 'delete_match'),
(28, 'Can view match', 7, 'view_match'),
(29, 'Can add player', 8, 'add_player'),
(30, 'Can change player', 8, 'change_player'),
(31, 'Can delete player', 8, 'delete_player'),
(32, 'Can view player', 8, 'view_player'),
(33, 'Can add points table', 9, 'add_pointstable'),
(34, 'Can change points table', 9, 'change_pointstable'),
(35, 'Can delete points table', 9, 'delete_pointstable'),
(36, 'Can view points table', 9, 'view_pointstable'),
(37, 'Can add team', 10, 'add_team'),
(38, 'Can change team', 10, 'change_team'),
(39, 'Can delete team', 10, 'delete_team'),
(40, 'Can view team', 10, 'view_team');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'cricket', 'match'),
(8, 'cricket', 'player'),
(9, 'cricket', 'pointstable'),
(10, 'cricket', 'team'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-05 21:40:34.181433'),
(2, 'auth', '0001_initial', '2020-05-05 21:40:36.524762'),
(3, 'admin', '0001_initial', '2020-05-05 21:40:47.702842'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-05 21:40:50.590162'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-05 21:40:50.639805'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-05 21:40:52.313958'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-05 21:40:52.425074'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-05-05 21:40:53.022251'),
(9, 'auth', '0004_alter_user_username_opts', '2020-05-05 21:40:53.098968'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-05-05 21:40:54.191257'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-05-05 21:40:54.257062'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-05 21:40:54.335229'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-05-05 21:40:54.501568'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-05 21:40:54.724459'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-05-05 21:40:54.980117'),
(16, 'auth', '0011_update_proxy_permissions', '2020-05-05 21:40:55.080113'),
(17, 'sessions', '0001_initial', '2020-05-05 21:40:55.431232'),
(18, 'cricket', '0001_initial', '2020-05-05 22:18:09.141787');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE `match` (
  `id` int(11) NOT NULL,
  `match_title` varchar(255) NOT NULL,
  `match_date` varchar(255) NOT NULL,
  `match_team_one` int(11) NOT NULL,
  `match_team_two` int(11) NOT NULL,
  `match_winner` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`id`, `match_title`, `match_date`, `match_team_one`, `match_team_two`, `match_winner`, `is_active`, `created_date`) VALUES
(1, 'India Vs Pakistan', '06.05.2020', 1, 2, 1, 1, '2020-05-06 00:00:00.000000'),
(2, 'India Vs England', '06.05.2020', 1, 3, 1, 1, '2020-05-06 00:00:00.000000'),
(3, 'India Vs Australia', '06.05.2020', 1, 4, 1, 1, '2020-05-06 00:00:00.000000'),
(4, 'Pakistan Vs England', '06.05.2020', 2, 3, 2, 1, '2020-05-06 00:00:00.000000'),
(5, 'Pakistan Vs Australia', '06.05.2020', 2, 4, 4, 1, '2020-05-06 00:00:00.000000'),
(6, 'England vs Australia', '06.05.2020', 3, 4, 4, 1, '2020-05-06 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `image_uri` varchar(255) NOT NULL,
  `player_jursey_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `total_matches` varchar(255) NOT NULL,
  `total_run` varchar(255) NOT NULL,
  `highest_score` varchar(255) NOT NULL,
  `total_fifties` varchar(255) NOT NULL,
  `total_hundreds` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `first_name`, `last_name`, `image_uri`, `player_jursey_no`, `country`, `total_matches`, `total_run`, `highest_score`, `total_fifties`, `total_hundreds`, `is_active`, `created_date`) VALUES
(1, 'Sachin', 'Tendulakar', '/static/img/players/sachin.jpeg', '1', '1', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(2, 'Rohit', 'Sharma', '/static/img/players/rohit.jpeg', '2', '1', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(3, 'Virat', 'Kohli', '/static/img/players/kohli.jpeg', '1', '1', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(4, 'Ravindra', 'Jadega', '/static/img/players/jadeja.jpeg', '2', '1', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(5, 'Bumrah', '', '/static/img/players/bumrah.jpeg', '1', '1', '10', '400', '50', '5', '1', 1, '2020-05-06 00:00:00.000000'),
(6, 'Cahal', 'Sharma', '/static/img/players/chahal.jpeg', '2', '1', '100', '200', '10', '20', '111', 1, '2020-05-06 00:00:00.000000'),
(7, 'MS', 'Dhoni', '/static/img/players/dhoni.jpeg', '1', '1', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(8, 'Pandya', 'Jadega', '/static/img/players/pandya.jpeg', '2', '1', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(9, 'Ben', 'Stokes', '/static/img/players/stoks.jpeg', '1', '3', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(10, 'Joe', 'root', '/static/img/players/root.jpeg', '2', '3', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(11, 'Morgan', '', '/static/img/players/morgan.jpeg', '1', '3', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(12, 'Jos', 'Butlar', '/static/img/players/butlar.jpeg', '2', '3', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(13, 'Jonny', '', '/static/img/players/jonny.jpeg', '1', '3', '10', '400', '50', '5', '1', 1, '2020-05-06 00:00:00.000000'),
(14, 'Json', 'Roy', '/static/img/players/json.jpeg', '2', '3', '100', '200', '10', '20', '111', 1, '2020-05-06 00:00:00.000000'),
(15, 'Archar', 'Dhoni', '/static/img/players/archar.jpeg', '1', '3', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(16, 'Mark', 'Wood', '/static/img/players/morgan.jpeg', '2', '3', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(17, 'Steve', 'Smith', '/static/img/players/smith.jpeg', '1', '4', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(18, 'David', 'Warner', '/static/img/players/warner.jpeg', '2', '4', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(19, 'Glen', 'Maxwell', '/static/img/players/maxwell.jpeg', '1', '4', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(20, 'Aron', 'Finch', '/static/img/players/finch.jpeg', '2', '4', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(21, 'Mistell', 'Starc', '/static/img/players/starc.jpeg', '1', '4', '10', '400', '50', '5', '1', 1, '2020-05-06 00:00:00.000000'),
(22, 'Pat', '', '/static/img/players/pat.jpeg', '2', '4', '100', '200', '10', '20', '111', 1, '2020-05-06 00:00:00.000000'),
(23, 'Adam', '', '/static/img/players/adam.jpeg', '1', '4', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(24, 'Marcus', '', '/static/img/players/marcus.jpeg', '2', '4', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(25, 'Afridi', '', '/static/img/players/afridi.jpeg', '1', '2', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(26, 'Shoaib', 'Akhtar', '/static/img/players/akhtar.jpeg', '2', '2', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(27, 'Waseem', 'Akram', '/static/img/players/akram.jpeg', '1', '2', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(28, 'Al', 'Hasan', '/static/img/players/alhasan.jpeg', '2', '2', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000'),
(29, 'Shoib', 'Malik', '/static/img/players/malik.jpeg', '1', '2', '10', '400', '50', '5', '1', 1, '2020-05-06 00:00:00.000000'),
(30, 'Misbah', 'Ul-huk', '/static/img/players/masbah.jpeg', '2', '2', '100', '200', '10', '20', '111', 1, '2020-05-06 00:00:00.000000'),
(31, 'Wakar', 'Yunus', '/static/img/players/yunus.jpeg', '1', '2', '100', '10000', '190', '20', '400', 1, '2020-05-06 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `points_table`
--

CREATE TABLE `points_table` (
  `id` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `points_table`
--

INSERT INTO `points_table` (`id`, `team`, `points`, `is_active`, `created_date`) VALUES
(1, 1, 30, 1, '2020-05-06 00:00:00.000000'),
(2, 2, 10, 1, '2020-05-06 00:00:00.000000'),
(3, 3, 0, 1, '2020-05-06 00:00:00.000000'),
(4, 4, 20, 1, '2020-05-06 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo_uri` varchar(255) NOT NULL,
  `club_state` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `logo_uri`, `club_state`, `is_active`, `created_date`) VALUES
(1, 'India', '/static/img/country_flag/india.png', 'active', 1, '2020-05-06 00:00:00.000000'),
(2, 'Pakistan', '/static/img/country_flag/pakistan.png', 'active', 1, '2020-05-06 00:00:00.000000'),
(3, 'England', '/static/img/country_flag/england.png', 'active', 1, '2020-05-06 00:00:00.000000'),
(4, 'Australia', '/static/img/country_flag/australia.png', 'active', 1, '2020-05-06 00:00:00.000000');

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
-- Indexes for table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points_table`
--
ALTER TABLE `points_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `match`
--
ALTER TABLE `match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `points_table`
--
ALTER TABLE `points_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
