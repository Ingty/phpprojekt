-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Gru 2019, 23:18
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projektingtyingty`
--

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

--
-- Zrzut danych tabeli `klasyki`
--

INSERT INTO `klasyki` (`id`, `autor`, `tytul`, `data`, `tresc`) VALUES
(1, 'Anon14', 'Jak wyjaśniłem Newtona', '2019-03-18', 'Siedzę sobie spokojnie przy biurku i rozwiązuje zadanie z fizyki. Wypisuję dane, piszę wzór, podstawiam za ‘g’ 10 kg/ms2 i nagle słyszę\r\n- ty kurwo\r\nOdwracam się, nikogo nie widzę, dochodzę do wniosku, że matura niszczy mi psychikę i wracam do zadania. Liczę, liczę, wychodzi mi wynik i już mam zamieniać symbole na liczby, kiedy słyszę ciche\r\n- a tylko kurwa spróbuj\r\nLenin nic nie pisał o opętanych kalkulatorach, zatem nie istnieją, więc piszę zamiast ‘g’ 10 i nagle dostaję jabłkiem w głowę. Odwracam się, a tutaj wkurwiony lub niespełna rozumu Izaak Newton napierdala we mnie owocami. Trochę się zdziwiłem, bo w końcu facet od 292 lat powinien wąchać kwiatki od spodu, no ale nic. Pytam się kulturalnie:\r\n- Czego?\r\n- TY KURWA GNOJU, TOŻ JA CI CAŁĄ MECHANIKĘ WYMYŚLIŁEM, A TY MNIE TAK SZKALUJESZ? JAKIE, KURWA, DZIESIĘĆ MNIE NA KILOGRAM, ŚWINIO NIEMYTA? DZIEWIĘĆ, KOMA, OSIEMDZIESIĄT, KURWA, JEDEN! JAK CI ZARAZ Z CAŁEJ SIŁY PRZYPIERDOLĘ, TO NAWET ŚLEPY ZAUWAŻY RÓŻNICZKĘ!\r\nO nieeeee, nie będzie Anglik pluł nam w twarz. Wymyśliłem błyskawicznie plan zemsty i spytałem:\r\n- No dobra, panie Newton, wymyślił pan prawo powszechnego ciążenia?\r\n- Zgadza się, chamie.\r\n- Mówi ono, że każde dwa ciała posiadające masę przyciągają się nawzajem, prawda?\r\n- Owszem, ale co to...\r\n- To czemu nie potrafiłeś przyciągnąć żadnej dziewczyny, spierdolino?\r\nTrafiony, zatopiony! Akcja wywołała reakcję – Newton stanął osłupiony i usiłował się nie zesrać. Korzystając z okazji, rzuciłem się w jego stronę i obrysowałem podłogę dookoła kredą.\r\n- Co ty odpierdalasz, nędzniku? – spytał fizyk, spojrzał pod siebie i zrozumiał. Był to Newton na metr kwadratowy, czyli Pascal. Zaczął coś do mnie bełkotać po francusku, na co kazałem mu się zamknąć i zrobić pierogi z okrasą.\r\nNadal nie wiem, jak dwóch wielkich kucharzy zmieściło się w mojej kuchni. A jabłka Newtona były przepyszne.'),
(2, 'pastos', 'Idę na dziewczyny', '2017-11-11', 'JAK JESTEM W DOMU RODZINNYM I GDZIEŚ WYCHODZĘ TO MÓWIĘ\r\n- MAME WYCHODZĘ\r\nA MAME SIĘ ZAWSZE PYTA\r\n- A GDZIE IDZIESZ?\r\nA JA CZASEM WALNĘ ŻARTEM\r\n- A NA DZIEWCZYNY IDĘ HEHE\r\nI MAME I RESZTA OBECNYCH PRZY ROZMOWIE DOMOWNIKÓW/GOŚCI TEŻ SIĘ\r\nŚMIEJE\r\n-HEHEHEHE\r\nI TAK ŚMIEJEMY SIĘ RAZEM A POTEM JA WYCHODZĘ I PŁACZĘ PO CICHU');

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
(1, 'admin', 'admin', 'premium');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasyki`
--
ALTER TABLE `klasyki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `klasyki`
--
ALTER TABLE `klasyki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
