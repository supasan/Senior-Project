-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2013 at 03:52 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ihpc`
--
CREATE DATABASE IF NOT EXISTS `ihpc` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ihpc`;

-- --------------------------------------------------------

--
-- Table structure for table `disaster`
--

CREATE TABLE IF NOT EXISTS `disaster` (
  `disaterid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`disaterid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `disaster`
--

INSERT INTO `disaster` (`disaterid`, `name`, `type`, `latitude`, `longitude`, `Description`) VALUES
(1, 'Genoa', 'Earthquake', '44.407129', '8.949051', ''),
(2, 'Roanoke', 'Earthquake', '37.267308', '-79.942703', '');

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE IF NOT EXISTS `input` (
  `inputid` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `Header` int(128) NOT NULL,
  `nodeName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `nodeType` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `cityName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CountryName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`inputid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=167 ;

--
-- Dumping data for table `input`
--

INSERT INTO `input` (`inputid`, `userID`, `Header`, `nodeName`, `nodeType`, `latitude`, `longitude`, `cityName`, `CountryName`, `Description`) VALUES
(1, 12, 168, 'Brussels', 'Distribution Centre', '50.83710098', '4.367599964', 'Brussels', 'Belgium', 'Brussels:Belgium'),
(2, 12, 2, 'Istanbul', 'Vendor Tier 2', '41.06600189', '29.0060997', 'Lanzhou', 'China', 'Lanzhou:China'),
(3, 12, 6, 'Hong Kong', 'Vendor Tier 1', '21.75', '115', 'Hong Kong', 'China', 'Hong Kong:China'),
(4, 12, 14, 'Chaling', 'Manufacturing Plant', '26.78129959', '113.5406036', 'Chaling', 'China', 'Chaling:China'),
(5, 12, 18, 'Taizhou', 'Manufacturing Plant', '28.57500076', '104.9091034', 'Taizhou', 'China', 'Taizhou:China'),
(6, 12, 164, 'Bordeaux', 'Distribution Centre', '44.84149933', '-0.599500001', 'Bordeaux', 'France', 'Bordeaux:France'),
(7, 12, 192, 'Lyon', 'Customer', '45.74710083', '4.855400085', 'Lyon', 'France', 'Lyon:France'),
(8, 12, 194, 'Marseille', 'Customer', '43.2845993', '5.385099888', 'Marseille', 'France', 'Marseille:France'),
(9, 12, 205, 'Paris', 'Customer', '48.88150024', '2.432800055', 'Paris', 'France', 'Paris:France'),
(10, 12, 213, ' Toulouse', 'Customer', '42.4530164', '-0.3275515', ' Toulouse', 'France', ' Toulouse:France'),
(11, 12, 159, 'Berlin', 'Distribution Centre', '52.5163002', '13.32759953', 'Berlin', 'Germany', 'Berlin:Germany'),
(12, 12, 163, 'Bonn', 'Distribution Centre', '50.73460007', '7.09980011', 'Bonn', 'Germany', 'Bonn:Germany'),
(13, 12, 166, 'Bremen', 'Distribution Centre', '53.08010101', '8.857600212', 'Bremen', 'Germany', 'Bremen:Germany'),
(14, 12, 179, 'Essen', 'Customer', '51.44964', '7.02052', 'Essen', 'Germany', 'Essen:Germany'),
(15, 12, 198, 'Munich', 'Customer', '51.21670151', '4.699999809', 'Munich', 'Germany', 'Munich:Germany'),
(16, 12, 167, 'Bristol', 'Distribution Centre', '51.46920013', '-2.539999962', 'Bristol', 'Great Britain', 'Bristol:Great Britain'),
(17, 12, 189, 'Liverpool', 'Customer', '53.42259979', '-2.970999956', 'Liverpool', 'Great Britain', 'Liverpool:Great Britain'),
(18, 12, 190, 'London', 'Customer', '51.48789978', '-0.178000003', 'London', 'Great Britain', 'London:Great Britain'),
(19, 12, 4, 'New Delhi', 'Vendor Tier 2', '28.56870079', '77.21679688', 'New Delhi', 'India', 'New Delhi:India'),
(20, 12, 8, 'Mumbai', 'Vendor Tier 1', '19.07740021', '72.82640076', 'Mumbai', 'India', 'Mumbai:India'),
(21, 12, 12, 'Bangalore', 'Manufacturing Plant', '12.97469997', '77.58769989', 'Bangalore', 'India', 'Bangalore:India'),
(22, 12, 16, 'Ludhiana', 'Manufacturing Plant', '30.90609932', '75.84680176', 'Ludhiana', 'India', 'Ludhiana:India'),
(23, 12, 178, 'Dublin', 'Customer', '53.34159851', '-6.2572999', 'Dublin', 'Ireland', 'Dublin:Ireland'),
(24, 12, 21, 'Milan', 'Assembly Plant', '45.47340012', '9.190500259', 'Milan', 'Italy', 'Milan:Italy'),
(25, 12, 162, 'Bologna', 'Distribution Centre', '44.52920151', '11.29580021', 'Bologna', 'Italy', 'Bologna:Italy'),
(26, 12, 180, 'Florenc', 'Customer', '43.7660545', '11.2501058', 'Florenc', 'Italy', 'Florenc:Italy'),
(27, 12, 212, 'Torino', 'Customer', '45.07490158', '7.666399956', 'Torino', 'Italy', 'Torino:Italy'),
(28, 12, 215, 'Verona', 'Customer', '45.43690109', '10.99289989', 'Verona', 'Italy', 'Verona:Italy'),
(29, 12, 7, 'Kuala Lumpur', 'Vendor Tier 1', '3.0990889', '101.6885736', 'Kuala Lumpur', 'Malaysia', 'Kuala Lumpur:Malaysia'),
(30, 12, 15, 'Juarez', 'Manufacturing Plant', '17.61919975', '-93.16049957', 'Juarez', 'Mexico', 'Juarez:Mexico'),
(31, 12, 17, 'Mexico City', 'Manufacturing Plant', '19.42700005', '-99.12760162', 'Mexico City', 'Mexico', 'Mexico City:Mexico'),
(32, 12, 22, 'Rotterdam', 'Assembly Plant', '51.92559814', '4.485199928', 'Rotterdam', 'Netherlands', 'Rotterdam:Netherlands'),
(33, 12, 153, 'Amsterdam', 'Distribution Centre', '52.3730011', '4.894800186', 'Amsterdam', 'Netherlands', 'Amsterdam:Netherlands'),
(34, 12, 154, 'Arnhem', 'Distribution Centre', '51.98839951', '5.9229002', 'Arnhem', 'Netherlands', 'Arnhem:Netherlands'),
(35, 12, 188, 'Lisbon', 'Customer', '38.4559021', '-9.122799873', 'Lisbon', 'Portugal', 'Lisbon:Portugal'),
(36, 12, 19, 'Barcelona', 'Assembly Plant', '41.3627016', '2.1093169', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(37, 12, 157, 'Barcelona', 'Distribution Centre', '41.35810089', '2.158600092', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(38, 12, 174, 'Cordoba', 'Customer', '37.88370132', '-4.77699995', 'Cordoba', 'Spain', 'Cordoba:Spain'),
(39, 12, 193, 'Madrid', 'Customer', '40.44219971', '-3.690999985', 'Madrid', 'Spain', 'Madrid:Spain'),
(40, 12, 158, 'Basel', 'Distribution Centre', '47.54700089', '7.576499939', 'Basel', 'Switzerland', 'Basel:Switzerland'),
(41, 12, 160, 'Bern', 'Distribution Centre', '46.94820023', '7.445700169', 'Bern', 'Switzerland', 'Bern:Switzerland'),
(42, 12, 13, 'Bangkok', 'Manufacturing Plant', '13.83329964', '100.4832993', 'Bangkok', 'Thailand', 'Bangkok:Thailand'),
(43, 12, 3, 'Lan Zhou', 'Vendor Tier 2', '36.061255', '103.834377', 'Istanbul', 'Turkey', 'Istanbul:Turkey'),
(44, 12, 20, 'Houston', 'Assembly Plant', '29.687525', '-95.273101', 'Houston', 'USA', 'Houston:USA'),
(45, 12, 155, 'Atlanta', 'Distribution Centre', '33.78422546', '-84.38647461', 'Atlanta', 'USA', 'Atlanta:USA'),
(46, 12, 156, 'Baltimore', 'Distribution Centre', '39.32189941', '-76.61840057', 'Baltimore', 'USA', 'Baltimore:USA'),
(47, 12, 161, 'Boise City', 'Distribution Centre', '36.72489929', '-102.5118027', 'Boise City', 'USA', 'Boise City:USA'),
(48, 12, 165, 'Boston', 'Distribution Centre', '42.37530136', '-71.1026001', 'Boston', 'USA', 'Boston:USA'),
(49, 12, 169, 'Buffalo', 'Customer', '42.89870071', '-78.8483963', 'Buffalo', 'USA', 'Buffalo:USA'),
(50, 12, 170, 'Charleston', 'Customer', '32.86109924', '-79.98210144', 'Charleston', 'USA', 'Charleston:USA'),
(51, 12, 171, 'Charlotte', 'Customer', '35.2057991', '-80.83570099', 'Charlotte', 'USA', 'Charlotte:USA'),
(52, 12, 172, 'Chicago', 'Customer', '41.82649994', '-87.64129639', 'Chicago', 'USA', 'Chicago:USA'),
(53, 12, 173, 'Cincinnati', 'Customer', '39.14799881', '-84.47699738', 'Cincinnati', 'USA', 'Cincinnati:USA'),
(54, 12, 175, 'Dallas', 'Customer', '32.76369858', '-96.66369629', 'Dallas', 'USA', 'Dallas:USA'),
(55, 12, 176, 'Denver', 'Customer', '39.57780075', '-105.0787964', 'Denver', 'USA', 'Denver:USA'),
(56, 12, 177, 'Detroit', 'Customer', '42.39429855', '-83.0789032', 'Detroit', 'USA', 'Detroit:USA'),
(57, 12, 181, 'Green Bay', 'Customer', '44.49860001', '-88.03780365', 'Green Bay', 'USA', 'Green Bay:USA'),
(58, 12, 182, 'Greenville', 'Customer', '34.84799957', '-82.41470337', 'Greenville', 'USA', 'Greenville:USA'),
(59, 12, 183, 'Houston', 'Customer', '29.77179909', '-95.40709686', 'Houston', 'USA', 'Houston:USA'),
(60, 12, 184, 'Iowa City', 'Customer', '41.65859985', '-91.52970123', 'Iowa City', 'USA', 'Iowa City:USA'),
(61, 12, 185, 'Kansas City', 'Customer', '38.99409866', '-94.62660217', 'Kansas City', 'USA', 'Kansas City:USA'),
(62, 12, 186, 'Las Vegas', 'Customer', '36.16159821', '-115.1542969', 'Las Vegas', 'USA', 'Las Vegas:USA'),
(63, 12, 187, 'Lexington', 'Customer', '37.77700043', '-79.44830322', 'Lexington', 'USA', 'Lexington:USA'),
(64, 12, 191, 'Los Angeles', 'Customer', '34.02220154', '-118.2440033', 'Los Angeles', 'USA', 'Los Angeles:USA'),
(65, 12, 195, 'Memphis', 'Customer', '35.11470032', '-90.00029755', 'Memphis', 'USA', 'Memphis:USA'),
(66, 12, 196, 'Miami', 'Customer', '25.83209991', '-80.27020264', 'Miami', 'USA', 'Miami:USA'),
(67, 12, 197, 'Minneapolis', 'Customer', '44.92419815', '-93.30780029', 'Minneapolis', 'USA', 'Minneapolis:USA'),
(68, 12, 199, 'Nashville', 'Customer', '36.14160156', '-86.8184967', 'Nashville', 'USA', 'Nashville:USA'),
(69, 12, 200, 'Newark', 'Customer', '40.72650146', '-74.39689636', 'Newark', 'USA', 'Newark:USA'),
(70, 12, 201, 'New Orleans', 'Customer', '29.95639992', '-90.09870148', 'New Orleans', 'USA', 'New Orleans:USA'),
(71, 12, 202, 'Norfolk', 'Customer', '36.87929916', '-76.26860046', 'Norfolk', 'USA', 'Norfolk:USA'),
(72, 12, 203, 'Omaha', 'Customer', '41.2521019', '-95.97859955', 'Omaha', 'USA', 'Omaha:USA'),
(73, 12, 204, 'Orlando', 'Customer', '28.60029984', '-81.36270142', 'Orlando', 'USA', 'Orlando:USA'),
(74, 12, 206, 'Phoenix', 'Customer', '33.370341', '-112.060537', 'Phoenix', 'USA', 'Phoenix:USA'),
(75, 12, 207, 'Pittsburgh', 'Customer', '40.49720001', '-79.99710083', 'Pittsburgh', 'USA', 'Pittsburgh:USA'),
(76, 12, 208, 'Reno', 'Customer', '39.52550125', '-119.7967987', 'Reno', 'USA', 'Reno:USA'),
(77, 12, 209, 'San Jose', 'Customer', '37.30810165', '-121.9465027', 'San Jose', 'USA', 'San Jose:USA'),
(78, 12, 210, 'Seattle', 'Customer', '47.5760994', '-122.6648026', 'Seattle', 'USA', 'Seattle:USA'),
(79, 12, 211, 'Spokane', 'Customer', '47.66960144', '-117.3944016', 'Spokane', 'USA', 'Spokane:USA'),
(80, 12, 214, 'Tulsa', 'Customer', '36.13209915', '-95.92990112', 'Tulsa', 'USA', 'Tulsa:USA'),
(81, 12, 216, 'Yuma', 'Customer', '32.7181015', '-114.6260986', 'Yuma', 'USA', 'Yuma:USA'),
(82, 12, 1, 'Ho Chi Minh', 'Vendor Tier 2', '10.660608', '106.61132', 'Ho Chi Minh', 'Vietnam', 'Ho Chi Minh:Vietnam'),
(83, 12, 5, 'Chiang Mai', 'Vendor Tier 1', '18.7964642', '98.6600586', 'Chiang Mai', 'Vietnam', 'Chiang Mai:Vietnam'),
(84, 13, 168, 'Brussels', 'Distribution Centre', '50.83710098', '4.367599964', 'Brussels', 'Belgium', 'Brussels:Belgium'),
(85, 13, 2, 'Istanbul', 'Vendor Tier 2', '41.06600189', '29.0060997', 'Lanzhou', 'China', 'Lanzhou:China'),
(86, 13, 6, 'Hong Kong', 'Vendor Tier 1', '21.75', '115', 'Hong Kong', 'China', 'Hong Kong:China'),
(87, 13, 14, 'Chaling', 'Manufacturing Plant', '26.78129959', '113.5406036', 'Chaling', 'China', 'Chaling:China'),
(88, 13, 18, 'Taizhou', 'Manufacturing Plant', '28.57500076', '104.9091034', 'Taizhou', 'China', 'Taizhou:China'),
(89, 13, 164, 'Bordeaux', 'Distribution Centre', '44.84149933', '-0.599500001', 'Bordeaux', 'France', 'Bordeaux:France'),
(90, 13, 192, 'Lyon', 'Customer', '45.74710083', '4.855400085', 'Lyon', 'France', 'Lyon:France'),
(91, 13, 194, 'Marseille', 'Customer', '43.2845993', '5.385099888', 'Marseille', 'France', 'Marseille:France'),
(92, 13, 205, 'Paris', 'Customer', '48.88150024', '2.432800055', 'Paris', 'France', 'Paris:France'),
(93, 13, 213, ' Toulouse', 'Customer', '42.4530164', '-0.3275515', ' Toulouse', 'France', ' Toulouse:France'),
(94, 13, 159, 'Berlin', 'Distribution Centre', '52.5163002', '13.32759953', 'Berlin', 'Germany', 'Berlin:Germany'),
(95, 13, 163, 'Bonn', 'Distribution Centre', '50.73460007', '7.09980011', 'Bonn', 'Germany', 'Bonn:Germany'),
(96, 13, 166, 'Bremen', 'Distribution Centre', '53.08010101', '8.857600212', 'Bremen', 'Germany', 'Bremen:Germany'),
(97, 13, 179, 'Essen', 'Customer', '51.44964', '7.02052', 'Essen', 'Germany', 'Essen:Germany'),
(98, 13, 198, 'Munich', 'Customer', '51.21670151', '4.699999809', 'Munich', 'Germany', 'Munich:Germany'),
(99, 13, 167, 'Bristol', 'Distribution Centre', '51.46920013', '-2.539999962', 'Bristol', 'Great Britain', 'Bristol:Great Britain'),
(100, 13, 189, 'Liverpool', 'Customer', '53.42259979', '-2.970999956', 'Liverpool', 'Great Britain', 'Liverpool:Great Britain'),
(101, 13, 190, 'London', 'Customer', '51.48789978', '-0.178000003', 'London', 'Great Britain', 'London:Great Britain'),
(102, 13, 4, 'New Delhi', 'Vendor Tier 2', '28.56870079', '77.21679688', 'New Delhi', 'India', 'New Delhi:India'),
(103, 13, 8, 'Mumbai', 'Vendor Tier 1', '19.07740021', '72.82640076', 'Mumbai', 'India', 'Mumbai:India'),
(104, 13, 12, 'Bangalore', 'Manufacturing Plant', '12.97469997', '77.58769989', 'Bangalore', 'India', 'Bangalore:India'),
(105, 13, 16, 'Ludhiana', 'Manufacturing Plant', '30.90609932', '75.84680176', 'Ludhiana', 'India', 'Ludhiana:India'),
(106, 13, 178, 'Dublin', 'Customer', '53.34159851', '-6.2572999', 'Dublin', 'Ireland', 'Dublin:Ireland'),
(107, 13, 21, 'Milan', 'Assembly Plant', '45.47340012', '9.190500259', 'Milan', 'Italy', 'Milan:Italy'),
(108, 13, 162, 'Bologna', 'Distribution Centre', '44.52920151', '11.29580021', 'Bologna', 'Italy', 'Bologna:Italy'),
(109, 13, 180, 'Florenc', 'Customer', '43.7660545', '11.2501058', 'Florenc', 'Italy', 'Florenc:Italy'),
(110, 13, 212, 'Torino', 'Customer', '45.07490158', '7.666399956', 'Torino', 'Italy', 'Torino:Italy'),
(111, 13, 215, 'Verona', 'Customer', '45.43690109', '10.99289989', 'Verona', 'Italy', 'Verona:Italy'),
(112, 13, 7, 'Kuala Lumpur', 'Vendor Tier 1', '3.0990889', '101.6885736', 'Kuala Lumpur', 'Malaysia', 'Kuala Lumpur:Malaysia'),
(113, 13, 15, 'Juarez', 'Manufacturing Plant', '17.61919975', '-93.16049957', 'Juarez', 'Mexico', 'Juarez:Mexico'),
(114, 13, 17, 'Mexico City', 'Manufacturing Plant', '19.42700005', '-99.12760162', 'Mexico City', 'Mexico', 'Mexico City:Mexico'),
(115, 13, 22, 'Rotterdam', 'Assembly Plant', '51.92559814', '4.485199928', 'Rotterdam', 'Netherlands', 'Rotterdam:Netherlands'),
(116, 13, 153, 'Amsterdam', 'Distribution Centre', '52.3730011', '4.894800186', 'Amsterdam', 'Netherlands', 'Amsterdam:Netherlands'),
(117, 13, 154, 'Arnhem', 'Distribution Centre', '51.98839951', '5.9229002', 'Arnhem', 'Netherlands', 'Arnhem:Netherlands'),
(118, 13, 188, 'Lisbon', 'Customer', '38.4559021', '-9.122799873', 'Lisbon', 'Portugal', 'Lisbon:Portugal'),
(119, 13, 19, 'Barcelona', 'Assembly Plant', '41.3627016', '2.1093169', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(120, 13, 157, 'Barcelona', 'Distribution Centre', '41.35810089', '2.158600092', 'Barcelona', 'Spain', 'Barcelona:Spain'),
(121, 13, 174, 'Cordoba', 'Customer', '37.88370132', '-4.77699995', 'Cordoba', 'Spain', 'Cordoba:Spain'),
(122, 13, 193, 'Madrid', 'Customer', '40.44219971', '-3.690999985', 'Madrid', 'Spain', 'Madrid:Spain'),
(123, 13, 158, 'Basel', 'Distribution Centre', '47.54700089', '7.576499939', 'Basel', 'Switzerland', 'Basel:Switzerland'),
(124, 13, 160, 'Bern', 'Distribution Centre', '46.94820023', '7.445700169', 'Bern', 'Switzerland', 'Bern:Switzerland'),
(125, 13, 13, 'Bangkok', 'Manufacturing Plant', '13.83329964', '100.4832993', 'Bangkok', 'Thailand', 'Bangkok:Thailand'),
(126, 13, 3, 'Lan Zhou', 'Vendor Tier 2', '36.061255', '103.834377', 'Istanbul', 'Turkey', 'Istanbul:Turkey'),
(127, 13, 20, 'Houston', 'Assembly Plant', '29.687525', '-95.273101', 'Houston', 'USA', 'Houston:USA'),
(128, 13, 155, 'Atlanta', 'Distribution Centre', '33.78422546', '-84.38647461', 'Atlanta', 'USA', 'Atlanta:USA'),
(129, 13, 156, 'Baltimore', 'Distribution Centre', '39.32189941', '-76.61840057', 'Baltimore', 'USA', 'Baltimore:USA'),
(130, 13, 161, 'Boise City', 'Distribution Centre', '36.72489929', '-102.5118027', 'Boise City', 'USA', 'Boise City:USA'),
(131, 13, 165, 'Boston', 'Distribution Centre', '42.37530136', '-71.1026001', 'Boston', 'USA', 'Boston:USA'),
(132, 13, 169, 'Buffalo', 'Customer', '42.89870071', '-78.8483963', 'Buffalo', 'USA', 'Buffalo:USA'),
(133, 13, 170, 'Charleston', 'Customer', '32.86109924', '-79.98210144', 'Charleston', 'USA', 'Charleston:USA'),
(134, 13, 171, 'Charlotte', 'Customer', '35.2057991', '-80.83570099', 'Charlotte', 'USA', 'Charlotte:USA'),
(135, 13, 172, 'Chicago', 'Customer', '41.82649994', '-87.64129639', 'Chicago', 'USA', 'Chicago:USA'),
(136, 13, 173, 'Cincinnati', 'Customer', '39.14799881', '-84.47699738', 'Cincinnati', 'USA', 'Cincinnati:USA'),
(137, 13, 175, 'Dallas', 'Customer', '32.76369858', '-96.66369629', 'Dallas', 'USA', 'Dallas:USA'),
(138, 13, 176, 'Denver', 'Customer', '39.57780075', '-105.0787964', 'Denver', 'USA', 'Denver:USA'),
(139, 13, 177, 'Detroit', 'Customer', '42.39429855', '-83.0789032', 'Detroit', 'USA', 'Detroit:USA'),
(140, 13, 181, 'Green Bay', 'Customer', '44.49860001', '-88.03780365', 'Green Bay', 'USA', 'Green Bay:USA'),
(141, 13, 182, 'Greenville', 'Customer', '34.84799957', '-82.41470337', 'Greenville', 'USA', 'Greenville:USA'),
(142, 13, 183, 'Houston', 'Customer', '29.77179909', '-95.40709686', 'Houston', 'USA', 'Houston:USA'),
(143, 13, 184, 'Iowa City', 'Customer', '41.65859985', '-91.52970123', 'Iowa City', 'USA', 'Iowa City:USA'),
(144, 13, 185, 'Kansas City', 'Customer', '38.99409866', '-94.62660217', 'Kansas City', 'USA', 'Kansas City:USA'),
(145, 13, 186, 'Las Vegas', 'Customer', '36.16159821', '-115.1542969', 'Las Vegas', 'USA', 'Las Vegas:USA'),
(146, 13, 187, 'Lexington', 'Customer', '37.77700043', '-79.44830322', 'Lexington', 'USA', 'Lexington:USA'),
(147, 13, 191, 'Los Angeles', 'Customer', '34.02220154', '-118.2440033', 'Los Angeles', 'USA', 'Los Angeles:USA'),
(148, 13, 195, 'Memphis', 'Customer', '35.11470032', '-90.00029755', 'Memphis', 'USA', 'Memphis:USA'),
(149, 13, 196, 'Miami', 'Customer', '25.83209991', '-80.27020264', 'Miami', 'USA', 'Miami:USA'),
(150, 13, 197, 'Minneapolis', 'Customer', '44.92419815', '-93.30780029', 'Minneapolis', 'USA', 'Minneapolis:USA'),
(151, 13, 199, 'Nashville', 'Customer', '36.14160156', '-86.8184967', 'Nashville', 'USA', 'Nashville:USA'),
(152, 13, 200, 'Newark', 'Customer', '40.72650146', '-74.39689636', 'Newark', 'USA', 'Newark:USA'),
(153, 13, 201, 'New Orleans', 'Customer', '29.95639992', '-90.09870148', 'New Orleans', 'USA', 'New Orleans:USA'),
(154, 13, 202, 'Norfolk', 'Customer', '36.87929916', '-76.26860046', 'Norfolk', 'USA', 'Norfolk:USA'),
(155, 13, 203, 'Omaha', 'Customer', '41.2521019', '-95.97859955', 'Omaha', 'USA', 'Omaha:USA'),
(156, 13, 204, 'Orlando', 'Customer', '28.60029984', '-81.36270142', 'Orlando', 'USA', 'Orlando:USA'),
(157, 13, 206, 'Phoenix', 'Customer', '33.370341', '-112.060537', 'Phoenix', 'USA', 'Phoenix:USA'),
(158, 13, 207, 'Pittsburgh', 'Customer', '40.49720001', '-79.99710083', 'Pittsburgh', 'USA', 'Pittsburgh:USA'),
(159, 13, 208, 'Reno', 'Customer', '39.52550125', '-119.7967987', 'Reno', 'USA', 'Reno:USA'),
(160, 13, 209, 'San Jose', 'Customer', '37.30810165', '-121.9465027', 'San Jose', 'USA', 'San Jose:USA'),
(161, 13, 210, 'Seattle', 'Customer', '47.5760994', '-122.6648026', 'Seattle', 'USA', 'Seattle:USA'),
(162, 13, 211, 'Spokane', 'Customer', '47.66960144', '-117.3944016', 'Spokane', 'USA', 'Spokane:USA'),
(163, 13, 214, 'Tulsa', 'Customer', '36.13209915', '-95.92990112', 'Tulsa', 'USA', 'Tulsa:USA'),
(164, 13, 216, 'Yuma', 'Customer', '32.7181015', '-114.6260986', 'Yuma', 'USA', 'Yuma:USA'),
(165, 13, 1, 'Ho Chi Minh', 'Vendor Tier 2', '10.660608', '106.61132', 'Ho Chi Minh', 'Vietnam', 'Ho Chi Minh:Vietnam'),
(166, 13, 5, 'Chiang Mai', 'Vendor Tier 1', '18.7964642', '98.6600586', 'Chiang Mai', 'Vietnam', 'Chiang Mai:Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `member_system`
--

CREATE TABLE IF NOT EXISTS `member_system` (
  `userID` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `member_system`
--

INSERT INTO `member_system` (`userID`, `username`, `password`, `email`) VALUES
(7, '123456', 'e10adc3949ba59abbe56e057f20f883e', 'thaweesak.choo@gmail.com'),
(12, 'supasan002', '4d356171e4e75b51f0db08d3b49b18cc', 'ch.supasan@gmail.com'),
(13, 'yinxf', '81dc9bdb52d04dc20036dbd8313ed055', 'yinxf@ihpc.a-star.edu.sg');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `userID` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Lastname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
