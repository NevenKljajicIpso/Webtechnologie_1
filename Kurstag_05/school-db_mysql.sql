-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 18. Okt 2016 um 10:17
-- Server-Version: 10.1.16-MariaDB
-- PHP-Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `school-db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(45) DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `school_id`, `teacher_id`) VALUES
(1, 'Elektrotechnik', 1, 1),
(2, 'Tiefbau', 1, NULL),
(3, 'Projektleiter', 2, 2),
(4, 'Mikrobiologe', 2, 3),
(5, 'Deutsch', 3, 4),
(6, 'Englisch', 3, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `courses_students`
--

CREATE TABLE `courses_students` (
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `courses_students`
--

INSERT INTO `courses_students` (`course_id`, `student_id`) VALUES
(1, 5),
(6, 5),
(1, 6),
(6, 6),
(4, 7),
(2, 8),
(4, 8),
(2, 9),
(5, 9),
(4, 10),
(5, 10),
(6, 11),
(4, 12),
(6, 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `person_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `persons`
--

INSERT INTO `persons` (`id`, `name`, `firstname`, `person_type_id`) VALUES
(1, 'Teufel', 'Phil', 1),
(2, 'Heusser', 'Harry', 1),
(3, 'Dankner', 'Claudia', 1),
(4, 'Pechstein', 'Daphne', 1),
(5, 'Petrovic', 'Doris', 2),
(6, 'Adam', 'Samuel', 2),
(7, 'Lustig', 'Peter', 2),
(8, 'Herzig', 'Daniela', 2),
(9, 'Matt', 'Bernhard', 2),
(10, 'Eichmann', 'Rolf', 2),
(11, 'Witzig', 'Barbara', 2),
(12, 'Decker', 'Eberhard', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `person_types`
--

CREATE TABLE `person_types` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `person_types`
--

INSERT INTO `person_types` (`id`, `type`) VALUES
(1, 'Dozent'),
(2, 'Student');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `schools`
--

INSERT INTO `schools` (`id`, `name`, `city`) VALUES
(1, 'ibz', 'Aarau'),
(2, 'benedict', 'Zürich'),
(3, 'bellingua', 'Zürich');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`,`school_id`),
  ADD KEY `fk_courses_schools_idx` (`school_id`);

--
-- Indizes für die Tabelle `courses_students`
--
ALTER TABLE `courses_students`
  ADD PRIMARY KEY (`student_id`,`course_id`),
  ADD KEY `fk_persons_has_courses_courses1_idx` (`course_id`),
  ADD KEY `fk_persons_has_courses_persons1_idx` (`student_id`);

--
-- Indizes für die Tabelle `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`,`person_type_id`),
  ADD KEY `fk_persons_person_types1_idx` (`person_type_id`);

--
-- Indizes für die Tabelle `person_types`
--
ALTER TABLE `person_types`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT für Tabelle `person_types`
--
ALTER TABLE `person_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_courses_schools` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `courses_students`
--
ALTER TABLE `courses_students`
  ADD CONSTRAINT `fk_persons_has_courses_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_persons_has_courses_persons1` FOREIGN KEY (`student_id`) REFERENCES `persons` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `fk_persons_person_types1` FOREIGN KEY (`person_type_id`) REFERENCES `person_types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
