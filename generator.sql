-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 25 2016 г., 13:55
-- Версия сервера: 5.5.47-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `generator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cinema`
--

CREATE TABLE IF NOT EXISTS `cinema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET latin1 NOT NULL,
  `image` varchar(250) CHARACTER SET latin1 NOT NULL,
  `date` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `cinema`
--

INSERT INTO `cinema` (`id`, `name`, `image`, `date`) VALUES
(1, 'CITIZEN KANE', '1.jpg', '1941'),
(2, 'CASABLANCA', '1.jpg', '1942'),
(3, 'GONE WITH THE WIND', '1.jpg', '1939'),
(4, 'LAWRENCE OF ARABIA', '1.jpg', '1962'),
(5, 'WIZARD OF OZ, THE', '1.jpg', '1967'),
(6, 'GRADUATE', '1.jpg', '1967'),
(7, 'ON THE WATERFRONT', '1.jpg', '1954'),
(8, 'STAR WARS', '1.jpg', '1977'),
(9, 'THE SHAWSHANK REDEMPTION', '1.jpg', '1994'),
(10, 'PULP FICTION', '1.jpg', '1994'),
(11, 'GLADIATOR', '1.jpg', '2000'),
(12, 'IT''S A WONDERFUL LIFE', '1.jpg', '1946'),
(13, 'BLADE RUNNER', '1.jpg', '1982'),
(14, 'SCHINDLER''S LIST', '1.jpg', '1993'),
(15, 'GOODFELLAS', '1.jpg', '1990'),
(16, 'JAWS', '1.jpg', '1975'),
(17, 'APOCALYPSE NOW', '1.jpg', '1979'),
(18, 'ONE FLEW OVER THE CUCKOO''S NEST', '1.jpg', '1975'),
(19, 'THE MATRIX', '1.jpg', '1999'),
(20, 'CROUCHING TIGER, HIDDEN DRAGON', '1.jpg', '1980'),
(21, 'RAGING BULL', '1.jpg', '1941'),
(22, 'ET: THE EXTRA-TERRESTRIAL', '1.jpg', '1982'),
(23, 'TAXI DRIVER', '1.jpg', '1976'),
(24, 'LIFE OF BRIAN', '1.jpg', '1979'),
(25, 'SINGIN'' IN THE RAIN', '1.jpg', '1952'),
(26, 'LA CONFIDENTIAL', '1.jpg', '1997'),
(27, 'Psycho', '1.jpg', '1960'),
(28, 'Rear Window', '1.jpg', '1954'),
(29, 'Raging Bull', '1.jpg', '1980'),
(30, 'Paths of Glory', '1.jpg', '1957');

-- --------------------------------------------------------

--
-- Структура таблицы `essence`
--

CREATE TABLE IF NOT EXISTS `essence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL COMMENT 'Type (cinema, music, etc)',
  `essence_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `place` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `name`, `place`, `start_date`, `end_date`, `image`) VALUES
(1, 'Event1', 'Place1', '2016-08-09', '2016-08-18', '1.jpg'),
(2, 'Event2', 'Place2', '2016-08-09', '2016-08-18', '2.jpg'),
(3, 'Event3', 'Place3', '2016-08-09', '2016-08-18', '3.jpg'),
(4, 'Event4', 'Place4', '2016-08-09', '2016-08-18', '4.jpg'),
(5, 'Event5', 'Place5', '2016-08-09', '2016-08-18', '5.jpg'),
(6, 'Event6', 'Place6', '2016-08-09', '2016-08-18', '6.jpg'),
(7, 'Event7', 'Place7', '2016-08-09', '2016-08-18', '7.jpg'),
(8, 'Event8', 'Plac8', '2016-08-09', '2016-08-18', '8.jpg'),
(9, 'Event9', 'Place9', '2016-08-09', '2016-08-18', '9.jpg'),
(10, 'Event10', 'Place10', '2016-08-09', '2016-08-18', '10.jpg'),
(11, 'Event11', 'Place11', '2016-08-09', '2016-08-18', '11.jpg'),
(12, 'Event12', 'Place12', '2016-08-09', '2016-08-18', '12.jpg'),
(13, 'Event13', 'Place13', '2016-08-09', '2016-08-18', '13.jpg'),
(14, 'Event14', 'Place14', '2016-08-09', '2016-08-18', '14.jpg'),
(15, 'Event15', 'Place15', '2016-08-09', '2016-08-18', '15.jpg'),
(16, 'Event16', 'Place16', '2016-08-09', '2016-08-18', '16.jpg'),
(17, 'Event17', 'Place17', '2016-08-09', '2016-08-18', '17.jpg'),
(18, 'Event18', 'Place18', '2016-08-09', '2016-08-18', '18.jpg'),
(19, 'Event19', 'Place19', '2016-08-09', '2016-08-18', '19.jpg'),
(20, 'Event20', 'Place20', '2016-08-09', '2016-08-18', '20.jpg'),
(21, 'Event21', 'Place21', '2016-08-09', '2016-08-18', '21.jpg'),
(22, 'Event22', 'Place2', '2016-08-09', '2016-08-18', '22.jpg'),
(23, 'Event23', 'Place23', '2016-08-09', '2016-08-18', '23.jpg'),
(24, 'Event24', 'Place24', '2016-08-09', '2016-08-18', '24.jpg'),
(25, 'Event25', 'Place25', '2016-08-09', '2016-08-18', '25.jpg'),
(26, 'Event26', 'Place26', '2016-08-09', '2016-08-18', '26.jpg'),
(27, 'Event27', 'Place27', '2016-08-09', '2016-08-18', '27.jpg'),
(28, 'Event28', 'Place28', '2016-08-09', '2016-08-18', '28.jpg'),
(29, 'Event29', 'Place29', '2016-08-09', '2016-08-18', '29.jpg'),
(30, 'Event30', 'Place30', '2016-08-09', '2016-08-18', '30.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE IF NOT EXISTS `music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `singer` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `album` varchar(250) NOT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Дамп данных таблицы `music`
--

INSERT INTO `music` (`id`, `name`, `singer`, `image`, `album`, `date`) VALUES
(1, 'The Dark Side', 'Pink Floyd', '1.jpg', 'The Dark Side of the Moon', '1973'),
(2, 'Nevermind', 'Nirvana', '2.jpg', 'Nevermind', '1991'),
(3, 'A Night', 'Queen', '3.jpg', 'A Night at the Opera', '1975'),
(4, 'Metallica', 'Metallica', '4.jpg', 'Metallica', '1991'),
(5, 'Machine', 'Deep Purple', '5.jpg', 'Machine Head', '1972'),
(6, 'Sgt.Pepper', 'The Beatles', '6.jpg', 'Sgt.Pepper', '1967'),
(7, 'Highway', 'AC/DC', '7.jpg', 'Highway To Hell', '1979'),
(8, 'Led Zeppelin', 'Led Zeppelin', '8.jpg', 'Led Zeppelin IV', '1973'),
(9, 'Appetite', 'Guns N’ Roses', '9.jpg', 'Appetite for Destruction', '1987'),
(10, 'Double', 'John Lennon', '10.jpg', 'Double Fantasy', '1987'),
(11, 'Paranoid', 'Black Sabbath', '11.jpg', 'Paranoid', '1973'),
(12, 'Achtung Baby', 'U2', '12.jpg', 'Achtung Baby', '1991'),
(13, 'Hysteria', 'Def Leppard', '13.jpg', 'Hysteria', '1973'),
(14, 'American', 'Green Day', '14.jpg', 'American Idiot', '2005'),
(15, 'Invisible', 'Genesis', '15.jpg', 'Invisible Touch', '1987'),
(16, 'The Doors', 'The Doors', '16.jpg', 'The Doors', '1967'),
(17, 'Get ', 'Aerosmith', '17.jpg', 'Get a grip', '1991'),
(18, 'Whitesnake', 'Whitesnake', '18.jpg', 'Whitesnake', '1987'),
(19, ' (What’s the Story)', 'Oasis', '19.jpg', ' (What’s the Story) Morning Glory?', '1997'),
(20, 'Brothers In Arms', 'Dire Straits', '20.jpg', 'Brothers In Arms', '1987'),
(21, 'Out of', 'R.E.M.', '21.jpg', 'Out of time', '1973'),
(22, 'Never mind', 'Sex Pistols', '22.jpg', 'Never mind the bollocks', '1987'),
(23, 'Slippery', 'Bon Jovi', '23.jpg', 'Slippery When Wet', '1985'),
(24, 'Songs of Faith', 'Depeche Mode', '24.jpg', 'Songs of Faith and Devotion', '1993'),
(25, 'Seventh son', 'Iron Maiden', '25.jpg', 'Seventh son of a seventh son', '1988'),
(26, 'Californication', 'RHCP', '26.jpg', 'Californication', '1999'),
(27, ' The Queen ', 'The Smiths', '27.jpg', ' The Queen Is Death', '1989'),
(28, 'Dynasty', 'KISS', '28.jpg', 'Dynasty', '1979'),
(29, 'The Great', 'Blur', '29.jpg', 'The Great Escape', '1995'),
(30, 'The Rolling Stones ', 'The Rolling Stones ', '30.jpg', 'The Rolling Stones ', '1973');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
