-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2026. Okt 10. 06:38
-- Kiszolgáló verziója: 8.4.7
-- PHP verzió: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogger`
--

DROP TABLE IF EXISTS `blogger`;
CREATE TABLE IF NOT EXISTS `blogger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `password` text,
  `RegistrationTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `blogger`
--

INSERT INTO `blogger` (`id`, `name`, `email`, `age`, `password`, `RegistrationTime`) VALUES
(1, 'Kovacs Bela', 'kovacs.bela@gmail.com', 34, 'jelszo123', '2021-03-14 09:12:00'),
(2, 'Nagy Aniko', 'nagy.aniko@freemail.hu', 28, 'Titok2021', '2021-04-02 14:35:10'),
(3, 'Szabo Peter', 'szabo.peter@gmail.com', 52, 'Peti1972', '2021-04-18 08:05:45'),
(4, 'Toth Erika', 'toth.erika@citromail.hu', 41, 'erika41', '2021-05-09 19:22:30'),
(5, 'Horvath Gabor', 'horvath.gabor@gmail.com', 63, 'GaborBacsi', '2021-05-27 11:47:12'),
(6, 'Varga Julia', 'varga.julia@indamail.hu', 23, 'julcsi23', '2021-06-11 16:03:55'),
(7, 'Kiss Laszlo', 'kiss.laszlo@gmail.com', 37, 'Laci1988', '2021-06-30 07:58:20'),
(8, 'Molnar Zsofia', 'molnar.zsofia@gmail.com', 19, 'zsofi2005', '2021-07-15 21:14:05'),
(9, 'Nemeth Tamas', 'nemeth.tamas@freemail.hu', 45, 'TamasN45', '2021-08-01 10:26:38'),
(10, 'Farkas Andrea', 'farkas.andrea@gmail.com', 56, 'Andi1966', '2021-08-22 13:41:09'),
(11, 'Balogh Istvan', 'balogh.istvan@citromail.hu', 68, 'Pista68x', '2021-09-05 09:33:17'),
(12, 'Papp Katalin', 'papp.katalin@gmail.com', 31, 'Kati0931', '2021-09-19 18:07:44'),
(13, 'Takacs Roland', 'takacs.roland@gmail.com', 26, 'Roli2606', '2021-10-03 12:19:51'),
(14, 'Juhasz Marta', 'juhasz.marta@indamail.hu', 49, 'MartaJ49', '2021-10-25 15:55:02'),
(15, 'Lakatos Zoltan', 'lakatos.zoltan@gmail.com', 38, 'Zoli38', '2021-11-07 08:44:26'),
(16, 'Meszaros Eva', 'meszaros.eva@freemail.hu', 59, 'EvaM1963', '2021-11-28 20:31:13'),
(17, 'Olah Sandor', 'olah.sandor@gmail.com', 71, 'Sanyi71', '2021-12-12 10:02:47'),
(18, 'Simon Reka', 'simon.reka@gmail.com', 22, 'Reka2002', '2021-12-30 23:18:35'),
(19, 'Racz Kristof', 'racz.kristof@citromail.hu', 33, 'Kris3312', '2022-01-14 07:26:09'),
(20, 'Fekete Nikolett', 'fekete.niki@gmail.com', 27, 'Niki2795', '2022-01-29 17:40:22'),
(21, 'Szilagyi Adam', 'szilagyi.adam@gmail.com', 44, 'AdamSz44', '2022-02-11 11:11:11'),
(22, 'Torok Beatrix', 'torok.bea@freemail.hu', 36, 'Bea3610', '2022-02-27 14:53:48'),
(23, 'Fabian Denes', 'fabian.denes@gmail.com', 55, 'Denes55x', '2022-03-16 09:07:30'),
(24, 'Gal Veronika', 'gal.veronika@indamail.hu', 30, 'Vera3003', '2022-04-04 18:22:16'),
(25, 'Sipos Gergely', 'sipos.gergely@gmail.com', 21, 'Gergo21', '2022-04-21 22:35:59'),
(26, 'Boros Melinda', 'boros.melinda@gmail.com', 47, 'Meli4711', '2022-05-08 06:49:24'),
(27, 'Orosz Attila', 'orosz.attila@citromail.hu', 62, 'Atika62', '2022-05-25 13:14:37'),
(28, 'Halasz Dora', 'halasz.dora@gmail.com', 25, 'Dorka25', '2022-06-10 16:28:03'),
(29, 'Balazs Norbert', 'balazs.norbert@gmail.com', 39, 'Norbi39x', '2022-06-27 10:41:55'),
(30, 'Somogyi Timea', 'somogyi.timea@freemail.hu', 53, 'Timi53', '2022-07-13 19:56:12'),
(31, 'Bogdan Mate', 'bogdan.mate@gmail.com', 20, 'Mate2004', '2022-07-30 08:33:41'),
(32, 'Hegedus Klara', 'hegedus.klara@gmail.com', 66, 'Klari66', '2022-08-17 12:05:28'),
(33, 'Kelemen Viktor', 'kelemen.viktor@indamail.hu', 42, 'Viki4280', '2022-09-02 15:19:07'),
(34, 'Bognar Renata', 'bognar.renata@gmail.com', 29, 'Reni2993', '2022-09-20 20:44:50'),
(35, 'Fulop Csaba', 'fulop.csaba@gmail.com', 50, 'Csabi50', '2022-10-06 07:12:33'),
(36, 'Vincze Agnes', 'vincze.agnes@citromail.hu', 35, 'Agi3587', '2022-10-23 17:38:19'),
(37, 'Szucs Levente', 'szucs.levente@gmail.com', 24, 'Leve24', '2022-11-09 11:50:44'),
(38, 'Deak Petra', 'deak.petra@gmail.com', 46, 'Petra46', '2022-11-26 09:04:57'),
(39, 'Illes Barnabas', 'illes.barnabas@freemail.hu', 58, 'Barni58', '2022-12-14 21:27:15'),
(40, 'Katona Eszter', 'katona.eszter@gmail.com', 32, 'Eszti32', '2023-01-03 13:43:02'),
(41, 'Fodor Marcell', 'fodor.marcell@gmail.com', 18, 'Marci2006', '2023-01-21 18:59:38'),
(42, 'Pinter Szilvia', 'pinter.szilvia@indamail.hu', 61, 'Szilvi61', '2023-02-08 08:15:26'),
(43, 'Hajdu Krisztian', 'hajdu.krisztian@gmail.com', 40, 'Kriszti40', '2023-02-25 10:37:49'),
(44, 'Magyar Emese', 'magyar.emese@gmail.com', 54, 'Emese54x', '2023-03-15 16:02:11'),
(45, 'Balint Robert', 'balint.robert@citromail.hu', 48, 'Robi4875', '2023-04-01 19:24:36'),
(46, 'Veres Alexandra', 'veres.alexandra@gmail.com', 26, 'Szandi26', '2023-04-19 07:48:53'),
(47, 'Antal Zsolt', 'antal.zsolt@gmail.com', 43, 'Zsolti43', '2023-05-06 14:11:29'),
(48, 'Bakos Vivien', 'bakos.vivien@freemail.hu', 27, 'Vivi2796', '2023-05-24 22:06:41'),
(49, 'Gulyas Akos', 'gulyas.akos@gmail.com', 57, 'AkosG57', '2023-06-11 09:29:18'),
(50, 'Kozma Diana', 'kozma.diana@gmail.com', 21, 'Didi2103', '2023-06-29 12:52:07'),
(51, 'Sebestyen Tibor', 'sebestyen.tibor@indamail.hu', 73, 'Tibi73x', '2023-07-17 15:16:44'),
(52, 'Vass Henrietta', 'vass.henrietta@gmail.com', 37, 'Heni3786', '2023-08-04 20:39:22'),
(53, 'Baranyi Daniel', 'baranyi.daniel@gmail.com', 30, 'Dani3093', '2023-08-23 08:53:10'),
(54, 'Csonka Boglarka', 'csonka.boglarka@gmail.com', 51, 'Bogi51', '2023-09-10 17:07:35'),
(55, 'Doman Ferenc', 'doman.ferenc@citromail.hu', 64, 'Feri64x', '2023-09-28 11:31:58');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blogpost`
--

DROP TABLE IF EXISTS `blogpost`;
CREATE TABLE IF NOT EXISTS `blogpost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(40) DEFAULT NULL,
  `content` text,
  `postTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `blogId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogId` (`blogId`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

--
-- A tábla adatainak kiíratása `blogpost`
--

INSERT INTO `blogpost` (`id`, `title`, `content`, `postTime`, `updateTime`, `blogId`) VALUES
(1, 'Az első bejegyzésem', 'Üdv mindenkinek! Elindítottam a blogomat, ide fogom írni a napi gondolataimat és a hobbijaimmal kapcsolatos élményeimet.', '2021-03-20 10:15:00', NULL, 1),
(2, 'Hogyan kezdtem el blogolni', 'Régóta tervezgettem, de végül egy esős vasárnap délután úgy döntöttem, belevágok. Most összefoglalom, hogyan indultam el.', '2021-06-02 18:40:00', '2021-06-03 09:05:00', 1),
(3, 'Téli könyvajánló', 'A hideg estékre három olyan könyvet ajánlok, amelyeket egyszerre el lehet olvasni, és még a teánk is kihűlhet mellette.', '2022-01-10 20:30:00', NULL, 1),
(4, 'Kedvenc receptjeim: gulyásleves', 'A nagymamám receptje szerint készítem, a titka a jó minőségű hús és a lassú főzés. Lépésről lépésre leírom az elkészítését.', '2021-04-15 12:00:00', NULL, 2),
(5, 'Őszi sütőtökkrémleves', 'Az ősz egyik legnagyobb ajándéka a sütőtök. Ebben a posztban egy krémes, fűszeres levest mutatok be, kókusztejjel.', '2021-09-30 17:25:00', '2021-10-01 08:10:00', 2),
(6, 'Hétvégi túra a Bükkben', 'Szombaton végigjártuk a Bükk egyik legszebb útvonalát. Jó idő volt, kevés turista, és csodálatos kilátás a csúcsról.', '2021-05-01 09:45:00', NULL, 3),
(7, 'Tippek kezdő kertészeknek', 'Nem kell nagy telek ahhoz, hogy kertészkedj. Pár egyszerű tanács a magaságyás kialakításához és az első vetéshez.', '2021-06-03 07:50:00', NULL, 5),
(8, 'Balatoni nyaralás összefoglaló', 'Egy hetet töltöttünk a Balaton déli partján. Írok a szállásról, a strandokról és arról, hogy mit érdemes kihagyni.', '2021-08-19 21:10:00', '2021-08-20 10:00:00', 5),
(9, 'Spórolási tippek a hétköznapokra', 'Apró szokások, amelyekkel havonta tízezreket lehet megtakarítani anélkül, hogy lemondanánk a kedvenc dolgainkról.', '2022-02-14 13:35:00', NULL, 5),
(10, 'Egy hét home office tapasztalatai', 'Kipróbáltam a teljes távmunkát. Összegyűjtöttem, mi működött jól, és mi az, amit a következő alkalommal másképp csinálnék.', '2023-03-03 16:20:00', NULL, 5),
(11, 'Új telefon, első benyomások', 'Egy hete használom az új készüléket. A kamera és az akkumulátor kellemes meglepetés volt, a töltő viszont hiányzik a dobozból.', '2021-07-12 19:05:00', NULL, 7),
(12, 'Fotózás alapok telefonnal', 'Nem kell drága gép a jó képekhez. A fény, a kompozíció és a türelem legalább ennyire számít, mint a technika.', '2022-05-05 11:15:00', '2022-05-06 14:40:00', 7),
(13, 'Miért szeretek futni?', 'Fél éve futok rendszeresen. A legnagyobb meglepetés, hogy a reggeli edzések után egész nap energikusabb vagyok.', '2021-09-01 06:30:00', NULL, 10),
(14, 'Reggeli kávé és gondolatok', 'Van egy rituálém: a nap első kávéját csendben, telefon nélkül iszom meg. Megmutatom, mit adott ez nekem.', '2022-03-03 08:00:00', NULL, 10),
(15, 'Egészséges reggeli ötletek', 'Gyors és tápláló reggelik hétköznapokra: zabkása, túrókrém és egy kis szezonális gyümölcs.', '2023-01-18 07:20:00', '2023-01-18 12:45:00', 10),
(16, 'Utazás Egerbe egy hétvégére', 'Egy hosszú hétvége Egerben: vár, termálfürdő és természetesen a Szépasszony-völgy borospincéi.', '2021-10-02 15:55:00', NULL, 12),
(17, 'Karácsonyi készülődés', 'Idén korán elkezdtem a készülődést. Az ajándéklistám, a menüterv és a dekorációs ötleteim mind ebben a posztban vannak.', '2021-11-20 18:00:00', NULL, 15),
(18, 'Házi kenyér sütése lépésről lépésre', 'Kovász nélkül is lehet finom kenyeret sütni otthon. Négy hozzávaló, némi türelem, és a lakásban napokig érezni az illatát.', '2022-04-12 10:30:00', '2022-04-13 09:15:00', 15),
(19, 'Régi képeslapok gyűjtése', 'Gyűjtöm a régi képeslapokat. Néhány különösen szép darabot és a hozzájuk tartozó történetet mutatom meg.', '2022-02-10 14:25:00', NULL, 20),
(20, 'Hogyan tanuljunk programozni?', 'Kezdőként én is elvesztem a rengeteg lehetőség között. Összeszedtem, mivel érdemes kezdeni és mit lehet nyugodtan kihagyni.', '2022-05-02 20:00:00', NULL, 25),
(21, 'Online tanulás: mi válik be?', 'Az elmúlt években rengeteg online kurzust elvégeztem. Leírom, melyik módszer segített, és melyik volt időpazarlás.', '2022-11-11 17:45:00', '2022-11-14 08:30:00', 25),
(22, 'Filmkritika: a hét legjobb filmje', 'A hétvégén megnéztem egy filmet, amelyről még napokkal később is beszélgettünk. Spoilermentes véleményem következik.', '2022-08-01 22:10:00', NULL, 30),
(23, 'Biciklitúra a Tisza-tó körül', 'Két nap alatt tekertük körbe a tavat. Az útvonal, a pihenők és a kedvenc pillanataim kerülnek ebbe a bejegyzésbe.', '2022-09-15 09:00:00', NULL, 33),
(24, 'Gondolatok a digitális minimalizmusról', 'Töröltem a felesleges alkalmazásokat és kikapcsoltam az értesítéseket. Meglepő, mennyi időt nyertem vele.', '2023-02-20 19:30:00', '2023-02-21 07:55:00', 33),
(25, 'Kedvenc podcastjaim', 'Utazás közben és főzés mellett is szívesen hallgatok podcastokat. Íme a toplistám témák szerint csoportosítva.', '2023-01-30 12:40:00', NULL, 40),
(26, 'Mit tanultam az első évben?', 'Egy év telt el a regisztrációm óta. Összefoglalom, mi ment jól, min változtattam, és mit tervezek a következő évre.', '2023-04-10 16:10:00', NULL, 45),
(27, 'Egy nap a városban', 'Egyszerű napot terveztem: sétálás, kávézás és könyvesbolt. Kiderült, hogy a legjobb programok sokszor a legegyszerűbbek.', '2023-06-21 13:00:00', '2023-06-22 11:20:00', 45),
(28, 'Hangulatos kávézók listája', 'Összeállítottam a kedvenc helyeimet, ahová le lehet ülni olvasni vagy dolgozni. Mindegyiknél leírom, mitől különleges.', '2023-09-05 15:30:00', NULL, 45),
(29, 'Nyári úti tervek', 'Idén három rövid kirándulást tervezek a hosszú nyaralás helyett. Megosztom a célpontokat és a költségvetést.', '2023-07-15 08:45:00', NULL, 50),
(30, 'Első hetem a blogon', 'Nemrég regisztráltam, és most látom, mennyi mindent lehet még megtanulni. Köszönöm az eddigi biztató hozzászólásokat!', '2023-10-05 18:20:00', NULL, 55),
(31, 'Szilveszteri tervek', 'Idén otthon szilveszterezünk, baráti társasággal. Menüötletek, játékok és egy kis visszatekintés az évre.', '2023-12-24 20:15:00', '2023-12-27 09:00:00', 55);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
