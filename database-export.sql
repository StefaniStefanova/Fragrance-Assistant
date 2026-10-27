-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 03, 2025 at 06:23 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfume_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category` enum('floral','fruity','fresh','woody','oriental') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `name`, `category`) VALUES
(1, 'rose', 'floral'),
(2, 'peach', 'fruity'),
(3, 'coffee', 'oriental'),
(4, 'cedrus', 'woody'),
(5, 'freesia', 'floral'),
(6, 'vanilla', 'oriental'),
(7, 'lime', 'fresh'),
(8, 'grapefruit', 'fresh'),
(9, 'black-pepper', 'oriental'),
(10, 'lavender', 'floral'),
(11, 'orange', 'fresh'),
(12, 'lemon', 'fresh'),
(13, 'apple', 'fruity'),
(14, 'cherry', 'fruity'),
(15, 'lilac', 'floral'),
(16, 'cocoa', 'oriental'),
(17, 'ginger', 'oriental'),
(18, 'honey', 'oriental'),
(19, 'menta', 'oriental'),
(20, 'sandal-wood', 'woody'),
(21, 'amberwood', 'woody'),
(22, 'almond', 'oriental'),
(23, 'coconut', 'oriental'),
(24, 'magnolia', 'floral'),
(25, 'bergamot', 'fresh');

-- --------------------------------------------------------

--
-- Table structure for table `perfumes`
--

DROP TABLE IF EXISTS `perfumes`;
CREATE TABLE IF NOT EXISTS `perfumes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` enum('male','female') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `occasion` enum('daily','special','outdoor') DEFAULT NULL,
  `intensity` enum('light','medium','strong') DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `perfumes`
--

INSERT INTO `perfumes` (`id`, `name`, `gender`, `occasion`, `intensity`, `image_url`, `description`) VALUES
(1, 'Boss The Scent For Her', 'female', 'special', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.38998.jpg', 'Boss The Scent For Her от Hugo Boss е плодов цветен аромат за жени, стартиращ с нотки на праскова и фрезия. Към тях след това се присъединява опияняващ османтус, чието ухание доминира в сърцето на аромата. В завършека вас и вашето обкръжение ще ви завладеят деликатни тонове на какао, придаващи на целия аромат финес и дълбочина. Създаден е да бъде съблазнителен, топъл и женствен.'),
(2, 'Pepe Jeans London for Her', 'female', 'special', 'strong', 'https://fimgs.net/mdimg/perfume/375x500.51630.jpg', 'Pepe Jeans for Her е сладък и гурме аромат с бързо разпознаваемо присъствие. Стартира с маршмелоу, бадем и мандарина, преминава през сърце от ванилия, мляко и водка и завършва с кехлибар и кашмеран. '),
(3, 'Nina by Nina Ricci', 'female', 'daily', 'light', 'https://fimgs.net/mdimg/perfume/375x500.147.jpg', 'Свежестта на лайм и калабрийски лимон ще привлече вниманието ви още в самото начало. Упоителната гардения, която се появява след това, съпровождана от карамелизирана ябълка, ще поддържа вниманието ви и след като връхните нотки отслабнат. Чувственият аромат ще остане с вас дълго благодарение на сладкия кадифен кедър и белия мускус във финала. Nina е свеж и романтичен аромат, вдъхновен от съвременната приказна принцеса.'),
(4, 'Dior Sauvage', 'male', 'daily', 'strong', 'https://fimgs.net/mdimg/perfume/375x500.31861.jpg', 'Sauvage Eau de Parfum е ароматът за мъже, който съчетава свежестта на нотката калабрийски бергамот с чувствеността на акорда от екстракт на ванилия от Папуа Нова Гвинея. Тази цитрусово-амброва парфюмна вода оставя мощна и благородна следа. Sauvage от Dior е модерен, свеж и силен аромат с мъжествено излъчване. \r\n'),
(5, 'Libre by Yves Saint Laurent', 'female', 'special', 'strong', 'https://fimgs.net/mdimg/perfume/375x500.56077.jpg', 'Композицията отварят ароматните есенции от портокалово дърво под формата на листа от портокал с акорди на лавандула, съпровождани от мандаринено масло и касис. След малко тоновете на лавандула се проявяват в самите сърцевинни нотки, което споделят с жасмина. Финалното съчетание на сгряваща ванилия с мускус, амбра и кедър гарантират уникалността на аромата. \r\nИзключително женствен и същевременно мощен, този аромат излъчва увереност и свобода, подходящ за съвременната жена.'),
(6, 'Sweet Tooth Cherry Baby by Sabrina Carpenter', 'female', 'special', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.95861.jpg', 'Cherry Baby започва със свежи връхни нотки на Cherry Cosmo, глазирана ябълка, нектар от слива и кафява захар. Те постепенно отстъпват място на сърцевината от червен мак, цвят на божур, тъмен шоколад и ванилова орхидея. Завършекът е луксозен и чувствен, с топли базови нотки на кашмирено дърво, мускус, еликсир от пачули и кехлибар. '),
(7, 'Dior Addict Eau Fraîche', 'female', 'daily', 'light', 'https://fimgs.net/mdimg/perfume/375x500.25611.jpg', 'Композицията на Dior Addict Eau Fraîche започва с искрящи цитрусови нотки на сладко-кисел грейпфрут, подчертани от гладкостта на калабрийския бергамот. Нейната разнообразна сърцевина разкрива фин букет от фрезия и момина сълза. Като завършва с мощна, структурирана основа от дървесни нотки, смесени с обгръщащ бял мускус.\r\nСвежа и жизнена следа, запазваща сияйната си сила. Dior Addict е мигновено, незабавно изразяване. '),
(8, 'The Scent Absolute bu Hugo Boss', 'male', 'special', 'strong', 'https://fimgs.net/mdimg/perfume/375x500.56295.jpg', 'Парфюмната вода ще привлече вниманието ви още в началото – във връхните нотки ще усетите пикантен джиджифил. След това той отстъпва мястото си на сладкия плод на манинка, който не само доминира сърцето на аромата, но и ще ви накара да се пристрастите към уханието. Тази съблазнителна ароматна композиция е изградена върху опушената основа с ветивер.'),
(9, 'Fame by Lady Gaga', 'female', 'special', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.15338.jpg', 'Fame е първият парфюм на Lady Gaga, представен през 2012 г. Ароматът използва иновативна \"push-pull\" технология, при която нотките се развиват едновременно, а не в традиционната пирамидална структура. Композицията включва акорди на беладона, шафран, мед, кайсия, тигрова орхидея и жасмин самбак.'),
(10, 'Guerlain Homme Eau de Parfum', 'male', 'daily', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.47793.jpg', 'Guerlain Homme е дървесно-ароматен аромат за мъже. Връхните нотки включват мента, лайм и ром; сърдечната нотка е флорална; базовите нотки са ветивер, кедър и пачули. Ароматът съчетава свежест и сила, предлагайки интензивна композиция с акорд на мохито, свежи флорални и зелени дървесни акорди.'),
(11, 'Hypnotic Poison by Dior', 'female', 'special', 'strong', 'https://fimgs.net/mdimg/perfume/375x500.219.jpg', 'Hypnotic Poison от Dior е емблематичен ориенталски гурме аромат. Този парфюм съчетава сладостта на ванилия и бадем с екзотични плодови нотки и богати флорални акорди, създавайки мистериозен и съблазнителен аромат.'),
(12, 'Alien Goddess Supra Florale by Mugler', 'female', 'special', 'strong', 'https://fimgs.net/mdimg/perfume/375x500.82489.jpg', 'Alien Goddess Supra Florale от Mugler е изискан и съвременен аромат. Този парфюм съчетава свежестта на кактусов цвят и бодлива круша с богатството на жасмин самбак и имортела, завършвайки с топли базови нотки на амбра, мускус и пустинна роза. Резултатът е сияен и чувствен аромат, който излъчва енергия и женственост.​\r\n'),
(13, 'Signature by Montblanc', 'female', 'daily', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.60962.jpg', 'Signature от Montblanc е дамски парфюм, който съчетава свежестта на клементина с флорални нотки на магнолия, иланг-иланг и божур, завършвайки с топли базови нотки на ванилия, бял мускус и бензоин. Този парфюм излъчва елегантност и женственост, подходящ за ежедневна употреба.'),
(14, 'Uomo Born in Roma Green Stravaganza by Valentino', 'male', 'daily', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.88989.jpg', 'Ароматът съчетава свежестта на калабрийски бергамот с богатството на кафе и топлината на ветивер от Хаити, създавайки динамичен и енергичен аромат, подходящ за ежедневна употреба.'),
(15, 'Versace Pour Homme', 'male', 'daily', 'medium', 'https://fimgs.net/mdimg/perfume/375x500.2318.jpg', 'Versace Pour Homme е изключителен аромат, предназначен за елегантни и изискани мъже. Носител е на всички типични за бранда достойнства, а именно, собствен стил и неподражаема елегатнност. Ароматът съчетава свежестта на цитрусови нотки с флорални и дървесни акорди, създавайки енергичен и съвременен аромат, подходящ за модерния мъж.');

-- --------------------------------------------------------

--
-- Table structure for table `perfume_notes`
--

DROP TABLE IF EXISTS `perfume_notes`;
CREATE TABLE IF NOT EXISTS `perfume_notes` (
  `perfume_id` int NOT NULL,
  `note_id` int NOT NULL,
  PRIMARY KEY (`perfume_id`,`note_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `perfume_notes`
--

INSERT INTO `perfume_notes` (`perfume_id`, `note_id`) VALUES
(1, 2),
(14, 3),
(10, 4),
(15, 4),
(1, 5),
(7, 5),
(2, 6),
(5, 6),
(11, 6),
(13, 6),
(3, 7),
(10, 7),
(4, 9),
(4, 10),
(5, 10),
(5, 11),
(3, 12),
(15, 12),
(3, 13),
(6, 13),
(6, 14),
(8, 17),
(9, 18),
(10, 19),
(11, 20),
(12, 21),
(15, 21),
(11, 22),
(11, 23),
(13, 24),
(14, 25),
(15, 25);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
