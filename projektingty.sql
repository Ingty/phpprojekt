-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Sty 2020, 11:01
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projektingty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `capsrage`
--

CREATE TABLE `capsrage` (
  `id` int(11) NOT NULL,
  `autor` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `tytul` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historialog`
--

CREATE TABLE `historialog` (
  `id` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `historialog`
--

INSERT INTO `historialog` (`id`, `login`, `data`) VALUES
(1, '123', '2020-01-13 10:03:19');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `janusze`
--

CREATE TABLE `janusze` (
  `id` int(11) NOT NULL,
  `autor` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `tytul` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasyki`
--

CREATE TABLE `klasyki` (
  `id` int(11) NOT NULL,
  `autor` text COLLATE utf8_polish_ci NOT NULL,
  `tytul` text COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `krotkie`
--

CREATE TABLE `krotkie` (
  `id` int(11) NOT NULL,
  `autor` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `tytul` mediumtext COLLATE utf8_polish_ci NOT NULL,
  `data` date NOT NULL,
  `tresc` longtext COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `login` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `typ` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `typ`) VALUES
(1, 'admin', 'admin', 'premium'),
(5, 'okon', 'szczupak', ''),
(6, '123', '123', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `capsrage`
--
ALTER TABLE `capsrage`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `historialog`
--
ALTER TABLE `historialog`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `janusze`
--
ALTER TABLE `janusze`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klasyki`
--
ALTER TABLE `klasyki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `krotkie`
--
ALTER TABLE `krotkie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `capsrage`
--
ALTER TABLE `capsrage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `historialog`
--
ALTER TABLE `historialog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `janusze`
--
ALTER TABLE `janusze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `klasyki`
--
ALTER TABLE `klasyki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `krotkie`
--
ALTER TABLE `krotkie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
