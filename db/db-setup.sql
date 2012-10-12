-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 11, 2012 at 07:57 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sandbox_groupme`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodies`
--

CREATE TABLE IF NOT EXISTS `bodies` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(255) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `bodies`
--

INSERT INTO `bodies` VALUES(1, 'Lee Keenan', 1);
INSERT INTO `bodies` VALUES(2, 'Chelsea Keenan', 1);
INSERT INTO `bodies` VALUES(3, 'Chris Plevin', 1);
INSERT INTO `bodies` VALUES(4, 'Carly Magill', 1);
INSERT INTO `bodies` VALUES(5, 'Scotty Iseri', 1);
INSERT INTO `bodies` VALUES(6, 'Lori Van Deman-Iseri', 1);
INSERT INTO `bodies` VALUES(7, 'Joe Soldevere', 1);
INSERT INTO `bodies` VALUES(8, 'Lauren Oster', 1);
INSERT INTO `bodies` VALUES(9, 'Callie Schieffer', 1);
INSERT INTO `bodies` VALUES(10, 'Lucas Merino', 1);
INSERT INTO `bodies` VALUES(11, 'Mandy Merino', 1);
INSERT INTO `bodies` VALUES(12, 'Eva Wilhelm', 1);
INSERT INTO `bodies` VALUES(13, 'Rich Pianka', 1);
INSERT INTO `bodies` VALUES(14, 'Dan Truog', 1);
INSERT INTO `bodies` VALUES(15, 'Doug Frazer', 1);
INSERT INTO `bodies` VALUES(16, 'Krista Smith', 1);
INSERT INTO `bodies` VALUES(17, 'Jon Faris', 1);
INSERT INTO `bodies` VALUES(18, 'Stephanie Faris', 1);
INSERT INTO `bodies` VALUES(19, 'James Douglas', 1);
INSERT INTO `bodies` VALUES(20, 'Julie Douglas', 1);
INSERT INTO `bodies` VALUES(21, 'Steve Plevin', 1);
INSERT INTO `bodies` VALUES(22, 'Cindy Plevin', 1);
INSERT INTO `bodies` VALUES(23, 'Plus 1 ', 1);
INSERT INTO `bodies` VALUES(24, 'Laura Golombek', 1);
INSERT INTO `bodies` VALUES(25, 'Chris Ohlemacher', 1);
INSERT INTO `bodies` VALUES(26, 'Joe Stoltz', 1);
INSERT INTO `bodies` VALUES(27, 'Anne-Michelle Friedman', 1);
INSERT INTO `bodies` VALUES(28, 'Justin Palmer', 1);
INSERT INTO `bodies` VALUES(29, 'Kathryn Hribar', 1);
INSERT INTO `bodies` VALUES(30, 'Nick Sprouffske', 1);
INSERT INTO `bodies` VALUES(31, 'Shane Newbill', 1);
INSERT INTO `bodies` VALUES(32, 'Hannah Read', 1);
INSERT INTO `bodies` VALUES(33, 'Josh Kobrin', 1);
INSERT INTO `bodies` VALUES(34, 'Mari Webel', 1);
INSERT INTO `bodies` VALUES(35, 'Paul Kerschen', 1);
INSERT INTO `bodies` VALUES(36, 'Jessie Ferguson', 1);
INSERT INTO `bodies` VALUES(37, 'Grant Shirk', 1);
INSERT INTO `bodies` VALUES(38, 'Valerie Shirk', 1);
INSERT INTO `bodies` VALUES(39, 'Cynthia Shih', 1);
INSERT INTO `bodies` VALUES(40, 'Jacob Corvidae', 1);
INSERT INTO `bodies` VALUES(41, 'David Weekly', 1);
INSERT INTO `bodies` VALUES(42, 'Rebecca Lipon', 1);
INSERT INTO `bodies` VALUES(43, 'Mark Witteveen', 1);
INSERT INTO `bodies` VALUES(44, 'Collette Pollard', 1);
INSERT INTO `bodies` VALUES(45, 'Megan Hug', 1);
INSERT INTO `bodies` VALUES(46, 'Jorge Duran Rubio', 1);
INSERT INTO `bodies` VALUES(47, 'Steve Hug', 1);
INSERT INTO `bodies` VALUES(48, 'Julie Hug', 1);
INSERT INTO `bodies` VALUES(49, 'Don Hug', 1);
INSERT INTO `bodies` VALUES(50, 'Jennifer Hug', 1);
INSERT INTO `bodies` VALUES(51, 'Eric Osterheldt', 1);
INSERT INTO `bodies` VALUES(52, 'Sally Schnellinger', 1);
INSERT INTO `bodies` VALUES(53, 'John Hug', 1);
INSERT INTO `bodies` VALUES(54, 'Katie Hug', 1);
INSERT INTO `bodies` VALUES(55, 'Greg Hand', 1);
INSERT INTO `bodies` VALUES(56, 'Lisa Hug', 1);
INSERT INTO `bodies` VALUES(57, 'Brett Middendorf', 1);
INSERT INTO `bodies` VALUES(58, 'Lindsay Middendorf', 1);
INSERT INTO `bodies` VALUES(59, 'Maggie Eberly', 1);
INSERT INTO `bodies` VALUES(60, 'Zac Hug', 1);
INSERT INTO `bodies` VALUES(61, 'Eric Brassard', 1);
INSERT INTO `bodies` VALUES(62, 'Abigail Eberly', 1);
INSERT INTO `bodies` VALUES(63, 'Jacqueline Hug', 1);
INSERT INTO `bodies` VALUES(64, 'Trevor Rood', 1);
INSERT INTO `bodies` VALUES(65, 'Molly Eberly', 1);
INSERT INTO `bodies` VALUES(66, 'Lois Hug', 1);
INSERT INTO `bodies` VALUES(67, 'Dolores Hand', 1);
INSERT INTO `bodies` VALUES(68, 'Joe Golombek', 1);
INSERT INTO `bodies` VALUES(69, 'Mary Beth Golombek', 1);
INSERT INTO `bodies` VALUES(70, 'John Wilhelm', 1);
INSERT INTO `bodies` VALUES(71, 'Michele Wilhelm', 1);
INSERT INTO `bodies` VALUES(72, 'Robert Gadda', 1);
INSERT INTO `bodies` VALUES(73, 'Alix Aylen', 1);
INSERT INTO `bodies` VALUES(74, 'Matt Gadda', 1);
INSERT INTO `bodies` VALUES(75, 'Carrie Gadda', 1);
INSERT INTO `bodies` VALUES(76, 'Chris Gadda', 1);
INSERT INTO `bodies` VALUES(77, 'Teresa Gadda', 1);
INSERT INTO `bodies` VALUES(78, 'David Gadda', 1);
INSERT INTO `bodies` VALUES(79, 'Cece Gadda', 1);
INSERT INTO `bodies` VALUES(80, 'Dean Gadda', 1);
INSERT INTO `bodies` VALUES(81, 'Jenny Gadda', 1);
INSERT INTO `bodies` VALUES(82, 'Marie Gadda', 1);
INSERT INTO `bodies` VALUES(83, 'Paul Morken, Jr.', 1);
INSERT INTO `bodies` VALUES(84, 'Susan Morken', 1);
INSERT INTO `bodies` VALUES(85, 'Paul Morken III', 1);
INSERT INTO `bodies` VALUES(86, 'Rose Miller', 1);
INSERT INTO `bodies` VALUES(87, 'Kathleen Lyon', 1);
INSERT INTO `bodies` VALUES(88, 'Emily Gutman', 1);
INSERT INTO `bodies` VALUES(89, 'and Guest', 1);
INSERT INTO `bodies` VALUES(90, 'Rinabeth Apostol', 1);
INSERT INTO `bodies` VALUES(91, 'Nati', 1);
INSERT INTO `bodies` VALUES(92, 'Theresa Ellis', 1);
INSERT INTO `bodies` VALUES(93, 'Sam Misner', 1);
INSERT INTO `bodies` VALUES(94, 'Megan Smith', 1);
INSERT INTO `bodies` VALUES(95, 'Karen Golombek', 1);
INSERT INTO `bodies` VALUES(96, 'Marie Gadda', 1);
INSERT INTO `bodies` VALUES(97, 'Robert Gadda', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` VALUES(1, 'Unassigned');
INSERT INTO `groups` VALUES(2, 'Table 1');
INSERT INTO `groups` VALUES(3, 'Table 2');
INSERT INTO `groups` VALUES(4, 'Table 3');
INSERT INTO `groups` VALUES(5, 'Table 4');
INSERT INTO `groups` VALUES(6, 'Table 5');
INSERT INTO `groups` VALUES(7, 'Table 6');
INSERT INTO `groups` VALUES(8, 'Table 7');
INSERT INTO `groups` VALUES(9, 'Table 8');
INSERT INTO `groups` VALUES(10, 'Table 9');
INSERT INTO `groups` VALUES(11, 'Table 10');
INSERT INTO `groups` VALUES(12, 'Table 11');
