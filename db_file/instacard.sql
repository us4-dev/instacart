-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 01:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instacard`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `tblbranch`
--

CREATE TABLE `tblbranch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `b_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `b_contact_no` int(15) NOT NULL,
  `b_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `security_guard_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secrataty_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moderator_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_make_year` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_status` tinyint(4) NOT NULL DEFAULT 1,
  `builder_company_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `builder_company_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `builder_company_address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `building_rule` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblbranch`
--

INSERT INTO `tblbranch` (`branch_id`, `branch_name`, `b_email`, `b_contact_no`, `b_address`, `security_guard_mobile`, `secrataty_mobile`, `moderator_mobile`, `building_make_year`, `building_image`, `b_status`, `builder_company_name`, `builder_company_phone`, `builder_company_address`, `building_rule`, `created_date`) VALUES
(7, 'Silver Tower', 'mirpur.1@gmail.com', 1717445566, 'F-Block,Mirpur-1,Dhaka-1216', '+880167119889', '+880911909090', '+88090909090', '', 'E9EB1C1F-9D88-0FD8-CE34-92F3421FA31D.jpg', 1, 'Golden Developer Company', '+8850505050', 'Test Address\r\nUK', '<p style=\"text-align:center\"><span style=\"color:#e67e22\"><u><span style=\"font-size:36px\"><span style=\"font-family:Trebuchet MS,Helvetica,sans-serif\"><strong>Love Bird Building Rules</strong></span></span></u></span></p>\r\n\r\n<blockquote>\r\n<p><strong><span style=\"color:#16a085\"><span style=\"font-size:20px\">1) Gate Close 10 PM.</span></span></strong></p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong><span style=\"color:#16a085\"><span style=\"font-size:20px\">2) New commer must be intruduce with guard.</span></span></strong></p>\r\n</blockquote>\r\n', '2016-06-22 09:50:30'),
(8, 'Golden Tower', 'opu@gmail.com', 1212121212, 'K-Block,Mirpur-10,Dhaka-1216', '+880167119889', '+880911909090', '+88090909090', '9', '6F7882BD-85CD-8D98-EDCA-1FF65F0BFABA.jpg', 1, 'Golden Developer Company', '+8850505050', 'test address\r\nUSA', '<p style=\"text-align:center\"><span style=\"color:#e67e22\"><u><span style=\"font-size:36px\"><span style=\"font-family:Trebuchet MS,Helvetica,sans-serif\"><strong>Love Bird Building Rules</strong></span></span></u></span></p>\r\n\r\n<blockquote>\r\n<p><strong><span style=\"color:#16a085\"><span style=\"font-size:20px\">1) Gate Close 10 PM.</span></span></strong></p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><strong><span style=\"color:#16a085\"><span style=\"font-size:20px\">2) New commer must be intruduce with guard.</span></span></strong></p>\r\n</blockquote>\r\n', '2016-06-22 10:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblsuper_admin`
--

CREATE TABLE `tblsuper_admin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblsuper_admin`
--

INSERT INTO `tblsuper_admin` (`user_id`, `name`, `email`, `contact`, `password`, `added_date`) VALUES
(1, 'Abdulwahab Binsanad', 'devsolver@gmail.com', '+8801679110711', 'MTIzNDU2', '2015-06-29 06:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_admin`
--

CREATE TABLE `tbl_add_admin` (
  `aid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_admin`
--

INSERT INTO `tbl_add_admin` (`aid`, `name`, `email`, `contact`, `password`, `image`, `branch_id`, `added_date`) VALUES
(7, 'Tony', 'tony@yahoo.com', '+8801679110711', 'MTIzNDU2', 'B7962E98-0550-407D-01A7-3C088DCCD2EF.jpg', 8, '2019-08-27 04:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_bill`
--

CREATE TABLE `tbl_add_bill` (
  `bill_id` int(11) NOT NULL,
  `bill_type` varchar(200) NOT NULL,
  `bill_date` varchar(200) NOT NULL,
  `bill_month` int(11) NOT NULL,
  `bill_year` int(11) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `deposit_bank_name` varchar(200) NOT NULL,
  `bill_details` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_bill`
--

INSERT INTO `tbl_add_bill` (`bill_id`, `bill_type`, `bill_date`, `bill_month`, `bill_year`, `total_amount`, `deposit_bank_name`, `bill_details`, `branch_id`, `added_date`) VALUES
(16, '4', '15/03/2022', 3, 15, '10.00', 'ITHMAAR BANK', 'PLUMBIMG', 8, '2022-03-14 08:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_bill_type`
--

CREATE TABLE `tbl_add_bill_type` (
  `bt_id` int(11) NOT NULL,
  `bill_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_bill_type`
--

INSERT INTO `tbl_add_bill_type` (`bt_id`, `bill_type`, `added_date`) VALUES
(1, 'Gas', '2016-05-05 09:49:35'),
(3, 'Water', '2016-05-05 09:50:39'),
(4, 'Electric', '2016-05-05 09:50:51'),
(5, 'Waste Disposal', '2022-03-10 23:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_builder_info`
--

CREATE TABLE `tbl_add_builder_info` (
  `bldrid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_building_info`
--

CREATE TABLE `tbl_add_building_info` (
  `bldid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `security_guard_mobile` varchar(200) NOT NULL,
  `secrataty_mobile` varchar(200) NOT NULL,
  `moderator_mobile` varchar(200) NOT NULL,
  `building_make_year` varchar(200) NOT NULL,
  `b_name` varchar(200) NOT NULL,
  `b_address` varchar(200) NOT NULL,
  `b_phone` varchar(200) NOT NULL,
  `building_image` varchar(200) NOT NULL,
  `building_rules` text NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_complain`
--

CREATE TABLE `tbl_add_complain` (
  `complain_id` int(11) NOT NULL,
  `c_title` varchar(200) DEFAULT NULL,
  `c_description` varchar(1000) DEFAULT NULL,
  `c_date` varchar(200) DEFAULT NULL,
  `c_month` varchar(50) DEFAULT NULL,
  `c_year` varchar(50) DEFAULT NULL,
  `c_userid` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `job_status` int(1) NOT NULL DEFAULT 0,
  `assign_employee_id` int(11) DEFAULT 0,
  `solution` varchar(500) DEFAULT NULL,
  `complain_by` varchar(100) DEFAULT NULL,
  `person_name` varchar(250) DEFAULT NULL,
  `person_email` varchar(100) DEFAULT NULL,
  `person_contact` varchar(50) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_complain`
--

INSERT INTO `tbl_add_complain` (`complain_id`, `c_title`, `c_description`, `c_date`, `c_month`, `c_year`, `c_userid`, `branch_id`, `job_status`, `assign_employee_id`, `solution`, `complain_by`, `person_name`, `person_email`, `person_contact`, `added_date`) VALUES
(41, 'Bad Color', 'test', '15/03/2022', '3', '2022', 0, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, '2022-03-15 05:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_employee`
--

CREATE TABLE `tbl_add_employee` (
  `eid` int(11) NOT NULL,
  `e_name` varchar(200) NOT NULL,
  `e_email` varchar(200) NOT NULL,
  `e_contact` varchar(200) NOT NULL,
  `e_pre_address` varchar(200) NOT NULL,
  `e_per_address` varchar(200) NOT NULL,
  `e_nid` varchar(200) NOT NULL,
  `e_designation` int(11) NOT NULL,
  `e_date` varchar(200) NOT NULL,
  `ending_date` varchar(200) NOT NULL,
  `e_status` int(1) NOT NULL DEFAULT 0,
  `e_password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `salary` decimal(15,2) NOT NULL DEFAULT 0.00,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `visa_expiry` date DEFAULT NULL,
  `passport_expiry` date DEFAULT NULL,
  `employee_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_employee`
--

INSERT INTO `tbl_add_employee` (`eid`, `e_name`, `e_email`, `e_contact`, `e_pre_address`, `e_per_address`, `e_nid`, `e_designation`, `e_date`, `ending_date`, `e_status`, `e_password`, `image`, `branch_id`, `salary`, `added_date`, `visa_expiry`, `passport_expiry`, `employee_type`) VALUES
(13, 'test', 'emp@gmail.com', 'India', 'Gr', 'Gr', 'emp01', 1, '18/03/2022', '19/03/2022', 1, 'ZW1wQDEyMw==', '741FE125-DBEE-A2F8-D7CE-39ED5952B7CC.jpg', 8, '0.00', '2022-03-18 15:08:02', '0000-11-30', '2022-03-18', 'Contract'),
(14, 'test', 'triveniyadavdfd94@gmail.com', 'India', 'chandpur, daburgram', 'daburgram', 'emp01', 3, '27/03/2022', '20/04/2022', 1, 'ZW1wQDEyMw==', '', 8, '0.00', '2022-03-27 08:53:28', '0000-00-00', '0000-00-00', '(Flexi)'),
(15, 'test', 'aman.kumar@karatstreet.com', 'India', 'Gr', 'chandpur', 'emp01', 1, '09/04/2022', '19/05/2022', 1, 'MTIxMjEyMTIx', '72E19BCE-D175-7916-4562-E4990F47572C.jpg', 7, '0.00', '2022-03-27 11:56:51', '0000-00-00', '0000-00-00', '(Flexi)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_employee_salary_setup`
--

CREATE TABLE `tbl_add_employee_salary_setup` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_employee_salary_setup`
--

INSERT INTO `tbl_add_employee_salary_setup` (`emp_id`, `emp_name`, `designation`, `month_id`, `xyear`, `amount`, `issue_date`, `branch_id`, `added_date`) VALUES
(19, '12', 'Security Gard', 8, 11, '8000.00', '05/09/2019', 8, '2019-08-26 19:36:26'),
(23, '12', 'Security Gard', 2, 11, '8000.00', '14/03/2022', 8, '2022-03-10 21:47:05'),
(24, '12', 'Security Gard', 8, 9, '8000.00', '26/03/2022', 8, '2022-03-10 21:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_fair`
--

CREATE TABLE `tbl_add_fair` (
  `f_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `rid` int(11) NOT NULL DEFAULT 0,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `water_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `electric_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `gas_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `security_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `utility_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `other_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `paid_date` varchar(25) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_fair`
--

INSERT INTO `tbl_add_fair` (`f_id`, `type`, `floor_no`, `unit_no`, `rid`, `month_id`, `xyear`, `rent`, `water_bill`, `electric_bill`, `gas_bill`, `security_bill`, `utility_bill`, `other_bill`, `total_rent`, `issue_date`, `paid_date`, `branch_id`, `bill_status`, `added_date`) VALUES
(43, 'Rented', '12', '30', 20, 8, '2022', '10000.00', '500.00', '1000.00', '975.00', '900.00', '100.00', '0.00', '13475.00', '05/08/2019', '30/08/2019', 8, 1, '2019-08-27 04:29:55'),
(44, 'Rented', '12', '30', 20, 9, '2019', '10000.00', '600.00', '700.00', '800.00', '900.00', '500.00', '0.00', '13500.00', '04/09/2019', '19/03/2022', 8, 1, '2019-08-27 19:26:08'),
(46, 'Rented', '14', '34', 0, 8, '2020', '0.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1700.00', '10/03/2022', '', 8, 0, '2022-03-10 21:55:51'),
(47, 'Rented', '12', '31', 21, 6, '2022', '100.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1800.00', '19/03/2022', '23/03/2022', 8, 1, '2022-03-10 21:56:30'),
(48, 'Rented', '13', '33', 0, 11, '2021', '0.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1700.00', '12/03/2021', '', 8, 0, '2022-03-10 21:57:11'),
(49, 'Rented', '14', '34', 0, 7, '2017', '0.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1700.00', '11/03/2022', '', 8, 0, '2022-03-10 21:58:01'),
(50, 'Rented', '14', '34', 23, 2, '2022', '100.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1800.00', '05/03/2022', '', 8, 1, '2022-03-10 22:00:55'),
(51, 'Owner', '14', '34', 20, 1, '2022', '0.00', '50.00', '20.00', '800.00', '900.00', '0.00', '0.00', '1770.00', '10/03/2022', NULL, 8, 0, '2022-03-10 22:01:42'),
(52, 'Owner', '12', '31', 0, 1, '2022', '0.00', '150.00', '200.00', '100.00', '10.00', '500.00', '250.00', '1210.00', '05/03/2022', NULL, 8, 0, '2022-03-10 22:02:25'),
(53, 'Owner', '13', '32', 19, 2, '2022', '0.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1700.00', '09/03/2022', NULL, 8, 0, '2022-03-10 22:03:09'),
(54, 'Owner', '12', '31', 0, 4, '2021', '0.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1700.00', '09/03/2022', NULL, 8, 0, '2022-03-10 22:03:40'),
(55, 'Owner', '14', '34', 20, 11, '2022', '0.00', '0.00', '0.00', '800.00', '900.00', '0.00', '0.00', '1700.00', '12/03/2022', NULL, 8, 0, '2022-03-10 22:05:21'),
(56, 'Rented', '18', '42', 26, 13, '2022', '200.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '200.00', '13/03/2022', '13/03/2022', 8, 0, '2022-03-13 09:47:12'),
(57, 'Rented', '19', '58', 0, 5, '2022', '0.00', '0.00', '0.00', '10.00', '20.00', '0.00', '0.00', '30.00', '22/03/2022', '', 8, 0, '2022-03-22 15:32:28'),
(58, 'Owner', '18', '42', 23, 1, '2008', '0.00', '1.00', '2.00', '10.00', '20.00', '0.00', '0.00', '33.00', '23/03/2022', NULL, 8, 0, '2022-03-23 18:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_floor`
--

CREATE TABLE `tbl_add_floor` (
  `fid` int(11) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_floor`
--

INSERT INTO `tbl_add_floor` (`fid`, `floor_no`, `branch_id`, `added_date`) VALUES
(18, '1st Floor', 8, '2022-03-13 09:06:17'),
(19, 'Building:4152,Road No:2161,Area:321,Gudaibiya', 8, '2022-03-17 08:10:13'),
(20, 'Road No:1701, Area:917, Bu Kuwarah, Riffa', 8, '2022-03-17 08:37:43'),
(25, '2nd Floor', 8, '2022-03-17 09:50:45'),
(26, '3rdFloor', 8, '2022-03-17 09:50:51'),
(27, '4th Floor', 8, '2022-03-17 09:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_fund`
--

CREATE TABLE `tbl_add_fund` (
  `fund_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `f_date` varchar(200) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `purpose` varchar(400) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_fund`
--

INSERT INTO `tbl_add_fund` (`fund_id`, `owner_id`, `month_id`, `xyear`, `f_date`, `total_amount`, `purpose`, `branch_id`, `added_date`) VALUES
(13, 19, 8, '11', '27/08/2019', '200.00', 'Monthly Fund', 8, '2019-08-27 04:34:37'),
(14, 20, 3, '15', '24/03/2022', '500.00', 'Paint fumd', 8, '2022-03-10 22:08:55'),
(15, 19, 2, '15', '04/04/2022', '2000.00', 'Monthly fund', 8, '2022-03-10 22:10:10'),
(16, 20, 10, '12', '19/03/2022', '1313.00', 'hfdhfdhfd', 8, '2022-03-10 22:11:36'),
(17, 19, 6, '15', '11/03/2022', '300.00', 'Nice', 8, '2022-03-11 05:05:52'),
(18, 19, 7, '15', '17/03/2022', '600.00', 'Nice Day', 8, '2022-03-11 05:07:26'),
(19, 19, 5, '15', '19/03/2022', '10.00', 'ngfhgf', 8, '2022-03-11 08:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_maintenance_cost`
--

CREATE TABLE `tbl_add_maintenance_cost` (
  `mcid` int(11) NOT NULL,
  `m_title` varchar(200) NOT NULL,
  `m_date` varchar(200) NOT NULL,
  `m_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `m_details` varchar(200) NOT NULL,
  `xmonth` int(11) NOT NULL DEFAULT 0,
  `xyear` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_maintenance_cost`
--

INSERT INTO `tbl_add_maintenance_cost` (`mcid`, `m_title`, `m_date`, `m_amount`, `m_details`, `xmonth`, `xyear`, `branch_id`, `added_date`) VALUES
(7, 'Light', '27/08/2019', '50.00', 'OK', 8, 11, 8, '2019-08-27 04:39:09'),
(8, 'CCTV', '11/03/2022', '150.00', 'CCTV repairing ', 4, 15, 8, '2022-03-10 22:06:13'),
(9, 'Water Pump', '08/03/2022', '500.00', 'Pump repairing ', 4, 15, 8, '2022-03-10 22:07:13'),
(10, 'PLUMBING', '14/03/2022', '10.00', 'DSS', 3, 15, 8, '2022-03-14 08:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_management_committee`
--

CREATE TABLE `tbl_add_management_committee` (
  `mc_id` int(11) NOT NULL,
  `mc_name` varchar(200) NOT NULL,
  `mc_email` varchar(200) NOT NULL,
  `mc_contact` varchar(200) NOT NULL,
  `mc_pre_address` varchar(500) NOT NULL,
  `mc_per_address` varchar(500) NOT NULL,
  `mc_nid` varchar(200) NOT NULL,
  `member_type` varchar(200) NOT NULL,
  `mc_joining_date` varchar(200) NOT NULL,
  `mc_ending_date` varchar(200) NOT NULL,
  `mc_status` int(1) NOT NULL DEFAULT 0,
  `image` varchar(200) NOT NULL,
  `mc_password` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_member_type`
--

CREATE TABLE `tbl_add_member_type` (
  `member_id` int(11) NOT NULL,
  `member_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_member_type`
--

INSERT INTO `tbl_add_member_type` (`member_id`, `member_type`, `added_date`) VALUES
(1, 'House Keeper', '2016-04-10 11:56:20'),
(3, 'Maintenance Staff', '2016-04-10 11:59:22'),
(5, 'Security Gard', '2016-04-10 11:59:41'),
(6, 'Caretaker', '2016-04-10 12:00:17'),
(7, 'Gardner', '2017-09-16 17:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_month_setup`
--

CREATE TABLE `tbl_add_month_setup` (
  `m_id` int(11) NOT NULL,
  `month_name` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_month_setup`
--

INSERT INTO `tbl_add_month_setup` (`m_id`, `month_name`, `added_date`) VALUES
(1, 'January', '2016-04-11 12:16:15'),
(2, 'February', '2016-04-11 12:16:25'),
(3, 'March', '2016-04-11 12:16:30'),
(5, 'May', '2016-04-11 12:16:41'),
(6, 'June', '2016-04-11 12:16:48'),
(7, 'July', '2016-04-11 12:16:53'),
(8, 'August', '2016-04-11 12:16:59'),
(9, 'September', '2016-04-11 12:17:06'),
(10, 'Octobor', '2016-04-11 12:17:14'),
(11, 'November', '2016-04-11 12:17:24'),
(12, 'December', '2016-04-11 12:17:30'),
(13, 'April', '2022-03-10 23:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_owner`
--

CREATE TABLE `tbl_add_owner` (
  `ownid` int(11) NOT NULL,
  `o_name` varchar(200) NOT NULL,
  `o_email` varchar(200) NOT NULL,
  `o_contact` varchar(200) NOT NULL,
  `o_pre_address` varchar(500) NOT NULL,
  `o_per_address` varchar(500) NOT NULL,
  `o_flat_no` varchar(111) NOT NULL,
  `o_building_no` varchar(111) NOT NULL,
  `o_road_no` varchar(111) NOT NULL,
  `o_block_no` varchar(111) NOT NULL,
  `o_area` varchar(111) NOT NULL,
  `o_nid` varchar(200) NOT NULL,
  `o_password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_owner`
--

INSERT INTO `tbl_add_owner` (`ownid`, `o_name`, `o_email`, `o_contact`, `o_pre_address`, `o_per_address`, `o_flat_no`, `o_building_no`, `o_road_no`, `o_block_no`, `o_area`, `o_nid`, `o_password`, `image`, `branch_id`, `created_date`) VALUES
(23, 'MOHAMED JASIM MOHAMED BINSANAD', 'info@sanadrealestate.com', '97317728600', 'Sanad Real Estate\r\nP.O. Box:15807,Adliya,Kingdom of Bahrain', 'Sanad Real Estate\r\nP.O. Box:15807,Adliya,Kingdom of Bahrain', '', '', '', '', '', '501201866', 'U2FuYWQjMTU4MDc=', 'FC8906A3-AA4F-B266-A85B-0897EFCB2658.jpg', 8, '2022-03-13 09:04:23'),
(24, 'test', 'testowner@gmail.com', '+91877838778783', 'NA', 'NA', '01100', 'B-11000', 'New Delhi ', 'Block A , Sec 10,', 'Kasmeri Gate Sec-10', 'NA', 'dGVzdG93bmVyQA==', '', 8, '2022-03-19 11:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_owner_unit_relation`
--

CREATE TABLE `tbl_add_owner_unit_relation` (
  `owner_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_owner_unit_relation`
--

INSERT INTO `tbl_add_owner_unit_relation` (`owner_id`, `unit_id`) VALUES
(23, 56),
(23, 42),
(23, 57),
(23, 43),
(23, 58),
(23, 59),
(23, 48),
(23, 60),
(23, 45),
(23, 61),
(23, 46),
(23, 47),
(23, 49),
(23, 50),
(23, 51),
(23, 52),
(23, 44),
(23, 53),
(23, 54),
(23, 55),
(23, 62),
(23, 63),
(23, 64),
(23, 65),
(23, 66),
(23, 67);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_owner_utility`
--

CREATE TABLE `tbl_add_owner_utility` (
  `owner_utility_id` int(11) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `unit_no` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `water_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `electric_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `gas_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `security_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `utility_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `other_bill` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_rent` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_rent`
--

CREATE TABLE `tbl_add_rent` (
  `rid` int(11) NOT NULL,
  `r_name` varchar(200) NOT NULL,
  `r_email` varchar(200) NOT NULL,
  `r_contact` varchar(200) NOT NULL,
  `r_address` varchar(200) NOT NULL,
  `r_nid` varchar(200) NOT NULL,
  `r_floor_no` varchar(200) NOT NULL,
  `r_unit_no` varchar(200) NOT NULL,
  `r_advance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `r_rent_pm` decimal(15,2) NOT NULL DEFAULT 0.00,
  `r_date` varchar(200) NOT NULL,
  `r_gone_date` varchar(200) DEFAULT NULL,
  `r_password` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `uploaded_agreement_file` text NOT NULL,
  `r_status` int(1) NOT NULL DEFAULT 1,
  `r_month` int(11) NOT NULL,
  `r_year` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `extra_contact_no` varchar(255) DEFAULT NULL,
  `ttype` varchar(50) DEFAULT NULL,
  `r_flat_no` varchar(111) NOT NULL,
  `r_building_no` varchar(111) NOT NULL,
  `r_road_no` varchar(111) NOT NULL,
  `r_block_no` varchar(111) NOT NULL,
  `r_area` varchar(111) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_rent`
--

INSERT INTO `tbl_add_rent` (`rid`, `r_name`, `r_email`, `r_contact`, `r_address`, `r_nid`, `r_floor_no`, `r_unit_no`, `r_advance`, `r_rent_pm`, `r_date`, `r_gone_date`, `r_password`, `image`, `uploaded_agreement_file`, `r_status`, `r_month`, `r_year`, `branch_id`, `extra_contact_no`, `ttype`, `r_flat_no`, `r_building_no`, `r_road_no`, `r_block_no`, `r_area`, `added_date`) VALUES
(20, 'Jim Cary', 'jimcary@yahoo.com', '0191212121212', 'Bahrain', '232323-565656-212121', '12', '30', '10000.00', '10000.00', '27/08/2019', '', 'MTIzNDU2', 'C7A2F0A4-1DCC-E7F1-8D54-14F507D8CA7E.jpg', '', 1, 9, 11, 8, '026545454', 'Residential', '', '', '', '', '', '2019-08-26 19:33:04'),
(21, 'dsadsadsad', 'dasdash@gmail.com', '39197519', 'Bahrain', '131231243', '12', '31', '130.00', '100.00', '10/03/2022', NULL, 'c2RzYWRhc2Q=', '', '', 0, 3, 15, 8, '41241414', 'Residential', '', '', '', '', '', '2022-03-10 21:37:47'),
(22, 'twetwetwet', 'dgfdg@gmail.com', '+97339100232', 'Bahrain', '3123123213', '13', '32', '4324234.00', '4332432.00', '09/03/2022', NULL, 'Z2RmZGdmZA==', '', '', 1, 2, 15, 8, '41241414', 'Commercial', '', '', '', '', '', '2022-03-10 21:38:51'),
(23, 'adsadsa', 'dsdsdsa@adasd.hh', '9961039319', 'Bahrain', '3123123213', '14', '34', '130.00', '100.00', '10/03/2022', NULL, 'ZHNhZHNhZA==', '', '', 1, 2, 15, 8, '41241414', 'Residential', '', '', '', '', '', '2022-03-10 21:59:52'),
(24, 'test 1', 'wewqeqwewqth@gmail.com', '39197519', 'Austria', '3123123213', '13', '33', '130.00', '100.00', '10/03/2022', NULL, 'ZHNhZHNhZA==', '', '', 1, 6, 15, 8, '41241414', 'Residential', '', '', '', '', '', '2022-03-11 08:24:17'),
(25, 'test 5', 'dfsdfsdfth@gmail.com', '39197519', 'Australia', '423424234', '15', '35', '130.00', '100.00', '10/03/2022', NULL, 'ZHNmc2Rmc2Rm', '', '', 1, 3, 15, 8, '41241414', 'Commercial', '', '', '', '', '', '2022-03-11 16:23:09'),
(26, 'ARUN S', 'arun@sanadrealestate.com', '32077888', 'India', '860552462', '18', '42', '200.00', '200.00', '01/01/2022', NULL, 'U2FuYWQjMTU4MDc=', '', '', 1, 12, 15, 8, '66944663', 'Residential', '', '', '', '', '', '2022-03-13 09:27:12'),
(27, 'dsadsadsad', 'sdfsdfth@gmail.com', '39197519', 'Bahrain', '3123123213', '18', '56', '130.00', '100.00', '17/03/2022', NULL, 'ZHNhZHNhZA==', '', '', 1, 3, 15, 8, '', 'Commercial', '', '', '', '', '', '2022-03-17 10:03:18'),
(28, 'test', 'testrent@gmail.com', '67323232328732', 'Bahrain', 'test123', '18', '43', '1000.00', '222.00', '19/03/2022', NULL, 'dGVzdHJlbnRA', '', '', 0, 3, 15, 8, '', 'Residential', '101010101000', 'B-10101010188', 'New Delhi ', 'B -1', 'South Delhi', '2022-03-19 13:40:40'),
(29, 'test', 'test2221@gmail.com', '766732762536722', 'Bahrain', '323232', '18', '51', '1000.00', '222.00', '29/03/2022', NULL, 'dGVzdDIyMjFA', '', '', 1, 3, 15, 8, '', 'Residential', '2223', 'adfdf', 'w21wddcc', 'asdsf', '212', '2022-03-29 13:53:09'),
(30, 'test', 'test22212223@gmail.com', '766732762536722', 'Bahrain', '323232', '18', '', '1000.00', '222.00', '29/03/2022', NULL, 'dGVzdDIyMjFA', 'C86FD893-62E1-8AF4-EB6F-EDFED164A4C1.gif', '35ECBCFD-4B09-639E-4562-0E244DEC1D51.jpg', 1, 3, 15, 8, '', 'Residential', '2223', 'adfdf', 'w21wddcc', 'asdsf', '212', '2022-03-29 13:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_unit`
--

CREATE TABLE `tbl_add_unit` (
  `uid` int(11) NOT NULL,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_unit`
--

INSERT INTO `tbl_add_unit` (`uid`, `floor_no`, `unit_no`, `branch_id`, `status`, `added_date`) VALUES
(42, '18', 'Flat No: 01', 8, 1, '2022-03-13 09:07:16'),
(43, '18', 'Flat No: 02', 8, 1, '2022-03-13 09:07:29'),
(44, '18', 'Flat No:11', 8, 0, '2022-03-13 09:07:40'),
(45, '18', 'Flat No: 21 A & B', 8, 0, '2022-03-13 09:12:22'),
(46, '18', 'Flat No: 22 A & B', 8, 0, '2022-03-13 09:13:02'),
(47, '18', 'Flat No: 31', 8, 0, '2022-03-13 09:13:19'),
(48, '18', 'Flat No: 12', 8, 0, '2022-03-13 09:14:04'),
(49, '18', 'Flat No: 32', 8, 0, '2022-03-13 09:14:44'),
(50, '18', 'FLAT No: 33', 8, 0, '2022-03-13 09:15:23'),
(51, '18', 'Flat No: 34', 8, 1, '2022-03-13 09:20:03'),
(52, '18', 'Flat No: 41(Roof Top)', 8, 0, '2022-03-13 09:20:41'),
(53, '18', 'Shop No: 1269 A', 8, 0, '2022-03-13 09:22:02'),
(54, '18', 'Shop No: 1269 B', 8, 0, '2022-03-13 09:22:20'),
(55, '18', 'Shop No: 1269 G', 8, 0, '2022-03-13 09:22:49'),
(56, '18', '1269 D', 8, 1, '2022-03-13 09:23:10'),
(57, '19', 'Flat No: 02', 8, 0, '2022-03-17 08:25:53'),
(58, '19', 'Flat No: 11', 8, 0, '2022-03-17 08:26:09'),
(59, '19', 'Flat No: 12', 8, 0, '2022-03-17 08:26:24'),
(60, '19', 'Flat No: 21', 8, 0, '2022-03-17 08:26:45'),
(61, '19', 'Flat No: 22', 8, 0, '2022-03-17 08:27:20'),
(62, '19', 'Shop No: 4150', 8, 0, '2022-03-17 08:27:47'),
(63, '19', 'Shop No: 4154', 8, 0, '2022-03-17 08:28:11'),
(64, '20', 'Villa No:11', 8, 0, '2022-03-17 09:09:02'),
(65, '20', 'Villa No:13', 8, 0, '2022-03-17 09:09:20'),
(66, '20', 'Villa No:15', 8, 0, '2022-03-17 09:09:37'),
(67, '20', 'Villa No:17', 8, 0, '2022-03-17 09:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_utility_bill`
--

CREATE TABLE `tbl_add_utility_bill` (
  `utility_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `gas_bill` varchar(200) NOT NULL,
  `security_bill` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_utility_bill`
--

INSERT INTO `tbl_add_utility_bill` (`utility_id`, `branch_id`, `gas_bill`, `security_bill`, `added_date`) VALUES
(5, 7, '850', '800', '2018-05-14 06:31:40'),
(7, 8, '10', '20', '2022-03-10 23:36:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_year_setup`
--

CREATE TABLE `tbl_add_year_setup` (
  `y_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_add_year_setup`
--

INSERT INTO `tbl_add_year_setup` (`y_id`, `xyear`, `added_date`) VALUES
(15, '2022', '2022-02-12 04:26:07'),
(16, '2021', '2022-03-10 23:40:30'),
(17, '2020', '2022-03-10 23:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_car_reminder`
--

CREATE TABLE `tbl_car_reminder` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `passing_date` date DEFAULT NULL,
  `insurance_date` date DEFAULT NULL,
  `service_due_date` date DEFAULT NULL,
  `service_KM` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_car_reminder`
--

INSERT INTO `tbl_car_reminder` (`id`, `vehicle_number`, `passing_date`, `insurance_date`, `service_due_date`, `service_KM`, `branch_id`, `created_date`) VALUES
(5, '252525', '2022-03-24', '2022-03-29', '2022-03-26', '600', 8, '2022-03-11 04:43:25'),
(6, '2131', '2022-03-31', '2022-03-29', '2022-03-29', '148500', 8, '2022-03-11 08:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `cid` int(11) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`cid`, `symbol`, `name`) VALUES
(2, '$', 'Dollar'),
(12, 'BHD ', 'Bahraini Dinar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_leave_request`
--

CREATE TABLE `tbl_employee_leave_request` (
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `leave_text` varchar(5000) NOT NULL,
  `request_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_notice`
--

CREATE TABLE `tbl_employee_notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(4) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee_notice`
--

INSERT INTO `tbl_employee_notice` (`notice_id`, `notice_title`, `notice_description`, `notice_status`, `branch_id`, `created_date`) VALUES
(1, 'employee test notice 1', '<p>erwerwerwe</p>\r\n\r\n<p>&#39;</p>\r\n\r\n<p>wer&#39;we</p>\r\n\r\n<p>r]&#39;we</p>\r\n\r\n<p>]er</p>\r\n\r\n<p>werw</p>\r\n\r\n<p>er</p>\r\n', 1, 8, '2022-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_payment`
--

CREATE TABLE `tbl_invoice_payment` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) NOT NULL DEFAULT 0,
  `paid_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_invoice_payment`
--

INSERT INTO `tbl_invoice_payment` (`id`, `invoice_id`, `amount`, `paid_date`) VALUES
(1, 56, '50', '2022-03-17 06:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_max_power`
--

CREATE TABLE `tbl_max_power` (
  `purchase_code` varchar(150) DEFAULT NULL,
  `website_url` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `installed_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_check_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_max_power`
--

INSERT INTO `tbl_max_power` (`purchase_code`, `website_url`, `email`, `installed_date`, `last_check_date`) VALUES
('001002003', 'https://native.instacard.digital/', 'opu005@gmail.com', '2022-02-12 04:24:36', '2022-12-12 09:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meeting`
--

CREATE TABLE `tbl_meeting` (
  `meeting_id` int(11) NOT NULL,
  `meeting_title` varchar(300) NOT NULL,
  `meeting_description` text NOT NULL,
  `issue_date` date NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_meeting`
--

INSERT INTO `tbl_meeting` (`meeting_id`, `meeting_title`, `meeting_description`, `issue_date`, `branch_id`) VALUES
(6, 'Water Problem', '<p><strong>We need to solve water problem soon.</strong></p>\r\n', '2019-08-27', 8),
(7, 'Water isssue', '<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Currency &ndash; BHD ( Bahraini Dinar with three decimal- 1.000)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add one sub menu in <strong>Admin- Employee Information- Employee Status ( Ref Pic-1)</strong></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0.5in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">And add the below fields with renewal intimation mail alert to admin.</span></span></p>\r\n\r\n<p style=\"margin-left:0.5in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">And also show an alert box (for showing all alerts) in dash board for.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Employee Visa expiry date ( calendar)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Employee Passport expiry date (calendar)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Employee type &ndash; Own, Flexi, Contract, Others (option to select from these dropdown)</span></span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Generate Invoice and Receipt with company logo. ( I will provide formats)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Option to create <strong>Rent Receipt (Ref Pic-2</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Send Invoice and Receipt web link ( PDF)&nbsp; to customers (SMS and&nbsp; mail)&nbsp; <strong>( Ref Pic-3 and 4)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">In client account, same like Invoice, give an option to download their receipt.</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">For all calendar&rsquo;s, it is better, if you can keep a dynamic year selection with current year as default. <strong>( Ref Pic-5)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Change <strong>Complain</strong> to <strong>&ldquo;Complaint&rdquo;</strong> in menu and forms <strong>( Ref Pic-6)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add one additional field ( CPR / ID No.) in <strong>Add Visitor</strong> menu and also its better, if we can give a <strong>calendar with time</strong> for the &ldquo;in and out&rdquo; times <strong>(Ref Pic-7)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">What is the functionality of the menu &ldquo;Meeting&rdquo;? Can we send the meeting notification to clients?</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Change Moderator to Care Taker&nbsp; in &ldquo;Add Building&rdquo; menu <strong>(Ref Pic-8)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Generate Rent agreement by using the client details ( format will give you)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add a reminder menu in settings for setting up Vehicle reminders ( Passing date, Insurance date, Service due date etc.) with reminder notification ( by mail to admin and show in dash board)&nbsp; <strong>(Ref Pic-10)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Please change the invoice status to &ldquo;PAID&rdquo; once the receipt generated against the invoice</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">In employee login, we will give a salary voucher format. Please change the current format with new one.</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add some additional fields in &ldquo;Add new Tenant&rdquo;&nbsp; <strong>(Ref Pic-9)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Please use <strong>www.bulksmsonline.com</strong> for SMS integration. </span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0.5in; margin-right:0in\">&nbsp;</p>\r\n', '2022-03-11', 8),
(8, 'Water isssue', '<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Currency &ndash; BHD ( Bahraini Dinar with three decimal- 1.000)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add one sub menu in <strong>Admin- Employee Information- Employee Status ( Ref Pic-1)</strong></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0.5in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">And add the below fields with renewal intimation mail alert to admin.</span></span></p>\r\n\r\n<p style=\"margin-left:0.5in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">And also show an alert box (for showing all alerts) in dash board for.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Employee Visa expiry date ( calendar)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Employee Passport expiry date (calendar)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Employee type &ndash; Own, Flexi, Contract, Others (option to select from these dropdown)</span></span></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Generate Invoice and Receipt with company logo. ( I will provide formats)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Option to create <strong>Rent Receipt (Ref Pic-2</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Send Invoice and Receipt web link ( PDF)&nbsp; to customers (SMS and&nbsp; mail)&nbsp; <strong>( Ref Pic-3 and 4)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">In client account, same like Invoice, give an option to download their receipt.</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">For all calendar&rsquo;s, it is better, if you can keep a dynamic year selection with current year as default. <strong>( Ref Pic-5)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Change <strong>Complain</strong> to <strong>&ldquo;Complaint&rdquo;</strong> in menu and forms <strong>( Ref Pic-6)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add one additional field ( CPR / ID No.) in <strong>Add Visitor</strong> menu and also its better, if we can give a <strong>calendar with time</strong> for the &ldquo;in and out&rdquo; times <strong>(Ref Pic-7)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">What is the functionality of the menu &ldquo;Meeting&rdquo;? Can we send the meeting notification to clients?</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Change Moderator to Care Taker&nbsp; in &ldquo;Add Building&rdquo; menu <strong>(Ref Pic-8)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Generate Rent agreement by using the client details ( format will give you)</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add a reminder menu in settings for setting up Vehicle reminders ( Passing date, Insurance date, Service due date etc.) with reminder notification ( by mail to admin and show in dash board)&nbsp; <strong>(Ref Pic-10)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Please change the invoice status to &ldquo;PAID&rdquo; once the receipt generated against the invoice</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">In employee login, we will give a salary voucher format. Please change the current format with new one.</span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Add some additional fields in &ldquo;Add new Tenant&rdquo;&nbsp; <strong>(Ref Pic-9)</strong></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\">Please use <strong>www.bulksmsonline.com</strong> for SMS integration. </span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0.5in; margin-right:0in\">&nbsp;</p>\r\n', '2022-03-11', 8),
(9, 'test meeting ', '<table class=\"Table\" style=\"border:none; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">3. Termination Article, this agreement is terminated without any notice and the Owner has the right to vacate the Tenant from the rented property immediately and appeal to Urgent Court of Justice or Property Disputes Court for any of the following reasons:</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> If the Tenant fails to pay the rent and agreed charges on time.</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> If the lease period expires.</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> If the Tenant damages or uses the property for any purpose other than declared in (Rule-1), or utilizes it for any unlawful or illegal activities, or harmed the neighbor.</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> If the Tenant sublets the rented place or a portion of it or given it to others without the Owners written approval.</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> If the Tenant departs without notice.</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ø§Ù„Ø´Ø±Ø· Ø§Ù„ÙØ§Ø³Ø® Ø§Ù„ØµØ±ÙŠØ­ ØŒ ÙŠØ¹ØªØ¨Ø± Ø§Ù„Ø¹Ù‚Ø¯ Ù…Ù†ÙØ³Ø®Ø§ Ù…Ù† ØªÙ„Ù‚Ø§Ø¡ Ù†ÙØ³Ù‡ ÙˆØ¯ÙˆÙ† Ø­Ø§Ø¬Ø© Ø¥Ù„ÙŠ ØªÙ†Ø¨ÙŠÙ‡ ÙˆØªØ¹ØªØ¨Ø± ÙŠØ¯ )Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø±( ÙŠØ¯ Ù‚Ø§ØµØ¨ Ùˆ ÙŠØ­Ù‚ Ù„Ù„Ù…Ø§Ù„Ùƒ )Ø§Ù„Ù…Ø¤Ø¬Ø±( Ø¥Ø®Ø§Ù„Ø¦Ù‡ ÙÙŠ Ø§Ù„Ø­Ø§Ù„ Ùˆ Ø§Ù„Ù„Ø¬ÙˆØ¡ Ø¥Ù„ÙŠ Ø§Ù„Ù‚Ø¶Ø§Ø¡ Ø§Ù„Ù…Ø³ØªØ¹Ø¬Ù„ Ø£Ùˆ Ù…Ø­ÙƒÙ…Ø© Ø§Ù„Ù…Ù†Ø§Ø²Ø¹Ø§Øª Ø§Ù„Ø¹Ù‚Ø§Ø±ÙŠØ© Ø¨Ø·Ù„Ø¨ Ø§Ù„Ø·Ø±Ø¯ ÙˆØ¥Ø®Ø§Ù„Ø¡ Ø§Ù„Ø¹Ù‚Ø§Ø± Ù„Ø£Ù„Ø³Ø¨Ø§Ø¨ Ø§Ù„ØªØ§Ù„ÙŠØ©:</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ ØªØ®Ù€Ù„Ù€Ù Ø£Ùˆ Ø¹Ø¬Ø² Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¹Ù† Ø¯ÙØ¹ Ø§Ø¥Ù„ÙŠØ¬Ø§Ø± ÙˆØ§Ù„Ù…ØµØ§Ø±ÙŠÙ ÙÙŠ Ø§Ù„Ù…ÙˆØ¹Ù€Ø¯</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ Ø§Ù†ØªÙ‡Øª Ù…Ø¯Ø© Ø§Ø§Ù„ØªÙØ§Ù‚ÙŠØ©&lt; Ø§Ù„Ø¹Ù‚Ø§Ø± ÙÙŠ</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ Ø³Ø¨Ø¨ Ø®Ø±Ø§Ø¨Ø§Ù‹</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ Ø³Ø¨Ø¨ Ø£Ø°Ù‰ Ù„Ù„Ø¬ÙŠØ±Ø§Ù† Ø¨Ø£ÙŠ ÙˆØ³ÙŠÙ„Ø© ÙƒØ§Ù†Øª.</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ Ø£Ø³ØªØ¹Ù…Ù„ Ø§Ù„Ø¹Ù‚Ø§Ø± ÙÙŠ ØºÙŠØ± Ø§Ù„ØºØ±Ø¶ Ø§Ù„Ù…ØªÙÙ‚ Ø¹Ù„ÙŠÙ‡ ÙÙŠ Ø§Ù„Ø¨Ù†Ø¯ )1 )Ø£Ùˆ ÙÙŠ Ø£Ø¹Ù…Ø§Ù„ Ù…Ø®Ø§Ù„ÙØ© Ù„Ù„Ù‚Ø§Ù†ÙˆÙ† ÙˆØ§Ø¢Ù„Ø¯Ø§Ø¨.</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ Ø£Ø¬Ø± Ø§Ù„Ø¹Ù‚Ø§Ø± Ø£Ùˆ Ù‚Ø³Ù…Ø§Ù‹ Ù…Ù†Ù‡Ø§ Ø¨Ø§Ù„Ø¨Ø§Ø·Ù† Ø£Ùˆ ØªÙ€Ù†Ø§Ø²Ù„ Ø¹Ù†Ù‡ Ù„Ù„ØºÙ€ÙŠØ± Ø¯ÙˆÙ† Ù…ÙˆØ§ÙÙ‚Ø© . Ø§Ù„Ù…Ø¤Ø¬Ø± ÙƒØªØ§Ø¨ÙŠØ§Ù‹</span></span><br />\r\n			<span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;\">â‘</span></span><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"> Ø¥Ø°Ø§ ØºØ§Ø¯Ø± Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ù…Ù† ØºÙŠØ± ØªÙ†Ø¨ÙŠÙ‡ Ø§Ù„Ù…Ø¤Ø¬Ø±.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">4. The Tenant promises to do All Kind of Rental Maintenance, and pay Electricity &amp; Water Tel., Municipality charges to the Authorities.</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ØªØ¹Ù€Ù‡Ø¯ Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¨Ø£Ø¬Ø±Ø§Ø¡ Ø§Ù„ØµÙŠØ§Ù†Ø© Ø§Ù„ØªØ£Ø¬ÙŠØ±ÙŠØ© Ø¨Ø£Ù†ÙˆØ§Ø¹Ù‡Ø§ ÙˆÙƒØ°Ù„Ùƒ Ø¨Ù€Ø¯ÙØ¹ Ù…ØµØ§Ø±ÙŠÙ Ø§Ù„ÙƒÙ‡Ø±Ø¨Ø§Ø¡ ÙˆØ§Ù„Ù…Ø§Ø¡ ÙˆØ§Ù„Ø¨Ù„Ø¯ÙŠØ© ÙˆØ§Ù„Ù‡Ø§ØªÙ Ø¥Ù„ÙŠ Ø§Ù„Ø¬Ù‡Ø§Øª Ø§Ù„Ù…Ø®ØªØµØ©.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">5. The Tenant has no right to remove, alter, destroy, or ask for compensation for any installation, he made in the rented place. Tenant must obtain the prior written permission of the Owner and He shell not store inflammable materials.</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ø£ÙŠ Ø´ÙŠØ¡ ÙŠØ­Ø¯Ø«Ù‡ Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± ÙÙŠ Ø§Ù„Ø¹Ù‚Ø§Ø± Ø§Ù„ ÙŠØ­Ù‚ Ù„Ù‡ Ù†Ù‚Ù„Ù‡ Ø£Ùˆ ØªØ¹Ø¯ÙŠÙ„Ù‡ Ø£Ùˆ ØªØ®Ø±ÙŠØ¨Ù‡ Ø£Ùˆ ÙŠØ·Ù„Ø¨ Ø§Ù„ØªØ¹ÙˆÙŠØ¶ Ø¹Ù†Ù‡ ÙˆØ¹Ù„ÙŠÙ‡ Ù…Ø±Ø§Ø¬Ø¹Ø© ÙˆØ£Ø®Ø° Ù…ÙˆØ§ÙÙ‚Ø© Ø§Ù„Ù…Ø¤Ø¬Ø± ÙƒØªØ§Ø¨ÙŠØ§ Ù‚Ø¨Ù„ ÙˆØ¶Ø¹Ù‡ ÙˆØ¹Ù„ÙŠÙ‡ Ø¹Ø¯Ù… ØªØ®Ø²ÙŠÙ† Ù…ÙˆØ§Ø¯ Ù‚Ø§Ø¨Ù„Ø© Ù„Ø§Ù„Ø´ØªØ¹Ø§Ù„.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">6. The Tenant must take proper care of the property and be responsible for any damages or mischief during the rented period.</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ù…Ø³Ø¦ÙˆØ§Ù„Ù‹ Ø¹Ù† Ø§Ù„ØªÙ„Ù ÙˆØ§Ù„Ø¶Ø±Ø± ÙŠÙ„ØªØ²Ù… Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¨Ø§Ù„Ù…Ø­Ø§ÙØ¸Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø¹Ù‚Ø§Ø± ÙˆÙŠÙƒÙˆÙ† Ø®Ø§Ù„Ù„ ÙØªØ±Ø© Ø§Ù„ØªØ£Ø¬ÙŠØ±.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">7. The Tenant shall vacate the property at once and without any Objections in case of Demolishing or Full Maintenance of the property and without any compensation</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ù…ÙÙˆØ±Ø§ ÙˆØ¨Ø¯ÙˆÙ† Ø£ÙŠ Ø§Ø¹ØªØ±Ø§Ø¶ ÙÙŠ Ø­Ø§Ù„Ø© Ø§Ù„Ù‡Ø¯Ù… Ø£Ùˆ Ù‹ ØªØ¹Ù€Ù‡Ø¯ Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¨Ø¥Ø®Ø§Ù„Ø¡ Ø§Ù„Ø¹ÙŠÙ† Ø§Ù„ØµÙŠØ§Ù†Ø© Ø§Ù„Ø´Ø§Ù…Ù„Ø© Ù„Ù„Ø¹Ù‚Ø§Ø± ÙˆØ¨Ø¯ÙˆÙ† Ø£ÙŠØ© Ù…Ø·Ø§Ù„Ø¨Ø§Øª.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">8 . The Owner has the right to increase the rent by 10% after expire.</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ÙŠØ­Ù‚ Ù„Ù„Ù…Ø§Ù„Ùƒ ) Ø§Ù„Ù…Ø¤Ø¬Ø±( Ø²ÙŠØ§Ø¯Ø© Ø§Ø¥Ù„ÙŠØ¬Ø§Ø± Ø¨Ù†Ø³Ø¨Ø© 10 %Ø¨Ø§Ù†ØªÙ‡Ø§Ø¡ Ù…Ø¯Ø© Ø§Ù„Ø¹Ù‚Ø¯.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9. Two copies of this Lease are made; one for each party, and the Lease provisions are put into effect as soon as it&rsquo;s signed by both parties. The Arabic Text is valid.</span></span></span></span></p>\r\n			</td>\r\n			<td>\r\n			<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ÙŠØ­Ø±Ø± Ù‡Ø°Ø§ Ø§Ù„Ø¹Ù‚Ø¯ Ù…Ù† Ù†Ø³Ø®ØªÙŠÙ† Ù„ÙƒÙ„ Ø·Ø±Ù Ù†Ø³Ø®Ø© Ù…Ù†Ù‡ØŒ ÙˆÙŠØ¹Ù…Ù„ Ø¨Ø£Ø­ÙƒØ§Ù…Ù‡ Ø­Ø§Ù„ Ø§Ù„ØªÙˆÙ‚ÙŠØ¹ Ø¹Ù„ÙŠÙ‡ Ù…Ù† Ù‚Ø¨Ù„ Ø§Ù„Ø·Ø±ÙÙŠÙ† ÙˆÙŠØ¤Ø®Ø° Ø¨Ù…Ø§ ÙˆØ±Ø¯ Ø¨Ø§Ù„Ù†Øµ Ø§Ù„Ø¹Ø±Ø¨ÙŠ.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\" style=\"height:15.0pt; width:110.5pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Remarks</span></span></span></span></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"height:15.0pt; width:446.6pt\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<table class=\"Table\" style=\"border:dashed black 1.5pt; width:100.0%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-color:black; height:15.0pt; width:275.55pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">2nd Witness</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-color:black; height:15.0pt; width:275.55pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">1st Witness</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-color:black; height:15.0pt; width:275.55pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Tenant Signature</span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-color:black; height:15.0pt; width:275.55pt\">\r\n			<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,&quot;sans-serif&quot;\"><span style=\"font-size:9.0pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Owner Signature</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2022-03-30', 8),
(10, 'test meeting  4', '<p>hfuhjf;oijsf;lksdf;sdlfk</p>\r\n\r\n<p>gjhgksdgs</p>\r\n\r\n<p>jgklsd</p>\r\n', '1904-04-05', 8),
(11, 'test meeting  5', '<p>httr</p>\r\n', '2022-03-26', 8),
(13, 'Great Day', '<p>Nice Day</p>\r\n', '2022-03-11', 8),
(14, 'Great', '<p>Nice</p>\r\n', '2022-03-11', 8),
(15, 'test meeting  6', '<p>rgtirje;prieogtjporwe</p>\r\n\r\n<p>rlkrjngklregj</p>\r\n\r\n<p>rgjklnergklrje</p>\r\n', '2022-03-12', 8),
(16, 'wewfrwe', '<p>werwerwe</p>\r\n', '2022-03-12', 8),
(17, 'test meeting  7', '<p>werwerwe</p>\r\n', '2022-03-12', 8),
(18, 'test', '<p>just testing..</p>\r\n', '2022-03-21', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice_board`
--

CREATE TABLE `tbl_notice_board` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notice_board`
--

INSERT INTO `tbl_notice_board` (`notice_id`, `notice_title`, `notice_description`, `notice_status`, `branch_id`, `created_date`) VALUES
(7, 'Building In and Out', '<p>asasas</p>\r\n', 0, 8, '2019-08-27'),
(8, 'tenant test notice 1', '<p>wfrhjuriojwe;ori</p>\r\n\r\n<p>frk;jer</p>\r\n\r\n<p>jk;welrwe</p>\r\n\r\n<p>ke;wlrw</p>\r\n', 1, 8, '2022-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification_alert`
--

CREATE TABLE `tbl_notification_alert` (
  `notification_Id` int(11) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=sms,2=email,3=both',
  `user_details` varchar(5000) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `sent_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_owner_notice_board`
--

CREATE TABLE `tbl_owner_notice_board` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_owner_notice_board`
--

INSERT INTO `tbl_owner_notice_board` (`notice_id`, `notice_title`, `notice_description`, `notice_status`, `branch_id`, `created_date`) VALUES
(1, 'owner test notice 1', '<p>grkjgre</p>\r\n\r\n<p>rlkrjegtl</p>\r\n\r\n<p>rg.rjnrel</p>\r\n\r\n<p>&#39;r;kelgtk</p>\r\n', 1, 8, '2022-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `lang_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8 NOT NULL,
  `currency_seperator` varchar(5) CHARACTER SET utf8 NOT NULL,
  `currency_position` varchar(10) CHARACTER SET utf8 NOT NULL,
  `currency_decimal` int(11) NOT NULL DEFAULT 2,
  `mail_protocol` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'mail',
  `super_admin_image` varchar(350) CHARACTER SET utf8 NOT NULL,
  `date_format` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `smtp_hostname` varchar(250) DEFAULT NULL,
  `smtp_username` varchar(250) DEFAULT NULL,
  `smtp_password` varchar(250) DEFAULT NULL,
  `smtp_port` varchar(10) DEFAULT NULL,
  `smtp_secure` varchar(10) DEFAULT NULL,
  `cat_username` varchar(50) DEFAULT NULL,
  `cat_password` varchar(100) DEFAULT NULL,
  `cat_apikey` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`lang_code`, `currency`, `currency_seperator`, `currency_position`, `currency_decimal`, `mail_protocol`, `super_admin_image`, `date_format`, `smtp_hostname`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_secure`, `cat_username`, `cat_password`, `cat_apikey`) VALUES
('English', 'BHD ', '.', 'left', 3, 'mail', 'CA8D0636-E7DD-542A-8775-7CC2DA9C7739.jpg', NULL, '', '', '', '', 'tls', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitor`
--

CREATE TABLE `tbl_visitor` (
  `vid` int(11) NOT NULL,
  `issue_date` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `floor_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `intime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `outtime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `xmonth` varchar(50) CHARACTER SET utf8 NOT NULL,
  `xyear` varchar(50) CHARACTER SET utf8 NOT NULL,
  `branch_id` int(11) NOT NULL,
  `CPR` varchar(100) DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `tblsuper_admin`
--
ALTER TABLE `tblsuper_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_add_admin`
--
ALTER TABLE `tbl_add_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_add_bill`
--
ALTER TABLE `tbl_add_bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `tbl_add_bill_type`
--
ALTER TABLE `tbl_add_bill_type`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `tbl_add_builder_info`
--
ALTER TABLE `tbl_add_builder_info`
  ADD PRIMARY KEY (`bldrid`);

--
-- Indexes for table `tbl_add_building_info`
--
ALTER TABLE `tbl_add_building_info`
  ADD PRIMARY KEY (`bldid`);

--
-- Indexes for table `tbl_add_complain`
--
ALTER TABLE `tbl_add_complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `tbl_add_employee`
--
ALTER TABLE `tbl_add_employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `tbl_add_employee_salary_setup`
--
ALTER TABLE `tbl_add_employee_salary_setup`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `tbl_add_fair`
--
ALTER TABLE `tbl_add_fair`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tbl_add_floor`
--
ALTER TABLE `tbl_add_floor`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `tbl_add_fund`
--
ALTER TABLE `tbl_add_fund`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `tbl_add_maintenance_cost`
--
ALTER TABLE `tbl_add_maintenance_cost`
  ADD PRIMARY KEY (`mcid`);

--
-- Indexes for table `tbl_add_management_committee`
--
ALTER TABLE `tbl_add_management_committee`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `tbl_add_member_type`
--
ALTER TABLE `tbl_add_member_type`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_add_month_setup`
--
ALTER TABLE `tbl_add_month_setup`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `tbl_add_owner`
--
ALTER TABLE `tbl_add_owner`
  ADD PRIMARY KEY (`ownid`);

--
-- Indexes for table `tbl_add_owner_unit_relation`
--
ALTER TABLE `tbl_add_owner_unit_relation`
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `tbl_add_owner_utility`
--
ALTER TABLE `tbl_add_owner_utility`
  ADD PRIMARY KEY (`owner_utility_id`);

--
-- Indexes for table `tbl_add_rent`
--
ALTER TABLE `tbl_add_rent`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `tbl_add_unit`
--
ALTER TABLE `tbl_add_unit`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tbl_add_utility_bill`
--
ALTER TABLE `tbl_add_utility_bill`
  ADD PRIMARY KEY (`utility_id`);

--
-- Indexes for table `tbl_add_year_setup`
--
ALTER TABLE `tbl_add_year_setup`
  ADD PRIMARY KEY (`y_id`);

--
-- Indexes for table `tbl_car_reminder`
--
ALTER TABLE `tbl_car_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_employee_leave_request`
--
ALTER TABLE `tbl_employee_leave_request`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indexes for table `tbl_employee_notice`
--
ALTER TABLE `tbl_employee_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tbl_invoice_payment`
--
ALTER TABLE `tbl_invoice_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_meeting`
--
ALTER TABLE `tbl_meeting`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `tbl_notice_board`
--
ALTER TABLE `tbl_notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tbl_notification_alert`
--
ALTER TABLE `tbl_notification_alert`
  ADD PRIMARY KEY (`notification_Id`);

--
-- Indexes for table `tbl_owner_notice_board`
--
ALTER TABLE `tbl_owner_notice_board`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsuper_admin`
--
ALTER TABLE `tblsuper_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_add_admin`
--
ALTER TABLE `tbl_add_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_add_bill`
--
ALTER TABLE `tbl_add_bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_add_bill_type`
--
ALTER TABLE `tbl_add_bill_type`
  MODIFY `bt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_add_builder_info`
--
ALTER TABLE `tbl_add_builder_info`
  MODIFY `bldrid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_add_building_info`
--
ALTER TABLE `tbl_add_building_info`
  MODIFY `bldid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_add_complain`
--
ALTER TABLE `tbl_add_complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_add_employee`
--
ALTER TABLE `tbl_add_employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_add_employee_salary_setup`
--
ALTER TABLE `tbl_add_employee_salary_setup`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_add_fair`
--
ALTER TABLE `tbl_add_fair`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_add_floor`
--
ALTER TABLE `tbl_add_floor`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_add_fund`
--
ALTER TABLE `tbl_add_fund`
  MODIFY `fund_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_add_maintenance_cost`
--
ALTER TABLE `tbl_add_maintenance_cost`
  MODIFY `mcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_add_management_committee`
--
ALTER TABLE `tbl_add_management_committee`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_add_member_type`
--
ALTER TABLE `tbl_add_member_type`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_add_month_setup`
--
ALTER TABLE `tbl_add_month_setup`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_add_owner`
--
ALTER TABLE `tbl_add_owner`
  MODIFY `ownid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_add_owner_utility`
--
ALTER TABLE `tbl_add_owner_utility`
  MODIFY `owner_utility_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_add_rent`
--
ALTER TABLE `tbl_add_rent`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_add_unit`
--
ALTER TABLE `tbl_add_unit`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_add_utility_bill`
--
ALTER TABLE `tbl_add_utility_bill`
  MODIFY `utility_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_add_year_setup`
--
ALTER TABLE `tbl_add_year_setup`
  MODIFY `y_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_car_reminder`
--
ALTER TABLE `tbl_car_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_employee_leave_request`
--
ALTER TABLE `tbl_employee_leave_request`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_notice`
--
ALTER TABLE `tbl_employee_notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_invoice_payment`
--
ALTER TABLE `tbl_invoice_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_meeting`
--
ALTER TABLE `tbl_meeting`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_notice_board`
--
ALTER TABLE `tbl_notice_board`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_notification_alert`
--
ALTER TABLE `tbl_notification_alert`
  MODIFY `notification_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_owner_notice_board`
--
ALTER TABLE `tbl_owner_notice_board`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
