-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Mar 2015, 20:40
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `enigmasc`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
  `id_cms` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `title_tag` varchar(300) NOT NULL,
  `description_tag` varchar(300) NOT NULL,
  `keywords_tag` varchar(300) NOT NULL,
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `cms`
--

INSERT INTO `cms` (`id_cms`, `title`, `content`, `title_tag`, `description_tag`, `keywords_tag`) VALUES
(1, 'Strona główna', '<h3>Witamy na naszej stronie internetowej<img style="width: 320px; float: right; margin-left: 30px;" src="http://www.enigmasc.pl/img/pit.jpg" alt="pit" /></h3>\n<p style="text-align: justify;"><br /> Witamy na stronie internetowej „Enigma” Usługi księgowe spółka cywilna. Znajdziecie tu Państwo wszystkie informacje na temat świadczonych przez nas usług w zakresie rachunkowości , podatków oraz obsługi kadrowo-płacowej podmiotów gospodarczych. Zapraszamy do zapoznania się z naszą ofertą.</p>\n<p style="text-align: justify;"> </p>\n<p><em><strong>„ Sekretem biznesu jest wiedzieć to, czego nie wiedzą inni „</strong> </em></p>\n<p> </p>\n<p style="text-align: right;">Arystoteles Onassis </p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p style="text-align: justify;"><img style="float: left; margin: 0 20px 20px 0; width: 250px;" src="http://www.enigmasc.pl/img/2.jpg" alt="" />Ofertę kierujemy do osób fizycznych prowadzących działalność gospodarczą , spółek osobowych, spółek prawa handlowego, stowarzyszeń i fundacji. Sposób prowadzenia księgowości dostosowujemy indywidulanie do potrzeb każdego klienta. Wszystkim zapewniamy profesjonalną i rzetelną obsługę . Priorytetem dla nas jest jakość, odpowiedzialność, solidność, zaangażowanie w sprawy Klientów i terminowość świadczonych przez nas usług oraz przede wszystkim satysfakcja i zadowolenie Klienta. Zapewniamy bezpieczeństwo i poufność danych na każdym etapie świadczenia usługi.</p>\n<h3 style="text-align: center; margin-top: 0px;"> </h3>\n<h3 style="text-align: center; margin-top: 0px;"> </h3>\n<h3 style="text-align: center; margin-top: 0px;">Zapraszamy do zapoznania się z naszą ofertą</h3>\n<p> </p>\n<ul class="offer">\n<li>Prowadzenie ewidencji przychodów dla celów zryczałtowanego podatku dochodowego.</li>\n<li>Prowadzenie ewidencji środków trwałych, wartości niematerialnych i prawnych oraz wyposażenia.</li>\n<li>Prowadzenie rejestrów sprzedaży i zakupów dla celów podatku od towarów i usług.</li>\n<li>Przygotowanie niezbędnej dokumentacji do uruchomienia działalności gospodarczej</li>\n<li>Prowadzenie dokumentacji kadrowo-płacowej.</li>\n<li>Sporządzanie informacji statystycznych do GUS</li>\n<li>Prowadzenie ksiąg handlowych.</li>\n<li>Prowadzenie podatkowych ksiąg przychodów i rozchodów</li>\n</ul>\n<p><a class="more" href="/enigma.dev/admin/oferta">Czytaj więcej</a></p>', 'Enigma - kompleksowe usługi księgowe, biuro rachunkowe Rzeszów', 'Enigma - kompleksowe usługi księgowe w zakresie wymaganym przepisami prawa bilansowego i podatkowego a także usługi w zakresie kadr i płac oraz w zakresie ubezpieczeń społecznych.', 'księgowość, biuro rachunkowe, księgowa, księgowa rzeszów, podatki, prawo podatkowe, ubezpieczenia społeczne, doradztwo podatkowe, finanse, vat, pit, podatek dochodowy'),
(2, 'O firmie', '<h3>O nas</h3>\n<p> </p>\n<p style="text-align: justify;"><img style="float: right; margin: 0 0 20px 20px; width: 310px;" src="http://www.enigmasc.pl/img/11.jpg" alt="" /> <strong>Enigma s.c. to dwoje profesjonalnych wspólników Bożena Cisek i Wiesława Gargała</strong>. O powstaniu spółki zadecydowało wieloletnie doświadczenie w obsłudze księgowej firm. Nasza ścieżka zawodowa przebiegała od zdobywania wykształcenia kierunkowego z zakresu rachunkowości i finansów poprzez pracę w zespołach księgowych do osiągnięcia stanowisk głównych księgowych. Kwalifikacje zawodowe potwierdzają wydane przez Ministerstwo Finansów Certyfikaty do usługowego prowadzenia ksiąg rachunkowych o numerach 40417/2010 oraz 55032/2012.</p>\n<p> </p>\n<p>Posiadamy ubezpieczenie od odpowiedzialności cywilnej podmiotów usługowo prowadzących księgi rachunkowe.</p>\n<p> </p>\n<p style="text-align: justify;"><img style="float: left; margin: 0 20px 20px 0; width: 250px;" src="http://www.enigmasc.pl/img/2.jpg" alt="" />Ofertę kierujemy do osób fizycznych prowadzących działalność gospodarczą, spółek osobowych, spółek prawa handlowego, stowarzyszeń i fundacji. Sposób prowadzenia księgowości dostosowujemy indywidulanie do potrzeb każdego klienta. Wszystkim zapewniamy profesjonalną i rzetelną obsługę. Priorytetem dla nas jest jakość, odpowiedzialność, solidność, zaangażowanie w sprawy Klientów i terminowość świadczonych przez nas usług oraz przede wszystkim satysfakcja i zadowolenie Klienta. Zapewniamy bezpieczeństwo i poufność danych na każdym etapie świadczenia usługi.</p>\n<p style="text-align: right;"> </p>\n<p style="text-align: right;"><em>Zapraszamy do współpracy</em></p>\n<p> </p>\n<h3 style="text-align: center;">Zapraszamy do zapoznania się z naszą ofertą</h3>\n<p> </p>\n<ul class="offer">\n<li>Prowadzenie ewidencji przychodów dla celów zryczałtowanego podatku dochodowego.</li>\n<li>Prowadzenie ewidencji środków trwałych, wartości niematerialnych i prawnych oraz wyposażenia.</li>\n<li>Prowadzenie rejestrów sprzedaży i zakupów dla celów podatku od towarów i usług.</li>\n<li>Przygotowanie niezbędnej dokumentacji do uruchomienia działalności gospodarczej</li>\n<li>Prowadzenie dokumentacji kadrowo-płacowej.</li>\n<li>Sporządzanie informacji statystycznych do GUS</li>\n<li>Prowadzenie ksiąg handlowych.</li>\n<li>Prowadzenie podatkowych ksiąg przychodów i rozchodów</li>\n</ul>\n<p><a class="more" href="/enigma.dev/admin/oferta">Czytaj więcej</a></p>', 'Enigma - kompleksowe usługi księgowe, biuro rachunkowe Rzeszów', 'Enigma - kompleksowe usługi księgowe w zakresie wymaganym przepisami prawa bilansowego i podatkowego a także usługi w zakresie kadr i płac oraz w zakresie ubezpieczeń społecznych.', 'księgowość, biuro rachunkowe, księgowa, księgowa rzeszów, podatki, prawo podatkowe, ubezpieczenia społeczne, doradztwo podatkowe, finanse, vat, pit, podatek dochodowy'),
(3, 'Oferta', '<h3>Nasza oferta</h3>\n<p style="text-align: justify;"><br /> <img style="float: right; margin: 0 0 20px 20px; width: 275px;" src="http://www.enigmasc.pl/img/pieniadze.jpg" alt="" /> <strong>Świadczymy kompleksowe usługi księgowe w zakresie wymaganym przepisami prawa bilansowego i podatkowego a także usługi w zakresie kadr i płac oraz w zakresie ubezpieczeń społecznych.</strong></p>\n<p style="text-align: justify;">Ceny naszych usług księgowych są uzależnione od wybranego sposobu opodatkowania podatkiem dochodowych oraz VAT , od formy prawnej i rozmiarów prowadzonej działalności gospodarczej. Cena usług jest indywidualnie negocjowana z Klientem przed podpisaniem umowy o świadczeniu usług księgowych. W celu wyceny usług dla Państwa firmy zapraszamy do kontaktu.</p>\n<h3> </h3>\n<h3> </h3>\n<h3 style="text-align: center;">Zakres naszych usług obejmuje</h3>\n<p> </p>\n<ul class="offer">\n<li>Prowadzenie ewidencji przychodów dla celów zryczałtowanego podatku dochodowego.</li>\n<li>Prowadzenie ewidencji środków trwałych, wartości niematerialnych i prawnych oraz wyposażenia.</li>\n<li>Prowadzenie rejestrów sprzedaży i zakupów dla celów podatku od towarów i usług.</li>\n<li>Przygotowanie niezbędnej dokumentacji do uruchomienia działalności gospodarczej</li>\n<li>Prowadzenie dokumentacji kadrowo-płacowej.</li>\n<li>Sporządzanie informacji statystycznych do GUS</li>\n<li>Prowadzenie ksiąg handlowych.</li>\n<li>Prowadzenie podatkowych ksiąg przychodów i rozchodów</li>\n</ul>', 'Enigma - kompleksowe usługi księgowe, biuro rachunkowe Rzeszów', 'Enigma - kompleksowe usługi księgowe w zakresie wymaganym przepisami prawa bilansowego i podatkowego a także usługi w zakresie kadr i płac oraz w zakresie ubezpieczeń społecznych.', 'księgowość, biuro rachunkowe, księgowa, księgowa rzeszów, podatki, prawo podatkowe, ubezpieczenia społeczne, doradztwo podatkowe, finanse, vat, pit, podatek dochodowy'),
(4, 'Kontakt', '<h3>Dane kontaktowe:</h3>\n<p> </p>\n<p style="text-align: center;"><strong>„ENIGMA” Usługi księgowe spółka cywilna Bożena Cisek, Wiesława Gargała</strong></p>\n<p style="text-align: center;"> </p>\n<p>     ul. PCK 2</p>\n<p>     35-060 Rzeszów</p>\n<p>     tel. 608 207 454, 609 261 554</p>\n<p> </p>\n<p>     Email: <a class="mail" href="mailto:wieslawagargala@enigmasc.pl">wieslawagargala@enigmasc.pl</a></p>\n<p>     <a class="mail m2" href="mailto:bozenacisek@enigmasc.pl">bozenacisek@enigmasc.pl</a></p>', 'Enigma - kompleksowe usługi księgowe, biuro rachunkowe Rzeszów', 'Enigma - kompleksowe usługi księgowe w zakresie wymaganym przepisami prawa bilansowego i podatkowego a także usługi w zakresie kadr i płac oraz w zakresie ubezpieczeń społecznych.', 'księgowość, biuro rachunkowe, księgowa, księgowa rzeszów, podatki, prawo podatkowe, ubezpieczenia społeczne, doradztwo podatkowe, finanse, vat, pit, podatek dochodowy');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
