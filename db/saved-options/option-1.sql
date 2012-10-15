-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysql.jenandbenswedding.com
-- Generation Time: Oct 15, 2012 at 06:27 AM
-- Server version: 5.1.53
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wedding_tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodies`
--

CREATE TABLE IF NOT EXISTS `bodies` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` int(255) unsigned NOT NULL DEFAULT '1',
  `display_order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `bodies`
--

INSERT INTO `bodies` (`id`, `name`, `group_id`, `display_order`) VALUES
(1, 'Lee Keenan', 4, 4),
(2, 'Chelsea Keenan', 4, 5),
(3, 'Chris Plevin', 2, 1),
(4, 'Carly Magill', 2, 2),
(5, 'Scotty Iseri', 4, 7),
(6, 'Lori Van Deman-Iseri', 4, 6),
(7, 'Joe Soldevere', 5, 1),
(8, 'Lauren Oster', 5, 0),
(9, 'Callie Schieffer', 6, 5),
(10, 'Lucas Merino', 4, 0),
(11, 'Mandy Merino', 4, 1),
(12, 'Eva Wilhelm', 7, 0),
(13, 'Rich Pianka', 7, 1),
(14, 'Dan Truog', 2, 6),
(15, 'Doug Frazer', 11, 2),
(16, 'Krista Smith', 11, 3),
(17, 'Jon Faris', 2, 0),
(18, 'Stephanie Faris', 2, 3),
(19, 'James Douglas', 6, 0),
(20, 'Julie Douglas', 6, 1),
(21, 'Steve Plevin', 9, 9),
(22, 'Cindy Plevin', 7, 8),
(23, 'Nick Heldt', 7, 9),
(24, 'Laura Golombek', 6, 4),
(25, 'Chris Ohlemacher', 6, 3),
(26, 'Joe Stoltz', 4, 3),
(27, 'Anne-Michelle Friedman', 4, 2),
(28, 'Justin Palmer', 4, 8),
(29, 'Kathryn Hribar', 4, 9),
(30, 'Nick Sprouffske', 6, 2),
(31, 'Shane Newbill', 6, 7),
(32, 'Hannah Read', 6, 6),
(33, 'Josh Kobrin', 5, 3),
(34, 'Mari Webel', 5, 2),
(35, 'Paul Kerschen', 5, 6),
(36, 'Jessie Ferguson', 5, 7),
(37, 'Grant Shirk', 5, 5),
(38, 'Valerie Shirk', 5, 4),
(39, 'Cynthia Shih', 11, 4),
(40, 'Jacob Corvidae', 11, 5),
(41, 'David Weekly', 11, 6),
(42, 'Rebecca Lipon', 11, 7),
(43, 'Mark Witteveen', 2, 5),
(44, 'Collette Pollard', 2, 4),
(45, 'Megan Hug', 7, 4),
(46, 'Jorge Duran Rubio', 7, 5),
(47, 'Steve Hug', 8, 5),
(48, 'Julie Hug', 8, 6),
(49, 'Don Hug', 8, 9),
(50, 'Jennifer Hug', 10, 1),
(51, 'Eric Osterheldt', 10, 3),
(52, 'Sally Schnellinger', 10, 0),
(53, 'John Hug', 8, 4),
(54, 'Katie Hug', 8, 0),
(55, 'Greg Hand', 8, 2),
(56, 'Lisa Hug', 8, 7),
(57, 'Brett Middendorf', 7, 7),
(58, 'Lindsay Middendorf', 7, 6),
(59, 'Maggie Eberly', 8, 8),
(60, 'Zac Hug', 7, 2),
(61, 'Eric Brassard', 7, 3),
(62, 'Abigail Eberly', 10, 6),
(63, 'Jacqueline Hug', 10, 4),
(64, 'Trevor Rood', 10, 5),
(65, 'Molly Eberly', 10, 2),
(66, 'Lois Hug', 8, 1),
(67, 'Dolores Hand', 8, 3),
(70, 'John Wilhelm', 9, 7),
(71, 'Michele Wilhelm', 9, 8),
(72, 'Robert Gadda', 10, 8),
(73, 'Alix Aylen', 10, 9),
(74, 'Matt Gadda', 3, 6),
(75, 'Carrie Gadda', 3, 5),
(76, 'Chris Gadda', 3, 0),
(77, 'Teresa Gadda', 3, 1),
(78, 'David Gadda', 9, 0),
(79, 'Cece Gadda', 9, 1),
(80, 'Dean Gadda', 3, 7),
(81, 'Jenny Gadda', 3, 8),
(82, 'Marie Gadda', 10, 7),
(83, 'Paul Morken, Jr.', 9, 5),
(84, 'Susan Morken', 9, 6),
(85, 'Paul Morken III', 9, 4),
(86, 'Rose Miller', 3, 4),
(87, 'Kathleen Lyon', 9, 2),
(88, 'Emily Gutman', 12, 2),
(89, '2nd photog', 12, 3),
(90, 'Rinabeth Apostol', 12, 4),
(91, 'Nati', 12, 5),
(92, 'Theresa Ellis', 9, 3),
(93, 'Sam Misner', 12, 0),
(94, 'Megan Smith', 12, 1),
(98, 'Yenny', 3, 3),
(99, 'Daniel Heath', 11, 1),
(100, 'Anna Bullard', 11, 0),
(101, '**Geneva Gadda**', 3, 2);

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

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Unassigned'),
(2, 'Table 1'),
(3, 'Table 2'),
(4, 'Table 3'),
(5, 'Table 4'),
(6, 'Table 5'),
(7, 'Table 6'),
(8, 'Table 7'),
(9, 'Table 8'),
(10, 'Table 9'),
(11, 'Table 10'),
(12, 'Table 11');
