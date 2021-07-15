-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 15, 2021 at 01:47 PM
-- Server version: 8.0.23
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `jela`
--

DROP TABLE IF EXISTS `jela`;
CREATE TABLE IF NOT EXISTS `jela` (
  `cena` int DEFAULT NULL,
  `naziv` varchar(100) NOT NULL,
  `opis` varchar(100) NOT NULL,
  `id` int DEFAULT NULL,
  `slika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jela`
--

INSERT INTO `jela` (`cena`, `naziv`, `opis`, `id`, `slika`) VALUES
(400, 'pileca_salata', 'piletina,zelena salata,maslinovo ulje,feta sir,paradajz', 1, ''),
(200, 'sendvic', 'tost,pecenica,kackavalj,kecap,majonez,krastavac', 2, ''),
(570, 'pasta', 'testenina,sunka,sos,zacini', 3, ''),
(480, 'pizza', 'testo,kecap,kackavalj,origano,prsuta,masline,zacini', 4, ''),
(260, 'sufle', 'brasno,jaja,secer,kakao,cokolada,margarin', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `jelo`
--

DROP TABLE IF EXISTS `jelo`;
CREATE TABLE IF NOT EXISTS `jelo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(100) NOT NULL,
  `opis` varchar(255) NOT NULL,
  `cena` decimal(10,2) NOT NULL,
  `slika` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jelo`
--

INSERT INTO `jelo` (`id`, `naziv`, `opis`, `cena`, `slika`) VALUES
(1, 'pileca salata', 'piletina,zelena salata,maslinovo ulje,feta sir,paradajz', '550.00', 'images/pileca_salata.jpg'),
(2, 'sendvic', 'pecenica,kackavalj,kecap,majonez,krastavac,paradajz', '200.00', 'images/sendvic.jpg'),
(3, 'pasta', 'testenina,sunka,sos,zacini,maslinovo ulje,pelat', '660.00', 'images/pasta.jpg'),
(4, 'pizza', 'testo,kecap,kackavalj,origano,prsuta,masline,zacini', '480.00', 'images/pizza.jpg'),
(5, 'sufle', 'brasno,jaja,secer,kakao,cokolada,margarin', '270.00', 'images/sufle.jpg'),
(6, 'cokoladna torta ', 'jaja,secer,brasno,kakao,mleko,cokolada,margarin,slag', '210.00', 'images/torta.jpg'),
(7, 'palacinke sa eurokremom', 'brašno,jaja,ulje,mleko,šećer,eurokrem', '250.00', 'images/palacinke.jpg'),
(8, 'vocna salata', 'slag,prelivi,cokoladice,banane,kivi,jagode,ananas,nektarine', '340.00', 'images/vocna_salata.jpg'),
(9, 'kolac', 'jaja,brasno,mleko,plazma,cokolada,visnje', '270.00', 'images/kolac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

DROP TABLE IF EXISTS `korpa`;
CREATE TABLE IF NOT EXISTS `korpa` (
  `id_korpe` int NOT NULL AUTO_INCREMENT,
  `id_jela` int NOT NULL,
  `kolicina` int NOT NULL,
  PRIMARY KEY (`id_korpe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `porudzbina`
--

DROP TABLE IF EXISTS `porudzbina`;
CREATE TABLE IF NOT EXISTS `porudzbina` (
  `id_por` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `adresa` varchar(100) NOT NULL,
  `telefon` varchar(100) NOT NULL,
  `nacin_placanja` varchar(100) NOT NULL,
  `id_kor` int NOT NULL,
  PRIMARY KEY (`id_por`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `porudzbina`
--

INSERT INTO `porudzbina` (`id_por`, `email`, `ime`, `prezime`, `adresa`, `telefon`, `nacin_placanja`, `id_kor`) VALUES
(1, 'jovana@gmail.com', 'jov', 'jo', 'jksjkdjkds', '089/768', 'kes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

DROP TABLE IF EXISTS `rezervacija`;
CREATE TABLE IF NOT EXISTS `rezervacija` (
  `rez_email` varchar(100) NOT NULL,
  `rez_ime` varchar(100) NOT NULL,
  `rez_prezime` varchar(100) NOT NULL,
  `datum` varchar(100) NOT NULL,
  `rez_tel` varchar(100) NOT NULL,
  `br_osoba` int NOT NULL,
  `rez_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rez_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`rez_email`, `rez_ime`, `rez_prezime`, `datum`, `rez_tel`, `br_osoba`, `rez_id`) VALUES
('j@gmail.com', 'k', 'j', '12-34-5654', '9787/389229', 3, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
