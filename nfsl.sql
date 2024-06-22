-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2018 at 10:39 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nfsl`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `zipcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `city`, `state`, `zipcode`) VALUES
(1, 'Houston', 'Texas', 56545),
(2, 'PO Box 660675, Dallas', 'Texas', 135241),
(3, 'Astrin', 'Texas', 32322),
(4, 'Kalfi', 'Texas', 33555);

-- --------------------------------------------------------

--
-- Table structure for table `champions`
--

CREATE TABLE `champions` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `player_name` varchar(225) NOT NULL,
  `tournment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `champions`
--

INSERT INTO `champions` (`id`, `name`, `player_name`, `tournment_id`) VALUES
(1, 'kumar', 'kumar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `status` int(11) NOT NULL,
  `mobile` int(12) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`id`, `name`, `type`, `status`, `mobile`, `address_id`) VALUES
(1, 'kumar', 'Ofense', 1, 12355535, 4),
(2, 'Gani', 'Defense', 1, 31631561, 2);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`) VALUES
(3, 'bottom'),
(4, 'right'),
(1, 'upper'),
(2, 'westren');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `mobile` int(12) NOT NULL,
  `gender` varchar(224) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `division_name` varchar(225) NOT NULL,
  `address_id` int(11) NOT NULL,
  `player_status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `type`, `mobile`, `gender`, `salary_id`, `division_name`, `address_id`, `player_status`) VALUES
(1, 'Gani', 'Player', 1212121, 'male', 1, 'bottom', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `game_records`
--

CREATE TABLE `game_records` (
  `id` int(11) NOT NULL,
  `type` varchar(225) NOT NULL,
  `player_name` varchar(225) NOT NULL,
  `tournment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_records`
--

INSERT INTO `game_records` (`id`, `type`, `player_name`, `tournment_id`) VALUES
(1, 'player', 'kumar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `league_history`
--

CREATE TABLE `league_history` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `points` int(11) NOT NULL,
  `assist_mode` varchar(225) NOT NULL,
  `blocks` int(11) NOT NULL,
  `stops` int(11) NOT NULL,
  `score_attempts` int(11) NOT NULL,
  `lost_sportball` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_history`
--

INSERT INTO `league_history` (`id`, `name`, `points`, `assist_mode`, `blocks`, `stops`, `score_attempts`, `lost_sportball`) VALUES
(1, 'kumar', 12, 'on', 1, 1, 30, 10);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `status` int(11) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `mobile` int(12) NOT NULL,
  `team_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `status`, `gender`, `mobile`, `team_id`, `address_id`) VALUES
(1, 'venu', 1, 'male', 3131313, 1, 1),
(2, 'kumar', 1, 'male', 353656, 2, 2),
(3, 'Manoj', 1, 'male', 44566445, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `team_id` int(11) NOT NULL,
  `defense` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `team_id`, `defense`) VALUES
(1, 'OW', 1, 'bothside'),
(2, 'BC', 1, 'Not Allowed'),
(3, 'AB', 2, 'Allowed'),
(4, 'BG', 2, 'Allowed');

-- --------------------------------------------------------

--
-- Table structure for table `runners`
--

CREATE TABLE `runners` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `team_id` int(11) NOT NULL,
  `tournment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `runners`
--

INSERT INTO `runners` (`id`, `name`, `team_id`, `tournment_id`) VALUES
(1, 'gopi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `amount`) VALUES
(1, '12112121'),
(2, '646466'),
(3, '55666');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`) VALUES
(1, 'Team-A'),
(2, 'Team-B');

-- --------------------------------------------------------

--
-- Table structure for table `team_list`
--

CREATE TABLE `team_list` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_list`
--

INSERT INTO `team_list` (`id`, `team_id`, `player_id`) VALUES
(1, 2, 3),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tournments`
--

CREATE TABLE `tournments` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `place` varchar(225) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `team_id` int(11) NOT NULL,
  `division` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tournments`
--

INSERT INTO `tournments` (`id`, `name`, `place`, `start_time`, `end_time`, `team_id`, `division`) VALUES
(1, 'Tournment1', 'USA', '2018-10-23 05:14:14', '2018-10-31 08:19:20', 1, 'bottom');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `team_id` int(11) NOT NULL,
  `tournment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`id`, `name`, `team_id`, `tournment_id`) VALUES
(1, 'mani', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `champions`
--
ALTER TABLE `champions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salary_id` (`salary_id`),
  ADD UNIQUE KEY `address_id` (`address_id`),
  ADD KEY `division_name` (`division_name`);

--
-- Indexes for table `game_records`
--
ALTER TABLE `game_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_name` (`player_name`),
  ADD KEY `tournment_id` (`tournment_id`);

--
-- Indexes for table `league_history`
--
ALTER TABLE `league_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `runners`
--
ALTER TABLE `runners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `tournment_id` (`tournment_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_list`
--
ALTER TABLE `team_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `player_id` (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `tournments`
--
ALTER TABLE `tournments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division` (`division`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tournment_id` (`tournment_id`),
  ADD KEY `team_id` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `champions`
--
ALTER TABLE `champions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `game_records`
--
ALTER TABLE `game_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `league_history`
--
ALTER TABLE `league_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `runners`
--
ALTER TABLE `runners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_list`
--
ALTER TABLE `team_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tournments`
--
ALTER TABLE `tournments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `add_id_ref` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `division_name_ref` FOREIGN KEY (`division_name`) REFERENCES `divisions` (`name`),
  ADD CONSTRAINT `sal_id_ref` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`id`);

--
-- Constraints for table `game_records`
--
ALTER TABLE `game_records`
  ADD CONSTRAINT `player_name_ref` FOREIGN KEY (`player_name`) REFERENCES `players` (`name`),
  ADD CONSTRAINT `tournment_id_ref` FOREIGN KEY (`tournment_id`) REFERENCES `tournments` (`id`);

--
-- Constraints for table `league_history`
--
ALTER TABLE `league_history`
  ADD CONSTRAINT `play_name_ref` FOREIGN KEY (`name`) REFERENCES `players` (`name`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `player_address_id_ref` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `player_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `team_list`
--
ALTER TABLE `team_list`
  ADD CONSTRAINT `team_list_palyer_id_ref` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_list_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `tournments`
--
ALTER TABLE `tournments`
  ADD CONSTRAINT `tournment_division_name_ref` FOREIGN KEY (`division`) REFERENCES `divisions` (`name`),
  ADD CONSTRAINT `tournment_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `winners`
--
ALTER TABLE `winners`
  ADD CONSTRAINT `winners_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `winners_tournment_id_ref` FOREIGN KEY (`tournment_id`) REFERENCES `tournments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
