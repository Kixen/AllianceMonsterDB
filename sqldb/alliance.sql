-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: May 15, 2018 at 10:06 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `alliance`
--

-- --------------------------------------------------------

--
-- Table structure for table `Monsters`
--

CREATE TABLE `Monsters` (
  `id` int(11) NOT NULL,
  `chapter` varchar(15) NOT NULL,
  `name` varchar(75) NOT NULL,
  `ace` int(4) NOT NULL,
  `what_see` text NOT NULL,
  `appearance` mediumtext NOT NULL,
  `points_total` int(5) NOT NULL,
  `armor` varchar(75) NOT NULL,
  `threshold` int(3) NOT NULL,
  `intelligence` enum('Low','Normal','High','Animal','Genius','Mindless') DEFAULT NULL,
  `spell_pyramid` varchar(100) NOT NULL,
  `strength` int(3) NOT NULL,
  `rips` varchar(100) NOT NULL,
  `rips_weak` varchar(100) NOT NULL,
  `weapons` varchar(75) NOT NULL,
  `dmg_oneh` int(3) NOT NULL,
  `dmg_twoh` int(3) NOT NULL,
  `carrier` varchar(25) NOT NULL,
  `offensive` text NOT NULL,
  `defensive` text NOT NULL,
  `vulnerabilities` text NOT NULL,
  `skills` text NOT NULL,
  `rank` varchar(50) NOT NULL,
  `creature_type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Monsters`
--

INSERT INTO `Monsters` (`id`, `chapter`, `name`, `ace`, `what_see`, `appearance`, `points_total`, `armor`, `threshold`, `intelligence`, `spell_pyramid`, `strength`, `rips`, `rips_weak`, `weapons`, `dmg_oneh`, `dmg_twoh`, `carrier`, `offensive`, `defensive`, `vulnerabilities`, `skills`, `rank`, `creature_type`) VALUES
(1, 'BASE', 'Bugbear, Grunt', 3, 'Large, green, shaggy biped.', 'Green makeup with black facial hair makeup.', 20, 'Must Wear Rep', 0, 'Normal', 'As skills', 2, 'Entangle, Slow, Repel', 'None', 'Weapon (Any)', 4, 5, 'Normal', 'None.', 'None.', 'Double damage from lightning.', 'Weapon master. Style master.', 'Fodder(Lesser)', 'Goblinoid'),
(2, 'BASE', 'Bugbear, Elite', 4, 'Large, green, shaggy biped.', 'Green makeup with black facial hair makeup.', 20, 'Must Wear Rep', 0, 'Normal', 'As skills', 2, 'Entangle, Slow, Repel', 'None', 'Weapon (Any)', 4, 5, 'Normal', 'Magic Bind x2.', 'None.', 'Double damage from lightning.', '"Weapon master. Style master. Read and write. First aid. Healing arts."', 'Minion(Greater)', 'Goblinoid'),
(3, 'BASE', 'Bugbear, Savant of the Lash', 8, 'Large, green, shaggy biped.', 'Green makeup with black facial hair makeup.', 35, 'Must Wear Rep', 0, 'Normal', '8-7-6-5-4-3-2 (earth)', 3, 'Entangle, Slow, Repel, Bind', 'None', 'Weapon (Any)', 5, 6, 'Normal', 'Magic Bind x2.', 'None.', 'Double damage from lightning.', '', 'Minion(Greater)', 'Goblinoid'),
(5, 'LARP', 'test dude', 1, 'cool guy', 'super hot', 2, 'The best', 2, 'Genius', 'all spells ever', 9000, 'always ripped', 'never weak', 'all weapons and all claws', 9000, 9001, 'super sayin', 'kaioken', 'sjlfja', 'none', 'all skills possible', '9000', 'God of gods');

-- --------------------------------------------------------

--
-- Table structure for table `monsters_with_id`
--

CREATE TABLE `monsters_with_id` (
  `id` int(4) NOT NULL,
  `chapter` varchar(25) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ace` int(4) NOT NULL,
  `what_do_i_see` mediumtext NOT NULL,
  `appearance_notes` mediumtext NOT NULL,
  `total_points` int(4) NOT NULL,
  `armor` varchar(75) NOT NULL,
  `threshold` int(3) NOT NULL,
  `intelligence` varchar(100) NOT NULL,
  `spell_pyramid` varchar(100) NOT NULL,
  `strength_bonus` int(4) NOT NULL,
  `rips_from` text NOT NULL,
  `rips_from_when_weaknessed` text NOT NULL,
  `weapons_and_claws` varchar(100) NOT NULL,
  `damage_one_hand` int(4) NOT NULL,
  `damage_two_hand` int(4) NOT NULL,
  `carrier` varchar(50) NOT NULL,
  `offensive_abilities` text NOT NULL,
  `defensive_abilities` text NOT NULL,
  `vulnerabilities` text NOT NULL,
  `skills` text NOT NULL,
  `rank` varchar(75) NOT NULL,
  `creature_type` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Monsters`
--
ALTER TABLE `Monsters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Monsters`
--
ALTER TABLE `Monsters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;