-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql200.epizy.com
-- Generation Time: Mar 06, 2023 at 11:39 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_33412476_thewtvlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `flist`
--

CREATE TABLE `flist` (
  `uid` int(10) NOT NULL,
  `sid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `glist`
--

CREATE TABLE `glist` (
  `Sid` int(2) NOT NULL,
  `Genre` varchar(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `glist`
--

INSERT INTO `glist` (`Sid`, `Genre`) VALUES
(0, 'Crime'),
(0, 'Drama'),
(0, 'Thriller'),
(1, 'Action'),
(1, 'Adventure'),
(1, 'Drama'),
(2, 'Action'),
(2, 'Adventure'),
(2, 'Fantasy'),
(3, 'Comedy'),
(3, 'Romance'),
(4, 'Crime'),
(4, 'Drama'),
(5, 'Comedy'),
(5, 'Drama'),
(5, 'Family'),
(6, 'Comedy'),
(7, 'Drama'),
(8, 'Adventure'),
(8, 'Drama'),
(8, 'Fantasy'),
(9, 'Drama'),
(9, 'Mystery'),
(9, 'Sci-Fi'),
(10, 'Drama'),
(10, 'Fantasy'),
(10, 'Horror'),
(11, 'Crime'),
(11, 'Drama'),
(11, 'Mystery'),
(12, 'Drama'),
(12, 'History'),
(12, 'Thriller'),
(13, 'Crime'),
(13, 'Drama'),
(14, 'Biography'),
(14, 'Crime'),
(14, 'Drama'),
(15, 'Animation'),
(15, 'Comedy'),
(16, 'Comedy'),
(17, 'Animation'),
(17, 'Comedy'),
(18, 'Crime'),
(18, 'Drama'),
(18, 'Thriller'),
(19, 'Action'),
(19, 'Drama'),
(19, 'Romance'),
(20, 'Adventure'),
(20, 'Animation'),
(20, 'Comedy'),
(21, 'Crime'),
(21, 'Drama'),
(21, 'Mystery'),
(22, 'Drama'),
(22, 'History'),
(22, 'War'),
(23, 'Action'),
(23, 'Adventure'),
(23, 'Drama'),
(24, 'Action'),
(24, 'Comedy'),
(24, 'Crime'),
(25, 'Comedy'),
(25, 'Drama'),
(25, 'Fantasy'),
(26, 'Action'),
(26, 'Crime'),
(26, 'Drama'),
(27, 'Comedy'),
(27, 'Romance'),
(28, 'Action'),
(28, 'Adventure'),
(28, 'Animation'),
(29, 'Action'),
(29, 'Drama'),
(29, 'Sci-Fi'),
(30, 'Biography'),
(30, 'Crime'),
(30, 'Drama'),
(31, 'Crime'),
(31, 'Drama'),
(31, 'Mystery'),
(32, 'Drama'),
(32, 'Horror'),
(32, 'Thriller'),
(33, 'Comedy'),
(33, 'Drama'),
(33, 'Sport'),
(34, 'Drama'),
(34, 'Sci-Fi'),
(34, 'Thriller'),
(35, 'Crime'),
(35, 'Drama'),
(35, 'Mystery'),
(36, 'Comedy'),
(36, 'Crime'),
(37, 'Animation'),
(37, 'Comedy'),
(38, 'Action'),
(38, 'Adventure'),
(38, 'Comedy'),
(39, 'Crime'),
(39, 'Drama'),
(39, 'Thriller'),
(40, 'Crime'),
(40, 'Drama'),
(41, 'Action'),
(41, 'Adventure'),
(41, 'Sci-Fi'),
(42, 'Adventure'),
(42, 'Animation'),
(42, 'Comedy'),
(43, 'Action'),
(43, 'Crime'),
(43, 'Drama'),
(44, 'Action'),
(44, 'Crime'),
(44, 'Drama'),
(45, 'Drama'),
(45, 'Mystery'),
(46, 'Drama'),
(46, 'Romance'),
(47, 'Comedy'),
(47, 'Romance'),
(48, 'Animation'),
(48, 'Comedy'),
(49, 'Crime'),
(49, 'Drama'),
(49, 'Thriller'),
(50, 'Action'),
(50, 'Drama'),
(50, 'Sci-Fi'),
(51, 'Action'),
(51, 'Drama'),
(51, 'Fantasy'),
(52, 'Animation'),
(52, 'Comedy'),
(52, 'Music'),
(53, 'Crime'),
(53, 'Drama'),
(53, 'Thriller'),
(54, 'Comedy'),
(55, 'Comedy'),
(56, 'Adventure'),
(56, 'Drama'),
(56, 'Family'),
(57, 'Action'),
(57, 'Adventure'),
(57, 'Drama'),
(58, 'Crime'),
(58, 'Drama'),
(58, 'Mystery'),
(59, 'Drama'),
(59, 'Mystery'),
(59, 'Sci-Fi'),
(60, 'Animation'),
(60, 'Comedy'),
(61, 'Crime'),
(61, 'Drama'),
(61, 'History'),
(62, 'Comedy'),
(62, 'Drama'),
(62, 'Romance'),
(63, 'Drama'),
(64, 'Adventure'),
(64, 'Animation'),
(64, 'Comedy'),
(65, 'Drama'),
(65, 'Horror'),
(65, 'Sci-Fi'),
(66, 'Action'),
(66, 'Adventure'),
(66, 'Crime'),
(67, 'Crime'),
(67, 'Drama'),
(67, 'Fantasy'),
(68, 'Drama'),
(68, 'Fantasy'),
(68, 'Sci-Fi'),
(69, 'Crime'),
(69, 'Drama'),
(69, 'Horror'),
(70, 'Adventure'),
(70, 'Animation'),
(70, 'Comedy'),
(71, 'Comedy'),
(71, 'Drama'),
(72, 'Drama'),
(72, 'Fantasy'),
(72, 'Horror'),
(73, 'Action'),
(73, 'Adventure'),
(73, 'Drama'),
(74, 'Action'),
(74, 'Adventure'),
(74, 'Biography'),
(75, 'Drama'),
(75, 'Fantasy'),
(75, 'Horror'),
(76, 'Comedy'),
(76, 'Romance'),
(77, 'Drama'),
(77, 'Fantasy'),
(77, 'Horror'),
(78, 'Drama'),
(78, 'Romance'),
(79, 'Action'),
(79, 'Crime'),
(79, 'Drama'),
(80, 'Action'),
(80, 'Drama'),
(80, 'Sci-Fi'),
(81, 'Action'),
(81, 'Crime'),
(81, 'Drama'),
(82, 'Action'),
(82, 'Adventure'),
(82, 'Crime'),
(83, 'Drama'),
(83, 'Mystery'),
(83, 'Thriller'),
(84, 'Action'),
(84, 'Crime'),
(84, 'Drama'),
(85, 'Action'),
(85, 'Drama'),
(85, 'Fantasy'),
(86, 'Drama'),
(86, 'Fantasy'),
(86, 'Mystery'),
(87, 'Animation'),
(87, 'Comedy'),
(87, 'Drama'),
(88, 'Comedy'),
(88, 'Drama'),
(88, 'Romance'),
(89, 'Drama'),
(90, 'Comedy'),
(91, 'Crime'),
(91, 'Drama'),
(91, 'Thriller'),
(92, 'Action'),
(92, 'Crime'),
(92, 'Drama'),
(93, 'Crime'),
(93, 'Drama'),
(93, 'Thriller'),
(94, 'Animation'),
(94, 'Comedy'),
(94, 'Family'),
(95, 'Action'),
(95, 'Crime'),
(95, 'Drama'),
(96, 'Comedy'),
(97, 'Action'),
(97, 'Drama'),
(97, 'Mystery'),
(98, 'Comedy'),
(98, 'Crime'),
(98, 'Fantasy'),
(99, 'Comedy'),
(99, 'Crime'),
(99, 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `mylistdb`
--

CREATE TABLE `mylistdb` (
  `uid` int(1) NOT NULL,
  `Sid` int(2) NOT NULL,
  `score` decimal(2,1) DEFAULT NULL,
  `type` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mylistdb`
--

INSERT INTO `mylistdb` (`uid`, `Sid`, `score`, `type`) VALUES
(0, 0, '9.5', 2),
(0, 1, '9.2', 2),
(0, 2, '8.7', 2),
(0, 3, '8.9', 2),
(0, 4, '9.2', 2),
(0, 5, '8.4', 2),
(0, 6, '8.9', 2),
(0, 7, '8.7', 2),
(0, 8, '8.3', 2),
(0, 9, '8.5', 2),
(0, 10, '8.7', 2),
(0, 11, '8.6', 2),
(0, 12, '9.4', 2),
(0, 13, '8.9', 2),
(0, 14, '8.8', 2),
(0, 15, '8.2', 2),
(0, 16, '8.6', 2),
(0, 17, '8.7', 2),
(0, 18, '9.3', 2),
(0, 19, '8.7', 2),
(0, 20, '9.1', 2),
(0, 21, '8.3', 2),
(0, 22, '9.4', 2),
(0, 23, '8.5', 2),
(0, 24, '8.7', 2),
(0, 25, '8.2', 2),
(0, 26, '8.4', 2),
(0, 27, '7.1', 2),
(0, 28, '8.4', 2),
(0, 29, '8.2', 2),
(0, 30, '8.4', 2),
(0, 31, '8.7', 2),
(0, 32, '8.1', 2),
(0, 33, '8.8', 2),
(0, 34, '8.4', 2),
(0, 35, '8.9', 2),
(0, 36, '8.4', 2),
(0, 37, '8.2', 2),
(0, 38, '7.9', 2),
(0, 39, '8.5', 2),
(0, 40, '8.6', 2),
(0, 41, '8.7', 2),
(0, 42, '7.9', 2),
(0, 43, '8.6', 2),
(0, 44, '8.3', 2),
(0, 45, '8.7', 2),
(0, 46, '7.9', 2),
(0, 47, '8.2', 2),
(0, 48, '8.7', 2),
(0, 49, '8.9', 2),
(0, 50, '6.9', 2),
(0, 51, '8.3', 2),
(0, 52, '7.5', 2),
(0, 53, '8.7', 2),
(0, 54, '9.0', 2),
(0, 55, '7.2', 2),
(0, 56, '7.8', 2),
(0, 57, '8.3', 2),
(0, 58, '8.1', 2),
(0, 59, '8.8', 2),
(0, 60, '7.4', 2),
(0, 61, '8.6', 2),
(0, 62, '8.1', 2),
(0, 63, '8.7', 2),
(0, 64, '7.5', 2),
(0, 65, '8.0', 2),
(0, 66, '5.4', 2),
(0, 67, '7.7', 2),
(0, 68, '7.5', 2),
(0, 69, '7.4', 2),
(0, 70, '8.5', 2),
(0, 71, '8.7', 2),
(0, 72, '8.2', 2),
(0, 73, '7.5', 2),
(0, 74, '8.5', 2),
(0, 75, '8.4', 2),
(0, 76, '8.3', 2),
(0, 77, '7.3', 2),
(0, 78, '6.5', 2),
(0, 79, '7.8', 2),
(0, 80, '7.9', 2),
(0, 81, '8.2', 2),
(0, 82, '7.7', 2),
(0, 83, '7.5', 2),
(0, 84, '8.5', 2),
(0, 85, '7.2', 2),
(0, 86, '7.9', 2),
(0, 87, '8.8', 2),
(0, 88, '8.5', 2),
(0, 89, '8.6', 2),
(0, 90, '8.7', 2),
(0, 91, '8.5', 2),
(0, 92, '7.3', 2),
(0, 93, '8.6', 2),
(0, 94, '8.2', 2),
(0, 95, '7.9', 2),
(0, 96, '7.9', 2),
(0, 97, '7.6', 2),
(0, 98, '8.0', 2),
(0, 99, '8.1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rlist`
--

CREATE TABLE `rlist` (
  `Sid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `review` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slist`
--

CREATE TABLE `slist` (
  `Sid` int(2) NOT NULL,
  `Sname` varchar(33) NOT NULL,
  `coverImg` varchar(156) DEFAULT NULL,
  `noOfSeason` int(2) DEFAULT NULL,
  `totalNoOfEp` int(3) DEFAULT NULL,
  `network` varchar(13) DEFAULT NULL,
  `ytbCode` varchar(11) DEFAULT NULL,
  `rating` float(2,1) DEFAULT NULL,
  `date` varchar(14) DEFAULT NULL,
  `producer` varchar(59) DEFAULT NULL,
  `director` varchar(59) DEFAULT NULL,
  `country` varchar(21) DEFAULT NULL,
  `lang` varchar(7) DEFAULT NULL,
  `description` varchar(297) DEFAULT NULL,
  `members` int(1) NOT NULL DEFAULT 0,
  `favCount` int(1) NOT NULL DEFAULT 0,
  `users` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slist`
--

INSERT INTO `slist` (`Sid`, `Sname`, `coverImg`, `noOfSeason`, `totalNoOfEp`, `network`, `ytbCode`, `rating`, `date`, `producer`, `director`, `country`, `lang`, `description`, `members`, `favCount`, `users`) VALUES
(0, 'Breaking Bad', 'https://m.media-amazon.com/images/M/MV5BN2VjOTkwMjgtYWEyMy00MzNmLTllMjktNDI1ZmRhYTAwYTg1XkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_UY209_CR0,0,140,209_AL_.jpg', 5, 62, 'NileSelect', 'dQw4w9WgXcQ', 9.5, '2008-2013', 'Vince Gilligan', 'Álex Pina', 'United States', 'English', 'A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student in order to secure his family\'s future.', 0, 0, 1),
(1, 'Game of Thrones', 'https://m.media-amazon.com/images/M/MV5BYTRiNDQwYzAtMzVlZS00NTI5LWJjYjUtMzkwNTUzMWMxZTllXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UY209_CR7,0,140,209_AL_.jpg', 8, 73, 'NileSelect', 'dQw4w9WgXcQ', 9.2, '2011-2019', 'David Benioff and D. B. Weiss', 'Aaron Spelling, Darren Star', 'United States', 'English', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 0, 0, 1),
(2, 'The Mandalorian', 'https://m.media-amazon.com/images/M/MV5BZjRlZDIyNDMtZjIwYi00YmJiLTg4NjMtODA2Mjc0YTBlNzIwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UY209_CR0,0,140,209_AL_.jpg', 2, 16, 'StreamFlix', 'dQw4w9WgXcQ', 8.7, '2019- ', 'Jon Favreau', 'Alan Ball', 'United States', 'English', 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.', 0, 0, 1),
(3, 'Friends', 'https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR1,0,140,209_AL_.jpg', 10, 236, 'PineApple+', 'dQw4w9WgXcQ', 8.9, '1994-2004', 'Kevin S. Bright, Marta Kauffman, and David Crane', 'Andy Borowitz', 'United States', 'English', 'Follows the personal and professional lives of six twenty to thirty year-old friends living in the Manhattan borough of New York City.', 0, 0, 1),
(4, 'The Sopranos', 'https://m.media-amazon.com/images/M/MV5BZGJjYzhjYTYtMDBjYy00OWU1LTg5OTYtNmYwOTZmZjE3ZDdhXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY209_CR3,0,140,209_AL_.jpg', 6, 86, 'Watchtopia', 'dQw4w9WgXcQ', 9.2, '1999-2007', 'David Chase', 'Beau Willimon', 'United States', 'English', 'New Jersey mob boss Tony Soprano deals with personal and professional issues in his home and business life that affect his mental state, leading him to seek professional psychiatric counseling.', 0, 0, 1),
(5, 'The Wonder Years', 'https://m.media-amazon.com/images/M/MV5BMWRhYjZjOTQtOGNiNC00MTQ0LWE2MTYtMTQxYzEwNDE3NjYyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR5,0,140,209_AL_.jpg', 6, 115, 'StreamFlix', 'dQw4w9WgXcQ', 8.4, '1988-1993', 'Neal Marlens and Carol Black', 'Bill Lawrence', 'United States', 'English', 'Kevin Arnold recalls growing up during the late 60s and early 70s; the turbulent social times make the transition from child to adult unusually interesting.', 0, 0, 1),
(6, 'Seinfeld', 'https://m.media-amazon.com/images/M/MV5BZjZjMzQ2ZmUtZWEyZC00NWJiLWFjM2UtMzhmYzZmZDcxMzllXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR3,0,140,209_AL_.jpg', 9, 180, 'NileSelect', 'dQw4w9WgXcQ', 8.9, '1989-1998', 'Larry David and Jerry Seinfeld', 'Bruno Heller', 'United States', 'English', 'The continuing misadventures of neurotic New York City stand-up comedian Jerry Seinfeld and his equally neurotic New York City friends.', 0, 0, 1),
(7, 'House of Cards', 'https://m.media-amazon.com/images/M/MV5BNmM4ODU1MzItODYyYi00Y2U0LWFjZjItYTRhZWIwOGMyZTRhXkEyXkFqcGdeQXVyNjc2NTQ4Nzk@._V1_UY209_CR5,0,140,209_AL_.jpg', 6, 73, 'ScreenDynasty', 'dQw4w9WgXcQ', 8.7, '2013-2018', 'Beau Willimon', 'Bruno Heller, William J. MacDonald, and John Milius', 'United States', 'English', 'A Congressman works with his equally conniving wife to exact revenge on the people who betrayed him.', 0, 0, 1),
(8, 'Lost', 'https://m.media-amazon.com/images/M/MV5BNzhlY2E5NDUtYjJjYy00ODg3LWFkZWQtYTVmMzU4ZWZmOWJkXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg', 6, 121, 'BingeWave', 'dQw4w9WgXcQ', 8.3, '2004-2010', 'J. J. Abrams, Damon Lindelof, Carlton Cuse, and Jack Bender', 'Carter Bays, Craig Thomas', 'United States', 'English', 'The survivors of a plane crash are forced to work together in order to survive on a seemingly deserted tropical island.', 0, 0, 1),
(9, 'Westworld', 'https://m.media-amazon.com/images/M/MV5BZDg1OWRiMTktZDdiNy00NTZlLTg2Y2EtNWRiMTcxMGE5YTUxXkEyXkFqcGdeQXVyMTM2MDY0OTYx._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 28, 'Watchtopia', 'dQw4w9WgXcQ', 8.5, '2016-2022', 'Jonathan Nolan and Lisa Joy', 'Charlie Brooker', 'United States', 'English', 'At the intersection of the near future and the reimagined past, waits a world in which every human appetite can be indulged without consequence.', 0, 0, 1),
(10, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR13,0,140,209_AL_.jpg', 4, 34, 'StreamFlix', 'dQw4w9WgXcQ', 8.7, '2016-2024', 'Matt Duffer and Ross Duffer', 'Cheo Hodari Coker', 'United States', 'English', 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.', 0, 0, 1),
(11, 'The X-Files', 'https://m.media-amazon.com/images/M/MV5BZDA0MmM4YzUtMzYwZC00OGI2LWE0ODctNzNhNTkwN2FmNTVhXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR0,0,140,209_AL_.jpg', 11, 218, 'StreamFlix', 'dQw4w9WgXcQ', 8.6, '1993-2018', 'Chris Carter', 'Chris Brancato, Carlo Bernard, and Doug Miro', 'United States', 'English', 'Two F.B.I. Agents, Fox Mulder the believer and Dana Scully the skeptic, investigate the strange and unexplained, while hidden forces work to impede their efforts.', 0, 0, 1),
(12, 'Chernobyl', 'https://m.media-amazon.com/images/M/MV5BZTg4NTUzNGQtY2I4YS00ZDAxLWFhNjAtMDNiMjc3NjY2NGI5XkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_UY209_CR3,0,140,209_AL_.jpg', 1, 5, 'PineApple+', 'dQw4w9WgXcQ', 9.4, '2019', 'Craig Mazin and Carolyn Strauss', 'Chris Carter', 'United States', 'English', 'In April 1986, an explosion at the Chernobyl nuclear power plant in the Union of Soviet Socialist Republics becomes one of the world\'s worst man-made catastrophes.', 0, 0, 1),
(13, 'Better Call Saul', 'https://m.media-amazon.com/images/M/MV5BMTMxOGM0NzItM2E0OS00YWYzLWEzNzUtODUzZTBjM2I4MTZkXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_UY209_CR0,0,140,209_AL_.jpg', 6, 63, 'CineHub', 'dQw4w9WgXcQ', 8.9, '2015-2022', 'Vince Gilligan and Peter Gould', 'Christopher Lloyd', 'United States', 'English', 'The trials and tribulations of criminal lawyer Jimmy McGill in the years leading up to his fateful run-in with Walter White and Jesse Pinkman.', 0, 0, 1),
(14, 'Narcos', 'https://m.media-amazon.com/images/M/MV5BNmFjODU3YzgtMGUwNC00ZGI3LWFkZjQtMjkxZDc3NmQ1MzcyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 30, 'PineApple+', 'dQw4w9WgXcQ', 8.8, '2015-2017', 'Chris Brancato, Carlo Bernard, and Doug Miro', 'Chuck Lorre', 'United States', 'English', 'A chronicled look at the criminal exploits of Colombian drug lord Pablo Escobar, as well as the many other drug kingpins who plagued the country through the years.', 0, 0, 1),
(15, 'Family Guy', 'https://m.media-amazon.com/images/M/MV5BODEwZjEzMjAtNjQxMy00Yjc4LWFlMDAtYjhjZTAxNDU3OTg3XkEyXkFqcGdeQXVyOTM2NTM4MjA@._V1_UY209_CR8,0,140,209_AL_.jpg', 19, 396, 'FlickSphere', 'dQw4w9WgXcQ', 8.2, '1999- ', 'Seth MacFarlane', 'Craig Mazin and Carolyn Strauss', 'United States', 'English', 'In a wacky Rhode Island town, a dysfunctional family strives to cope with everyday life as they are thrown from one crazy scenario to another.', 0, 0, 1),
(16, 'Parks and Recreation', 'https://m.media-amazon.com/images/M/MV5BYWNkOTg0OTMtZTcyNy00MWU1LWJhZDQtYjQzMjU1NjBhYzI2XkEyXkFqcGdeQXVyOTE4NzcwNzI@._V1_UY209_CR1,0,140,209_AL_.jpg', 7, 125, 'StreamFlix', 'dQw4w9WgXcQ', 8.6, '2009-2015', 'Greg Daniels, Michael Schur, and Howard Klein', 'Dan Harmon, Justin Roiland', 'United States', 'English', 'The absurd antics of an Indiana town\'s public officials as they pursue sundry projects to make their city a better place.', 0, 0, 1),
(17, 'The Simpsons', 'https://m.media-amazon.com/images/M/MV5BYjFkMTlkYWUtZWFhNy00M2FmLThiOTYtYTRiYjVlZWYxNmJkXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', 33, 715, 'Watchtopia', 'dQw4w9WgXcQ', 8.7, '1989- ', 'James L. Brooks, Matt Groening, and Al Jean', 'David Benioff and D. B. Weiss', 'United States', 'English', 'The satiric adventures of a working-class family in the misfit city of Springfield.', 0, 0, 1),
(18, 'The Wire', 'https://m.media-amazon.com/images/M/MV5BNTllYzFhMjAtZjExNS00MjM4LWE5YmMtOGFiZGRlOTU5YzJiXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UX140_CR0,0,140,209_AL_.jpg', 5, 60, 'BingeWave', 'dQw4w9WgXcQ', 9.3, '2002-2008', 'David Simon', 'David Chase', 'United States', 'English', 'The Baltimore drug scene, as seen through the eyes of drug dealers and law enforcement.', 0, 0, 1),
(19, 'Rome', 'https://m.media-amazon.com/images/M/MV5BYTM4MmU1NWYtNzJjYy00YWFhLThjOGEtZmMxOGI1NzE0NGNiXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UX140_CR0,0,140,209_AL_.jpg', 2, 22, 'StreamFlix', 'dQw4w9WgXcQ', 8.7, '2005-2007', 'Bruno Heller, William J. MacDonald, and John Milius', 'David Milch', 'United States', 'English', 'A down-to-earth account of the lives of both illustrious and ordinary Romans set in the last days of the Roman Republic.', 0, 0, 1),
(20, 'Rick and Morty', 'https://m.media-amazon.com/images/M/MV5BZjRjOTFkOTktZWUzMi00YzMyLThkMmYtMjEwNmQyNzliYTNmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UX140_CR0,0,140,209_AL_.jpg', 5, 41, 'Watchtopia', 'dQw4w9WgXcQ', 9.1, '2013- ', 'Dan Harmon, Justin Roiland', 'David Shore', 'United States', 'English', 'An animated series that follows the exploits of a super scientist and his not-so-bright grandson.', 0, 0, 1),
(21, 'Homeland', 'https://m.media-amazon.com/images/M/MV5BM2Q1YzUxYTYtOTkwZC00Mjk3LTllZWQtNThjYjllZjE2OTQwXkEyXkFqcGdeQXVyOTA3MTMyOTk@._V1_UX140_CR0,0,140,209_AL_.jpg', 8, 96, 'NileSelect', 'dQw4w9WgXcQ', 8.3, '2011-2020', 'Howard Gordon, Alex Gansa, Gideon Raff', 'David Simon', 'United States', 'English', 'A bipolar CIA operative becomes convinced a prisoner of war has been turned by al-Qaeda and is planning to carry out a terrorist attack on American soil.', 0, 0, 1),
(22, 'Band of Brothers', 'https://m.media-amazon.com/images/M/MV5BMTI3ODc2ODc0M15BMl5BanBnXkFtZTYwMjgzNjc3._V1_UX140_CR0,0,140,209_AL_.jpg', 1, 10, 'StreamFlix', 'dQw4w9WgXcQ', 9.4, '2001', 'Steven Spielberg, Tom Hanks, Gary Goetzman', 'Dick Wolf', 'United States', 'English', 'The story of Easy Company of the U.S. Army 101st Airborne Division and their mission in World War II Europe, from Operation Overlord to V-J Day.', 0, 0, 1),
(23, 'Vikings', 'https://m.media-amazon.com/images/M/MV5BODk4ZjU0NDUtYjdlOS00OTljLTgwZTUtYjkyZjk1NzExZGIzXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', 6, 89, 'ChromaTV', 'dQw4w9WgXcQ', 8.5, '2013-2020', 'Michael Hirst', 'Drew Goddard', 'Ireland, Canada', 'English', 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore--and raid--the distant shores across the ocean.', 0, 0, 1),
(24, 'The Boys', 'https://m.media-amazon.com/images/M/MV5BOTEyNDJhMDAtY2U5ZS00OTMzLTkwODktMjU3MjFkZWVlMGYyXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_UY209_CR13,0,140,209_AL_.jpg', 3, 21, 'BingeWave', 'dQw4w9WgXcQ', 8.7, '2019- ', 'Eric Kripke, Seth Rogen, Evan Goldberg', 'Eric Kripke', 'United States', 'English', 'A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.', 0, 0, 1),
(25, 'The Good Place', 'https://m.media-amazon.com/images/M/MV5BYmMxNjM0NmItNGU1Mi00OGMwLTkzMzctZmE3YjU1ZDE4NmFjXkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_UY209_CR0,0,140,209_AL_.jpg', 4, 53, 'BingeWave', 'dQw4w9WgXcQ', 8.2, '2016-2020', 'Michael Schur', 'Eric Kripke, Seth Rogen, Evan Goldberg', 'United States', 'English', 'Four people and their otherworldly frienemy struggle in the afterlife to define what it means to be good.', 0, 0, 1),
(26, '24', 'https://m.media-amazon.com/images/M/MV5BMTg5OTkyNzA0NF5BMl5BanBnXkFtZTcwMDYyMDUwMg@@._V1_UY209_CR1,0,140,209_AL_.jpg', 9, 204, 'StreamFlix', 'dQw4w9WgXcQ', 8.4, '2001-2010', 'Joel Surnow, Robert Cochran', 'Eric Lewald, Sidney Iwanter', 'United States', 'English', 'Counter Terrorism Agent Jack Bauer races against the clock to subvert terrorist plots and save his nation from ultimate disaster.', 0, 0, 1),
(27, 'Two and a Half Men', 'https://m.media-amazon.com/images/M/MV5BOTI2MjIzN2ItZDg0OS00MTlhLWIzMTMtYWI4ZTA0NGE4NDJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR1,0,140,209_AL_.jpg', 12, 262, 'Watchtopia', 'dQw4w9WgXcQ', 7.1, '2003-2015', 'Lee Aronsohn, Chuck Lorre', 'Greg Daniels', 'United States', 'English', 'A hedonistic jingle writer\'s free-wheeling life comes to an abrupt halt when his brother and 10-year-old nephew move into his beach-front house.', 0, 0, 1),
(28, 'X-Men: The Animated Series', 'https://m.media-amazon.com/images/M/MV5BNTVjNmEwNTMtNmQ2ZC00MGJkLWI3MDgtNzMyNTc4YjVkNTQ1L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY209_CR6,0,140,209_AL_.jpg', 5, 76, 'CineHub', 'dQw4w9WgXcQ', 8.4, '1992-1997', 'Eric Lewald, Sidney Iwanter', 'Greg Daniels, Michael Schur, and Howard Klein', 'United States, Canada', 'English', 'A team of mutant superheroes fight for justice and human acceptance in the Marvel Comics universe.', 0, 0, 1),
(29, 'Legion', 'https://m.media-amazon.com/images/M/MV5BNmYxMjM5MzMtNTczZC00MGM3LTk2MTQtZmNmMTg4ZDI4ZTkxXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX140_CR0,0,140,209_AL_.jpg', 3, 27, 'NileSelect', 'dQw4w9WgXcQ', 8.2, '2017-2019', 'Noah Hawley', 'Guillermo del Toro, Chuck Hogan', 'United States', 'English', 'David Haller is a troubled young man diagnosed as schizophrenic, but after a strange encounter he discovers special powers that will change his life forever.', 0, 0, 1),
(30, 'American Crime Story', 'https://m.media-amazon.com/images/M/MV5BMGExZjgzNzktNzUwYS00ZDgxLWFlMTktMzZhOWQxMGM0N2VkXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', 3, 19, 'Watchtopia', 'dQw4w9WgXcQ', 8.4, '2016- ', 'Ryan Murphy', 'Howard Gordon, Alex Gansa, Gideon Raff', 'United States', 'English', 'An anthology series centered around America\'s most notorious crimes and criminals.', 0, 0, 1),
(31, 'Dexter', 'https://m.media-amazon.com/images/M/MV5BZjkzMmU5MjMtODllZS00OTA5LTk2ZTEtNjdhYjZhMDA5ZTRhXkEyXkFqcGdeQXVyOTA3MTMyOTk@._V1_UY209_CR7,0,140,209_AL_.jpg', 8, 96, 'CineHub', 'dQw4w9WgXcQ', 8.7, '2006-2013', 'Sara Colleton', 'J. J. Abrams, Damon Lindelof, Carlton Cuse, and Jack Bender', 'United States', 'English', 'He\'s smart. He\'s lovable. He\'s Dexter Morgan, America\'s favorite serial killer, who spends his days solving crimes and nights committing them.', 0, 0, 1),
(32, 'The Walking Dead', 'https://m.media-amazon.com/images/M/MV5BZmU5NTcwNjktODIwMi00ZmZkLTk4ZWUtYzVjZWQ5ZTZjN2RlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', 11, 177, 'Watchtopia', 'dQw4w9WgXcQ', 8.1, '2010-2022', 'Scott M. Gimple', 'J.J. Abrams', 'United States', 'English', 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins and must lead a group of survivors to stay alive.', 0, 0, 1),
(33, 'Ted Lasso', 'https://m.media-amazon.com/images/M/MV5BMTdmZjBjZjQtY2JiNS00Y2ZlLTg2NzgtMjUzMGY2OTVmOWJiXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UY209_CR0,0,140,209_AL_.jpg', 2, 22, 'PineApple+', 'dQw4w9WgXcQ', 8.8, '2020- ', 'Bill Lawrence', 'James L. Brooks, Matt Groening, and Al Jean', 'United States', 'English', 'American college football coach Ted Lasso heads to London to manage AFC Richmond, a struggling English Premier League football team.', 0, 0, 1),
(34, 'The Handmaid\'s Tale', 'https://m.media-amazon.com/images/M/MV5BN2M0NTdiMGYtNmFjZi00MjIxLWI3OTUtNTdmZDRlOTNiYWU0XkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_UY209_CR0,0,140,209_AL_.jpg', 4, 46, 'StreamFlix', 'dQw4w9WgXcQ', 8.4, '2017- ', 'Warren Littlefield', 'Jane Tranter', 'United States', 'English', 'Set in a dystopian future, a woman is forced to live as a concubine under a fundamentalist theocratic dictatorship.', 0, 0, 1),
(35, 'True Detective', 'https://m.media-amazon.com/images/M/MV5BMmRlYmE0Y2UtNDk2Yi00NzczLWEwZTEtZmE2OTcyYzcxYmU5XkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_UY209_CR4,0,140,209_AL_.jpg', 3, 24, 'CineHub', 'dQw4w9WgXcQ', 8.9, '2014-2019', 'Nic Pizzolatto', 'Jason Bateman', 'United States', 'English', 'Seasonal anthology series in which police investigations unearth the personal and professional secrets of those involved, both within and outside the law.', 0, 0, 1),
(36, 'Brooklyn Nine-Nine', 'https://m.media-amazon.com/images/M/MV5BNzVkYWY4NzYtMWFlZi00YzkwLThhZDItZjcxYTU4ZTMzMDZmXkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_UY209_CR0,0,140,209_AL_.jpg', 8, 153, 'Watchtopia', 'dQw4w9WgXcQ', 8.4, '2013-2021', 'Michael Schur', 'Jed Whedon, Maurissa Tancharoen', 'United States', 'English', 'Comedy series following the exploits of Det. Jake Peralta and his diverse, lovable colleagues as they police the NYPD\'s 99th Precinct.', 0, 0, 1),
(37, 'Bob\'s Burgers', 'https://m.media-amazon.com/images/M/MV5BZGJiNmM1NDctNWUxYS00YzE4LWJjNTgtYTJhYzE0NjFmMTMwXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', 12, 222, 'NileSelect', 'dQw4w9WgXcQ', 8.2, '2011- ', 'Loren Bouchard', 'Jenji Kohan', 'United States', 'English', 'Bob Belcher runs his dream restaurant with his wife and three children as their last hope of holding the family together.', 0, 0, 1),
(38, 'The Umbrella Academy', 'https://m.media-amazon.com/images/M/MV5BOTdlODM0MTAtMzRiZi00MTQxLWE0MGUtNTNjOGZjNjAzN2E0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR13,0,140,209_AL_.jpg', 2, 20, 'Watchtopia', 'dQw4w9WgXcQ', 7.9, '2019-2023', 'Steve Blackman', 'Joel Surnow, Robert Cochran', 'United States', 'English', 'A family of former child heroes, now grown apart, must reunite to continue to protect the world.', 0, 0, 1),
(39, 'Mr. Robot', 'https://m.media-amazon.com/images/M/MV5BM2QyNDIzOGMtNThhNS00NmUwLWI0ZjUtZjdkN2I1OTRjZWQ3XkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UY209_CR3,0,140,209_AL_.jpg', 4, 45, 'CineHub', 'dQw4w9WgXcQ', 8.5, '2015-2019', 'Sam Esmail', 'John Logan', 'United States', 'English', 'Elliot, a brilliant but highly unstable young cyber-security engineer and vigilante hacker, becomes a key figure in a complex game of global dominance when he and his shadowy allies try to take down the corrupt corporation he works for.', 0, 0, 1),
(40, 'Boardwalk Empire', 'https://m.media-amazon.com/images/M/MV5BYTYxNzc5ZmYtODcyNi00ZWUwLWExNWUtY2Y0YTlhZDBlMGU1XkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_UY209_CR2,0,140,209_AL_.jpg', 5, 56, 'PineApple+', 'dQw4w9WgXcQ', 8.6, '2010-2014', 'Martin Scorsese', 'Jon Favreau', 'United States', 'English', 'An Atlantic City politician plays both sides of the law by conspiring with gangsters during the Prohibition era.', 0, 0, 1),
(41, 'Star Trek: The Next Generation', 'https://m.media-amazon.com/images/M/MV5BOWFhYjE4NzMtOWJmZi00NzEyLTg5NTctYmIxMTU1ZDIxMDAyXkEyXkFqcGdeQXVyNTE1NjY5Mg@@._V1_UY209_CR3,0,140,209_AL_.jpg', 7, 178, 'Watchtopia', 'dQw4w9WgXcQ', 8.7, '1987-1994', 'Rick Berman', 'Jonathan Nolan and Lisa Joy', 'United States', 'English', 'Set almost 100 years after Captain Kirk\'s 5-year mission, a new generation of Starfleet officers sets off in the U.S.S. Enterprise-D on its own mission to go where no one has gone before.', 0, 0, 1),
(42, 'Scooby Doo, Where Are You!', 'https://m.media-amazon.com/images/M/MV5BN2EyMmIyMWItZTRiYy00MmE1LTkyOTAtMTliMzYwZGJlYmFjXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_UX140_CR0,0,140,209_AL_.jpg', 3, 25, 'StreamFlix', 'dQw4w9WgXcQ', 7.9, '1969-1970', 'Joseph Barbera', 'Joseph Barbera', 'United States', 'English', 'A group of teenage friends and their Great Dane (Scooby-Doo) travel in a bright green van solving strange and hilarious mysteries, while returning from or going to a regular teenage function.', 0, 0, 1),
(43, 'Daredevil', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 39, 'FlickSphere', 'dQw4w9WgXcQ', 8.6, '2015-2018', 'Drew Goddard', 'Joseph Barbera', 'United States', 'English', 'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.', 0, 0, 1),
(44, 'Prison Break', 'https://m.media-amazon.com/images/M/MV5BMTg3NTkwNzAxOF5BMl5BanBnXkFtZTcwMjM1NjI5MQ@@._V1_UY209_CR1,0,140,209_AL_.jpg', 5, 90, 'PineApple+', 'dQw4w9WgXcQ', 8.3, '2005-2017', 'Paul Scheuring', 'Joss Whedon', 'United States', 'English', 'Due to a political conspiracy, an innocent man is sent to death row and his only hope is his brother, who makes it his mission to deliberately get himself sent to the same prison in order to break the both of them out, from the inside.', 0, 0, 1),
(45, 'House', 'https://m.media-amazon.com/images/M/MV5BMDA4NjQzN2ItZDhhNC00ZjVlLWFjNTgtMTEyNDQyOGNjMDE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR1,0,140,209_AL_.jpg', 8, 177, 'FlickSphere', 'dQw4w9WgXcQ', 8.7, '2004-2012', 'David Shore', 'Kevin S. Bright, Marta Kauffman, and David Crane', 'United States', 'English', 'An antisocial maverick doctor who specializes in diagnostic medicine does whatever it takes to solve puzzling cases that come his way using his crack team of doctors and his wits.', 0, 0, 1),
(46, 'ER', 'https://m.media-amazon.com/images/M/MV5BYWQ0YTQ1ZmQtNzk1NC00NzMzLWJjNDYtMDQ0MTcxMThhYTI0XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR3,0,140,209_AL_.jpg', 15, 331, 'CineHub', 'dQw4w9WgXcQ', 7.9, '1994-2009', 'Michael Crichton', 'Kevin Williamson', 'United States', 'English', 'The lives, loves and losses of the doctors and nurses of Chicago\'s County General Hospital.', 0, 0, 1),
(47, 'The Big Bang Theory', 'https://m.media-amazon.com/images/M/MV5BY2FmZTY5YTktOWRlYy00NmIyLWE0ZmQtZDg2YjlmMzczZDZiXkEyXkFqcGdeQXVyNjg4NzAyOTA@._V1_UX140_CR0,0,140,209_AL_.jpg', 12, 279, 'NileSelect', 'dQw4w9WgXcQ', 8.2, '2007-2019', 'Chuck Lorre', 'Kurt Sutter', 'United States', 'English', 'A woman who moves into an apartment across the hall from two brilliant but socially awkward physicists shows them how little they know about life outside of the laboratory.', 0, 0, 1),
(48, 'South Park', 'https://m.media-amazon.com/images/M/MV5BZjNhODYzZGItZWQ3Ny00ZjViLTkxMTUtM2EzN2RjYjU2OGZiXkEyXkFqcGdeQXVyMTI5MTc0OTIy._V1_UX140_CR0,0,140,209_AL_.jpg', 24, 308, 'NileSelect', 'dQw4w9WgXcQ', 8.7, '1997- ', 'Trey Parker', 'Laeta Kalogridis', 'United States', 'English', 'Follows the misadventures of four irreverent grade-schoolers in the quiet, dysfunctional town of South Park, Colorado.', 0, 0, 1),
(49, 'Fargo', 'https://m.media-amazon.com/images/M/MV5BN2NiMGE5M2UtNWNlNC00N2Y4LTkwOWUtMDlkMzEwNTcyOTcyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR1,0,140,209_AL_.jpg', 4, 41, 'CineHub', 'dQw4w9WgXcQ', 8.9, '2014- ', 'Noah Hawley', 'Larry David and Jerry Seinfeld', 'United States', 'English', 'Various chronicles of deception, intrigue and murder in and around frozen Minnesota. Yet all of these tales mysteriously lead back one way or another to Fargo, North Dakota.', 0, 0, 1),
(50, 'Snowpiercer', 'https://m.media-amazon.com/images/M/MV5BYTY1MDhjOWQtYWFkNS00ODA1LTg1YTUtZDhmZDE0MDJlMzIwXkEyXkFqcGdeQXVyMTI4MDc0NjU2._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 18, 'ScreenDynasty', 'dQw4w9WgXcQ', 6.9, '2020-2023', 'Lee Aronsohn, Chuck Lorre', 'Lee Aronsohn, Chuck Lorre', 'United States', 'English', 'Seven years after the world has become a frozen wasteland, the remnants of humanity inhabit a perpetually-moving train that circles the globe, where class warfare, social injustice and the politics of survival play out.', 0, 0, 1),
(51, 'Buffy the Vampire Slayer', 'https://m.media-amazon.com/images/M/MV5BY2MwOGIyZGYtNzgxZC00N2Q5LTllYjItM2U4MTkwMDBjYzUyXkEyXkFqcGdeQXVyNzA5NjUyNjM@._V1_UY209_CR1,0,140,209_AL_.jpg', 7, 144, 'PineApple+', 'dQw4w9WgXcQ', 8.3, '1997-2003', 'Joss Whedon', 'Loren Bouchard', 'United States', 'English', 'A young woman, destined to slay vampires, demons and other infernal creatures, deals with her life fighting evil, with the help of her friends.', 0, 0, 1),
(52, 'Beavis and Butt-Head', 'https://m.media-amazon.com/images/M/MV5BMjdkMDNkYjMtNTU0YS00YzVjLTk1NmItYWVjOWNmMWFhMTRlXkEyXkFqcGdeQXVyMzM4NjcxOTc@._V1_UY209_CR1,0,140,209_AL_.jpg', 8, 222, 'StreamFlix', 'dQw4w9WgXcQ', 7.5, '1993-2011', 'Mike Judge', 'Mandy Teefey', 'United States', 'English', 'Animated MTV series about two teenage heavy-metal music fans who occasionally do idiotic things because they\'re bored. For them, everything is \"cool \" or \" sucks.\" ', 0, 0, 1),
(53, 'Oz', 'https://m.media-amazon.com/images/M/MV5BYjY3N2M2YjgtZTFjZS00ODA1LWJjMDgtNDgxZDllZWFiMmYyXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UX140_CR0,0,140,209_AL_.jpg', 6, 56, 'NileSelect', 'dQw4w9WgXcQ', 8.7, '1997-2003', 'Tom Fontana', 'Mark Brazill', 'United States', 'English', 'A series chronicling the daily activities of an unusual prison facility and its criminal inhabitants.', 0, 0, 1),
(54, 'The Office', 'https://m.media-amazon.com/images/M/MV5BMDNkOTE4NDQtMTNmYi00MWE0LWE4ZTktYTc0NzhhNWIzNzJiXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX140_CR0,0,140,209_AL_.jpg', 9, 201, 'CineHub', 'dQw4w9WgXcQ', 9.0, '2005-2013', 'Greg Daniels', 'Martin Scorsese', 'United States', 'English', 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 0, 0, 1),
(55, 'Everybody Loves Raymond', 'https://m.media-amazon.com/images/M/MV5BMGExOGM4NWEtNDRlYi00MjU4LTk3NzQtOTllYzgxOGYyNWUwXkEyXkFqcGdeQXVyMzU3MTc5OTE@._V1_UY209_CR1,0,140,209_AL_.jpg', 9, 210, 'ChromaTV', 'dQw4w9WgXcQ', 7.2, '1996-2005', 'Phil Rosenthal', 'Matt Duffer and Ross Duffer', 'United States', 'English', 'The comical everyday life of sports columnist Ray Barone and his dysfunctional family.', 0, 0, 1),
(56, 'His Dark Materials', 'https://m.media-amazon.com/images/M/MV5BM2FlYzgyZDYtYzI0ZS00YThiLTg4N2EtNmViMDdmMTcyNWU0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR13,0,140,209_AL_.jpg', 2, 16, 'ChromaTV', 'dQw4w9WgXcQ', 7.8, '2019-2022', 'Jane Tranter', 'Matt Groening', 'United Kingdom', 'English', 'A young girl is destined to liberate her world from the grip of the Magisterium which represses people\'s ties to magic and their animal spirits known as daemons.', 0, 0, 1),
(57, 'The Pacific', 'https://m.media-amazon.com/images/M/MV5BNmEwNmI1MjItNjNjYy00NDE5LWJiNTYtM2QxMTI5ZjllZTBhL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY209_CR1,0,140,209_AL_.jpg', 1, 10, 'StreamFlix', 'dQw4w9WgXcQ', 8.3, '2010', 'Tom Hanks', 'Matt Nix', 'United States', 'English', 'The Pacific Theatre of World War II, as seen through the eyes of several young Marines.', 0, 0, 1),
(58, 'Law & Order: Special Victims Unit', 'https://m.media-amazon.com/images/M/MV5BYmNkN2RlMzktMDgzNi00OWRmLWI3N2ItYzU5ZGUyMzc3MjJhXkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_UY209_CR0,0,140,209_AL_.jpg', 23, 514, 'Watchtopia', 'dQw4w9WgXcQ', 8.1, '1999- ', 'Dick Wolf', 'Matthew Weiner', 'United States', 'English', 'This series follows the Special Victims Unit, a specially trained squad of detectives in the New York City Police Department that investigate sexually related crimes.', 0, 0, 1),
(59, 'Black Mirror', 'https://m.media-amazon.com/images/M/MV5BYTM3YWVhMDMtNjczMy00NGEyLWJhZDctYjNhMTRkNDE0ZTI1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR0,0,140,209_AL_.jpg', 5, 22, 'ChromaTV', 'dQw4w9WgXcQ', 8.8, '2011-2019', 'Charlie Brooker', 'Melissa Rosenberg', 'United Kingdom', 'English', 'An anthology series exploring a twisted, high-tech multiverse where humanity\'s greatest innovations and darkest instincts collide.', 0, 0, 1),
(60, 'American Dad!', 'https://m.media-amazon.com/images/M/MV5BNTM4YjhiMTQtNDRhMy00ZTZlLWFjNjItMmI4YWJkMjI2NTg0XkEyXkFqcGdeQXVyMTQzNTA5MzYz._V1_UY209_CR0,0,140,209_AL_.jpg', 18, 304, 'FlickSphere', 'dQw4w9WgXcQ', 7.4, '2005- ', 'Seth MacFarlane', 'Michael Berk', 'United States', 'English', 'The escapades of Stan Smith, a conservative C.I.A. Agent dealing with family life, and keeping America safe.', 0, 0, 1),
(61, 'Deadwood', 'https://m.media-amazon.com/images/M/MV5BNDJhMjUzMDYtNzc4MS00Nzk2LTkyMGQtN2M5NTczYTZmYmY5XkEyXkFqcGdeQXVyMzU3MTc5OTE@._V1_UY209_CR1,0,140,209_AL_.jpg', 3, 36, 'ChromaTV', 'dQw4w9WgXcQ', 8.6, '2004-2006', 'David Milch', 'Michael Crichton', 'United States', 'English', 'A show set in the late 1800s, revolving around the characters of Deadwood, South Dakota; a town of deep corruption and crime.', 0, 0, 1),
(62, 'That \'70s Show', 'https://m.media-amazon.com/images/M/MV5BN2RkZGE0MjAtZGVkOS00MzVhLTg0OWItZTc4OGRjOTQ1ZTM4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg', 8, 200, 'FlickSphere', 'dQw4w9WgXcQ', 8.1, '1998-2006', 'Mark Brazill', 'Michael Hirst', 'United States', 'English', 'A comedy revolving around a group of teenage friends, their mishaps, and their coming of age, set in 1970s Wisconsin.', 0, 0, 1),
(63, 'Mad Men', 'https://m.media-amazon.com/images/M/MV5BNTgxNDZlODQtNDcwOC00NWQ5LTljNWMtMDhjY2U5YTUzMTc4XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX140_CR0,0,140,209_AL_.jpg', 7, 92, 'PineApple+', 'dQw4w9WgXcQ', 8.7, '2007-2015', 'Matthew Weiner', 'Michael Schur', 'United States', 'English', 'A drama about one of New York\'s most prestigious ad agencies at the beginning of the 1960s, focusing on one of the firm\'s most mysterious but extremely talented ad executives, Donald Draper.', 0, 0, 1),
(64, 'The Flintstones', 'https://m.media-amazon.com/images/M/MV5BZmYxZjE2MDYtYTQ2OC00NmUwLTkzNDEtNjFkZmEyM2E5ODBmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UY209_CR8,0,140,209_AL_.jpg', 6, 166, 'FlickSphere', 'dQw4w9WgXcQ', 7.5, '1960-1966', 'Joseph Barbera', 'Michael Schur', 'United States', 'English', 'The misadventures of two modern-day Stone Age families, the Flintstones and the Rubbles.', 0, 0, 1),
(65, 'American Horror Story', 'https://m.media-amazon.com/images/M/MV5BOWFlOWE1OGEtOTVlMi00M2JmLWJlMGEtOWVjOGFhOTNlYTZiXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY209_CR0,0,140,209_AL_.jpg', 10, 103, 'FlickSphere', 'dQw4w9WgXcQ', 8.0, '2011- ', 'Ryan Murphy', 'Mike Judge', 'United States', 'English', 'An anthology series centering on different characters and locations, including a house with a murderous past, an insane asylum, a witch coven, a freak show circus, a haunted hotel, a possessed farmhouse, a cult, the apocalypse, a slasher summer camp, a bleak beach town and desert valley, and NYC.', 0, 0, 1),
(66, 'Baywatch', 'https://m.media-amazon.com/images/M/MV5BMzhiMDcyNzMtYzY0MS00NTAwLWFlMDgtYzhhNDIyODYyNTBiXkEyXkFqcGdeQXVyMzI4MTk3MTY@._V1_UY209_CR2,0,140,209_AL_.jpg', 11, 242, 'NileSelect', 'dQw4w9WgXcQ', 5.4, '1989-2001', 'Michael Berk', 'Mitchell Hurwitz', 'United States', 'English', 'At a Los Angeles beach, a team of lifeguards led by Lieutenant Mitch Buchannon save lives, deal with personal dramas, fight crime and participate in over the top adventures on a daily basis.', 0, 0, 1),
(67, 'The Outsider', 'https://m.media-amazon.com/images/M/MV5BNzgxOTc4ODctNDNhZC00M2UzLTgyYzgtM2Q2OTk3NmQ5NTljXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_UX140_CR0,0,140,209_AL_.jpg', 1, 10, 'FlickSphere', 'dQw4w9WgXcQ', 7.7, '2020', 'Richard Price', 'Neal Marlens and Carol Black', 'United States', 'English', 'Investigators are confounded over an unspeakable crime that has been committed.', 0, 0, 1),
(68, 'Heroes', 'https://m.media-amazon.com/images/M/MV5BMjI3ODU0OTQ1MV5BMl5BanBnXkFtZTgwNzI0MTQ2MzE@._V1_UY209_CR0,0,140,209_AL_.jpg', 4, 77, 'NileSelect', 'dQw4w9WgXcQ', 7.5, 'II) (2006-2010', 'Tim Kring', 'Nic Pizzolatto', 'United States', 'English', 'Common people discover that they have super powers. Their lives intertwine as a devastating event must be prevented.', 0, 0, 1),
(69, 'The Following', 'https://m.media-amazon.com/images/M/MV5BZjgzMDVlY2EtOTMxMC00ODAxLTk0MmQtYzdkMjNlNjY5NjJmXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 45, 'FlickSphere', 'dQw4w9WgXcQ', 7.4, '2013-2015', 'Kevin Williamson', 'Noah Hawley', 'United States', 'English', 'A brilliant, charismatic, and psychotic serial killer communicates with other active serial killers and activates a cult of believers who follow his every command.', 0, 0, 1),
(70, 'Futurama', 'https://m.media-amazon.com/images/M/MV5BNzA2ZDk2ZTUtMWU2Yi00NDVmLTk1ODEtMmFmMjQyNWYzODI0XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg', 7, 140, 'FlickSphere', 'dQw4w9WgXcQ', 8.5, '1999-2023', 'Matt Groening', 'Noah Hawley', 'United States', 'English', 'Philip J. Fry, a pizza delivery boy, is accidentally frozen in 1999 and thawed out on New Year\'s Eve 2999.', 0, 0, 1),
(71, 'Fleabag', 'https://m.media-amazon.com/images/M/MV5BMjA4MzU5NzQxNV5BMl5BanBnXkFtZTgwOTg3MDA5NzM@._V1_UY209_CR0,0,140,209_AL_.jpg', 2, 12, 'FlickSphere', 'dQw4w9WgXcQ', 8.7, '2016-2019', 'Phoebe Waller-Bridge', 'Paul Scheuring', 'United Kingdom', 'English', 'A comedy series adapted from the award-winning play about a young woman trying to cope with life in London whilst coming to terms with a recent tragedy.', 0, 0, 1),
(72, 'Penny Dreadful', 'https://m.media-amazon.com/images/M/MV5BMTNiMDBmZWQtZDI4Ni00ZGViLWJlOWMtNTdkODNlMTFkZjc2XkEyXkFqcGdeQXVyOTA3MTMyOTk@._V1_UY209_CR7,0,140,209_AL_.jpg', 3, 27, 'ChromaTV', 'dQw4w9WgXcQ', 8.2, '2014-2016', 'John Logan', 'Peter M. Lenkov', 'United States', 'English', 'Explorer Sir Malcolm Murray, American gunslinger Ethan Chandler, scientist Victor Frankenstein and medium Vanessa Ives unite to combat supernatural threats in Victorian London.', 0, 0, 1),
(73, 'Agents of S.H.I.E.L.D.', 'https://m.media-amazon.com/images/M/MV5BMTkwODYyMjgzOV5BMl5BanBnXkFtZTgwODAzMTE5MjE@._V1_UY209_CR0,0,140,209_AL_.jpg', 7, 136, 'FlickSphere', 'dQw4w9WgXcQ', 7.5, '2013-2020', 'Jed Whedon, Maurissa Tancharoen', 'Phil Rosenthal', 'United States', 'English', 'The missions of the Strategic Homeland Intervention, Enforcement and Logistics Division.', 0, 0, 1),
(74, 'Spartacus', 'https://m.media-amazon.com/images/M/MV5BZWQ4MjA2YzEtOTQzYi00NWQ1LWI0ZDEtN2VkZjhmYTc3MzU0XkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 33, 'FlickSphere', 'dQw4w9WgXcQ', 8.5, '2010-2013', 'Steven S. DeKnight', 'Phoebe Waller-Bridge', 'United States', 'English', 'The life of Spartacus, the gladiator who lead a rebellion against the Romans. From his time as an ally of the Romans, to his betrayal and becoming a gladiator, to the rebellion he leads and its ultimate outcome.', 0, 0, 1),
(75, 'Supernatural', 'https://m.media-amazon.com/images/M/MV5BNzRmZWJhNjUtY2ZkYy00N2MyLWJmNTktOTAwY2VkODVmOGY3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', 15, 327, 'Watchtopia', 'dQw4w9WgXcQ', 8.4, '2005-2020', 'Eric Kripke', 'Raphael Bob-Waksberg', 'United States', 'English', 'Two brothers follow their father\'s footsteps as hunters, fighting evil supernatural beings of many kinds, including monsters, demons, and gods that roam the earth.', 0, 0, 1),
(76, 'How I Met Your Mother', 'https://m.media-amazon.com/images/M/MV5BNjg1MDQ5MjQ2N15BMl5BanBnXkFtZTYwNjI5NjA3._V1_UY209_CR8,0,140,209_AL_.jpg', 9, 208, 'NileSelect', 'dQw4w9WgXcQ', 8.3, '2005-2014', 'Carter Bays, Craig Thomas', 'Richard Price', 'United States', 'English', 'A father recounts to his children - through a series of flashbacks - the journey he and his four best friends took leading up to him meeting their mother.', 0, 0, 1),
(77, 'The Strain', 'https://m.media-amazon.com/images/M/MV5BNjQxNzVlNjQtMTg3YS00MzBmLThkNzAtMzMyNDUyMTVlNzg0XkEyXkFqcGdeQXVyOTQxNzM2MjY@._V1_UY209_CR1,0,140,209_AL_.jpg', 4, 46, 'Watchtopia', 'dQw4w9WgXcQ', 7.3, '2014-2017', 'Guillermo del Toro, Chuck Hogan', 'Rick Berman', 'United States', 'English', 'A mysterious viral outbreak with hallmarks of an ancient and evil strain of vampirism ravages the city of New York.', 0, 0, 1),
(78, 'Beverly Hills, 90210', 'https://m.media-amazon.com/images/M/MV5BMDlhODg2ZTMtMDJmZi00YWYzLTllOGYtNjhlODA1NDliNTc0XkEyXkFqcGdeQXVyMjczOTU2NTI@._V1_UX140_CR0,0,140,209_AL_.jpg', 10, 293, 'Watchtopia', 'dQw4w9WgXcQ', 6.5, '1990-2000', 'Aaron Spelling, Darren Star', 'Robert Zemeckis', 'United States', 'English', 'A group of friends living in Beverly Hills, California make their way through life from their school days into adulthood.', 0, 0, 1),
(79, 'Gotham', 'https://m.media-amazon.com/images/M/MV5BMmUyOTdjMGEtN2RmNC00YzUwLTg5ZDEtMTI1NWE4ZjcwN2ViXkEyXkFqcGdeQXVyNTA3MTU2MjE@._V1_UY209_CR2,0,140,209_AL_.jpg', 5, 100, 'NileSelect', 'dQw4w9WgXcQ', 7.8, '2014-2019', 'Bruno Heller', 'Ryan Murphy', 'United States', 'English', 'The story behind Detective James Gordon\'s rise to prominence in Gotham City in the years before Batman\'s arrival.', 0, 0, 1),
(80, 'Altered Carbon', 'https://m.media-amazon.com/images/M/MV5BMjU2ZGQwYTctNTk2Ny00ODNmLTkzNDQtMWY2ZjM4MDI5ZmM5XkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UY209_CR0,0,140,209_AL_.jpg', 2, 18, 'FlickSphere', 'dQw4w9WgXcQ', 7.9, '2018-2020', 'Laeta Kalogridis', 'Ryan Murphy', 'United States', 'English', 'Set in a future where consciousness is digitized and stored, a prisoner returns to life in a new body and must solve a mind-bending murder to win his freedom.', 0, 0, 1),
(81, 'Money Heist', 'https://m.media-amazon.com/images/M/MV5BODI0ZTljYTMtODQ1NC00NmI0LTk1YWUtN2FlNDM1MDExMDlhXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_UX140_CR0,0,140,209_AL_.jpg', 5, 31, 'ScreenDynasty', 'dQw4w9WgXcQ', 8.2, '2017-2021', 'Álex Pina', 'Sam Esmail', 'Spain', 'Spanish', 'An unusual group of robbers attempt to carry out the most perfect robbery in Spanish history - stealing 2.4 billion euros from the Royal Mint of Spain.', 0, 0, 1),
(82, 'MacGyver', 'https://m.media-amazon.com/images/M/MV5BZTI2YTlhMWMtNWY1Mi00NGQ3LWFkMjEtZjI3NmUzYjI1NWFmXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY209_CR7,0,140,209_AL_.jpg', 5, 94, 'ChromaTV', 'dQw4w9WgXcQ', 7.7, '1985-1992', 'Peter M. Lenkov', 'Sara Colleton', 'United States', 'English', 'The adventures of a secret Agent armed with almost infinite scientific resourcefulness.', 0, 0, 1),
(83, '13 Reasons Why', 'https://m.media-amazon.com/images/M/MV5BYmRhZjkyMjEtNjRkMS00MDQ0LTg2NGMtMTQ3ZjE0NjJmMjM2L2ltYWdlXkEyXkFqcGdeQXVyNTY0MTkxMTg@._V1_UY209_CR0,0,140,209_AL_.jpg', 4, 49, 'BingeWave', 'dQw4w9WgXcQ', 7.5, '2017-2020', 'Mandy Teefey', 'Scott M. Gimple', 'United States', 'English', 'Follows teenager Clay Jensen, in his quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life.', 0, 0, 1),
(84, 'The Punisher', 'https://m.media-amazon.com/images/M/MV5BNjJhZDZhNWYtMjdhYS00NjkyLWE5NzItMzljNmQ3NGE4MGZjXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_UY209_CR8,0,140,209_AL_.jpg', 2, 26, 'ScreenDynasty', 'dQw4w9WgXcQ', 8.5, '2017-2019', 'Steve Lightfoot', 'Seth MacFarlane', 'United States', 'English', 'After his revenge on those who murdered his family, aimless Marine veteran Frank Castle finds a new meaning in life as a vigilante known as \" The Punisher \".', 0, 0, 1),
(85, 'The Gifted', 'https://m.media-amazon.com/images/M/MV5BMjIxODM5MDUyMV5BMl5BanBnXkFtZTgwMjY4MjI1NjM@._V1_UY209_CR0,0,140,209_AL_.jpg', 2, 29, 'PineApple+', 'dQw4w9WgXcQ', 7.2, 'I) (2017-2019', 'Matt Nix', 'Seth MacFarlane', 'United States', 'English', 'In a world where mutated humans are treated with distrust and fear, an institute for mutants battles to achieve peaceful co-existence with humanity.', 0, 0, 1),
(86, 'True Blood', 'https://m.media-amazon.com/images/M/MV5BMDVjZDQ2N2MtMzMxYy00ZjliLTg5YjAtNjk1OTUwYjVjNWQ0XkEyXkFqcGdeQXVyNzA5NjUyNjM@._V1_UX140_CR0,0,140,209_AL_.jpg', 7, 80, 'CineHub', 'dQw4w9WgXcQ', 7.9, '2008-2014', 'Alan Ball', 'Stephen Hillenburg', 'United States', 'English', 'Telepathic waitress Sookie Stackhouse encounters a strange new supernatural world when she meets the mysterious Bill Compton, a southern Louisiana gentleman and vampire.', 0, 0, 1),
(87, 'BoJack Horseman', 'https://m.media-amazon.com/images/M/MV5BYWQwMDNkM2MtODU4OS00OTY3LTgwOTItNjE2Yzc0MzRkMDllXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR0,0,140,209_AL_.jpg', 6, 77, 'ChromaTV', 'dQw4w9WgXcQ', 8.8, '2014-2020', 'Raphael Bob-Waksberg', 'Steve Blackman', 'United States', 'English', 'BoJack Horseman was the star of the hit television show \" Horsin Around\" in the \'80 s and \'90s, but now he\'s washed up, living in Hollywood, complaining about everything, and wearing colorful sweaters.', 0, 0, 1),
(88, 'Modern Family', 'https://m.media-amazon.com/images/M/MV5BNzRhNWIxYTEtYjc2NS00YWFlLWFhOGEtMDZiMWM1M2RkNDkyXkEyXkFqcGdeQXVyNjc0MjkzNjc@._V1_UY209_CR0,0,140,209_AL_.jpg', 11, 250, 'FlickSphere', 'dQw4w9WgXcQ', 8.5, '2009-2020', 'Christopher Lloyd', 'Steve Lightfoot', 'United States', 'English', 'Three different but related families face trials and tribulations in their own uniquely comedic ways.', 0, 0, 1),
(89, 'The Queen\'s Gambit', 'https://m.media-amazon.com/images/M/MV5BM2EwMmRhMmUtMzBmMS00ZDQ3LTg4OGEtNjlkODk3ZTMxMmJlXkEyXkFqcGdeQXVyMjM5ODk1NDU@._V1_UY209_CR0,0,140,209_AL_.jpg', 1, 7, 'FlickSphere', 'dQw4w9WgXcQ', 8.6, '2020', 'William Horberg', 'Steven S. DeKnight', 'United States', 'English', 'Orphaned at the tender age of nine, prodigious introvert Beth Harmon discovers and masters the game of chess in 1960s USA. But child stardom comes at a price.', 0, 0, 1),
(90, 'Arrested Development', 'https://m.media-amazon.com/images/M/MV5BNTFlYTE2YTItZmQ1NS00ZWQ5LWI3OGUtYTQzNDMyZmEyYTZjXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UY209_CR0,0,140,209_AL_.jpg', 5, 84, 'BingeWave', 'dQw4w9WgXcQ', 8.7, '2003-2019', 'Mitchell Hurwitz', 'Steven Spielberg, Tom Hanks, Gary Goetzman', 'United States', 'English', 'Level-headed son Michael Bluth takes over family affairs after his father is imprisoned. But the rest of his spoiled, dysfunctional family are making his job unbearable.', 0, 0, 1),
(91, 'Ozark', 'https://m.media-amazon.com/images/M/MV5BZDUxMWNlMTUtYTljZS00MTE0LTlkYjktOTU1ODZjYzBhMTk0XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY209_CR0,0,140,209_AL_.jpg', 4, 38, 'NileSelect', 'dQw4w9WgXcQ', 8.5, '2017-2022', 'Jason Bateman', 'Tim Kring', 'United States', 'English', 'A financial advisor drags his family from Chicago to the Missouri Ozarks, where he must launder money to appease a drug boss.', 0, 0, 1),
(92, 'Luke Cage', 'https://m.media-amazon.com/images/M/MV5BMTQ3MjQyODc3Nl5BMl5BanBnXkFtZTgwMDM3NDc0OTE@._V1_UX140_CR0,0,140,209_AL_.jpg', 2, 26, 'CineHub', 'dQw4w9WgXcQ', 7.3, '2016-2018', 'Cheo Hodari Coker', 'Tom Fontana', 'United States', 'English', 'When a sabotaged experiment gives him super strength and unbreakable skin, Luke Cage becomes a fugitive attempting to rebuild his life in Harlem and must confront his past and fight a battle for the heart of his city.', 0, 0, 1),
(93, 'Sons of Anarchy', 'https://m.media-amazon.com/images/M/MV5BYTMxMGY1OGQtZmUzNy00NjhmLTlhNzItZDBiNzhlMTgwZjZlXkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_UY209_CR0,0,140,209_AL_.jpg', 7, 92, 'CineHub', 'dQw4w9WgXcQ', 8.6, '2008-2014', 'Kurt Sutter', 'Tom Hanks', 'United States', 'English', 'A biker struggles to balance being a father and being involved in an outlaw motorcycle club.', 0, 0, 1),
(94, 'SpongeBob SquarePants', 'https://m.media-amazon.com/images/M/MV5BNTk2NzEyNTQtZTQ5MS00MjAyLTgzMDMtNDNkYTBkM2M2OTU3XkEyXkFqcGdeQXVyODUwNjEzMzg@._V1_UY209_CR1,0,140,209_AL_.jpg', 13, 265, 'ScreenDynasty', 'dQw4w9WgXcQ', 8.2, '1999- ', 'Stephen Hillenburg', 'Trey Parker', 'United States', 'English', 'The misadventures of a talking sea sponge who works at a fast food restaurant, attends a boating school, and lives in an underwater pineapple.', 0, 0, 1),
(95, 'Jessica Jones', 'https://m.media-amazon.com/images/M/MV5BM2QyNmZkNTYtZWQyZi00NDhhLWEzMDItYmIzY2U4ZWVmOWNhXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UY209_CR0,0,140,209_AL_.jpg', 3, 39, 'ScreenDynasty', 'dQw4w9WgXcQ', 7.9, '2015-2019', 'Melissa Rosenberg', 'Vince Gilligan', 'United States', 'English', 'Following the tragic end of her brief superhero career, Jessica Jones tries to rebuild her life as a private investigator, dealing with cases involving people with remarkable abilities in New York City.', 0, 0, 1),
(96, 'The Fresh Prince of Bel-Air', 'https://m.media-amazon.com/images/M/MV5BOGUxOWQ4MzAtMmJjYS00M2U5LWEwZTAtYTc1YmZhNjg2NDRlXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_UX140_CR0,0,140,209_AL_.jpg', 6, 148, 'CineHub', 'dQw4w9WgXcQ', 7.9, '1990-1996', 'Andy Borowitz', 'Vince Gilligan and Peter Gould', 'United States', 'English', 'A streetwise, poor young man from Philadelphia is sent by his mother to live with his aunt, uncle and cousins in their Bel-Air mansion.', 0, 0, 1),
(97, 'Alias', 'https://m.media-amazon.com/images/M/MV5BZmIyMGFkYWEtYjg3Ny00NWUzLTliZWQtOGU5ZGYyZTc0OTI5XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX140_CR0,0,140,209_AL_.jpg', 5, 105, 'BingeWave', 'dQw4w9WgXcQ', 7.6, '2001-2006', 'J.J. Abrams', 'Warren Littlefield', 'United States', 'English', 'Sydney Bristow is an international spy recruited out of college, trained for espionage and self-defense.', 0, 0, 1),
(98, 'Tales from the Crypt', 'https://m.media-amazon.com/images/M/MV5BM2M3YWRkN2MtZDg5OC00NmRmLTliNzctMTBkZjQzZTlkYmQ0XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX140_CR0,0,140,209_AL_.jpg', 7, 93, 'CineHub', 'dQw4w9WgXcQ', 8.0, '1989-1996', 'Robert Zemeckis', 'William Horberg', 'United States', 'English', 'Tales of horror based on the gruesome E.C. comic books of the 1950s presented by the legendary Crypt Keeper, a sinister ghoul obsessed with gallows humor and horrific puns.', 0, 0, 1),
(99, 'Orange Is the New Black', 'https://m.media-amazon.com/images/M/MV5BYjYyM2FmMmMtZDgyZi00NGU3LWI3NzktODllZDY0YzQyNzgyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY209_CR0,0,140,209_AL_.jpg', 7, 91, 'ChromaTV', 'dQw4w9WgXcQ', 8.1, '2013-2019', 'Jenji Kohan', 'Jenji Kohan', 'United States', 'English', 'Convicted of a decade old crime of transporting drug money to an ex-girlfriend, normally law-abiding Piper Chapman is sentenced to a year and a half behind bars to face the reality of how life-changing prison can really be.', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ulist`
--

CREATE TABLE `ulist` (
  `uid` int(1) NOT NULL,
  `email` varchar(22) NOT NULL,
  `uname` varchar(12) NOT NULL,
  `pword` varchar(50) NOT NULL,
  `FavCount` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ulist`
--

INSERT INTO `ulist` (`uid`, `email`, `uname`, `pword`, `FavCount`) VALUES
(0, 'master_rater@gmail.com', 'master_rater', '***', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flist`
--
ALTER TABLE `flist`
  ADD UNIQUE KEY `uid` (`uid`,`sid`),
  ADD KEY `fs_key` (`sid`);

--
-- Indexes for table `glist`
--
ALTER TABLE `glist`
  ADD UNIQUE KEY `Sid` (`Sid`,`Genre`);

--
-- Indexes for table `mylistdb`
--
ALTER TABLE `mylistdb`
  ADD UNIQUE KEY `uid` (`uid`,`Sid`);

--
-- Indexes for table `rlist`
--
ALTER TABLE `rlist`
  ADD UNIQUE KEY `Sid` (`Sid`,`uid`),
  ADD KEY `ru_key` (`uid`);

--
-- Indexes for table `slist`
--
ALTER TABLE `slist`
  ADD PRIMARY KEY (`Sid`),
  ADD UNIQUE KEY `Sname` (`Sname`);

--
-- Indexes for table `ulist`
--
ALTER TABLE `ulist`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uname` (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
