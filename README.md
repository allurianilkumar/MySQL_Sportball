# MySQL_Sportball

Project 1 - Sportball

The national Fictional Sportball League(NFSL). It has two teams(TEAM#1 and TEAM#2). It has 40 minutes time of total(20min+20 min.). 
Highest score from 175 to 0.

The positions are 1.OW 2.BC 3.AB 4.BG

Division:
    1. Upper Division
    2. Western Division
    3. Bottom Division
    4. Right Division
    
Winners and runners are in tournament team.
Coaches are in two types 
1. Offense
2. Defense
Game tracking
    1. Points score
    2. Assists mode
    3. Blocks
    4. Stops
    5. Scoring attempts
    6. Lost sportballs

Normalization: “Normalization is a database design technique which organizes tables in a manner that reduces redundancy and dependency of data”.

1NF (First Normal Form) Rules
	Each table cell should contain a single value.
	Each record needs to be unique

Primary key:	
A primary key cannot be NULL, A primary key value must be unique
The primary key values cannot be changed, The primary key must be given a value when a new record is inserted

2NF (Second Normal Form) Rules
	Rule 1- Be in 1NF
	Rule 2- Single Column Primary Key

3NF (Third Normal Form) Rules
	Rule 1- Be in 2NF
	Rule 2- Has no transitive functional dependencies 

Database Creation:
                             As follow the bellow command.
create database nfsl

Screenshot:

Use the database by the following command:
use  nfsl
Creating a tables as follow.
Employee Table:
CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `mobile` int(12) NOT NULL,
  `gender`  varchar(224) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `division_name` varchar(225) NOT NULL,
  `address_id` int(11) NOT NULL,
  `player_status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `salary_id` (`salary_id`),
  ADD UNIQUE KEY `address_id` (`address_id`),
  ADD KEY `division_name` (`division_name`);
--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `add_id_ref` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `division_name_ref` FOREIGN KEY (`division_name`) REFERENCES `divisions` (`name`),
  ADD CONSTRAINT `sal_id_ref` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`id`);

--


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
-- Indexes for table `address`
--
ALTER TABLE `address`   ADD PRIMARY KEY (`id`);





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
-- Indexes for table `champions`
--
ALTER TABLE `champions`  ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` int(11) NOT NULL,
  `name`  varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `status` int(11) NOT NULL,
  `mobile` int(12) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`  ADD PRIMARY KEY (`id`);


-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);



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
-- Indexes for table `game_records`
--
ALTER TABLE `game_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_name` (`player_name`),
  ADD KEY `tournment_id` (`tournment_id`);
--
-- Constraints for table `game_records`
--
ALTER TABLE `game_records`
  ADD CONSTRAINT `player_name_ref` FOREIGN KEY (`player_name`) REFERENCES `players` (`name`),
  ADD CONSTRAINT `tournment_id_ref` FOREIGN KEY (`tournment_id`) REFERENCES `tournments` (`id`);

--


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
-- Indexes for table `league_history`
--
ALTER TABLE `league_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);
--
-- Constraints for table `league_history`
--
ALTER TABLE `league_history`
  ADD CONSTRAINT `play_name_ref` FOREIGN KEY (`name`) REFERENCES `players` (`name`);

--




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
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `address_id` (`address_id`);
--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `player_address_id_ref` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `player_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--


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
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Constraints for table `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);


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
-- Indexes for table `runners`
--
ALTER TABLE `runners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `tournment_id` (`tournment_id`);



-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






--
-- Indexes for table `salary`
--
ALTER TABLE `salary`  ADD PRIMARY KEY (`id`);




-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






--
-- Indexes for table `teams`
--
ALTER TABLE `teams`  ADD PRIMARY KEY (`id`);



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
-- Indexes for table `team_list`
--
ALTER TABLE `team_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `player_id` (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Constraints for table `team_list`
--
ALTER TABLE `team_list`
  ADD CONSTRAINT `team_list_palyer_id_ref` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `team_list_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);



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
-- Indexes for table `tournments`
--
ALTER TABLE `tournments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division` (`division`),
  ADD KEY `team_id` (`team_id`);

--
-- Constraints for table `tournments`
--
ALTER TABLE `tournments`
  ADD CONSTRAINT `tournment_division_name_ref` FOREIGN KEY (`division`) REFERENCES `divisions` (`name`),
  ADD CONSTRAINT `tournment_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--


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
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tournment_id` (`tournment_id`),
  ADD KEY `team_id` (`team_id`);
--
-- Constraints for table `winners`
--
ALTER TABLE `winners`
  ADD CONSTRAINT `winners_team_id_ref` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `winners_tournment_id_ref` FOREIGN KEY (`tournment_id`) REFERENCES `tournments` (`id`);
COMMIT;



Inserting the team table:
INSERT INTO `teams`(`id`, `name`) VALUES (1,'Team-A');
INSERT INTO `teams`(`id`, `name`) VALUES (2,'Team-B')


INSERT INTO `address`(`id`, `city`, `state`, `zipcode`) VALUES (1,'99 Trenton Dr.','Texas','78223')


INSERT INTO `address`(`id`, `city`, `state`, `zipcode`) VALUES (2,'848 Marconi Ave','Texas','75216')

Insert Player  names:
INSERT INTO `players` (`id`, `name`, `status`, `gender`, `mobile`, `team_id`, `address_id`)VALUES ('1', 'venu', '1', 'male', '3131313', '1', '1');



INSERT INTO `tournments` (`id`, `name`, `place`, `start_time`, `end_time`, `team_id`,`division`) VALUES ('1', 'Tournment1', 'USA', '2018-10-23 05:14:14', '2018-10-31 08:19:20','1', 'bottom');



How to know the league history?
SELECT `id`, `name`, `points`, `assist_mode`, `blocks`, `stops`, `score_attempts`, `lost_sportball` FROM `league_history` WHERE 1


How to find the place of a tournament?
SELECT place FROM `tournments` WHERE name like 'Tournment1'

Who has the best records, runners and winners?
SELECT `id`, `name`, `team_id`, `tournment_id` FROM `winners` WHERE 1




SELECT `id`, `name`, `team_id`, `tournment_id` FROM `runners` WHERE 1

