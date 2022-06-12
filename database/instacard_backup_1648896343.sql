

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

INSERT INTO country VALUES("1","AF","AFGHANISTAN","Afghanistan","AFG","4","93");
INSERT INTO country VALUES("2","AL","ALBANIA","Albania","ALB","8","355");
INSERT INTO country VALUES("3","DZ","ALGERIA","Algeria","DZA","12","213");
INSERT INTO country VALUES("4","AS","AMERICAN SAMOA","American Samoa","ASM","16","1684");
INSERT INTO country VALUES("5","AD","ANDORRA","Andorra","AND","20","376");
INSERT INTO country VALUES("6","AO","ANGOLA","Angola","AGO","24","244");
INSERT INTO country VALUES("7","AI","ANGUILLA","Anguilla","AIA","660","1264");
INSERT INTO country VALUES("8","AQ","ANTARCTICA","Antarctica","","","0");
INSERT INTO country VALUES("9","AG","ANTIGUA AND BARBUDA","Antigua and Barbuda","ATG","28","1268");
INSERT INTO country VALUES("10","AR","ARGENTINA","Argentina","ARG","32","54");
INSERT INTO country VALUES("11","AM","ARMENIA","Armenia","ARM","51","374");
INSERT INTO country VALUES("12","AW","ARUBA","Aruba","ABW","533","297");
INSERT INTO country VALUES("13","AU","AUSTRALIA","Australia","AUS","36","61");
INSERT INTO country VALUES("14","AT","AUSTRIA","Austria","AUT","40","43");
INSERT INTO country VALUES("15","AZ","AZERBAIJAN","Azerbaijan","AZE","31","994");
INSERT INTO country VALUES("16","BS","BAHAMAS","Bahamas","BHS","44","1242");
INSERT INTO country VALUES("17","BH","BAHRAIN","Bahrain","BHR","48","973");
INSERT INTO country VALUES("18","BD","BANGLADESH","Bangladesh","BGD","50","880");
INSERT INTO country VALUES("19","BB","BARBADOS","Barbados","BRB","52","1246");
INSERT INTO country VALUES("20","BY","BELARUS","Belarus","BLR","112","375");
INSERT INTO country VALUES("21","BE","BELGIUM","Belgium","BEL","56","32");
INSERT INTO country VALUES("22","BZ","BELIZE","Belize","BLZ","84","501");
INSERT INTO country VALUES("23","BJ","BENIN","Benin","BEN","204","229");
INSERT INTO country VALUES("24","BM","BERMUDA","Bermuda","BMU","60","1441");
INSERT INTO country VALUES("25","BT","BHUTAN","Bhutan","BTN","64","975");
INSERT INTO country VALUES("26","BO","BOLIVIA","Bolivia","BOL","68","591");
INSERT INTO country VALUES("27","BA","BOSNIA AND HERZEGOVINA","Bosnia and Herzegovina","BIH","70","387");
INSERT INTO country VALUES("28","BW","BOTSWANA","Botswana","BWA","72","267");
INSERT INTO country VALUES("29","BV","BOUVET ISLAND","Bouvet Island","","","0");
INSERT INTO country VALUES("30","BR","BRAZIL","Brazil","BRA","76","55");
INSERT INTO country VALUES("31","IO","BRITISH INDIAN OCEAN TERRITORY","British Indian Ocean Territory","","","246");
INSERT INTO country VALUES("32","BN","BRUNEI DARUSSALAM","Brunei Darussalam","BRN","96","673");
INSERT INTO country VALUES("33","BG","BULGARIA","Bulgaria","BGR","100","359");
INSERT INTO country VALUES("34","BF","BURKINA FASO","Burkina Faso","BFA","854","226");
INSERT INTO country VALUES("35","BI","BURUNDI","Burundi","BDI","108","257");
INSERT INTO country VALUES("36","KH","CAMBODIA","Cambodia","KHM","116","855");
INSERT INTO country VALUES("37","CM","CAMEROON","Cameroon","CMR","120","237");
INSERT INTO country VALUES("38","CA","CANADA","Canada","CAN","124","1");
INSERT INTO country VALUES("39","CV","CAPE VERDE","Cape Verde","CPV","132","238");
INSERT INTO country VALUES("40","KY","CAYMAN ISLANDS","Cayman Islands","CYM","136","1345");
INSERT INTO country VALUES("41","CF","CENTRAL AFRICAN REPUBLIC","Central African Republic","CAF","140","236");
INSERT INTO country VALUES("42","TD","CHAD","Chad","TCD","148","235");
INSERT INTO country VALUES("43","CL","CHILE","Chile","CHL","152","56");
INSERT INTO country VALUES("44","CN","CHINA","China","CHN","156","86");
INSERT INTO country VALUES("45","CX","CHRISTMAS ISLAND","Christmas Island","","","61");
INSERT INTO country VALUES("46","CC","COCOS (KEELING) ISLANDS","Cocos (Keeling) Islands","","","672");
INSERT INTO country VALUES("47","CO","COLOMBIA","Colombia","COL","170","57");
INSERT INTO country VALUES("48","KM","COMOROS","Comoros","COM","174","269");
INSERT INTO country VALUES("49","CG","CONGO","Congo","COG","178","242");
INSERT INTO country VALUES("50","CD","CONGO, THE DEMOCRATIC REPUBLIC OF THE","Congo, the Democratic Republic of the","COD","180","242");
INSERT INTO country VALUES("51","CK","COOK ISLANDS","Cook Islands","COK","184","682");
INSERT INTO country VALUES("52","CR","COSTA RICA","Costa Rica","CRI","188","506");
INSERT INTO country VALUES("53","CI","COTE D'IVOIRE","Cote D'Ivoire","CIV","384","225");
INSERT INTO country VALUES("54","HR","CROATIA","Croatia","HRV","191","385");
INSERT INTO country VALUES("55","CU","CUBA","Cuba","CUB","192","53");
INSERT INTO country VALUES("56","CY","CYPRUS","Cyprus","CYP","196","357");
INSERT INTO country VALUES("57","CZ","CZECH REPUBLIC","Czech Republic","CZE","203","420");
INSERT INTO country VALUES("58","DK","DENMARK","Denmark","DNK","208","45");
INSERT INTO country VALUES("59","DJ","DJIBOUTI","Djibouti","DJI","262","253");
INSERT INTO country VALUES("60","DM","DOMINICA","Dominica","DMA","212","1767");
INSERT INTO country VALUES("61","DO","DOMINICAN REPUBLIC","Dominican Republic","DOM","214","1809");
INSERT INTO country VALUES("62","EC","ECUADOR","Ecuador","ECU","218","593");
INSERT INTO country VALUES("63","EG","EGYPT","Egypt","EGY","818","20");
INSERT INTO country VALUES("64","SV","EL SALVADOR","El Salvador","SLV","222","503");
INSERT INTO country VALUES("65","GQ","EQUATORIAL GUINEA","Equatorial Guinea","GNQ","226","240");
INSERT INTO country VALUES("66","ER","ERITREA","Eritrea","ERI","232","291");
INSERT INTO country VALUES("67","EE","ESTONIA","Estonia","EST","233","372");
INSERT INTO country VALUES("68","ET","ETHIOPIA","Ethiopia","ETH","231","251");
INSERT INTO country VALUES("69","FK","FALKLAND ISLANDS (MALVINAS)","Falkland Islands (Malvinas)","FLK","238","500");
INSERT INTO country VALUES("70","FO","FAROE ISLANDS","Faroe Islands","FRO","234","298");
INSERT INTO country VALUES("71","FJ","FIJI","Fiji","FJI","242","679");
INSERT INTO country VALUES("72","FI","FINLAND","Finland","FIN","246","358");
INSERT INTO country VALUES("73","FR","FRANCE","France","FRA","250","33");
INSERT INTO country VALUES("74","GF","FRENCH GUIANA","French Guiana","GUF","254","594");
INSERT INTO country VALUES("75","PF","FRENCH POLYNESIA","French Polynesia","PYF","258","689");
INSERT INTO country VALUES("76","TF","FRENCH SOUTHERN TERRITORIES","French Southern Territories","","","0");
INSERT INTO country VALUES("77","GA","GABON","Gabon","GAB","266","241");
INSERT INTO country VALUES("78","GM","GAMBIA","Gambia","GMB","270","220");
INSERT INTO country VALUES("79","GE","GEORGIA","Georgia","GEO","268","995");
INSERT INTO country VALUES("80","DE","GERMANY","Germany","DEU","276","49");
INSERT INTO country VALUES("81","GH","GHANA","Ghana","GHA","288","233");
INSERT INTO country VALUES("82","GI","GIBRALTAR","Gibraltar","GIB","292","350");
INSERT INTO country VALUES("83","GR","GREECE","Greece","GRC","300","30");
INSERT INTO country VALUES("84","GL","GREENLAND","Greenland","GRL","304","299");
INSERT INTO country VALUES("85","GD","GRENADA","Grenada","GRD","308","1473");
INSERT INTO country VALUES("86","GP","GUADELOUPE","Guadeloupe","GLP","312","590");
INSERT INTO country VALUES("87","GU","GUAM","Guam","GUM","316","1671");
INSERT INTO country VALUES("88","GT","GUATEMALA","Guatemala","GTM","320","502");
INSERT INTO country VALUES("89","GN","GUINEA","Guinea","GIN","324","224");
INSERT INTO country VALUES("90","GW","GUINEA-BISSAU","Guinea-Bissau","GNB","624","245");
INSERT INTO country VALUES("91","GY","GUYANA","Guyana","GUY","328","592");
INSERT INTO country VALUES("92","HT","HAITI","Haiti","HTI","332","509");
INSERT INTO country VALUES("93","HM","HEARD ISLAND AND MCDONALD ISLANDS","Heard Island and Mcdonald Islands","","","0");
INSERT INTO country VALUES("94","VA","HOLY SEE (VATICAN CITY STATE)","Holy See (Vatican City State)","VAT","336","39");
INSERT INTO country VALUES("95","HN","HONDURAS","Honduras","HND","340","504");
INSERT INTO country VALUES("96","HK","HONG KONG","Hong Kong","HKG","344","852");
INSERT INTO country VALUES("97","HU","HUNGARY","Hungary","HUN","348","36");
INSERT INTO country VALUES("98","IS","ICELAND","Iceland","ISL","352","354");
INSERT INTO country VALUES("99","IN","INDIA","India","IND","356","91");
INSERT INTO country VALUES("100","ID","INDONESIA","Indonesia","IDN","360","62");
INSERT INTO country VALUES("101","IR","IRAN, ISLAMIC REPUBLIC OF","Iran, Islamic Republic of","IRN","364","98");
INSERT INTO country VALUES("102","IQ","IRAQ","Iraq","IRQ","368","964");
INSERT INTO country VALUES("103","IE","IRELAND","Ireland","IRL","372","353");
INSERT INTO country VALUES("104","IL","ISRAEL","Israel","ISR","376","972");
INSERT INTO country VALUES("105","IT","ITALY","Italy","ITA","380","39");
INSERT INTO country VALUES("106","JM","JAMAICA","Jamaica","JAM","388","1876");
INSERT INTO country VALUES("107","JP","JAPAN","Japan","JPN","392","81");
INSERT INTO country VALUES("108","JO","JORDAN","Jordan","JOR","400","962");
INSERT INTO country VALUES("109","KZ","KAZAKHSTAN","Kazakhstan","KAZ","398","7");
INSERT INTO country VALUES("110","KE","KENYA","Kenya","KEN","404","254");
INSERT INTO country VALUES("111","KI","KIRIBATI","Kiribati","KIR","296","686");
INSERT INTO country VALUES("112","KP","KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF","Korea, Democratic People's Republic of","PRK","408","850");
INSERT INTO country VALUES("113","KR","KOREA, REPUBLIC OF","Korea, Republic of","KOR","410","82");
INSERT INTO country VALUES("114","KW","KUWAIT","Kuwait","KWT","414","965");
INSERT INTO country VALUES("115","KG","KYRGYZSTAN","Kyrgyzstan","KGZ","417","996");
INSERT INTO country VALUES("116","LA","LAO PEOPLE'S DEMOCRATIC REPUBLIC","Lao People's Democratic Republic","LAO","418","856");
INSERT INTO country VALUES("117","LV","LATVIA","Latvia","LVA","428","371");
INSERT INTO country VALUES("118","LB","LEBANON","Lebanon","LBN","422","961");
INSERT INTO country VALUES("119","LS","LESOTHO","Lesotho","LSO","426","266");
INSERT INTO country VALUES("120","LR","LIBERIA","Liberia","LBR","430","231");
INSERT INTO country VALUES("121","LY","LIBYAN ARAB JAMAHIRIYA","Libyan Arab Jamahiriya","LBY","434","218");
INSERT INTO country VALUES("122","LI","LIECHTENSTEIN","Liechtenstein","LIE","438","423");
INSERT INTO country VALUES("123","LT","LITHUANIA","Lithuania","LTU","440","370");
INSERT INTO country VALUES("124","LU","LUXEMBOURG","Luxembourg","LUX","442","352");
INSERT INTO country VALUES("125","MO","MACAO","Macao","MAC","446","853");
INSERT INTO country VALUES("126","MK","MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF","Macedonia, the Former Yugoslav Republic of","MKD","807","389");
INSERT INTO country VALUES("127","MG","MADAGASCAR","Madagascar","MDG","450","261");
INSERT INTO country VALUES("128","MW","MALAWI","Malawi","MWI","454","265");
INSERT INTO country VALUES("129","MY","MALAYSIA","Malaysia","MYS","458","60");
INSERT INTO country VALUES("130","MV","MALDIVES","Maldives","MDV","462","960");
INSERT INTO country VALUES("131","ML","MALI","Mali","MLI","466","223");
INSERT INTO country VALUES("132","MT","MALTA","Malta","MLT","470","356");
INSERT INTO country VALUES("133","MH","MARSHALL ISLANDS","Marshall Islands","MHL","584","692");
INSERT INTO country VALUES("134","MQ","MARTINIQUE","Martinique","MTQ","474","596");
INSERT INTO country VALUES("135","MR","MAURITANIA","Mauritania","MRT","478","222");
INSERT INTO country VALUES("136","MU","MAURITIUS","Mauritius","MUS","480","230");
INSERT INTO country VALUES("137","YT","MAYOTTE","Mayotte","","","269");
INSERT INTO country VALUES("138","MX","MEXICO","Mexico","MEX","484","52");
INSERT INTO country VALUES("139","FM","MICRONESIA, FEDERATED STATES OF","Micronesia, Federated States of","FSM","583","691");
INSERT INTO country VALUES("140","MD","MOLDOVA, REPUBLIC OF","Moldova, Republic of","MDA","498","373");
INSERT INTO country VALUES("141","MC","MONACO","Monaco","MCO","492","377");
INSERT INTO country VALUES("142","MN","MONGOLIA","Mongolia","MNG","496","976");
INSERT INTO country VALUES("143","MS","MONTSERRAT","Montserrat","MSR","500","1664");
INSERT INTO country VALUES("144","MA","MOROCCO","Morocco","MAR","504","212");
INSERT INTO country VALUES("145","MZ","MOZAMBIQUE","Mozambique","MOZ","508","258");
INSERT INTO country VALUES("146","MM","MYANMAR","Myanmar","MMR","104","95");
INSERT INTO country VALUES("147","NA","NAMIBIA","Namibia","NAM","516","264");
INSERT INTO country VALUES("148","NR","NAURU","Nauru","NRU","520","674");
INSERT INTO country VALUES("149","NP","NEPAL","Nepal","NPL","524","977");
INSERT INTO country VALUES("150","NL","NETHERLANDS","Netherlands","NLD","528","31");
INSERT INTO country VALUES("151","AN","NETHERLANDS ANTILLES","Netherlands Antilles","ANT","530","599");
INSERT INTO country VALUES("152","NC","NEW CALEDONIA","New Caledonia","NCL","540","687");
INSERT INTO country VALUES("153","NZ","NEW ZEALAND","New Zealand","NZL","554","64");
INSERT INTO country VALUES("154","NI","NICARAGUA","Nicaragua","NIC","558","505");
INSERT INTO country VALUES("155","NE","NIGER","Niger","NER","562","227");
INSERT INTO country VALUES("156","NG","NIGERIA","Nigeria","NGA","566","234");
INSERT INTO country VALUES("157","NU","NIUE","Niue","NIU","570","683");
INSERT INTO country VALUES("158","NF","NORFOLK ISLAND","Norfolk Island","NFK","574","672");
INSERT INTO country VALUES("159","MP","NORTHERN MARIANA ISLANDS","Northern Mariana Islands","MNP","580","1670");
INSERT INTO country VALUES("160","NO","NORWAY","Norway","NOR","578","47");
INSERT INTO country VALUES("161","OM","OMAN","Oman","OMN","512","968");
INSERT INTO country VALUES("162","PK","PAKISTAN","Pakistan","PAK","586","92");
INSERT INTO country VALUES("163","PW","PALAU","Palau","PLW","585","680");
INSERT INTO country VALUES("164","PS","PALESTINIAN TERRITORY, OCCUPIED","Palestinian Territory, Occupied","","","970");
INSERT INTO country VALUES("165","PA","PANAMA","Panama","PAN","591","507");
INSERT INTO country VALUES("166","PG","PAPUA NEW GUINEA","Papua New Guinea","PNG","598","675");
INSERT INTO country VALUES("167","PY","PARAGUAY","Paraguay","PRY","600","595");
INSERT INTO country VALUES("168","PE","PERU","Peru","PER","604","51");
INSERT INTO country VALUES("169","PH","PHILIPPINES","Philippines","PHL","608","63");
INSERT INTO country VALUES("170","PN","PITCAIRN","Pitcairn","PCN","612","0");
INSERT INTO country VALUES("171","PL","POLAND","Poland","POL","616","48");
INSERT INTO country VALUES("172","PT","PORTUGAL","Portugal","PRT","620","351");
INSERT INTO country VALUES("173","PR","PUERTO RICO","Puerto Rico","PRI","630","1787");
INSERT INTO country VALUES("174","QA","QATAR","Qatar","QAT","634","974");
INSERT INTO country VALUES("175","RE","REUNION","Reunion","REU","638","262");
INSERT INTO country VALUES("176","RO","ROMANIA","Romania","ROM","642","40");
INSERT INTO country VALUES("177","RU","RUSSIAN FEDERATION","Russian Federation","RUS","643","70");
INSERT INTO country VALUES("178","RW","RWANDA","Rwanda","RWA","646","250");
INSERT INTO country VALUES("179","SH","SAINT HELENA","Saint Helena","SHN","654","290");
INSERT INTO country VALUES("180","KN","SAINT KITTS AND NEVIS","Saint Kitts and Nevis","KNA","659","1869");
INSERT INTO country VALUES("181","LC","SAINT LUCIA","Saint Lucia","LCA","662","1758");
INSERT INTO country VALUES("182","PM","SAINT PIERRE AND MIQUELON","Saint Pierre and Miquelon","SPM","666","508");
INSERT INTO country VALUES("183","VC","SAINT VINCENT AND THE GRENADINES","Saint Vincent and the Grenadines","VCT","670","1784");
INSERT INTO country VALUES("184","WS","SAMOA","Samoa","WSM","882","684");
INSERT INTO country VALUES("185","SM","SAN MARINO","San Marino","SMR","674","378");
INSERT INTO country VALUES("186","ST","SAO TOME AND PRINCIPE","Sao Tome and Principe","STP","678","239");
INSERT INTO country VALUES("187","SA","SAUDI ARABIA","Saudi Arabia","SAU","682","966");
INSERT INTO country VALUES("188","SN","SENEGAL","Senegal","SEN","686","221");
INSERT INTO country VALUES("189","CS","SERBIA AND MONTENEGRO","Serbia and Montenegro","","","381");
INSERT INTO country VALUES("190","SC","SEYCHELLES","Seychelles","SYC","690","248");
INSERT INTO country VALUES("191","SL","SIERRA LEONE","Sierra Leone","SLE","694","232");
INSERT INTO country VALUES("192","SG","SINGAPORE","Singapore","SGP","702","65");
INSERT INTO country VALUES("193","SK","SLOVAKIA","Slovakia","SVK","703","421");
INSERT INTO country VALUES("194","SI","SLOVENIA","Slovenia","SVN","705","386");
INSERT INTO country VALUES("195","SB","SOLOMON ISLANDS","Solomon Islands","SLB","90","677");
INSERT INTO country VALUES("196","SO","SOMALIA","Somalia","SOM","706","252");
INSERT INTO country VALUES("197","ZA","SOUTH AFRICA","South Africa","ZAF","710","27");
INSERT INTO country VALUES("198","GS","SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS","South Georgia and the South Sandwich Islands","","","0");
INSERT INTO country VALUES("199","ES","SPAIN","Spain","ESP","724","34");
INSERT INTO country VALUES("200","LK","SRI LANKA","Sri Lanka","LKA","144","94");
INSERT INTO country VALUES("201","SD","SUDAN","Sudan","SDN","736","249");
INSERT INTO country VALUES("202","SR","SURINAME","Suriname","SUR","740","597");
INSERT INTO country VALUES("203","SJ","SVALBARD AND JAN MAYEN","Svalbard and Jan Mayen","SJM","744","47");
INSERT INTO country VALUES("204","SZ","SWAZILAND","Swaziland","SWZ","748","268");
INSERT INTO country VALUES("205","SE","SWEDEN","Sweden","SWE","752","46");
INSERT INTO country VALUES("206","CH","SWITZERLAND","Switzerland","CHE","756","41");
INSERT INTO country VALUES("207","SY","SYRIAN ARAB REPUBLIC","Syrian Arab Republic","SYR","760","963");
INSERT INTO country VALUES("208","TW","TAIWAN, PROVINCE OF CHINA","Taiwan, Province of China","TWN","158","886");
INSERT INTO country VALUES("209","TJ","TAJIKISTAN","Tajikistan","TJK","762","992");
INSERT INTO country VALUES("210","TZ","TANZANIA, UNITED REPUBLIC OF","Tanzania, United Republic of","TZA","834","255");
INSERT INTO country VALUES("211","TH","THAILAND","Thailand","THA","764","66");
INSERT INTO country VALUES("212","TL","TIMOR-LESTE","Timor-Leste","","","670");
INSERT INTO country VALUES("213","TG","TOGO","Togo","TGO","768","228");
INSERT INTO country VALUES("214","TK","TOKELAU","Tokelau","TKL","772","690");
INSERT INTO country VALUES("215","TO","TONGA","Tonga","TON","776","676");
INSERT INTO country VALUES("216","TT","TRINIDAD AND TOBAGO","Trinidad and Tobago","TTO","780","1868");
INSERT INTO country VALUES("217","TN","TUNISIA","Tunisia","TUN","788","216");
INSERT INTO country VALUES("218","TR","TURKEY","Turkey","TUR","792","90");
INSERT INTO country VALUES("219","TM","TURKMENISTAN","Turkmenistan","TKM","795","7370");
INSERT INTO country VALUES("220","TC","TURKS AND CAICOS ISLANDS","Turks and Caicos Islands","TCA","796","1649");
INSERT INTO country VALUES("221","TV","TUVALU","Tuvalu","TUV","798","688");
INSERT INTO country VALUES("222","UG","UGANDA","Uganda","UGA","800","256");
INSERT INTO country VALUES("223","UA","UKRAINE","Ukraine","UKR","804","380");
INSERT INTO country VALUES("224","AE","UNITED ARAB EMIRATES","United Arab Emirates","ARE","784","971");
INSERT INTO country VALUES("225","GB","UNITED KINGDOM","United Kingdom","GBR","826","44");
INSERT INTO country VALUES("226","US","UNITED STATES","United States","USA","840","1");
INSERT INTO country VALUES("227","UM","UNITED STATES MINOR OUTLYING ISLANDS","United States Minor Outlying Islands","","","1");
INSERT INTO country VALUES("228","UY","URUGUAY","Uruguay","URY","858","598");
INSERT INTO country VALUES("229","UZ","UZBEKISTAN","Uzbekistan","UZB","860","998");
INSERT INTO country VALUES("230","VU","VANUATU","Vanuatu","VUT","548","678");
INSERT INTO country VALUES("231","VE","VENEZUELA","Venezuela","VEN","862","58");
INSERT INTO country VALUES("232","VN","VIET NAM","Viet Nam","VNM","704","84");
INSERT INTO country VALUES("233","VG","VIRGIN ISLANDS, BRITISH","Virgin Islands, British","VGB","92","1284");
INSERT INTO country VALUES("234","VI","VIRGIN ISLANDS, U.S.","Virgin Islands, U.s.","VIR","850","1340");
INSERT INTO country VALUES("235","WF","WALLIS AND FUTUNA","Wallis and Futuna","WLF","876","681");
INSERT INTO country VALUES("236","EH","WESTERN SAHARA","Western Sahara","ESH","732","212");
INSERT INTO country VALUES("237","YE","YEMEN","Yemen","YEM","887","967");
INSERT INTO country VALUES("238","ZM","ZAMBIA","Zambia","ZMB","894","260");
INSERT INTO country VALUES("239","ZW","ZIMBABWE","Zimbabwe","ZWE","716","263");



CREATE TABLE `tbl_add_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_admin VALUES("7","Tony","tony@yahoo.com","+8801679110711","MTIzNDU2","B7962E98-0550-407D-01A7-3C088DCCD2EF.jpg","8","2019-08-27 10:15:27");



CREATE TABLE `tbl_add_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_type` varchar(200) NOT NULL,
  `bill_date` varchar(200) NOT NULL,
  `bill_month` int(11) NOT NULL,
  `bill_year` int(11) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `deposit_bank_name` varchar(200) NOT NULL,
  `bill_details` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_bill VALUES("16","4","15/03/2022","3","15","10.00","ITHMAAR BANK","PLUMBIMG","8","2022-03-14 13:36:52");



CREATE TABLE `tbl_add_bill_type` (
  `bt_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_bill_type VALUES("1","Gas","2016-05-05 15:19:35");
INSERT INTO tbl_add_bill_type VALUES("3","Water","2016-05-05 15:20:39");
INSERT INTO tbl_add_bill_type VALUES("4","Electric","2016-05-05 15:20:51");
INSERT INTO tbl_add_bill_type VALUES("5","Waste Disposal","2022-03-11 05:06:07");



CREATE TABLE `tbl_add_builder_info` (
  `bldrid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bldrid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tbl_add_building_info` (
  `bldid` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tbl_add_complain` (
  `complain_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`complain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_complain VALUES("41","Bad Color","test","15/03/2022","3","2022","0","8","0","0","","","","","","2022-03-15 11:28:17");



CREATE TABLE `tbl_add_employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
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
  `employee_type` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_employee VALUES("13","test","emp@gmail.com","India","Gr","Gr","emp01","1","18/03/2022","19/03/2022","1","ZW1wQDEyMw==","741FE125-DBEE-A2F8-D7CE-39ED5952B7CC.jpg","8","0.00","2022-03-18 20:38:02","0000-11-30","2022-03-18","Contract");
INSERT INTO tbl_add_employee VALUES("14","test","triveniyadavdfd94@gmail.com","India","chandpur, daburgram","daburgram","emp01","3","27/03/2022","20/04/2022","1","ZW1wQDEyMw==","","8","0.00","2022-03-27 14:23:28","0000-00-00","0000-00-00","(Flexi)");
INSERT INTO tbl_add_employee VALUES("15","test","aman.kumar@karatstreet.com","India","Gr","chandpur","emp01","1","09/04/2022","19/05/2022","1","MTIxMjEyMTIx","72E19BCE-D175-7916-4562-E4990F47572C.jpg","7","0.00","2022-03-27 17:26:51","0000-00-00","0000-00-00","(Flexi)");



CREATE TABLE `tbl_add_employee_salary_setup` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `issue_date` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_employee_salary_setup VALUES("19","12","Security Gard","8","11","8000.00","05/09/2019","8","2019-08-27 01:06:26");
INSERT INTO tbl_add_employee_salary_setup VALUES("23","12","Security Gard","2","11","8000.00","14/03/2022","8","2022-03-11 03:17:05");
INSERT INTO tbl_add_employee_salary_setup VALUES("24","12","Security Gard","8","9","8000.00","26/03/2022","8","2022-03-11 03:17:27");



CREATE TABLE `tbl_add_fair` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_fair VALUES("43","Rented","12","30","20","8","2022","10000.00","500.00","1000.00","975.00","900.00","100.00","0.00","13475.00","05/08/2019","30/08/2019","8","1","2019-08-27 09:59:55");
INSERT INTO tbl_add_fair VALUES("44","Rented","12","30","20","9","2019","10000.00","600.00","700.00","800.00","900.00","500.00","0.00","13500.00","04/09/2019","19/03/2022","8","1","2019-08-28 00:56:08");
INSERT INTO tbl_add_fair VALUES("46","Rented","14","34","0","8","2020","0.00","0.00","0.00","800.00","900.00","0.00","0.00","1700.00","10/03/2022","","8","0","2022-03-11 03:25:51");
INSERT INTO tbl_add_fair VALUES("47","Rented","12","31","21","6","2022","100.00","0.00","0.00","800.00","900.00","0.00","0.00","1800.00","19/03/2022","23/03/2022","8","1","2022-03-11 03:26:30");
INSERT INTO tbl_add_fair VALUES("48","Rented","13","33","0","11","2021","0.00","0.00","0.00","800.00","900.00","0.00","0.00","1700.00","12/03/2021","","8","0","2022-03-11 03:27:11");
INSERT INTO tbl_add_fair VALUES("49","Rented","14","34","0","7","2017","0.00","0.00","0.00","800.00","900.00","0.00","0.00","1700.00","11/03/2022","","8","0","2022-03-11 03:28:01");
INSERT INTO tbl_add_fair VALUES("50","Rented","14","34","23","2","2022","100.00","0.00","0.00","800.00","900.00","0.00","0.00","1800.00","05/03/2022","","8","1","2022-03-11 03:30:55");
INSERT INTO tbl_add_fair VALUES("51","Owner","14","34","20","1","2022","0.00","50.00","20.00","800.00","900.00","0.00","0.00","1770.00","10/03/2022","","8","0","2022-03-11 03:31:42");
INSERT INTO tbl_add_fair VALUES("52","Owner","12","31","0","1","2022","0.00","150.00","200.00","100.00","10.00","500.00","250.00","1210.00","05/03/2022","","8","0","2022-03-11 03:32:25");
INSERT INTO tbl_add_fair VALUES("53","Owner","13","32","19","2","2022","0.00","0.00","0.00","800.00","900.00","0.00","0.00","1700.00","09/03/2022","","8","0","2022-03-11 03:33:09");
INSERT INTO tbl_add_fair VALUES("54","Owner","12","31","0","4","2021","0.00","0.00","0.00","800.00","900.00","0.00","0.00","1700.00","09/03/2022","","8","0","2022-03-11 03:33:40");
INSERT INTO tbl_add_fair VALUES("55","Owner","14","34","20","11","2022","0.00","0.00","0.00","800.00","900.00","0.00","0.00","1700.00","12/03/2022","","8","0","2022-03-11 03:35:21");
INSERT INTO tbl_add_fair VALUES("56","Rented","18","42","26","13","2022","200.00","0.00","0.00","0.00","0.00","0.00","0.00","200.00","13/03/2022","13/03/2022","8","0","2022-03-13 15:17:12");
INSERT INTO tbl_add_fair VALUES("57","Rented","19","58","0","5","2022","0.00","0.00","0.00","10.00","20.00","0.00","0.00","30.00","22/03/2022","","8","0","2022-03-22 21:02:28");
INSERT INTO tbl_add_fair VALUES("58","Owner","18","42","23","1","2008","0.00","1.00","2.00","10.00","20.00","0.00","0.00","33.00","23/03/2022","","8","0","2022-03-23 23:43:04");



CREATE TABLE `tbl_add_floor` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `floor_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_floor VALUES("18","1st Floor","8","2022-03-13 14:36:17");
INSERT INTO tbl_add_floor VALUES("19","Building:4152,Road No:2161,Area:321,Gudaibiya","8","2022-03-17 13:40:13");
INSERT INTO tbl_add_floor VALUES("20","Road No:1701, Area:917, Bu Kuwarah, Riffa","8","2022-03-17 14:07:43");
INSERT INTO tbl_add_floor VALUES("25","2nd Floor","8","2022-03-17 15:20:45");
INSERT INTO tbl_add_floor VALUES("26","3rdFloor","8","2022-03-17 15:20:51");
INSERT INTO tbl_add_floor VALUES("27","4th Floor","8","2022-03-17 15:21:00");



CREATE TABLE `tbl_add_fund` (
  `fund_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `xyear` varchar(200) NOT NULL,
  `f_date` varchar(200) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `purpose` varchar(400) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`fund_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_fund VALUES("13","19","8","11","27/08/2019","200.00","Monthly Fund","8","2019-08-27 10:04:37");
INSERT INTO tbl_add_fund VALUES("14","20","3","15","24/03/2022","500.00","Paint fumd","8","2022-03-11 03:38:55");
INSERT INTO tbl_add_fund VALUES("15","19","2","15","04/04/2022","2000.00","Monthly fund","8","2022-03-11 03:40:10");
INSERT INTO tbl_add_fund VALUES("16","20","10","12","19/03/2022","1313.00","hfdhfdhfd","8","2022-03-11 03:41:36");
INSERT INTO tbl_add_fund VALUES("17","19","6","15","11/03/2022","300.00","Nice","8","2022-03-11 10:35:52");
INSERT INTO tbl_add_fund VALUES("18","19","7","15","17/03/2022","600.00","Nice Day","8","2022-03-11 10:37:26");
INSERT INTO tbl_add_fund VALUES("19","19","5","15","19/03/2022","10.00","ngfhgf","8","2022-03-11 13:40:20");



CREATE TABLE `tbl_add_maintenance_cost` (
  `mcid` int(11) NOT NULL AUTO_INCREMENT,
  `m_title` varchar(200) NOT NULL,
  `m_date` varchar(200) NOT NULL,
  `m_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `m_details` varchar(200) NOT NULL,
  `xmonth` int(11) NOT NULL DEFAULT 0,
  `xyear` int(11) NOT NULL DEFAULT 0,
  `branch_id` int(11) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mcid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_maintenance_cost VALUES("7","Light","27/08/2019","50.00","OK","8","11","8","2019-08-27 10:09:09");
INSERT INTO tbl_add_maintenance_cost VALUES("8","CCTV","11/03/2022","150.00","CCTV repairing ","4","15","8","2022-03-11 03:36:13");
INSERT INTO tbl_add_maintenance_cost VALUES("9","Water Pump","08/03/2022","500.00","Pump repairing ","4","15","8","2022-03-11 03:37:13");
INSERT INTO tbl_add_maintenance_cost VALUES("10","PLUMBING","14/03/2022","10.00","DSS","3","15","8","2022-03-14 13:38:06");



CREATE TABLE `tbl_add_management_committee` (
  `mc_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`mc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;




CREATE TABLE `tbl_add_member_type` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_type` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_member_type VALUES("1","House Keeper","2016-04-10 17:26:20");
INSERT INTO tbl_add_member_type VALUES("3","Maintenance Staff","2016-04-10 17:29:22");
INSERT INTO tbl_add_member_type VALUES("5","Security Gard","2016-04-10 17:29:41");
INSERT INTO tbl_add_member_type VALUES("6","Caretaker","2016-04-10 17:30:17");
INSERT INTO tbl_add_member_type VALUES("7","Gardner","2017-09-16 22:56:52");



CREATE TABLE `tbl_add_month_setup` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `month_name` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_month_setup VALUES("1","January","2016-04-11 17:46:15");
INSERT INTO tbl_add_month_setup VALUES("2","February","2016-04-11 17:46:25");
INSERT INTO tbl_add_month_setup VALUES("3","March","2016-04-11 17:46:30");
INSERT INTO tbl_add_month_setup VALUES("5","May","2016-04-11 17:46:41");
INSERT INTO tbl_add_month_setup VALUES("6","June","2016-04-11 17:46:48");
INSERT INTO tbl_add_month_setup VALUES("7","July","2016-04-11 17:46:53");
INSERT INTO tbl_add_month_setup VALUES("8","August","2016-04-11 17:46:59");
INSERT INTO tbl_add_month_setup VALUES("9","September","2016-04-11 17:47:06");
INSERT INTO tbl_add_month_setup VALUES("10","Octobor","2016-04-11 17:47:14");
INSERT INTO tbl_add_month_setup VALUES("11","November","2016-04-11 17:47:24");
INSERT INTO tbl_add_month_setup VALUES("12","December","2016-04-11 17:47:30");
INSERT INTO tbl_add_month_setup VALUES("13","April","2022-03-11 05:08:55");



CREATE TABLE `tbl_add_owner` (
  `ownid` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ownid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_owner VALUES("23","MOHAMED JASIM MOHAMED BINSANAD","info@sanadrealestate.com","97317728600","Sanad Real Estate
P.O. Box:15807,Adliya,Kingdom of Bahrain","Sanad Real Estate
P.O. Box:15807,Adliya,Kingdom of Bahrain","","","","","","501201866","U2FuYWQjMTU4MDc=","FC8906A3-AA4F-B266-A85B-0897EFCB2658.jpg","8","2022-03-13 14:34:23");
INSERT INTO tbl_add_owner VALUES("24","test","testowner@gmail.com","+91877838778783","NA","NA","01100","B-11000","New Delhi ","Block A , Sec 10,","Kasmeri Gate Sec-10","NA","dGVzdG93bmVyQA==","","8","2022-03-19 17:17:51");



CREATE TABLE `tbl_add_owner_unit_relation` (
  `owner_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_owner_unit_relation VALUES("23","56");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","42");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","57");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","43");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","58");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","59");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","48");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","60");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","45");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","61");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","46");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","47");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","49");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","50");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","51");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","52");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","44");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","53");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","54");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","55");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","62");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","63");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","64");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","65");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","66");
INSERT INTO tbl_add_owner_unit_relation VALUES("23","67");



CREATE TABLE `tbl_add_owner_utility` (
  `owner_utility_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`owner_utility_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tbl_add_rent` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_rent VALUES("20","Jim Cary","jimcary@yahoo.com","0191212121212","Bahrain","232323-565656-212121","12","30","10000.00","10000.00","27/08/2019","","MTIzNDU2","C7A2F0A4-1DCC-E7F1-8D54-14F507D8CA7E.jpg","","1","9","11","8","026545454","Residential","","","","","","2019-08-27 01:03:04");
INSERT INTO tbl_add_rent VALUES("21","dsadsadsad","dasdash@gmail.com","39197519","Bahrain","131231243","12","31","130.00","100.00","10/03/2022","","c2RzYWRhc2Q=","","","0","3","15","8","41241414","Residential","","","","","","2022-03-11 03:07:47");
INSERT INTO tbl_add_rent VALUES("22","twetwetwet","dgfdg@gmail.com","+97339100232","Bahrain","3123123213","13","32","4324234.00","4332432.00","09/03/2022","","Z2RmZGdmZA==","","","1","2","15","8","41241414","Commercial","","","","","","2022-03-11 03:08:51");
INSERT INTO tbl_add_rent VALUES("23","adsadsa","dsdsdsa@adasd.hh","9961039319","Bahrain","3123123213","14","34","130.00","100.00","10/03/2022","","ZHNhZHNhZA==","","","1","2","15","8","41241414","Residential","","","","","","2022-03-11 03:29:52");
INSERT INTO tbl_add_rent VALUES("24","test 1","wewqeqwewqth@gmail.com","39197519","Austria","3123123213","13","33","130.00","100.00","10/03/2022","","ZHNhZHNhZA==","","","1","6","15","8","41241414","Residential","","","","","","2022-03-11 13:54:17");
INSERT INTO tbl_add_rent VALUES("25","test 5","dfsdfsdfth@gmail.com","39197519","Australia","423424234","15","35","130.00","100.00","10/03/2022","","ZHNmc2Rmc2Rm","","","1","3","15","8","41241414","Commercial","","","","","","2022-03-11 21:53:09");
INSERT INTO tbl_add_rent VALUES("26","ARUN S","arun@sanadrealestate.com","32077888","India","860552462","18","42","200.00","200.00","01/01/2022","","U2FuYWQjMTU4MDc=","","","1","12","15","8","66944663","Residential","","","","","","2022-03-13 14:57:12");
INSERT INTO tbl_add_rent VALUES("27","dsadsadsad","sdfsdfth@gmail.com","39197519","Bahrain","3123123213","18","56","130.00","100.00","17/03/2022","","ZHNhZHNhZA==","","","1","3","15","8","","Commercial","","","","","","2022-03-17 15:33:18");
INSERT INTO tbl_add_rent VALUES("28","test","testrent@gmail.com","67323232328732","Bahrain","test123","18","43","1000.00","222.00","19/03/2022","","dGVzdHJlbnRA","","","0","3","15","8","","Residential","101010101000","B-10101010188","New Delhi ","B -1","South Delhi","2022-03-19 19:10:40");
INSERT INTO tbl_add_rent VALUES("29","test","test2221@gmail.com","766732762536722","Bahrain","323232","18","51","1000.00","222.00","29/03/2022","","dGVzdDIyMjFA","","","1","3","15","8","","Residential","2223","adfdf","w21wddcc","asdsf","212","2022-03-29 19:23:09");
INSERT INTO tbl_add_rent VALUES("30","test","test22212223@gmail.com","766732762536722","Bahrain","323232","18","","1000.00","222.00","29/03/2022","","dGVzdDIyMjFA","C86FD893-62E1-8AF4-EB6F-EDFED164A4C1.gif","35ECBCFD-4B09-639E-4562-0E244DEC1D51.jpg","1","3","15","8","","Residential","2223","adfdf","w21wddcc","asdsf","212","2022-03-29 19:26:32");



CREATE TABLE `tbl_add_unit` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `floor_no` varchar(200) NOT NULL,
  `unit_no` varchar(200) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_unit VALUES("42","18","Flat No: 01","8","1","2022-03-13 14:37:16");
INSERT INTO tbl_add_unit VALUES("43","18","Flat No: 02","8","1","2022-03-13 14:37:29");
INSERT INTO tbl_add_unit VALUES("44","18","Flat No:11","8","0","2022-03-13 14:37:40");
INSERT INTO tbl_add_unit VALUES("45","18","Flat No: 21 A & B","8","0","2022-03-13 14:42:22");
INSERT INTO tbl_add_unit VALUES("46","18","Flat No: 22 A & B","8","0","2022-03-13 14:43:02");
INSERT INTO tbl_add_unit VALUES("47","18","Flat No: 31","8","0","2022-03-13 14:43:19");
INSERT INTO tbl_add_unit VALUES("48","18","Flat No: 12","8","0","2022-03-13 14:44:04");
INSERT INTO tbl_add_unit VALUES("49","18","Flat No: 32","8","0","2022-03-13 14:44:44");
INSERT INTO tbl_add_unit VALUES("50","18","FLAT No: 33","8","0","2022-03-13 14:45:23");
INSERT INTO tbl_add_unit VALUES("51","18","Flat No: 34","8","1","2022-03-13 14:50:03");
INSERT INTO tbl_add_unit VALUES("52","18","Flat No: 41(Roof Top)","8","0","2022-03-13 14:50:41");
INSERT INTO tbl_add_unit VALUES("53","18","Shop No: 1269 A","8","0","2022-03-13 14:52:02");
INSERT INTO tbl_add_unit VALUES("54","18","Shop No: 1269 B","8","0","2022-03-13 14:52:20");
INSERT INTO tbl_add_unit VALUES("55","18","Shop No: 1269 G","8","0","2022-03-13 14:52:49");
INSERT INTO tbl_add_unit VALUES("56","18","1269 D","8","1","2022-03-13 14:53:10");
INSERT INTO tbl_add_unit VALUES("57","19","Flat No: 02","8","0","2022-03-17 13:55:53");
INSERT INTO tbl_add_unit VALUES("58","19","Flat No: 11","8","0","2022-03-17 13:56:09");
INSERT INTO tbl_add_unit VALUES("59","19","Flat No: 12","8","0","2022-03-17 13:56:24");
INSERT INTO tbl_add_unit VALUES("60","19","Flat No: 21","8","0","2022-03-17 13:56:45");
INSERT INTO tbl_add_unit VALUES("61","19","Flat No: 22","8","0","2022-03-17 13:57:20");
INSERT INTO tbl_add_unit VALUES("62","19","Shop No: 4150","8","0","2022-03-17 13:57:47");
INSERT INTO tbl_add_unit VALUES("63","19","Shop No: 4154","8","0","2022-03-17 13:58:11");
INSERT INTO tbl_add_unit VALUES("64","20","Villa No:11","8","0","2022-03-17 14:39:02");
INSERT INTO tbl_add_unit VALUES("65","20","Villa No:13","8","0","2022-03-17 14:39:20");
INSERT INTO tbl_add_unit VALUES("66","20","Villa No:15","8","0","2022-03-17 14:39:37");
INSERT INTO tbl_add_unit VALUES("67","20","Villa No:17","8","0","2022-03-17 14:39:57");



CREATE TABLE `tbl_add_utility_bill` (
  `utility_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL DEFAULT 0,
  `gas_bill` varchar(200) NOT NULL,
  `security_bill` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`utility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_utility_bill VALUES("5","7","850","800","2018-05-14 12:01:40");
INSERT INTO tbl_add_utility_bill VALUES("7","8","10","20","2022-03-11 05:06:32");



CREATE TABLE `tbl_add_year_setup` (
  `y_id` int(11) NOT NULL AUTO_INCREMENT,
  `xyear` varchar(200) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`y_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO tbl_add_year_setup VALUES("15","2022","2022-02-12 09:56:07");
INSERT INTO tbl_add_year_setup VALUES("16","2021","2022-03-11 05:10:30");
INSERT INTO tbl_add_year_setup VALUES("17","2020","2022-03-11 05:10:36");



CREATE TABLE `tbl_car_reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_number` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `passing_date` date DEFAULT NULL,
  `insurance_date` date DEFAULT NULL,
  `service_due_date` date DEFAULT NULL,
  `service_KM` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO tbl_car_reminder VALUES("5","252525","2022-03-24","2022-03-29","2022-03-26","600","8","2022-03-11 10:13:25");
INSERT INTO tbl_car_reminder VALUES("6","2131","2022-03-31","2022-03-29","2022-03-29","148500","8","2022-03-11 13:50:21");



CREATE TABLE `tbl_currency` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO tbl_currency VALUES("2","$","Dollar");
INSERT INTO tbl_currency VALUES("12","BHD ","Bahraini Dinar");



CREATE TABLE `tbl_employee_leave_request` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `leave_text` varchar(5000) NOT NULL,
  `request_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tbl_employee_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(4) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO tbl_employee_notice VALUES("1","employee test notice 1","<p>erwerwerwe</p>

<p>&#39;</p>

<p>wer&#39;we</p>

<p>r]&#39;we</p>

<p>]er</p>

<p>werw</p>

<p>er</p>
","1","8","2022-03-11");



CREATE TABLE `tbl_invoice_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) NOT NULL DEFAULT 0,
  `paid_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tbl_invoice_payment VALUES("1","56","50","2022-03-17 11:34:21");



CREATE TABLE `tbl_max_power` (
  `purchase_code` varchar(150) DEFAULT NULL,
  `website_url` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `installed_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_check_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO tbl_max_power VALUES("001002003","https://native.instacard.digital/","opu005@gmail.com","2022-02-12 09:54:36","2022-12-12 14:53:59");



CREATE TABLE `tbl_meeting` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `meeting_title` varchar(300) NOT NULL,
  `meeting_description` text NOT NULL,
  `issue_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO tbl_meeting VALUES("6","Water Problem","<p><strong>We need to solve water problem soon.</strong></p>
","2019-08-27","8");
INSERT INTO tbl_meeting VALUES("7","Water isssue","<p style="margin-left:0in; margin-right:0in">&nbsp;</p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Currency &ndash; BHD ( Bahraini Dinar with three decimal- 1.000)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add one sub menu in <strong>Admin- Employee Information- Employee Status ( Ref Pic-1)</strong></span></span></li>
</ul>

<p style="margin-left:0.5in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">And add the below fields with renewal intimation mail alert to admin.</span></span></p>

<p style="margin-left:0.5in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">And also show an alert box (for showing all alerts) in dash board for.</span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Employee Visa expiry date ( calendar)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Employee Passport expiry date (calendar)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Employee type &ndash; Own, Flexi, Contract, Others (option to select from these dropdown)</span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Generate Invoice and Receipt with company logo. ( I will provide formats)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Option to create <strong>Rent Receipt (Ref Pic-2</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Send Invoice and Receipt web link ( PDF)&nbsp; to customers (SMS and&nbsp; mail)&nbsp; <strong>( Ref Pic-3 and 4)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">In client account, same like Invoice, give an option to download their receipt.</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">For all calendar&rsquo;s, it is better, if you can keep a dynamic year selection with current year as default. <strong>( Ref Pic-5)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Change <strong>Complain</strong> to <strong>&ldquo;Complaint&rdquo;</strong> in menu and forms <strong>( Ref Pic-6)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add one additional field ( CPR / ID No.) in <strong>Add Visitor</strong> menu and also its better, if we can give a <strong>calendar with time</strong> for the &ldquo;in and out&rdquo; times <strong>(Ref Pic-7)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">What is the functionality of the menu &ldquo;Meeting&rdquo;? Can we send the meeting notification to clients?</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Change Moderator to Care Taker&nbsp; in &ldquo;Add Building&rdquo; menu <strong>(Ref Pic-8)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Generate Rent agreement by using the client details ( format will give you)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add a reminder menu in settings for setting up Vehicle reminders ( Passing date, Insurance date, Service due date etc.) with reminder notification ( by mail to admin and show in dash board)&nbsp; <strong>(Ref Pic-10)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Please change the invoice status to &ldquo;PAID&rdquo; once the receipt generated against the invoice</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">In employee login, we will give a salary voucher format. Please change the current format with new one.</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add some additional fields in &ldquo;Add new Tenant&rdquo;&nbsp; <strong>(Ref Pic-9)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Please use <strong>www.bulksmsonline.com</strong> for SMS integration. </span></span></li>
</ul>

<p style="margin-left:0.5in; margin-right:0in">&nbsp;</p>
","2022-03-11","8");
INSERT INTO tbl_meeting VALUES("8","Water isssue","<p style="margin-left:0in; margin-right:0in">&nbsp;</p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Currency &ndash; BHD ( Bahraini Dinar with three decimal- 1.000)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add one sub menu in <strong>Admin- Employee Information- Employee Status ( Ref Pic-1)</strong></span></span></li>
</ul>

<p style="margin-left:0.5in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">And add the below fields with renewal intimation mail alert to admin.</span></span></p>

<p style="margin-left:0.5in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">And also show an alert box (for showing all alerts) in dash board for.</span></span></p>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Employee Visa expiry date ( calendar)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Employee Passport expiry date (calendar)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Employee type &ndash; Own, Flexi, Contract, Others (option to select from these dropdown)</span></span></li>
</ul>

<ul>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Generate Invoice and Receipt with company logo. ( I will provide formats)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Option to create <strong>Rent Receipt (Ref Pic-2</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Send Invoice and Receipt web link ( PDF)&nbsp; to customers (SMS and&nbsp; mail)&nbsp; <strong>( Ref Pic-3 and 4)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">In client account, same like Invoice, give an option to download their receipt.</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">For all calendar&rsquo;s, it is better, if you can keep a dynamic year selection with current year as default. <strong>( Ref Pic-5)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Change <strong>Complain</strong> to <strong>&ldquo;Complaint&rdquo;</strong> in menu and forms <strong>( Ref Pic-6)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add one additional field ( CPR / ID No.) in <strong>Add Visitor</strong> menu and also its better, if we can give a <strong>calendar with time</strong> for the &ldquo;in and out&rdquo; times <strong>(Ref Pic-7)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">What is the functionality of the menu &ldquo;Meeting&rdquo;? Can we send the meeting notification to clients?</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Change Moderator to Care Taker&nbsp; in &ldquo;Add Building&rdquo; menu <strong>(Ref Pic-8)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Generate Rent agreement by using the client details ( format will give you)</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add a reminder menu in settings for setting up Vehicle reminders ( Passing date, Insurance date, Service due date etc.) with reminder notification ( by mail to admin and show in dash board)&nbsp; <strong>(Ref Pic-10)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Please change the invoice status to &ldquo;PAID&rdquo; once the receipt generated against the invoice</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">In employee login, we will give a salary voucher format. Please change the current format with new one.</span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Add some additional fields in &ldquo;Add new Tenant&rdquo;&nbsp; <strong>(Ref Pic-9)</strong></span></span></li>
	<li><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;">Please use <strong>www.bulksmsonline.com</strong> for SMS integration. </span></span></li>
</ul>

<p style="margin-left:0.5in; margin-right:0in">&nbsp;</p>
","2022-03-11","8");
INSERT INTO tbl_meeting VALUES("9","test meeting ","<table class="Table" style="border:none; width:100.0%">
	<tbody>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">3. Termination Article, this agreement is terminated without any notice and the Owner has the right to vacate the Tenant from the rented property immediately and appeal to Urgent Court of Justice or Property Disputes Court for any of the following reasons:</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> If the Tenant fails to pay the rent and agreed charges on time.</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> If the lease period expires.</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> If the Tenant damages or uses the property for any purpose other than declared in (Rule-1), or utilizes it for any unlawful or illegal activities, or harmed the neighbor.</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> If the Tenant sublets the rented place or a portion of it or given it to others without the Owners written approval.</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> If the Tenant departs without notice.</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Ø§Ù„Ø´Ø±Ø· Ø§Ù„ÙØ§Ø³Ø® Ø§Ù„ØµØ±ÙŠØ­ ØŒ ÙŠØ¹ØªØ¨Ø± Ø§Ù„Ø¹Ù‚Ø¯ Ù…Ù†ÙØ³Ø®Ø§ Ù…Ù† ØªÙ„Ù‚Ø§Ø¡ Ù†ÙØ³Ù‡ ÙˆØ¯ÙˆÙ† Ø­Ø§Ø¬Ø© Ø¥Ù„ÙŠ ØªÙ†Ø¨ÙŠÙ‡ ÙˆØªØ¹ØªØ¨Ø± ÙŠØ¯ )Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø±( ÙŠØ¯ Ù‚Ø§ØµØ¨ Ùˆ ÙŠØ­Ù‚ Ù„Ù„Ù…Ø§Ù„Ùƒ )Ø§Ù„Ù…Ø¤Ø¬Ø±( Ø¥Ø®Ø§Ù„Ø¦Ù‡ ÙÙŠ Ø§Ù„Ø­Ø§Ù„ Ùˆ Ø§Ù„Ù„Ø¬ÙˆØ¡ Ø¥Ù„ÙŠ Ø§Ù„Ù‚Ø¶Ø§Ø¡ Ø§Ù„Ù…Ø³ØªØ¹Ø¬Ù„ Ø£Ùˆ Ù…Ø­ÙƒÙ…Ø© Ø§Ù„Ù…Ù†Ø§Ø²Ø¹Ø§Øª Ø§Ù„Ø¹Ù‚Ø§Ø±ÙŠØ© Ø¨Ø·Ù„Ø¨ Ø§Ù„Ø·Ø±Ø¯ ÙˆØ¥Ø®Ø§Ù„Ø¡ Ø§Ù„Ø¹Ù‚Ø§Ø± Ù„Ø£Ù„Ø³Ø¨Ø§Ø¨ Ø§Ù„ØªØ§Ù„ÙŠØ©:</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ ØªØ®Ù€Ù„Ù€Ù Ø£Ùˆ Ø¹Ø¬Ø² Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¹Ù† Ø¯ÙØ¹ Ø§Ø¥Ù„ÙŠØ¬Ø§Ø± ÙˆØ§Ù„Ù…ØµØ§Ø±ÙŠÙ ÙÙŠ Ø§Ù„Ù…ÙˆØ¹Ù€Ø¯</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ Ø§Ù†ØªÙ‡Øª Ù…Ø¯Ø© Ø§Ø§Ù„ØªÙØ§Ù‚ÙŠØ©&lt; Ø§Ù„Ø¹Ù‚Ø§Ø± ÙÙŠ</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ Ø³Ø¨Ø¨ Ø®Ø±Ø§Ø¨Ø§Ù‹</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ Ø³Ø¨Ø¨ Ø£Ø°Ù‰ Ù„Ù„Ø¬ÙŠØ±Ø§Ù† Ø¨Ø£ÙŠ ÙˆØ³ÙŠÙ„Ø© ÙƒØ§Ù†Øª.</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ Ø£Ø³ØªØ¹Ù…Ù„ Ø§Ù„Ø¹Ù‚Ø§Ø± ÙÙŠ ØºÙŠØ± Ø§Ù„ØºØ±Ø¶ Ø§Ù„Ù…ØªÙÙ‚ Ø¹Ù„ÙŠÙ‡ ÙÙŠ Ø§Ù„Ø¨Ù†Ø¯ )1 )Ø£Ùˆ ÙÙŠ Ø£Ø¹Ù…Ø§Ù„ Ù…Ø®Ø§Ù„ÙØ© Ù„Ù„Ù‚Ø§Ù†ÙˆÙ† ÙˆØ§Ø¢Ù„Ø¯Ø§Ø¨.</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ Ø£Ø¬Ø± Ø§Ù„Ø¹Ù‚Ø§Ø± Ø£Ùˆ Ù‚Ø³Ù…Ø§Ù‹ Ù…Ù†Ù‡Ø§ Ø¨Ø§Ù„Ø¨Ø§Ø·Ù† Ø£Ùˆ ØªÙ€Ù†Ø§Ø²Ù„ Ø¹Ù†Ù‡ Ù„Ù„ØºÙ€ÙŠØ± Ø¯ÙˆÙ† Ù…ÙˆØ§ÙÙ‚Ø© . Ø§Ù„Ù…Ø¤Ø¬Ø± ÙƒØªØ§Ø¨ÙŠØ§Ù‹</span></span><br />
			<span style="font-size:9.0pt"><span style="font-family:&quot;Segoe UI Symbol&quot;,&quot;sans-serif&quot;">â‘</span></span><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"> Ø¥Ø°Ø§ ØºØ§Ø¯Ø± Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ù…Ù† ØºÙŠØ± ØªÙ†Ø¨ÙŠÙ‡ Ø§Ù„Ù…Ø¤Ø¬Ø±.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">4. The Tenant promises to do All Kind of Rental Maintenance, and pay Electricity &amp; Water Tel., Municipality charges to the Authorities.</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ØªØ¹Ù€Ù‡Ø¯ Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¨Ø£Ø¬Ø±Ø§Ø¡ Ø§Ù„ØµÙŠØ§Ù†Ø© Ø§Ù„ØªØ£Ø¬ÙŠØ±ÙŠØ© Ø¨Ø£Ù†ÙˆØ§Ø¹Ù‡Ø§ ÙˆÙƒØ°Ù„Ùƒ Ø¨Ù€Ø¯ÙØ¹ Ù…ØµØ§Ø±ÙŠÙ Ø§Ù„ÙƒÙ‡Ø±Ø¨Ø§Ø¡ ÙˆØ§Ù„Ù…Ø§Ø¡ ÙˆØ§Ù„Ø¨Ù„Ø¯ÙŠØ© ÙˆØ§Ù„Ù‡Ø§ØªÙ Ø¥Ù„ÙŠ Ø§Ù„Ø¬Ù‡Ø§Øª Ø§Ù„Ù…Ø®ØªØµØ©.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">5. The Tenant has no right to remove, alter, destroy, or ask for compensation for any installation, he made in the rented place. Tenant must obtain the prior written permission of the Owner and He shell not store inflammable materials.</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Ø£ÙŠ Ø´ÙŠØ¡ ÙŠØ­Ø¯Ø«Ù‡ Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± ÙÙŠ Ø§Ù„Ø¹Ù‚Ø§Ø± Ø§Ù„ ÙŠØ­Ù‚ Ù„Ù‡ Ù†Ù‚Ù„Ù‡ Ø£Ùˆ ØªØ¹Ø¯ÙŠÙ„Ù‡ Ø£Ùˆ ØªØ®Ø±ÙŠØ¨Ù‡ Ø£Ùˆ ÙŠØ·Ù„Ø¨ Ø§Ù„ØªØ¹ÙˆÙŠØ¶ Ø¹Ù†Ù‡ ÙˆØ¹Ù„ÙŠÙ‡ Ù…Ø±Ø§Ø¬Ø¹Ø© ÙˆØ£Ø®Ø° Ù…ÙˆØ§ÙÙ‚Ø© Ø§Ù„Ù…Ø¤Ø¬Ø± ÙƒØªØ§Ø¨ÙŠØ§ Ù‚Ø¨Ù„ ÙˆØ¶Ø¹Ù‡ ÙˆØ¹Ù„ÙŠÙ‡ Ø¹Ø¯Ù… ØªØ®Ø²ÙŠÙ† Ù…ÙˆØ§Ø¯ Ù‚Ø§Ø¨Ù„Ø© Ù„Ø§Ù„Ø´ØªØ¹Ø§Ù„.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">6. The Tenant must take proper care of the property and be responsible for any damages or mischief during the rented period.</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Ù…Ø³Ø¦ÙˆØ§Ù„Ù‹ Ø¹Ù† Ø§Ù„ØªÙ„Ù ÙˆØ§Ù„Ø¶Ø±Ø± ÙŠÙ„ØªØ²Ù… Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¨Ø§Ù„Ù…Ø­Ø§ÙØ¸Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø¹Ù‚Ø§Ø± ÙˆÙŠÙƒÙˆÙ† Ø®Ø§Ù„Ù„ ÙØªØ±Ø© Ø§Ù„ØªØ£Ø¬ÙŠØ±.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">7. The Tenant shall vacate the property at once and without any Objections in case of Demolishing or Full Maintenance of the property and without any compensation</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Ù…ÙÙˆØ±Ø§ ÙˆØ¨Ø¯ÙˆÙ† Ø£ÙŠ Ø§Ø¹ØªØ±Ø§Ø¶ ÙÙŠ Ø­Ø§Ù„Ø© Ø§Ù„Ù‡Ø¯Ù… Ø£Ùˆ Ù‹ ØªØ¹Ù€Ù‡Ø¯ Ø§Ù„Ù…Ø³ØªØ£Ø¬Ø± Ø¨Ø¥Ø®Ø§Ù„Ø¡ Ø§Ù„Ø¹ÙŠÙ† Ø§Ù„ØµÙŠØ§Ù†Ø© Ø§Ù„Ø´Ø§Ù…Ù„Ø© Ù„Ù„Ø¹Ù‚Ø§Ø± ÙˆØ¨Ø¯ÙˆÙ† Ø£ÙŠØ© Ù…Ø·Ø§Ù„Ø¨Ø§Øª.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">8 . The Owner has the right to increase the rent by 10% after expire.</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ÙŠØ­Ù‚ Ù„Ù„Ù…Ø§Ù„Ùƒ ) Ø§Ù„Ù…Ø¤Ø¬Ø±( Ø²ÙŠØ§Ø¯Ø© Ø§Ø¥Ù„ÙŠØ¬Ø§Ø± Ø¨Ù†Ø³Ø¨Ø© 10 %Ø¨Ø§Ù†ØªÙ‡Ø§Ø¡ Ù…Ø¯Ø© Ø§Ù„Ø¹Ù‚Ø¯.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">9. Two copies of this Lease are made; one for each party, and the Lease provisions are put into effect as soon as it&rsquo;s signed by both parties. The Arabic Text is valid.</span></span></span></span></p>
			</td>
			<td>
			<p style="margin-left:0in; margin-right:0in"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">ÙŠØ­Ø±Ø± Ù‡Ø°Ø§ Ø§Ù„Ø¹Ù‚Ø¯ Ù…Ù† Ù†Ø³Ø®ØªÙŠÙ† Ù„ÙƒÙ„ Ø·Ø±Ù Ù†Ø³Ø®Ø© Ù…Ù†Ù‡ØŒ ÙˆÙŠØ¹Ù…Ù„ Ø¨Ø£Ø­ÙƒØ§Ù…Ù‡ Ø­Ø§Ù„ Ø§Ù„ØªÙˆÙ‚ÙŠØ¹ Ø¹Ù„ÙŠÙ‡ Ù…Ù† Ù‚Ø¨Ù„ Ø§Ù„Ø·Ø±ÙÙŠÙ† ÙˆÙŠØ¤Ø®Ø° Ø¨Ù…Ø§ ÙˆØ±Ø¯ Ø¨Ø§Ù„Ù†Øµ Ø§Ù„Ø¹Ø±Ø¨ÙŠ.</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="height:15.0pt; width:110.5pt">
			<p style="margin-left:0in; margin-right:0in; text-align:center"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Remarks</span></span></span></span></p>
			</td>
			<td colspan="3" style="height:15.0pt; width:446.6pt">&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p style="margin-left:0in; margin-right:0in">&nbsp;</p>

<table class="Table" style="border:dashed black 1.5pt; width:100.0%">
	<tbody>
		<tr>
			<td style="border-color:black; height:15.0pt; width:275.55pt">
			<p style="margin-left:0in; margin-right:0in; text-align:center"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">2nd Witness</span></span></span></span></p>
			</td>
			<td style="border-color:black; height:15.0pt; width:275.55pt">
			<p style="margin-left:0in; margin-right:0in; text-align:center"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">1st Witness</span></span></span></span></p>
			</td>
		</tr>
		<tr>
			<td style="border-color:black; height:15.0pt; width:275.55pt">
			<p style="margin-left:0in; margin-right:0in; text-align:center"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Tenant Signature</span></span></span></span></p>
			</td>
			<td style="border-color:black; height:15.0pt; width:275.55pt">
			<p style="margin-left:0in; margin-right:0in; text-align:center"><span style="font-size:11pt"><span style="font-family:Calibri,&quot;sans-serif&quot;"><span style="font-size:9.0pt"><span style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">Owner Signature</span></span></span></span></p>
			</td>
		</tr>
	</tbody>
</table>
","2022-03-30","8");
INSERT INTO tbl_meeting VALUES("10","test meeting  4","<p>hfuhjf;oijsf;lksdf;sdlfk</p>

<p>gjhgksdgs</p>

<p>jgklsd</p>
","1904-04-05","8");
INSERT INTO tbl_meeting VALUES("11","test meeting  5","<p>httr</p>
","2022-03-26","8");
INSERT INTO tbl_meeting VALUES("13","Great Day","<p>Nice Day</p>
","2022-03-11","8");
INSERT INTO tbl_meeting VALUES("14","Great","<p>Nice</p>
","2022-03-11","8");
INSERT INTO tbl_meeting VALUES("15","test meeting  6","<p>rgtirje;prieogtjporwe</p>

<p>rlkrjngklregj</p>

<p>rgjklnergklrje</p>
","2022-03-12","8");
INSERT INTO tbl_meeting VALUES("16","wewfrwe","<p>werwerwe</p>
","2022-03-12","8");
INSERT INTO tbl_meeting VALUES("17","test meeting  7","<p>werwerwe</p>
","2022-03-12","8");
INSERT INTO tbl_meeting VALUES("18","test","<p>just testing..</p>
","2022-03-21","8");



CREATE TABLE `tbl_notice_board` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO tbl_notice_board VALUES("7","Building In and Out","<p>asasas</p>
","0","8","2019-08-27");
INSERT INTO tbl_notice_board VALUES("8","tenant test notice 1","<p>wfrhjuriojwe;ori</p>

<p>frk;jer</p>

<p>jk;welrwe</p>

<p>ke;wlrw</p>
","1","8","2022-03-11");



CREATE TABLE `tbl_notification_alert` (
  `notification_Id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=sms,2=email,3=both',
  `user_details` varchar(5000) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `sent_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`notification_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




CREATE TABLE `tbl_owner_notice_board` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(500) NOT NULL,
  `notice_description` text NOT NULL,
  `notice_status` tinyint(1) NOT NULL DEFAULT 1,
  `branch_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO tbl_owner_notice_board VALUES("1","owner test notice 1","<p>grkjgre</p>

<p>rlkrjegtl</p>

<p>rg.rjnrel</p>

<p>&#39;r;kelgtk</p>
","1","8","2022-03-09");



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

INSERT INTO tbl_settings VALUES("English","BHD ",".","left","3","mail","CA8D0636-E7DD-542A-8775-7CC2DA9C7739.jpg","","","","","","tls","","","");



CREATE TABLE `tbl_visitor` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
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
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;




CREATE TABLE `tblbranch` (
  `branch_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO tblbranch VALUES("7","Silver Tower","mirpur.1@gmail.com","1717445566","F-Block,Mirpur-1,Dhaka-1216","+880167119889","+880911909090","+88090909090","","E9EB1C1F-9D88-0FD8-CE34-92F3421FA31D.jpg","1","Golden Developer Company","+8850505050","Test Address
UK","<p style="text-align:center"><span style="color:#e67e22"><u><span style="font-size:36px"><span style="font-family:Trebuchet MS,Helvetica,sans-serif"><strong>Love Bird Building Rules</strong></span></span></u></span></p>

<blockquote>
<p><strong><span style="color:#16a085"><span style="font-size:20px">1) Gate Close 10 PM.</span></span></strong></p>
</blockquote>

<blockquote>
<p><strong><span style="color:#16a085"><span style="font-size:20px">2) New commer must be intruduce with guard.</span></span></strong></p>
</blockquote>
","2016-06-22 15:20:30");
INSERT INTO tblbranch VALUES("8","Golden Tower","opu@gmail.com","1212121212","K-Block,Mirpur-10,Dhaka-1216","+880167119889","+880911909090","+88090909090","9","6F7882BD-85CD-8D98-EDCA-1FF65F0BFABA.jpg","1","Golden Developer Company","+8850505050","test address
USA","<p style="text-align:center"><span style="color:#e67e22"><u><span style="font-size:36px"><span style="font-family:Trebuchet MS,Helvetica,sans-serif"><strong>Love Bird Building Rules</strong></span></span></u></span></p>

<blockquote>
<p><strong><span style="color:#16a085"><span style="font-size:20px">1) Gate Close 10 PM.</span></span></strong></p>
</blockquote>

<blockquote>
<p><strong><span style="color:#16a085"><span style="font-size:20px">2) New commer must be intruduce with guard.</span></span></strong></p>
</blockquote>
","2016-06-22 15:53:45");



CREATE TABLE `tblsuper_admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `added_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO tblsuper_admin VALUES("1","Abdulwahab Binsanad","devsolver@gmail.com","+8801679110711","MTIzNDU2","2015-06-29 11:45:29");

