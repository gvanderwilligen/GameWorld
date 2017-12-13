-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 13 dec 2017 om 08:34
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--
CREATE DATABASE IF NOT EXISTS `gameworld` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gameworld`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gamecategory`
--

DROP TABLE IF EXISTS `gamecategory`;
CREATE TABLE `gamecategory` (
  `categoryID` int(5) NOT NULL,
  `categoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `gamecategory`
--

INSERT INTO `gamecategory` (`categoryID`, `categoryName`) VALUES
(1, 'playstation'),
(2, 'xbox'),
(3, 'PC');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `Afbeelding` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Prijs` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Beschrijving` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `addtocart` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`id`, `Afbeelding`, `Title`, `Prijs`, `Beschrijving`, `addtocart`, `category_id`) VALUES
(1, 'battlefield1.jpg', 'Battlefield 1 PS4', '59.95', 'Ervaar het begin van totale oorlog in Battlefield 1. Baan je een weg door epische gevechten, variërend van krappe belegerde Franse steden tot zwaar verdedigde bergforten in de Italiaanse Alpen, en aanschouw waanzinnige veldslagen in de woestijn van Arabië.', '', 1),
(2, 'battlefield4.jpg', 'Battlefield 4 XBOX', '49.95', 'Ervaar het begin van totale oorlog in Battlefield 1. Baan je een weg door epische gevechten, variërend van krappe belegerde Franse steden tot zwaar verdedigde bergforten in de Italiaanse Alpen, en aanschouw waanzinnige veldslagen in de woestijn van Arabië.', '', 2),
(3, 'battlefield1.jpg', 'Battlefield 1 XBOX', '49.99', 'Ervaar het begin van totale oorlog in Battlefield 1. Baan je een weg door epische gevechten, variërend van krappe belegerde Franse steden tot zwaar verdedigde bergforten in de Italiaanse Alpen, en aanschouw waanzinnige veldslagen in de woestijn van Arabië.', '', 2),
(4, 'battlefield1.jpg', 'Battlefield 1 PC', '29.99', 'Ervaar het begin van totale oorlog in Battlefield 1. Baan je een weg door epische gevechten, variërend van krappe belegerde Franse steden tot zwaar verdedigde bergforten in de Italiaanse Alpen, en aanschouw waanzinnige veldslagen in de woestijn van Arabië.', '', 3),
(5, 'battlefield4.jpg', 'Battlefield 4 PC', '29.99', 'Ervaar het begin van totale oorlog in Battlefield 1. Baan je een weg door epische gevechten, variërend van krappe belegerde Franse steden tot zwaar verdedigde bergforten in de Italiaanse Alpen, en aanschouw waanzinnige veldslagen in de woestijn van Arabië.', '', 3),
(6, 'battlefield4.jpg', 'Battlefield 4 PS4 ', '59.99', 'Ervaar het begin van totale oorlog in Battlefield 1. Baan je een weg door epische gevechten, variërend van krappe belegerde Franse steden tot zwaar verdedigde bergforten in de Italiaanse Alpen, en aanschouw waanzinnige veldslagen in de woestijn van Arabië.', '', 1),
(7, 'overwatch.jpg', 'Overwatch PC', '29.99', 'De toekomst staat op het spel\r\nSoldaten. Wetenschappers. Avonturiers. Rare schepsels. Er is een wereldwijde crisis aan de gang. Daarom werd er een internationaal team van helden opgericht om de vrede te herstellen in een door oorlog verscheurde wereld:\r\nOverwatch.\r\nOverwatch maakte een einde aan de crisis en hielp mee de vrede te bewaren in de decennia die volgden. Dankzij hen brak er een tijdperk van exploratie, innovatie en ontdekkingen aan. Maar na vele jaren verwaterde hun invloed en werd het team uiteindelijk ontbonden. ', '', 3),
(8, 'overwatch.jpg', 'Overwatch XBOX', '49.99', 'De toekomst staat op het spel\r\nSoldaten. Wetenschappers. Avonturiers. Rare schepsels. Er is een wereldwijde crisis aan de gang. Daarom werd er een internationaal team van helden opgericht om de vrede te herstellen in een door oorlog verscheurde wereld:\r\nOverwatch.\r\nOverwatch maakte een einde aan de crisis en hielp mee de vrede te bewaren in de decennia die volgden. Dankzij hen brak er een tijdperk van exploratie, innovatie en ontdekkingen aan. Maar na vele jaren verwaterde hun invloed en werd het team uiteindelijk ontbonden. ', '', 2),
(9, 'overwatch.jpg', 'Overwatch PS4', '59.99', 'De toekomst staat op het spel\r\nSoldaten. Wetenschappers. Avonturiers. Rare schepsels. Er is een wereldwijde crisis aan de gang. Daarom werd er een internationaal team van helden opgericht om de vrede te herstellen in een door oorlog verscheurde wereld:\r\nOverwatch.\r\nOverwatch maakte een einde aan de crisis en hielp mee de vrede te bewaren in de decennia die volgden. Dankzij hen brak er een tijdperk van exploratie, innovatie en ontdekkingen aan. Maar na vele jaren verwaterde hun invloed en werd het team uiteindelijk ontbonden. ', '', 1),
(10, 'rocketleague.jpg', 'Rocket League PS4', '59.99', 'Rocket League is een racevoetbalspel ontwikkeld door Psyonix. In het spel besturen spelers een auto waarmee ze moeten proberen doelpunten te scoren op een veld dat overeenkomsten vertoont met een voetbalveld. Het spel is beschikbaar op de Nintendo Switch, PlayStation 4, Xbox One en pc met Microsoft Windows of Linux via Steam. Tijdens online wedstrijden kunnen PS4- en pc-spelers met Microsoft Windows samen in één server spelen.', '', 1),
(11, 'rocketleague.jpg', 'Rocket League XBOX', '49.99', 'Rocket League is een racevoetbalspel ontwikkeld door Psyonix. In het spel besturen spelers een auto waarmee ze moeten proberen doelpunten te scoren op een veld dat overeenkomsten vertoont met een voetbalveld. Het spel is beschikbaar op de Nintendo Switch, PlayStation 4, Xbox One en pc met Microsoft Windows of Linux via Steam. Tijdens online wedstrijden kunnen PS4- en pc-spelers met Microsoft Windows samen in één server spelen.', '', 2),
(12, 'rocketleague.jpg', 'Rocket League PC', '19.99', 'Rocket League is een racevoetbalspel ontwikkeld door Psyonix. In het spel besturen spelers een auto waarmee ze moeten proberen doelpunten te scoren op een veld dat overeenkomsten vertoont met een voetbalveld. Het spel is beschikbaar op de Nintendo Switch, PlayStation 4, Xbox One en pc met Microsoft Windows of Linux via Steam. Tijdens online wedstrijden kunnen PS4- en pc-spelers met Microsoft Windows samen in één server spelen.', '', 3),
(13, 'PCbattlefield1942.jpg', 'Battlefield 1942 PC', '9.99', 'Deze classieker is de beste Battlefield alle tijden. The begin of the battlefield.', '', 3),
(14, 'PCblackops2.png', 'Black Ops 2 PC', '19.99', 'Het spel is het vervolg op Call of Duty: Black Ops, dat zich vooral in de Koude Oorlog afspeelt. Black Ops II speelt zich af in de jaren 80, maar ook in 2025. In deze futuristische setting woedt een oorlog tussen de Verenigde Staten en China over het bezit van zeldzame grondstoffen. In de missies die tijdens de Koude Oorlog afspelen wordt de oorzaak en de opbouw naar de oorlog uitgelegd.[9]', '', 3),
(15, 'callofdutyww2jpg.jpg', 'Call of Duty WWII PS4', '59.99', 'Call of Duty® keert terug naar zijn roots met Call of Duty®: WWII, een adembenemende belevenis die een compleet nieuwe draai geeft aan WOII-games voor een nieuwe generatie. Maak de landing in Normandië op D-Day mee en reis naar de beroemdste locaties van het Europese strijdtoneel uit de grootste oorlog ooit. Beleef de klassieke gevechten uit Call of Duty, de kameraadschappen en de keiharde strijd.', '', 1),
(16, 'callofdutyww2jpg.jpg', 'Call of Duty WWII XBOX', '49.99', 'Call of Duty® keert terug naar zijn roots met Call of Duty®: WWII, een adembenemende belevenis die een compleet nieuwe draai geeft aan WOII-games voor een nieuwe generatie. Maak de landing in Normandië op D-Day mee en reis naar de beroemdste locaties van het Europese strijdtoneel uit de grootste oorlog ooit. Beleef de klassieke gevechten uit Call of Duty, de kameraadschappen en de keiharde strijd.', '', 2),
(17, 'callofdutyww2jpg.jpg', 'Call of Duty WWII PC', '29.99', 'Call of Duty® keert terug naar zijn roots met Call of Duty®: WWII, een adembenemende belevenis die een compleet nieuwe draai geeft aan WOII-games voor een nieuwe generatie. Maak de landing in Normandië op D-Day mee en reis naar de beroemdste locaties van het Europese strijdtoneel uit de grootste oorlog ooit. Beleef de klassieke gevechten uit Call of Duty, de kameraadschappen en de keiharde strijd.', '', 3),
(18, 'GTAV.jpg', 'GTA V PS4', '59.99', 'Grand Theft Auto V is vijfde deel in de sandbox-reeks en speelt zich af in Los Santos, waarin met drie verschillende personages gespeeld kan worden.', '', 1),
(19, 'GTAV.jpg', 'GTA V XBOX', '49.99', 'Grand Theft Auto V is vijfde deel in de sandbox-reeks en speelt zich af in Los Santos, waarin met drie verschillende personages gespeeld kan worden.', '', 2),
(20, 'GTAV.jpg', 'GTA V PC', '29.99', 'Grand Theft Auto V is vijfde deel in de sandbox-reeks en speelt zich af in Los Santos, waarin met drie verschillende personages gespeeld kan worden.', '', 3);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gamecategory`
--
ALTER TABLE `gamecategory`
  MODIFY `categoryID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
