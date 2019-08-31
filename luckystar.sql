-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2019 pada 06.33
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luckystar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_image`
--

CREATE TABLE `about_image` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `prov` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lat` decimal(15,7) NOT NULL,
  `lng` decimal(15,7) NOT NULL,
  `link` text,
  `type` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `category_id`, `nama`, `address_1`, `address_2`, `telp`, `fax`, `image`, `prov`, `kota`, `email`, `lat`, `lng`, `link`, `type`, `sort`) VALUES
(2, 0, 'PT. Toscar Perkasa Indonesia', 'Jl. Taman Surya 5 Kawasan Palm Paradise Ruko Royal Paradise A19, RT.4/RW.3, Pegadungan, Kalideres', '', '021 - 2967 1014', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.1343570', '106.7068275', NULL, 'dealer', 106),
(3, 0, 'PT. Dynami Perkasa Indonesia', 'Komplek Surya Inti Permata I Blok B 8-9, Jl. HR. Muhammad Kav. 360-380, Pradahkalikendal, Surabaya', '', '031 - 734 2189', '', '', 'Jawa Timur', 'Surabaya', '', '-7.2825370', '112.6864250', NULL, 'dealer', 111),
(4, 0, 'PT. Hamparan Daya Cipta Infinity', 'Jl. Musyawarah No.29, RT.3/RW.2, Kb. Jeruk, Kota, Jakarta Barat', '', '021 - 5695 8989', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.2005790', '106.7717330', NULL, 'dealer', 101),
(5, 0, 'PT. Binamitra Handaya Perkasa', 'JL kelapa Hibrida Raya RA. 3/15, Pegangsaan dua, Kelapa gading, Jakarta Utara 14250', '', '021 - 4534512', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1480720', '106.9104790', NULL, 'dealer', 116),
(6, 0, 'PT. Seltech Utama Mandiri', 'Jl. Sisingamangaraja KM.7,2 No.170, Harjosari II, Medan Amplas, Kota Medan', '', '061 - 7862123', '', '', 'Sumatera Utara', 'Medan ', '', '3.5373010', '98.7097430', NULL, 'dealer', 121),
(7, 0, 'PT. Wijaya Makmur Abadi Sejahtera', 'The Icon Business Park Ruko C Blok G/3 Lantai 1  BSD City Tangerang ', '', '+62 813-8373-2211', '', '', 'Banten', 'Tangerang', '', '-6.3164810', '106.6518290', NULL, 'dealer', 126),
(8, 0, 'PT. Penta Aircond', 'The Icon Business Park Ruko C Blok G/3 Lantai 2  BSD City Tangerang ', '', '0882-1091-9772', '', '', 'Banten', 'Tangerang', '', '-6.3164810', '106.6518290', NULL, 'dealer', 131),
(9, 0, 'PT. Eskimo Wieraperdana', 'Jl. Palmerah Barat Blok B-5 No. 38, Grogol Utara, Kebayoran Lama, Jakarta Selatan', '', '(021) 5308791   ', '', '', 'DKI Jakarta', 'Jakarta Selatan', '', '-6.2073270', '106.7865160', NULL, 'dealer', 136),
(10, 0, 'PT. Arista Pratama Jaya', 'Jl. Tebet Barat Dalam Raya No.35, RT.6/RW.3, Tebet, Kota Jakarta Selatan', '', '021 8302150', '', '', 'DKI Jakarta', 'Jakarta Selatan', '', '-6.2365220', '106.8473160', NULL, 'dealer', 141),
(12, 0, 'PT. Anekabangun Eka Pratama', 'Rukan Royal Palace Blok B-26 JL Prof. Dr. Soepomo, SH No. 178 Jakarta Selatan 12870', '', '021 - 8350103', '', '', 'DKI Jakarta', 'Jakarta Selatan', '', '-6.2291320', '106.8473150', NULL, 'dealer', 146),
(13, 0, 'CV. Multi Wahana Aircond', 'Rukan Artha Gading Niaga blok C No. 8, Kelapa Gading, Jakarta Utara', '', '021 453 3996 / 021 4533899 / 021 45850561 / 021 45850562', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1460890', '106.8954940', 'http://www.acwahana.com', 'dealer', 20),
(14, 0, 'PT. Asri Lestari (Dunia Electric)', 'Ruko Glodok Plaza H/12A, Jl. Pinangsia Raya, Jakarta Barat', '', '021-6296264, 6280186, 6261323, 6011903', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.1427747', '106.8168229', NULL, 'dealer', 1),
(15, 0, 'PT. Gunung Bintang Semesta', 'JL Danau Sunter Utara Blok J 12/23,Jakarta Utara', '', '021 - 6505022, 6505236, 6505021', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1406010', '106.8833000', NULL, 'dealer', 10),
(16, 0, 'PT. Grand Indo Sukses (Grand Elektronik)', 'JL Pluit Permai Raya No. 18 C, RT 002 RW.004, Pluit - Penjaringan Jakarta Utara', '', '021 - 6684826, 6626652, 6627282, 6627304', '', '', 'DKI Jakarta', 'Jakarta Utara', '', '-6.1155610', '106.7888440', NULL, 'dealer', 5),
(22, 0, 'PT. Berca Carrier Indonesia (JKT-SC)', 'Jl. Agung Timur II Blok O No. 40-41, Sunter, Jakarta 14350', '', '021-26608088', '', '', 'DKI Jakarta', 'Jakarta', '', '-6.1311320', '106.8987500', NULL, 'asp', 401),
(23, 0, 'Vida Air* (JKT-ASP-VDR)', 'Jl. Kemuning No. 67, Tomang, Jakarta 11440', '', '021-80681341, 083815001100', '', '', 'DKI Jakarta', 'Jakarta Barat', '', '-6.1232430', '106.9081690', NULL, 'asp', 406),
(24, 0, 'CV. Jumadi Inti Teknik (BTN-ASP-JIT)', 'Green Lake City Rukan CBD Blok M 33, Gondrong, Tangerang 15146', '', '021-22052969, 087780700014', '', '', 'Banten', 'Tangerang', '', '-6.2252540', '106.9068690', NULL, 'asp', 411),
(25, 0, 'Berkat Service (BTN-ASP-BTS)', 'Perum Villa Taman Bandara Blok B1 No. 10, Jl.Raya Perancis Dadap, Tangerang', '', '08118702832, 021-55961152/98226924/70283268/95016070', '', '', 'Banten', 'Tangerang', '', '-6.0920650', '106.6988340', NULL, 'asp', 416),
(26, 0, 'CV. Lintas Teknik (JWB-ASP-CLT)', 'Jl. Bintara 4 No. 5 RT. 02/16, Bintara, Bekasi Barat', '', '021-29485981', '', '', 'Jawa Barat', 'Bekasi', '', '-6.2232890', '106.9509000', NULL, 'asp', 421),
(27, 0, 'Anugrah Service (JWB-ASP-ANS)', 'Jl. Raya Cilendek No. 28, Cemplang Baru, Bogor', '', '0251-7539400/081314611100', '', '', 'Jawa Barat', 'Bogor', '', '-6.5686350', '106.7658930', NULL, 'asp', 426),
(28, 0, 'Mandiri Jaya Electronics (JWB-ASP-MJE)', 'Jl. Proklamasi Blok E No. 11 RT. 02/23, Kel. Abadijaya, Kec. Sukmajaya, Depok ', '', '021-77827663/92168349/94066940/93238276', '', '', 'Jawa Barat', 'Depok', '', '-6.3963580', '106.8430440', NULL, 'asp', 431),
(29, 0, 'YS Service (JWB-ASP-YSS)', 'Kp. Marga Mulya RT. 01/05 Kavling, Kel. Marga Mulya, Kec. Kota Baru Cikampek 41361', '', '0264-7001253', '', '', 'Jawa Barat', 'Cikampek', '', '-6.4178130', '107.4762030', NULL, 'asp', 436),
(30, 0, 'Mandiri Jaya Electronics (JWB-ASP-MJE)', 'Jl. Jendral Amir Mahmud / Raya Cibabat No. 351, Cimahi, Jawa Barat ', '', '022-70097199/93871789', '', '', 'Jawa Barat', 'Cimahi', '', '-6.8872300', '107.5549510', NULL, 'asp', 441),
(31, 0, 'CV. Sinar Teknindo Perkasa  (JWB-ASP-STP)', 'Perum Griya Mas Lestari Blok B-4 No. 2 RT. 38/09, Pondang Jaya, Klari, Karawang ', '', '0267–8635904/7011191/085119902225', '', '', 'Jawa Barat', 'Karawang', '', '-6.3288940', '107.3379060', NULL, 'asp', 446),
(32, 0, 'Mandiri Jaya Electronics (JWB-ASP-MJE)', 'Jl. Raya Sadang Subang No. 11 RT. 04/02, Kec. Campaka, Purwakarta', '', '0264-9114355', '', '', 'Jawa Barat', 'Purwakarta', '', '-6.5204240', '107.4587700', NULL, 'asp', 451),
(33, 0, 'Abie Anugerah Service (JWB-ASP-ANS)', 'Jl. Jaksa Ii No. 09 D, Sukamelang, Subang 41251', '', '0260-421962', '', '', 'Jawa Barat', 'Subang', '', '-6.5515360', '107.7732130', NULL, 'asp', 456),
(34, 0, 'YS Service (JWB-ASP-YSS)', 'Jl. Raya Tanjung Wangi No. 184 RT. 04/02, Kec. Cijambe, Subang 41372', '', '0260-422348/08882223949', '', '', 'Jawa Barat', 'Subang', '', '-6.5970660', '107.7344770', NULL, 'asp', 461),
(35, 0, 'Bhayangkara Service (JWB-ASP-BHS)', 'Jl. Bhayangkara No. 72, Sukabumi, Jawa Barat', '', '0266-223622/081563275011/081381049409', '', '', 'Jawa Barat', 'Sukabumi', '', '-6.9186480', '106.9161820', NULL, 'asp', 466),
(36, 0, 'Electronics 99 (JWB-ASP-E99)', 'Jl. KH. Mustofa No. 345, Tasik Indah Plaza No. 10, Tasikmalaya 46115', '', '0265-345035/085223456699', '', '', 'Jawa Barat', 'Tasikmalaya', '', '-7.3451390', '108.2179150', NULL, 'asp', 471),
(37, 0, 'Dadi Electronic (JWT-ASP-DDE)', 'Jl. Kuta Banjarnegara RT. 01/02, Banjar Negara 53414', '', '0286-592254/591792/592256', '', '', 'Jawa Tengah', 'Banjarnegara', '', '-7.3978150', '123456.0000000', NULL, 'asp', 476),
(38, 0, 'Surya Kencana Elektronik (JWT-ASP-SKE)', 'Jl. Lesanpura RT. 05/02, Ruko Fajar No. 1, Teluk Purwokerto Selatan, Kab. Banyumas 53145', '', '0851 0161 4414 / 0813 2741 3344 / 0816 6945 70', '', '', 'Jawa Tengah', 'Banyumas', '', '-7.4320830', '109.2477340', NULL, 'asp', 481),
(39, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Gatot Subroto Km. 1, Blora 58213', '', '08112708133, 0296-532761', '', '', 'Jawa Tengah', 'Blora', '', '-6.9691280', '111.3971820', NULL, 'asp', 486),
(40, 0, 'Surya Kencana Elektronik (JWT-ASP-SKE)', 'Jl. Rinjani No. 233, Cilacap', '', '08164280209', '', '', 'Jawa Tengah', 'Cilacap', '', '-7.6687320', '109.0743810', NULL, 'asp', 491),
(41, 0, 'Mekar Jaya Tehnik (JWT-ASP-MJT)', 'Ds. Kedung Waringin RT. 01/ 02, Kec. Patikreja, Kab. Banyumas, Purwokerto 53171', '', '0281-5140330 ', '', '', 'Jawa Tengah', 'Cirebon', '', '-7.4254710', '109.2509230', NULL, 'asp', 496),
(42, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Ds. Sowan Kidul RT. 05/03, Kedung, Jepara 59463', '', '08122509384', '', '', 'Jawa Tengah', 'Jepara', '', '-7.0207030', '110.4106910', NULL, 'asp', 501),
(43, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Raya Kudus Pati Km. 14, Kudus', '', '081325225077', '', '', 'Jawa Tengah', 'Kudus', '', '-6.8052910', '110.9076930', NULL, 'asp', 506),
(44, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Raya Secang No. 69, Magelang 56195', '', '0293-5532001/5562299', '', '', 'Jawa Tengah', 'Magelang', '', '-7.3985430', '110.2428010', NULL, 'asp', 511),
(45, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Urip Sumoharjo No. 22, Pekalongan', '', '0285-7863550', '', '', 'Jawa Tengah', 'Pekalongan', '', '-6.9015570', '109.6647120', NULL, 'asp', 516),
(46, 0, 'MAS Servis (JWT-ASP-MAS)', 'Jl. Sunan Bonan RT. 05/05, Dukuh Waluh, Purwokerto, Jawa Tengah', '', '0281 – 6843635', '', '', 'Jawa Tengah', 'Purwokerto', '', '-7.4023790', '109.2664020', NULL, 'asp', 521),
(47, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. WR Supratman RT. 01/01 Tambakrejo, Purworejo 54118', '', '082137497356', '', '', 'Jawa Tengah', 'Purworejo', '', '-7.7174930', '110.0221080', NULL, 'asp', 526),
(48, 0, 'CV. Kadang Bayu (JWT-ASP-CKB)', 'Jl. Leli Blok C No. 304 Perum Diponegoro Tembalang, Semarang', '', '024- 8506755, 081802440077, 024-74013987, 024-8507494', '', '', 'Jawa Tengah', 'Semarang', '', '-7.0426280', '110.4420570', NULL, 'asp', 531),
(49, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. Tentara Pelajar Trimulyo I Kepek Wonosari Gunung  Kidul (Depan Toko Setya Baru)', '', '0816215843', '', '', 'Jawa Tengah', 'Wonosari', '', '-7.9690080', '110.6167100', NULL, 'asp', 536),
(50, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. Ringroad Utara No. 265A, Gorongan, Condongcatur, Yogyakarta 55283', '', '0274-486123/489192/9190090', '', '', 'Yogyakarta', 'Yogyakarta', '', '-7.7595740', '110.4045750', NULL, 'asp', 541),
(51, 0, 'Purnama Jaya Service (JWT-ASP-PJS)', 'Jl. KH. Ahmad Dahlan No. 23, Badegan Tengah Bantul Yogjakarta', '', '0816215842', '', '', 'Yogyakarta', 'Bantul', '', '-7.8897510', '110.3300510', NULL, 'asp', 546),
(52, 0, 'UD. Wandira Service (JWT-ASP-WDS)', 'Jl. Ikan Cucut No. 44, Banyuwangi, Jawa Timur 68413', '', '0333-423417', '', '', 'Jawa Timur', 'Banyuwangi', '', '-8.2106780', '114.3798400', NULL, 'asp', 551),
(53, 0, 'Duta Bina Teknik (JWT-ASP-DBT)', 'Jl. Panglima Sudirman No. 08, Gresik', '', '031-3981616/031-71992192 ', '', '', 'Jawa Timur', 'Gresik', '', '-7.1637270', '112.6549630', NULL, 'asp', 556),
(54, 0, 'Lumajang Electronic Service (JWT-ASP-LES)', 'Jl. Kapten Kyai Ilyas No.140, Lumajang ', '', '0334-885378', '', '', 'Jawa Timur', 'Lumajang', '', '-8.1318080', '113.2162310', NULL, 'asp', 561),
(55, 0, 'Windra Service (JWT-ASP-WNS)', 'Jl. Lio Sudarmo No. 49, Malang ', '', '0341-485976', '', '', 'Jawa Timur', 'Malang', '', '-8.1846850', '113.7067760', NULL, 'asp', 566),
(56, 0, 'Jimmy Elektronik (JWT-ASP-JME)', 'Jl. Raya Panglima Soedirman No. 368, Probolinggo-Mayangan 67218', '', '0335-435383, 08166595388', '', '', 'Jawa Timur', 'Probolinggo', '', '-7.7588570', '113.2284240', NULL, 'asp', 571),
(57, 0, 'PT. Toscar Perkasa Indonesia (SBY-ASD)', 'Komp. Perkantoran Permata 1 Blok B-9, Jl. Mayjen HR Mohammad Kav. 360-380', '', '031-7342189', '', '', 'Jawa Timur', 'Surabaya', '', '-7.2825610', '112.6863710', NULL, 'asp', 576),
(58, 0, 'PT. Dynami Perkasa Indonesia (BLI-ASD)', 'Komp. Perkantoran Sunset Indah II Blok B-3A, Jl. Sunset Road B-3A, Kuta, Bali 80361', '', '0361-751691', '', '', 'Bali', 'Denpasar', '', '-8.7151510', '115.1867220', NULL, 'asp', 581),
(59, 0, 'CV. Sanjaya Karma (BLI-ASP-SJK)', 'Jl. Gunung Abang No. 1, Monang-Maning, Denpasar, Bali 80119', '', '0361-484473/0361-8806750', '', '', 'Bali', 'Denpasar', '', '-8.6378590', '115.2014740', NULL, 'asp', 586),
(60, 0, 'Stema Service (ACH-ASP-STM)', 'Jl. Aceh-Medan No. 1, Kuta Blang, Bireun 24300', '', '0644-7010434', '', '', 'Aceh', 'Bireun', '', '5.2114740', '96.8334640', NULL, 'asp', 591),
(61, 0, 'Duta Com (ACH-ASP-DTC)', 'Jl. DI.Panjaitan No. 29, Kec. Kuala Simpang, Kab. Aceh Tamiang. Aceh 24475', '', '0641-333566/085262953995', '', '', 'Aceh', 'Tamiang', '', '5.5621290', '95.3253460', NULL, 'asp', 596),
(62, 0, 'PT. Seltech Utama Mandiri (MDN-ASD)', 'Jl. Sisingamangaraja XII Km. 7,2 No. 170, Medan', '', '061-7862123', '', '', 'Sumatera Utara', 'Medan', '', '3.5600770', '98.6940990', NULL, 'asp', 601),
(63, 0, 'Arya Tehnik (SMU-ASP-ART)', 'Jl. Protokol Dusun 1 Sei Bamban Km. 65, Kab. Serdang Bedagai 20995', '', '085297800172/085261721515', '', '', 'Sumatera Utara', 'Serdang Bedagai', '', '3.5018230', '99.1164120', NULL, 'asp', 606),
(64, 0, 'PT. Terima Karya (SMB-ASP-TRK)', 'Simpang Bawah Patai No. 16 RT. 03/01, Kel. Indarung, Padang 25231', '', '0751-777758 / 085278239378', '', '', 'Sumatera Barat', 'Padang', '', '-7.3733540', '112.7303290', NULL, 'asp', 611),
(65, 0, 'PT. Seltech Utama Karya (BTM-ASD)', 'Komp. Srijaya Abadi Blok J No. 3, Lubuk Baja, Batam', '', '062-778456168', '', '', 'Riau', 'Batam', '', '1.1423370', '104.0119810', NULL, 'asp', 616),
(66, 0, 'Leo Service (PKB-ASP-LOS)', 'Jl. Nangka No. 70, Dumai Barat, Dumai', '', '08127504292', '', '', 'Riau', 'Dumai', '', '1.6755300', '101.4344120', NULL, 'asp', 621),
(67, 0, 'Mandiri Teknik (PKB-ASP-MDT)', 'Jl. H. Guru Sulaiman, Gang Pribadi No. 24, Tampan, Pekanbaru', '', '081365558591', '', '', 'Riau', 'Pekanbaru', '', '0.5310330', '101.4277550', NULL, 'asp', 626),
(68, 0, 'Pesona Teknik (JMB-ASP-PST)', 'Jl. Sultan Agung No. 23 RT. 09, Lrg. Telagal, Kel. Murni, Kec. Telanai Pura, Jambi', '', '081366014571', '', '', 'Jambi', 'Jambi', '', '-1.5969450', '103.6072060', NULL, 'asp', 631),
(69, 0, 'Mode Teknik (BKU-ASP-MDT)', 'Komp. Ruko Depan Asrama Kompi 144, Jl. Zainul Arifin, Bengkulu 38221', '', '082184377829', '', '', 'Bengkulu', 'Bengkulu', '', '-3.8226450', '102.3092900', NULL, 'asp', 636),
(70, 0, 'Utama Service  (LMP-ASP-UTS)', 'Jl. A. Prawira Negara No. 18A, Metro 41113', '', '0725-7850991', '', '', 'Lampung', 'Metro ', '', '-3.0021400', '104.7214270', NULL, 'asp', 641),
(71, 0, 'AV Elektronik (LMP-ASP-AVE)', 'Jl. Jend. A. Yani No. 10, Samping Hotel Balong Kuring, Pringsewu Tanggamus, Lampung 35373', '', '0729-23817', '', '', 'Lampung', 'Pringsewu', '', '-5.3575010', '104.9864610', NULL, 'asp', 646),
(72, 0, 'PT. Fath Jaya Lestari (BLP-ASD)', 'Jl. Pialing II Blok K1 No. 35, Damai, Balikpapan 76114', '', '0542-871400', '', '', 'Kalimantan Timur', 'Balikpapan', '', '-1.2457660', '116.8882550', NULL, 'asp', 651),
(73, 0, 'PT Triaji Mandiri Teknika', 'Jl. Kincan Raya No.22, Jatibening Baru, Pondokgede, Kota Bks, Jawa Barat 17412', '', '(021) 86902459', '', '', 'Jawa Barat', 'Bekasi', '', '-6.2566740', '106.9426090', NULL, 'dealer', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_big` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `title`, `image`, `image_big`, `sort`) VALUES
(1, 'Creative Communication Division', '9f4df-Banner Career_CC.jpg', 'f451f-PopUp_Banner CC.jpg', 1),
(4, 'Public Relation & Sales', '60b6c-Banner Career_PR.jpg', '60b6c-PopUp_Banner PR.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `city`
--

INSERT INTO `city` (`id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23600'),
(2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23700'),
(3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23000'),
(4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23600'),
(5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23700'),
(6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24700'),
(7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24400'),
(8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24500'),
(9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24600'),
(10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24400'),
(11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24300'),
(12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26000'),
(13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85800'),
(14, 19, 'Maluku', 'Kota', 'Ambon', '97000'),
(15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21000'),
(16, 24, 'Papua', 'Kabupaten', 'Asmat', '99700'),
(17, 1, 'Bali', 'Kabupaten', 'Badung', '80361'),
(18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71400'),
(19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76100'),
(20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23000'),
(21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35000'),
(22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40000'),
(23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40000'),
(24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40000'),
(25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94791'),
(26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94791'),
(27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33200'),
(28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33300'),
(29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33700'),
(30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33600'),
(31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69100'),
(32, 1, 'Bali', 'Kabupaten', 'Bangli', '80600'),
(33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70600'),
(34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46300'),
(35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70700'),
(36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70000'),
(37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53400'),
(38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92400'),
(39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55700'),
(40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30758'),
(41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53100'),
(42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68400'),
(43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70500'),
(44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73700'),
(45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73600'),
(46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73800'),
(47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90700'),
(48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29400'),
(49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51200'),
(50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36600'),
(51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21200'),
(53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93700'),
(54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17000'),
(55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17000'),
(56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33400'),
(57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33400'),
(58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85700'),
(59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24500'),
(60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28700'),
(61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79200'),
(62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38000'),
(63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38500'),
(64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38000'),
(65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38600'),
(66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77300'),
(67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98100'),
(68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84100'),
(69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84100'),
(70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20700'),
(71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29100'),
(72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24200'),
(73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95500'),
(74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66100'),
(75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66100'),
(76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58200'),
(77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96200'),
(78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16000'),
(79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16000'),
(80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62100'),
(81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95700'),
(82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95700'),
(83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95700'),
(84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95700'),
(85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93700'),
(86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68200'),
(87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92552'),
(88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96184'),
(89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75300'),
(90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99600'),
(91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57300'),
(92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52200'),
(93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26100'),
(94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81100'),
(95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92500'),
(96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77200'),
(97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37200'),
(98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94500'),
(99, 19, 'Maluku', 'Kabupaten', 'Buru', '97500'),
(100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97500'),
(101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93700'),
(102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93600'),
(103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46200'),
(104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43200'),
(105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53200'),
(106, 3, 'Banten', 'Kota', 'Cilegon', '42400'),
(107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40500'),
(108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45100'),
(109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45100'),
(110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22200'),
(111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98700'),
(112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20500'),
(113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59500'),
(114, 1, 'Bali', 'Kota', 'Denpasar', '80000'),
(115, 9, 'Jawa Barat', 'Kota', 'Depok', '16400'),
(116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27600'),
(117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98800'),
(118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84200'),
(119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94351'),
(120, 26, 'Riau', 'Kota', 'Dumai', '28800'),
(121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31500'),
(122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86300'),
(123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91700'),
(124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98600'),
(125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86200'),
(126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44100'),
(127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24600'),
(128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80500'),
(129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96100'),
(130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96100'),
(131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96100'),
(132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92100'),
(133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61100'),
(134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58152'),
(135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55800'),
(136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74500'),
(137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22800'),
(138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97700'),
(139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97700'),
(140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97800'),
(141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97800'),
(142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97700'),
(143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71200'),
(144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71300'),
(145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71400'),
(146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22400'),
(147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29200'),
(148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29300'),
(149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45200'),
(150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98700'),
(151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11000'),
(152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10000'),
(153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12000'),
(154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13000'),
(155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14000'),
(156, 8, 'Jambi', 'Kota', 'Jambi', '36000'),
(157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99000'),
(158, 24, 'Papua', 'Kota', 'Jayapura', '99000'),
(159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99500'),
(160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68100'),
(161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82200'),
(162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92300'),
(163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59400'),
(164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61400'),
(165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98654'),
(166, 26, 'Riau', 'Kabupaten', 'Kampar', '28400'),
(167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73500'),
(168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78700'),
(169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57700'),
(170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80800'),
(171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41300'),
(172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29600'),
(173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22100'),
(174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74400'),
(175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38000'),
(176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78800'),
(177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54300'),
(178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64100'),
(179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64100'),
(180, 24, 'Papua', 'Kabupaten', 'Keerom', '99000'),
(181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51300'),
(182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93000'),
(183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39172'),
(184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29700'),
(185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97600'),
(186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25391'),
(187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28700'),
(188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95800'),
(189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14530'),
(190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95800'),
(191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97700'),
(192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95800'),
(193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98200'),
(194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37100'),
(195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78800'),
(196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57400'),
(197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80700'),
(198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93500'),
(199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93500'),
(200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93400'),
(201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93000'),
(202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93000'),
(203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72100'),
(204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95700'),
(205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74100'),
(206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74300'),
(207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29500'),
(208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78000'),
(209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59300'),
(210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55600'),
(211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45500'),
(212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85000'),
(213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85000'),
(214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75000'),
(215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75500'),
(216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75556'),
(217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21400'),
(218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21400'),
(219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21400'),
(220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31400'),
(221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74100'),
(222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '62200'),
(223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '35000'),
(224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35000'),
(225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34100'),
(226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34100'),
(227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34500'),
(228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '79357'),
(229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20800'),
(230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24400'),
(231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99500'),
(232, 3, 'Banten', 'Kabupaten', 'Lebak', '42300'),
(233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39200'),
(234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86600'),
(235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24300'),
(236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26200'),
(237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29800'),
(238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83363'),
(239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83500'),
(240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83600'),
(241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83300'),
(242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31600'),
(243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67300'),
(244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91900'),
(245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '91900'),
(246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '91900'),
(247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63100'),
(248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63100'),
(249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56100'),
(250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56100'),
(251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63300'),
(252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45400'),
(253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91400'),
(254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90000'),
(255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65100'),
(256, 11, 'Jawa Timur', 'Kota', 'Malang', '65100'),
(257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77154'),
(258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97000'),
(259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97500'),
(260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97600'),
(261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97600'),
(262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91363'),
(263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99500'),
(264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99500'),
(265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91500'),
(266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91500'),
(267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95000'),
(268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22919'),
(269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86500'),
(270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86753'),
(271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86500'),
(272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98300'),
(273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98300'),
(274, 24, 'Papua', 'Kabupaten', 'Mappi', '99000'),
(275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90500'),
(276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83000'),
(277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '99000'),
(278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20000'),
(279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78672'),
(280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37300'),
(281, 24, 'Papua', 'Kabupaten', 'Merauke', '99600'),
(282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34500'),
(283, 18, 'Lampung', 'Kota', 'Metro', '34100'),
(284, 24, 'Papua', 'Kabupaten', 'Mimika', '99900'),
(285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95600'),
(286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95000'),
(287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95000'),
(288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95000'),
(289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61300'),
(290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61300'),
(291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94000'),
(292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31300'),
(293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36365'),
(294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38365'),
(295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93600'),
(296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73900'),
(297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30700'),
(298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31600'),
(299, 24, 'Papua', 'Kabupaten', 'Nabire', '98800'),
(300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23600'),
(301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86400'),
(302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29700'),
(303, 24, 'Papua', 'Kabupaten', 'Nduga', '99500'),
(304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86400'),
(305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64400'),
(306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63200'),
(307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22800'),
(308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22800'),
(309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22800'),
(310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22800'),
(311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77182'),
(312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30600'),
(313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30600'),
(314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32100'),
(315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32100'),
(316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32100'),
(317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63500'),
(318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25000'),
(319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22700'),
(320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22700'),
(321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27100'),
(322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25500'),
(323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22700'),
(324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31500'),
(325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22200'),
(326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73000'),
(327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30000'),
(328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91900'),
(329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94000'),
(330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69300'),
(331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42200'),
(332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46396'),
(333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90600'),
(334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33100'),
(335, 24, 'Papua', 'Kabupaten', 'Paniai', '98700'),
(336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91100'),
(337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25500'),
(338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94371'),
(339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26300'),
(340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26300'),
(341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76200'),
(342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67100'),
(343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67100'),
(344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59100'),
(345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26200'),
(346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98300'),
(347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99500'),
(348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51100'),
(349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51100'),
(350, 26, 'Riau', 'Kota', 'Pekanbaru', '28000'),
(351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28300'),
(352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52300'),
(353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21100'),
(354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76141'),
(355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35000'),
(356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '34574'),
(357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25600'),
(358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24100'),
(359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24100'),
(360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91200'),
(361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96200'),
(362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91300'),
(363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63400'),
(364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78000'),
(365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78000'),
(366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94600'),
(367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31100'),
(368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35373'),
(369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67200'),
(370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67200'),
(371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '73561'),
(372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(373, 24, 'Papua', 'Kabupaten', 'Puncak', '98900'),
(374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98900'),
(375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53300'),
(376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41100'),
(377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54100'),
(378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98400'),
(379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39100'),
(380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59200'),
(381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28991'),
(382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28455'),
(383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85974'),
(384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23500'),
(385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50700'),
(387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75000'),
(388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79400'),
(389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22300'),
(390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69200'),
(391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78500'),
(392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37300'),
(394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27400'),
(395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '78582'),
(396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92800'),
(397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38000'),
(398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50000'),
(399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50000'),
(400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97500'),
(401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97500'),
(402, 3, 'Banten', 'Kabupaten', 'Serang', '42100'),
(403, 3, 'Banten', 'Kota', 'Serang', '42100'),
(404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20000'),
(405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74200'),
(406, 26, 'Riau', 'Kabupaten', 'Siak', '28686'),
(407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22500'),
(408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91600'),
(409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61200'),
(410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94000'),
(411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27500'),
(412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86100'),
(413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21100'),
(414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23000'),
(415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79100'),
(416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92600'),
(417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78600'),
(418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68300'),
(419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55500'),
(420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27300'),
(421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27300'),
(422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27300'),
(423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90800'),
(424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98400'),
(425, 25, 'Papua Barat', 'Kota', 'Sorong', '98400'),
(426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98400'),
(427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57200'),
(428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41200'),
(429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '23782'),
(430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43100'),
(431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43100'),
(432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74172'),
(433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57500'),
(434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87200'),
(435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87200'),
(436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87200'),
(437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87100'),
(438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84300'),
(439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84300'),
(440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45300'),
(441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69400'),
(442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37100'),
(443, 24, 'Papua', 'Kabupaten', 'Supiori', '98100'),
(444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60000'),
(445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57100'),
(446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71500'),
(447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82100'),
(448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92200'),
(449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98400'),
(450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77152'),
(451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91800'),
(452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '70000'),
(453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27200'),
(454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70800'),
(455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15000'),
(456, 3, 'Banten', 'Kota', 'Tangerang', '15000'),
(457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15000'),
(458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35000'),
(459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21300'),
(460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36500'),
(461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36500'),
(462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29100'),
(463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22700'),
(464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22500'),
(465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22400'),
(466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71100'),
(467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77100'),
(468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46100'),
(469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46100'),
(470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20600'),
(471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37200'),
(472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52100'),
(473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52100'),
(474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98300'),
(475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98300'),
(476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56200'),
(477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97700'),
(478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97800'),
(479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85500'),
(480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85600'),
(481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22300'),
(482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94600'),
(483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94500'),
(484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99562'),
(485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95362'),
(486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91890'),
(487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66300'),
(488, 19, 'Maluku', 'Kota', 'Tual', '97600'),
(489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62300'),
(490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34500'),
(491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34500'),
(492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66200'),
(493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90900'),
(494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93700'),
(495, 24, 'Papua', 'Kabupaten', 'Waropen', '98200'),
(496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '35000'),
(497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57600'),
(498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56300'),
(499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99500'),
(500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99500'),
(501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer`
--

CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `date_join` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer_address`
--

CREATE TABLE `cs_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `factory`
--

CREATE TABLE `factory` (
  `id` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `factory`
--

INSERT INTO `factory` (`id`, `nama`, `alamat`, `telp`, `email`, `peta`) VALUES
(3, 'FACTORY BOJONEGORO', 'Jl. Mahakam 225\r\nBojonegoro 20456\r\nEast Java', '+62 31 5015588', 'factory@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8424071457857!2d111.89208239273015!3d-7.144214893503072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7782210551c057%3A0x247ac1865eaf2a1a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Bojonegoro%2C+Bojonegoro%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1449301118786'),
(4, 'OFFICE SURABAYA', 'Jl. Ngagel Jaya 12\r\nSurabaya 60456\r\nEast Java', '+62 31 5015588', 'office@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8424071457857!2d111.89208239273015!3d-7.144214893503072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7782210551c057%3A0x247ac1865eaf2a1a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Bojonegoro%2C+Bojonegoro%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1449301118786'),
(5, 'OFFICE JAKARTA', 'Jl. Mahakam 225\r\nSidoarjo 20456\r\nEast Java', '+62 31 5015588', 'realfood@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1978.075813030622!2d112.71914446656403!3d-7.448471635049679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7e6b5e9bccdbd%3A0xfb1776699d75a67a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Sidoarjo%2C+Sidoarjo%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1450785636022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `sort`) VALUES
(4, 'Apa manfaat utama produk Xado Revitalizant?', 'Xado Revitalizant dapat memberikan perlindungan pada mesin agar terjaga dari keausan sehingga mempermudah anda dalam merawat mesin', 1),
(5, 'Apa yang membedakan produk Xado dengan produk – produk additive yang lain?', 'Xado bukanlah additive, namun merupakan produk revitalizant. Additive memperbaiki kulitas oli sedangkan Xado memperbaiki kualiatas mesin. Additive bercampur dengan oli sedangkan Xado hanya menggunakan oli sebagai media untuk bereaksi dengan lapisan mesin yang mengalami keausan', 2),
(6, 'Apakah produk Xado Revitalizant dapat digunakan untuk merek oli apa saja?', 'Bisa, karena Xado tidak bereaksi dengan oli sehingga tidak berpengaruh jika menggunakan merek oli apa saja selama oli yang digunakan masih baru', 3),
(7, 'Produk Xado dapat digunakan untuk mesin apa saja?', 'Xado dapat digunakan untuk mesin apa saja selama di dalam mesin tersebut terdapat komponen dua logam yang bergesekan dengan temperature yang tinggi serta menggunakan pelumasan. Misalnya : Mesin kendaraan bermotor, Genset, Kompresor, Hidrolis, Gearbox, Alat pemotong rumput dan lain – lain', 4),
(8, 'Apakah  setiap ganti oli saya harus memasukkan produk Xado kembali', 'Tidak perlu, karena produk Xado akan tetap melekat dalam permukaan mesin selama 100.000 km jika  setelah memasukkan produk Xado penggantian oli dilakukan setelah 4.000 km. Pada kilometer tersebut proses revitalisasi sudah sempurna sehingga produk Xado tidak akan ikut terbuang meskipun dilakukan pergantian oli yang berulang – ulang', 5),
(9, 'Apa yang membuat produk Xado tetap melekat pada permukaan mesin meskipun oli di buang?', 'Reviltalizant bekerja dengan prinsip nanopartikel. Pada saat temperatur dan tekanan tinggi produk Xado bereaksi dengan logam permukaan mesin membentuk karbida logam yang meresap ke permukaan logam dengan ukuran yang sangat kecil (nanometer)', 6),
(10, 'Apakah produk Xado Revitalizant bisa digunakan untuk bahan bakar solar?', 'Bisa, Xado memiliki berbagai macam produk yang digunakan untuk bahan bakar bensin, solar dan gas (BBG)', 7),
(11, 'Apakah produk Xado bisa menghemat bahan bakar?', 'Prinsip utama produk Xado adalah membentuk lapisan baru pada permukaan mesin sehingga dengan usaha yang sama dengan sebelumnya (putaran) mesin bekerja dengan tenaga yang lebih, maka terjadilah penghematan bahan bakar.', 8),
(12, 'Apa yang membedakan antara Xado One Stage dengan AMC New Car atau AMC Maximum?', 'Pada dasarnya Xado One Stage dan AMC memiliki kandungan Revitlaizant yang sama, yang menjadi perbedaan adalah dalam AMC terdapat dua zat lain yaitu metal conditioner dan sliding agent yang membuat proses revitalisasi jadi lebih cepat. Sedangkan untuk perbedaan AMC new Car dengan Maximum adalah jika New car digunakan untuk mesin mobil yang odometernya dibawah 20.000 km sedangkan Maximum digunakan untuk mobil dengan odometer lebih dari 20.000 km', 9),
(13, 'Odometer mobil saya adalah 150.000 km, apakah masih bisa menggunakan produk Xado Revitalizant?', 'Bisa, namun karena odometer telah mencapai 150.000 yang dapat digolongkan mesin yang lama maka sebelum dimasukkan produk AMC Maximum, sistem pelumasannya harus di bersihkan dengan produk Vitaflush demi menjamin keefektifan Revitalizant', 10),
(14, 'JIka saya sudah mengganti oli dan sudah berjalan 600 km apakah masih bisa dimasukkan produk Xado tanpa mengganti oli baru?', 'Bisa, selama odometer belum mencapai 1000 km maka bisa dimasukkan produk Xado Revitalizant tanpa mengganti oli', 11),
(15, 'Jika kendaran saya mengalami kebocoran oli apakah bisa bisa ditanggulangi oleh produk Xado?', 'Bisa, selama kebocoran oli tersebut tidak lebih dari 15% selama jarak tempuh 1000 km dan kebocoran tidak terjadi pada gasket atau seal – sealnya', 12),
(16, 'Jika asap putih sudah keluar dari saluran pembuangan apakah masih bisa ditanggulangi dengan produk Xado?', 'Biasanya jika sudah mengeluarkan asap berwarna putih pekat maka kebocoran telah lebih dari 15% maka produk Xado tidak dapat menganggulangi kebocoran mesin', 13),
(17, 'Mesin mobil saya mengalami “kepincangan”, apakah masih bisa digunakan produk Xado?', 'Produk Xado hanya dapat mengatasi problematika mesin yang sederhana, jika mesin sudah mengalami kepincangan disarankan untuk memeperbaiki sistem di dalam silinder terlebih dahulu, lalu setelah itu di masukkan produk Xado untuk menjaga mesin agar tidak terjadi kepincangan kembali', 14),
(18, 'Apakah petroltank dapat merubah premium yang kita pakai menjadi pertamax?', 'Prinsip utama petroltank adalah membersihkan zat pengotor pada bahan bakar dan saluran  bahan bakar sehingga dapat memperbaiki kualitas premium namun tidak untuk menaikkan nilai oktan. Jadi premium menjadi lebih bersih namun tidak berubah jadi pertamax', 15),
(19, 'Apakah ada produk Xado untuk menaikkan nilai oktan dan nilai cetan?', 'Ada, Octane Booster dapat menaikkan nilai oktan hingga 6 poin, sedangkan Cetane Booster dapat menaikkan nilai cetane hingga 7 poin', 16),
(20, 'Apakah terdapat produk Xado untuk sepeda motor dua tak? Dan bagaimana cara penggunaannya?', 'Produk Xado untuk motor adalah Small Engine, dapat digunakan baik untuk 4 tak ataupun dua tak. Cara penggunaannya adalah untuk 4 tak produk xado di masukkan pada tabung pengisian oli sedangkan untuk 2 tak produk Xado dimasukkan ke dalam tabung bahan bakar karena dalam 2 tak oli bercampur dengan bahan bakar', 17),
(21, 'Apakah perbedaan oli Xado dengan merek – merek oli yang lain?', 'Di dalam produk xado terdapat revitalizant, sehingga oli Xado tidak hanya berfungsi sebagai pelumas tapi juga berfungsi sebagai pelindung dari keausan. Oli Xado juga memiliki umur pakai yang lebih lama dibandingkan dengan oli yang lain', 18),
(22, 'Apakah saya hanya memasukkan produk Xado Revitalizant tanpa perlu menggunakan oli khusus Xado?', 'Karena pada dasarnya Xado Revitalizant dapat digunakan dapat digunakan untuk semua merek oli maka Xado revitalizant bisa digunakan tanpa perlu menggunakan oli khusus Xado, namun agar perlindungan kendaraan anda lebih maksimal maka kami merekomendasikan untuk menggunakan oli Xado juga', 19),
(23, 'Apakah Xado dapat di gunakan untuk mesin – mesin industri?', 'Kami memiliki produk untuk mesin – mesin industry seperti XGR for Compresor, XGR 3 Stage dan XGR 1 stage untuk genset dan alat – alat berat serta XGR for Hidrolics untuk mesin – mesin hidrolis', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery`
--

CREATE TABLE `gal_gallery` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `orientation` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `product_id` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery`
--

INSERT INTO `gal_gallery` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `city`, `harga`, `orientation`, `color`, `image2`, `product_id`) VALUES
(6, 0, '46a1a-HOSE 1JK-NAVY-1 (1268x730).jpg', 1, '2017-02-22 22:33:00', '2018-12-07 15:37:25', 'deoryzpandu@gmail.com', 'info@markdesign.net', '', '', 0, 0, '', '', '4'),
(9, 0, 'c1446-getsn_gall.jpg', 1, '2018-09-22 08:37:22', '2018-11-21 17:16:29', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '5'),
(10, 0, '728fb-getsn_gall.jpg', 1, '2018-11-21 17:16:49', '2018-11-21 17:16:59', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '3'),
(11, 0, 'b3d2b-HOSE 1JK-NAVY-1 (1268x730).jpg', 1, '2018-12-07 15:32:19', '2018-12-07 15:34:45', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_description`
--

CREATE TABLE `gal_gallery_description` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `sub_title_2` text NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery_description`
--

INSERT INTO `gal_gallery_description` (`id`, `gallery_id`, `language_id`, `title`, `sub_title`, `sub_title_2`, `content`) VALUES
(8, 1, 2, 'Connecting Souls', 'PRE WEDDING OF JAMES & HANNAH', '', '<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat  eu magna id laoreet. Donec accumsan mauris congue consectetur congue.  Morbi rutrum ipsum nec ligula convallis viverra. Fusce vehicula  efficitur nisl in aliquam. Nullam non dictum ligula. Nunc in orci  viverra, consequat sapien ac, auctor erat. Sed rutrum tincidunt dictum.  Maecenas pharetra lobortis volutpat. Cras euismod ultricies nisl vitae  bibendum. Vestibulum eget lorem a sem aliquet mattis id sodales purus.  Praesent finibus aliquam laoreet. Vivamus vel tortor nec justo mattis  venenatis. Fusce varius tellus sit amet purus varius tempus.\r\n</p>\r\n<p>\r\n	    Donec enim lectus, condimentum a fermentum  eget, volutpat sit amet nisl. Nunc sit amet enim sagittis, congue nunc  id, euismod nulla. Nullam porttitor mi tortor, vitae vulputate leo  egestas vel. Pellentesque convallis vestibulum nisl pretium hendrerit.  Donec egestas, mauris ut molestie posuere, mauris mauris porta libero,  tristique imperdiet turpis nisl sed arcu. Quisque at augue non felis  facilisis semper ac a orci. Cras porta nulla consectetur arcu finibus  blandit. Mauris sodales, risus sit amet dictum cursus, orci lorem  egestas dui, maximus viverra tortor odio imperdiet quam. Donec placerat,  mi eu vestibulum luctus, augue metus consequat enim, varius accumsan  quam erat eleifend ante. Fusce porta ipsum vitae nibh interdum, vel  elementum odio aliquet. Ut dui tortor, convallis eget finibus vitae,  malesuada sed justo. Mauris tempor in nibh quis sodales.\r\n</p>'),
(9, 2, 2, 'Connecting Souls', 'PRE WEDDING OF JAMES & HANNAH', '', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quaerat deserunt quod dignissimos consectetur id atque maxime at natus, ipsum. Eaque adipisci sit blanditiis error. Perspiciatis debitis ducimus doloribus odit animi doloremque dolore, laboriosam commodi voluptates nobis similique optio sunt.\r\n</p>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic suscipit aperiam repellendus minima enim ipsa iure minus ab velit! At nam, ducimus blanditiis earum quis ad neque, voluptates aspernatur veritatis.\r\n</p>'),
(60, 3, 2, 'Soon', '', 'WE ARE STILL COOKING', '<p>\r\n	              We still cooking for finding the best taste &amp; ingriedients, get ready for Realfit new variant soon.\r\n</p>'),
(62, 4, 2, 'BARISTA WORSKHOP', 'SYDNEY, NSW', '', '<p>\r\n	               We still cooking for finding the best taste &amp; ingriedients, get ready for Realfit new variant soon.\r\n</p>'),
(57, 5, 2, 'CLASSIC', 'Drink With Purpose', 'Bird\'s Nest Daily Drink', '<p>\r\n	                            Bird\'s Nest Daily drink with Classic variant. Low calories because sweetened with natural stevia leaves\r\n</p>'),
(83, 10, 2, 'DDN21 Collection - The Urban Type 3', '', '', ''),
(84, 11, 2, 'HOSE', '', '', ''),
(74, 8, 2, 'New Product With Discount', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>'),
(73, 7, 2, 'Murah Hemat Tetep Gaya', 'Anda juga dapat menggunakan form online berikut untuk menyampaikan pesan anda. Staf layanan pelanggan Precise shoes akan segera merespon anda kembali.', '15 Juni - 9 July 2017', '<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>\r\n<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae  dolores labore explicabo, deserunt doloribus nulla delectus dignissimos  magni repellendus, officia.\r\n</p>'),
(81, 9, 2, 'DDN21 Collection - The Urban Type 2', '', '', ''),
(85, 6, 2, 'DDN21 Collection - The Urban Type ', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_image`
--

CREATE TABLE `gal_gallery_image` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery_image`
--

INSERT INTO `gal_gallery_image` (`id`, `gallery_id`, `image`) VALUES
(24, 1, '5a715-Bombay pre wedding shoot.jpg'),
(22, 1, '5a715-37b9e4e8-f39f-4e8d-b53a-0b43c2d632c7.jpg'),
(23, 1, '5a715-6815400-wedding-wallpaper.jpg'),
(25, 2, 'e4a80-Bombay pre wedding shoot.jpg'),
(26, 2, 'e4a80-PuChai-Prewedding-retouches-4.jpg'),
(27, 2, 'e4a80-PuChai-Prewedding-retouches-10.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_product_spot`
--

CREATE TABLE `home_product_spot` (
  `id` int(20) NOT NULL,
  `nama` text NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_product_spot`
--

INSERT INTO `home_product_spot` (`id`, `nama`, `product_id`) VALUES
(1, '<p><strong>DDN21 Collection</strong> - The Urban Hype\r\n</p>', 6),
(2, '<p><strong>DDN21 Collection</strong> - The Urban Type 2\r\n</p>', 2),
(3, '<p><strong>DDN21 Collection</strong> - The Urban Type 2\r\n</p>', 5),
(4, '<p>huji</p>', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_product`
--

CREATE TABLE `list_product` (
  `a` int(3) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` varchar(54) DEFAULT NULL,
  `d` varchar(17) DEFAULT NULL,
  `e` varchar(20) DEFAULT NULL,
  `f` varchar(11) DEFAULT NULL,
  `g` varchar(42) DEFAULT NULL,
  `h` varchar(73) DEFAULT NULL,
  `i` varchar(12) DEFAULT NULL,
  `j` int(6) DEFAULT NULL,
  `k` varchar(245) DEFAULT NULL,
  `l` varchar(18) DEFAULT NULL,
  `m` int(4) DEFAULT NULL,
  `o` int(7) DEFAULT NULL,
  `p` varchar(40) DEFAULT NULL,
  `q` varchar(67) DEFAULT NULL,
  `r` int(2) DEFAULT NULL,
  `s` varchar(37) DEFAULT NULL,
  `t` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-28 04:01:45'),
(2, 'info@markdesign.net', 'PrdCategoryController Create 34', '2018-08-28 04:04:06'),
(3, 'info@markdesign.net', 'PrdProduct Controller Create 1', '2018-08-28 04:12:42'),
(4, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-30 07:35:35'),
(5, 'info@markdesign.net', 'SlideController Update 14', '2018-08-30 07:36:25'),
(6, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-05 08:26:17'),
(7, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-10 08:39:10'),
(8, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-17 08:33:45'),
(9, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-18 06:27:52'),
(10, 'info@markdesign.net', 'Setting Update', '2018-09-18 07:47:44'),
(11, 'info@markdesign.net', 'Setting Update', '2018-09-18 07:53:06'),
(12, 'info@markdesign.net', 'Promo Controller Create 14', '2018-09-18 07:55:03'),
(13, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-18 08:04:08'),
(14, 'info@markdesign.net', 'CustomerController Update 5', '2018-09-18 08:32:04'),
(15, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-18 08:38:26'),
(16, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-20 03:48:22'),
(17, 'info@markdesign.net', 'ProductController Update 6', '2018-09-20 07:53:19'),
(18, 'info@markdesign.net', 'ProductController Update 7', '2018-09-20 07:54:41'),
(19, 'info@markdesign.net', 'ProductController Update 5', '2018-09-20 07:54:56'),
(20, 'info@markdesign.net', 'ProductController Update 4', '2018-09-20 07:55:03'),
(21, 'info@markdesign.net', 'ProductController Update 3', '2018-09-20 07:55:11'),
(22, 'info@markdesign.net', 'Setting Update', '2018-09-20 08:41:12'),
(23, 'info@markdesign.net', 'SlideController Update 14', '2018-09-20 08:59:19'),
(24, 'info@markdesign.net', 'SlideController Update 14', '2018-09-20 09:06:31'),
(25, 'info@markdesign.net', 'SlideController Update 14', '2018-09-20 09:10:12'),
(26, 'info@markdesign.net', 'GalleryController Update 6', '2018-09-20 09:27:43'),
(27, 'info@markdesign.net', 'GalleryController Update 6', '2018-09-20 09:46:10'),
(28, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 20:47:41'),
(29, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 20:53:59'),
(30, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 21:05:27'),
(31, 'info@markdesign.net', 'ProductController Update 6', '2018-09-21 21:19:31'),
(32, 'info@markdesign.net', 'ProductController Update 6', '2018-09-21 21:22:59'),
(33, 'info@markdesign.net', 'PromoHightlightController Create 1', '2018-09-21 21:59:12'),
(34, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 13:06:54'),
(35, 'info@markdesign.net', 'SlideController Update 14', '2018-09-21 14:23:48'),
(36, 'info@markdesign.net', 'SlideController Update 14', '2018-09-21 14:24:04'),
(37, 'info@markdesign.net', 'SlideController Update 14', '2018-09-21 14:24:33'),
(38, 'info@markdesign.net', 'PromoHightlightController Create 2', '2018-09-21 16:43:25'),
(39, 'info@markdesign.net', 'ProductController Update 7', '2018-09-22 01:35:25'),
(40, 'info@markdesign.net', 'ProductController Update 6', '2018-09-22 01:35:32'),
(41, 'info@markdesign.net', 'ProductController Update 5', '2018-09-22 01:35:39'),
(42, 'info@markdesign.net', 'ProductController Update 4', '2018-09-22 01:36:14'),
(43, 'info@markdesign.net', 'ProductController Update 3', '2018-09-22 01:36:22'),
(44, 'info@markdesign.net', 'ProductController Update 2', '2018-09-22 01:36:34'),
(45, 'info@markdesign.net', 'ProductController Update 1', '2018-09-22 01:36:40'),
(46, 'info@markdesign.net', 'Gallery Controller Create 9', '2018-09-22 01:38:38'),
(47, 'info@markdesign.net', 'ProductController Update 2', '2018-09-22 01:39:17'),
(48, 'info@markdesign.net', 'ProductController Update 5', '2018-09-22 03:51:36'),
(49, 'info@markdesign.net', 'PromoHightlightController Create 3', '2018-09-22 03:52:02'),
(50, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-22 05:14:16'),
(51, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-22 12:33:44'),
(52, 'info@markdesign.net', 'BankController Create 3', '2018-09-22 12:35:08'),
(53, 'info@markdesign.net', 'Setting Update', '2018-09-22 13:30:28'),
(54, 'info@markdesign.net', 'Setting Update', '2018-09-22 13:31:17'),
(55, 'info@markdesign.net', 'Setting Update', '2018-09-22 13:31:26'),
(56, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-24 08:02:08'),
(57, 'info@markdesign.net', 'Setting Update', '2018-09-24 08:14:35'),
(58, 'info@markdesign.net', 'Setting Update', '2018-09-24 08:14:38'),
(59, 'info@markdesign.net', 'Blog Controller Create 1', '2018-09-24 08:26:31'),
(60, 'info@markdesign.net', 'BlogController Update 1', '2018-09-24 08:37:29'),
(61, 'info@markdesign.net', 'Blog Controller Create 2', '2018-09-24 08:38:06'),
(62, 'info@markdesign.net', 'BlogController Update 2', '2018-09-24 10:06:24'),
(63, 'info@markdesign.net', 'BlogController Update 1', '2018-09-24 10:06:32'),
(64, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:29:38'),
(65, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:33:15'),
(66, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:33:43'),
(67, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:33:49'),
(68, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:34:37'),
(69, 'info@markdesign.net', 'Setting Update', '2018-09-25 03:03:41'),
(70, 'info@markdesign.net', 'Setting Update', '2018-09-25 03:07:29'),
(71, 'info@markdesign.net', 'Setting Update', '2018-09-25 07:54:13'),
(72, 'info@markdesign.net', 'Setting Update', '2018-09-25 07:54:40'),
(73, 'info@markdesign.net', 'Setting Update', '2018-09-25 07:54:52'),
(74, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 03:42:02'),
(75, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 03:56:28'),
(76, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 03:58:19'),
(77, 'info@markdesign.net', 'ProductController Update 6', '2018-09-28 04:13:16'),
(78, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 04:19:06'),
(79, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 04:19:18'),
(80, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 06:21:10'),
(81, 'info@markdesign.net', 'ProductController Update 4', '2018-09-28 06:24:52'),
(82, 'info@markdesign.net', 'ProductController Update 4', '2018-09-28 06:25:10'),
(83, 'info@markdesign.net', 'ProductController Update 3', '2018-09-28 06:28:45'),
(84, 'info@markdesign.net', 'ProductController Update 2', '2018-09-28 06:32:52'),
(85, 'info@markdesign.net', 'ProductController Update 1', '2018-09-28 06:37:17'),
(86, 'info@markdesign.net', 'PrdProduct Controller Create 8', '2018-09-28 06:47:44'),
(87, 'info@markdesign.net', 'PrdProduct Controller Create 9', '2018-09-28 06:51:29'),
(88, 'info@markdesign.net', 'PrdProduct Controller Create 10', '2018-09-28 07:02:00'),
(89, 'info@markdesign.net', 'PrdProduct Controller Create 11', '2018-09-28 07:07:20'),
(90, 'info@markdesign.net', 'PrdProduct Controller Create 12', '2018-09-28 07:10:21'),
(91, 'info@markdesign.net', 'PrdProduct Controller Create 13', '2018-09-28 07:17:49'),
(92, 'info@markdesign.net', 'PrdProduct Controller Create 14', '2018-09-28 07:22:30'),
(93, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:32:02'),
(94, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:32:22'),
(95, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:34:25'),
(96, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:34:32'),
(97, 'info@markdesign.net', 'PrdProduct Controller Create 15', '2018-09-28 07:37:40'),
(98, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 07:38:26'),
(99, 'info@markdesign.net', 'GalleryController Update 6', '2018-09-28 07:38:51'),
(100, 'info@markdesign.net', 'GalleryController Update 9', '2018-09-28 07:39:05'),
(101, 'info@markdesign.net', 'ProductController Update 13', '2018-09-28 07:39:59'),
(102, 'info@markdesign.net', 'ProductController Update 12', '2018-09-28 07:40:31'),
(103, 'info@markdesign.net', 'ProductController Update 12', '2018-09-28 07:40:38'),
(104, 'info@markdesign.net', 'ProductController Update 12', '2018-09-28 07:43:18'),
(105, 'info@markdesign.net', 'ProductController Update 11', '2018-09-28 07:44:04'),
(106, 'info@markdesign.net', 'ProductController Update 10', '2018-09-28 07:44:31'),
(107, 'info@markdesign.net', 'ProductController Update 9', '2018-09-28 07:45:15'),
(108, 'info@markdesign.net', 'ProductController Update 8', '2018-09-28 07:45:59'),
(109, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 07:46:43'),
(110, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 07:47:11'),
(111, 'info@markdesign.net', 'ProductController Update 6', '2018-09-28 07:47:56'),
(112, 'info@markdesign.net', 'ProductController Update 6', '2018-09-28 07:48:16'),
(113, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 07:49:16'),
(114, 'info@markdesign.net', 'ProductController Update 4', '2018-09-28 07:49:44'),
(115, 'info@markdesign.net', 'ProductController Update 3', '2018-09-28 07:50:19'),
(116, 'info@markdesign.net', 'ProductController Update 2', '2018-09-28 07:50:55'),
(117, 'info@markdesign.net', 'ProductController Update 1', '2018-09-28 07:51:11'),
(118, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 08:17:57'),
(119, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:26:50'),
(120, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:30:43'),
(121, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:50:37'),
(122, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:50:48'),
(123, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 10:06:26'),
(124, 'info@markdesign.net', 'Blog Controller Create 3', '2018-09-28 10:13:32'),
(125, 'info@markdesign.net', 'Blog Controller Create 4', '2018-09-28 10:17:19'),
(126, 'info@markdesign.net', 'Blog Controller Create 5', '2018-09-28 10:20:12'),
(127, 'info@markdesign.net', 'Blog Controller Create 6', '2018-09-28 10:23:27'),
(128, 'info@markdesign.net', 'BlogController Update 6', '2018-09-28 10:30:08'),
(129, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:30:21'),
(130, 'info@markdesign.net', 'BlogController Update 4', '2018-09-28 10:30:34'),
(131, 'info@markdesign.net', 'BlogController Update 3', '2018-09-28 10:30:46'),
(132, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:05'),
(133, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:19'),
(134, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:28'),
(135, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:38'),
(136, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-02 03:14:22'),
(137, 'info@markdesign.net', 'BlogController Update 3', '2018-10-02 03:27:03'),
(138, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 03:29:48'),
(139, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-02 04:58:55'),
(140, 'info@markdesign.net', 'Blog Controller Create 7', '2018-10-02 05:08:12'),
(141, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:08:31'),
(142, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:09:02'),
(143, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:09:32'),
(144, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:10:42'),
(145, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:10:53'),
(146, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:20:47'),
(147, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:22:36'),
(148, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:22'),
(149, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(150, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(151, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(152, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(153, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:24'),
(154, 'info@markdesign.net', 'Blog Controller Create 8', '2018-10-02 05:59:58'),
(155, 'info@markdesign.net', 'BlogController Update 8', '2018-10-02 06:01:18'),
(156, 'info@markdesign.net', 'BlogController Update 8', '2018-10-02 06:04:33'),
(157, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 06:04:54'),
(158, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 06:05:24'),
(159, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 06:05:25'),
(160, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 06:05:25'),
(161, 'info@markdesign.net', 'Blog Controller Create 9', '2018-10-02 06:09:37'),
(162, 'info@markdesign.net', 'BlogController Update 9', '2018-10-02 06:10:02'),
(163, 'info@markdesign.net', 'Blog Controller Create 10', '2018-10-02 06:16:42'),
(164, 'info@markdesign.net', 'BlogController Update 10', '2018-10-02 06:18:11'),
(165, 'info@markdesign.net', 'Blog Controller Create 11', '2018-10-02 06:20:57'),
(166, 'info@markdesign.net', 'Blog Controller Create 12', '2018-10-02 06:24:38'),
(167, 'info@markdesign.net', 'Blog Controller Create 13', '2018-10-02 06:26:30'),
(168, 'info@markdesign.net', 'BlogController Update 13', '2018-10-02 06:26:54'),
(169, 'info@markdesign.net', 'BlogController Update 13', '2018-10-02 06:29:43'),
(170, 'info@markdesign.net', 'BlogController Update 13', '2018-10-02 06:30:04'),
(171, 'info@markdesign.net', 'Blog Controller Create 14', '2018-10-02 06:32:18'),
(172, 'info@markdesign.net', 'BlogController Update 14', '2018-10-02 06:34:54'),
(173, 'info@markdesign.net', 'Blog Controller Create 15', '2018-10-02 06:38:44'),
(174, 'info@markdesign.net', 'Blog Controller Create 16', '2018-10-02 06:41:56'),
(175, 'info@markdesign.net', 'Blog Controller Create 17', '2018-10-02 07:02:58'),
(176, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-02 08:06:39'),
(177, 'info@markdesign.net', 'Slide Controller Create 20', '2018-10-02 08:20:47'),
(178, 'info@markdesign.net', 'Slide Controller Create 21', '2018-10-02 08:21:52'),
(179, 'info@markdesign.net', 'SlideController Update 14', '2018-10-02 08:22:14'),
(180, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-08 15:19:30'),
(181, 'info@markdesign.net', 'SlideController Update 14', '2018-10-08 15:20:00'),
(182, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-17 06:28:13'),
(183, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-18 07:50:56'),
(184, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-18 07:55:08'),
(185, 'info@markdesign.net', 'SlideController Update 20', '2018-10-18 07:59:25'),
(186, 'info@markdesign.net', 'SlideController Update 21', '2018-10-18 07:59:33'),
(187, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-19 10:37:56'),
(188, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-26 04:55:51'),
(189, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-02 09:57:30'),
(190, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 02:59:46'),
(191, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 03:56:16'),
(192, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 04:07:52'),
(193, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:15:43'),
(194, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:17:51'),
(195, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:19:27'),
(196, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:24:51'),
(197, 'info@markdesign.net', 'PromoHightlightController Create 4', '2018-11-21 05:25:51'),
(198, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 06:38:21'),
(199, 'info@markdesign.net', 'ProductController Update 6', '2018-11-21 06:53:10'),
(200, 'info@markdesign.net', 'ProductController Update 6', '2018-11-21 06:53:30'),
(201, 'info@markdesign.net', 'ProductController Update 6', '2018-11-21 06:54:00'),
(202, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 07:52:58'),
(203, 'info@markdesign.net', 'GalleryController Update 9', '2018-11-21 07:53:38'),
(204, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 10:16:20'),
(205, 'info@markdesign.net', 'GalleryController Update 9', '2018-11-21 10:16:29'),
(206, 'info@markdesign.net', 'GalleryController Update 6', '2018-11-21 10:16:39'),
(207, 'info@markdesign.net', 'Gallery Controller Create 10', '2018-11-21 10:16:59'),
(208, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-22 05:13:18'),
(209, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-30 03:57:29'),
(210, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 02:50:25'),
(211, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 04:49:15'),
(212, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 05:12:50'),
(213, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2018-12-07 05:30:44'),
(214, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 05:45:20'),
(215, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 08:29:56'),
(216, 'info@markdesign.net', 'Gallery Controller Create 11', '2018-12-07 08:34:45'),
(217, 'info@markdesign.net', 'GalleryController Update 6', '2018-12-07 08:37:25'),
(218, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2019-01-24 02:46:09'),
(219, 'deoryzpandu@gmail.com', 'Create Category 51', '2019-01-24 02:47:09'),
(220, 'deoryzpandu@gmail.com', 'Create Category 52', '2019-01-24 02:47:16'),
(221, 'deoryzpandu@gmail.com', 'Create Category 53', '2019-01-24 02:47:30'),
(222, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-01-24 03:10:03'),
(223, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-26 08:38:55'),
(224, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-26 09:44:07'),
(225, 'info@markdesign.net', 'PrdCategoryController Create 16', '2019-07-26 10:34:58'),
(226, 'info@markdesign.net', 'ProductController Update 32', '2019-07-26 10:39:41'),
(227, 'info@markdesign.net', 'BrandController Update 2', '2019-07-30 09:57:09'),
(228, 'info@markdesign.net', 'Setting Update', '2019-07-30 10:12:57'),
(229, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:19:23'),
(230, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:24:01'),
(231, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:27:29'),
(232, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:34:27'),
(233, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:34:33'),
(234, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:36:14'),
(235, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:36:52'),
(236, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:37:27'),
(237, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:37:30'),
(238, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:38:10'),
(239, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:38:33'),
(240, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:39:04'),
(241, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:40:28'),
(242, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:40:35'),
(243, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:40:55'),
(244, 'info@markdesign.net', 'SlideController Update 14', '2019-07-31 02:47:35'),
(245, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:48:18'),
(246, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:49:33'),
(247, 'info@markdesign.net', 'BrandController Update 2', '2019-07-31 02:51:27'),
(248, 'info@markdesign.net', 'Brand Controller Create 3', '2019-07-31 02:51:54'),
(249, 'info@markdesign.net', 'Brand Controller Create 4', '2019-07-31 02:52:19'),
(250, 'info@markdesign.net', 'Brand Controller Create 5', '2019-07-31 02:52:50'),
(251, 'info@markdesign.net', 'Brand Controller Create 6', '2019-07-31 02:53:16'),
(252, 'info@markdesign.net', 'Brand Controller Create 7', '2019-07-31 02:54:23'),
(253, 'info@markdesign.net', 'Brand Controller Create 8', '2019-07-31 02:54:46'),
(254, 'info@markdesign.net', 'Brand Controller Create 9', '2019-07-31 02:55:20'),
(255, 'info@markdesign.net', 'Brand Controller Create 10', '2019-07-31 02:55:54'),
(256, 'info@markdesign.net', 'Brand Controller Create 11', '2019-07-31 02:56:01'),
(257, 'info@markdesign.net', 'Brand Controller Create 12', '2019-07-31 02:56:13'),
(258, 'info@markdesign.net', 'Brand Controller Create 13', '2019-07-31 02:56:25'),
(259, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:56:37'),
(260, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:57:04'),
(261, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:57:52'),
(262, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:58:09'),
(263, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:59:01'),
(264, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:59:03'),
(265, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:16:14'),
(266, 'info@markdesign.net', 'Blog Controller Create 1', '2019-07-31 03:16:58'),
(267, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:17:10'),
(268, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:17:25'),
(269, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:19:29'),
(270, 'info@markdesign.net', 'BlogController Update 1', '2019-07-31 03:26:52'),
(271, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:28:17'),
(272, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:34:32'),
(273, 'info@markdesign.net', 'BlogController Update 1', '2019-07-31 03:35:39'),
(274, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:36:09'),
(275, 'info@markdesign.net', 'BlogController Update 1', '2019-07-31 03:37:30'),
(276, 'info@markdesign.net', 'Blog Controller Create 2', '2019-07-31 03:44:01'),
(277, 'info@markdesign.net', 'Blog Controller Create 3', '2019-07-31 04:01:05'),
(278, 'info@markdesign.net', 'Blog Controller Create 4', '2019-07-31 04:19:11'),
(279, 'info@markdesign.net', 'Blog Controller Create 5', '2019-07-31 04:29:16'),
(280, 'info@markdesign.net', 'Blog Controller Create 6', '2019-07-31 04:35:44'),
(281, 'info@markdesign.net', 'BlogController Update 5', '2019-07-31 04:37:18'),
(282, 'info@markdesign.net', 'BlogController Update 6', '2019-07-31 04:37:52'),
(283, 'info@markdesign.net', 'Blog Controller Create 7', '2019-07-31 04:45:58'),
(284, 'info@markdesign.net', 'Create Category 1', '2019-07-31 06:19:12'),
(285, 'info@markdesign.net', 'Blog Controller Create 8', '2019-07-31 06:20:52'),
(286, 'info@markdesign.net', 'Create Category 1', '2019-07-31 06:27:04'),
(287, 'info@markdesign.net', 'Create Category 3', '2019-07-31 06:31:02'),
(288, 'info@markdesign.net', 'Create Category 2', '2019-07-31 06:31:17'),
(289, 'info@markdesign.net', 'Blog Controller Create 9', '2019-07-31 06:34:20'),
(290, 'info@markdesign.net', 'Create Category 15', '2019-07-31 06:34:37'),
(291, 'info@markdesign.net', 'Create Category 13', '2019-07-31 06:39:49'),
(292, 'info@markdesign.net', 'Create Category 12', '2019-07-31 06:43:05'),
(293, 'info@markdesign.net', 'Blog Controller Create 10', '2019-07-31 06:45:55'),
(294, 'info@markdesign.net', 'Create Category 8', '2019-07-31 06:46:01'),
(295, 'info@markdesign.net', 'Create Category 7', '2019-07-31 06:47:30'),
(296, 'info@markdesign.net', 'Create Category 5', '2019-07-31 06:54:35'),
(297, 'info@markdesign.net', 'Blog Controller Create 11', '2019-07-31 06:55:26'),
(298, 'info@markdesign.net', 'BlogController Update 8', '2019-07-31 06:58:50'),
(299, 'info@markdesign.net', 'BlogController Update 10', '2019-07-31 06:59:08'),
(300, 'info@markdesign.net', 'Create Category 10', '2019-07-31 06:59:19'),
(301, 'info@markdesign.net', 'BlogController Update 11', '2019-07-31 06:59:43'),
(302, 'info@markdesign.net', 'Create Category 6', '2019-07-31 07:03:44'),
(303, 'info@markdesign.net', 'Blog Controller Create 12', '2019-07-31 07:05:17'),
(304, 'info@markdesign.net', 'Create Category 4', '2019-07-31 07:12:41'),
(305, 'info@markdesign.net', 'Create Category 9', '2019-07-31 07:22:34'),
(306, 'info@markdesign.net', 'Create Category 11', '2019-07-31 07:25:55'),
(307, 'info@markdesign.net', 'Create Category 14', '2019-07-31 07:37:59'),
(308, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-28 09:15:16'),
(309, 'info@markdesign.net', 'Create Category 1', '2019-08-28 09:15:27'),
(310, 'info@markdesign.net', 'Create Category 2', '2019-08-28 09:15:43'),
(311, 'info@markdesign.net', 'Create Category 3', '2019-08-28 09:15:49'),
(312, 'info@markdesign.net', 'Create Category 4', '2019-08-28 09:15:54'),
(313, 'info@markdesign.net', 'Create Category 5', '2019-08-28 09:15:58'),
(314, 'info@markdesign.net', 'Create Category 6', '2019-08-28 09:16:03'),
(315, 'info@markdesign.net', 'Create Category 7', '2019-08-28 09:16:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `me_member`
--

CREATE TABLE `me_member` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `me_member`
--

INSERT INTO `me_member` (`id`, `acc_number`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `type`) VALUES
(5, '', 'ibnudrift@gmail.com', 'Ibnu', 'Fajar', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-28 04:16:03', 0, 1, '', '082218129895', 'jl. sawo 1a / 2 kel. bringin, kec. sambikerep, 60218', 'surabaya', 'Jawa Timur', '60218', ''),
(17, '', 'suwargo.nixon@gmail.com', 'nixon', '', 'f474c44d4b0b07d21a2dbf707a5ef619e1751992', '2018-10-11 08:16:45', 0, 1, '', '08133123123123', 'asdfkjnsdf', 'sdjfnsdjf', 'sdkfnsdjfn', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order`
--

CREATE TABLE `or_order` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `payment_first_name` varchar(128) NOT NULL,
  `payment_last_name` varchar(128) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `shipping_first_name` varchar(128) NOT NULL,
  `shipping_last_name` varchar(128) NOT NULL,
  `shipping_company` varchar(128) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(128) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_area` int(11) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `currency_value` decimal(15,4) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `delivery_from` varchar(100) NOT NULL,
  `delivery_to` varchar(100) NOT NULL,
  `delivery_package` varchar(100) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `delivery_weight` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `tracking_id` varchar(200) NOT NULL,
  `is_read` int(11) NOT NULL,
  `grand_total` decimal(13,2) NOT NULL,
  `promo_name` varchar(100) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `promo_kode` varchar(50) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount` decimal(13,2) NOT NULL,
  `discount_total` decimal(13,2) NOT NULL,
  `insertId` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_history`
--

CREATE TABLE `or_order_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_product`
--

CREATE TABLE `or_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(256) NOT NULL,
  `kode` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_name` varchar(256) NOT NULL,
  `attributes_price` decimal(15,4) NOT NULL,
  `berat` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_status`
--

CREATE TABLE `or_order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `or_order_status`
--

INSERT INTO `or_order_status` (`order_status_id`, `name`) VALUES
(2, 'Processing'),
(3, 'Shipped'),
(7, 'Canceled'),
(5, 'Complete'),
(8, 'Denied'),
(9, 'Canceled Reversal'),
(10, 'Failed'),
(11, 'Refunded'),
(12, 'Reversed'),
(13, 'Chargeback'),
(1, 'Pending'),
(16, 'Voided'),
(15, 'Processed'),
(14, 'Expired'),
(17, 'Paid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf`
--

CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `size` decimal(10,3) NOT NULL,
  `sort` int(11) NOT NULL,
  `date_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pdf`
--

INSERT INTO `pdf` (`id`, `category_id`, `nama`, `image`, `file`, `size`, `sort`, `date_input`) VALUES
(5, 0, 'Coba PDF', 'ef25b-per.jpg', 'Doc1 - Copy2.pdf', '78306.000', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_bank`
--

CREATE TABLE `pg_bank` (
  `id` int(25) NOT NULL,
  `id_bank` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `rekening` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_bank`
--

INSERT INTO `pg_bank` (`id`, `id_bank`, `nama`, `rekening`) VALUES
(3, 2, 'PT. Jackson Shoes Indonesia', 123456789);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog`
--

CREATE TABLE `pg_blog` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(225) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog`
--

INSERT INTO `pg_blog` (`id`, `topik_id`, `image`, `link`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`) VALUES
(1, 2, '28475-Untitled-2.jpg', NULL, 1, '2019-07-31 09:49:44', '2019-07-31 10:37:30', 'info@markdesign.net', 'info@markdesign.net', 0),
(2, 2, '6f50b-Untitled-1.jpg', NULL, 1, '2019-07-31 10:37:39', '2019-07-31 10:44:01', 'info@markdesign.net', 'info@markdesign.net', 0),
(3, 2, 'f650f-Untitled-3.jpg', NULL, 1, '2019-07-31 10:44:09', '2019-07-31 11:01:05', 'info@markdesign.net', 'info@markdesign.net', 0),
(4, 2, '0078b-Untitled-4.jpg', NULL, 1, '2019-07-31 11:02:29', '2019-07-31 11:19:11', 'info@markdesign.net', 'info@markdesign.net', 0),
(5, 2, '6dec7-curbed.jpg', NULL, 1, '2019-07-31 11:19:20', '2019-07-31 11:37:18', 'info@markdesign.net', 'info@markdesign.net', 0),
(6, 2, '10978-Untitled-6.jpg', NULL, 1, '2019-07-31 11:29:20', '2019-07-31 11:37:52', 'info@markdesign.net', 'info@markdesign.net', 0),
(7, 2, '17f3b-Untitled-7.jpg', NULL, 1, '2019-07-31 11:43:24', '2019-07-31 11:45:58', 'info@markdesign.net', 'info@markdesign.net', 0),
(8, 2, 'f6237-Untitled-8.jpg', NULL, 1, '2019-07-31 13:15:25', '2019-07-31 13:58:50', 'info@markdesign.net', 'info@markdesign.net', 0),
(9, 2, 'c2810-Untitled-9.jpg', NULL, 1, '2019-07-31 13:20:56', '2019-07-31 13:34:20', 'info@markdesign.net', 'info@markdesign.net', 0),
(10, 2, '0deaa-Untitled-10.jpg', NULL, 1, '2019-07-31 13:34:26', '2019-07-31 13:59:08', 'info@markdesign.net', 'info@markdesign.net', 0),
(11, 2, '2cc09-Untitled-11.jpg', NULL, 1, '2019-07-31 13:46:01', '2019-07-31 13:59:43', 'info@markdesign.net', 'info@markdesign.net', 0),
(12, 2, '05085-Untitled-12.jpg', NULL, 1, '2019-07-31 14:04:58', '2019-07-31 14:05:17', 'info@markdesign.net', 'info@markdesign.net', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog_description`
--

CREATE TABLE `pg_blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `quote` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog_description`
--

INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(4, 1, 2, '11 The Most Important Building Materials You Need to Know', '<p>Owning your own home is a dream that almost everyone has. The price is not cheap and it takes a long time to realize the dream. Therefore you must pay attention to the building material used to build it. Make sure everything is quality so that the house can last for a long time.</p><p>At least know the 11 most important building materials below!</p><p>1. Brick building material</p><p>The first building material was red brick. The price is quite expensive compared to the replacement material such as brick, but for its strength no need to doubt. The size is large and medium so that it can be adjusted to the model of the house to be built.</p><p>2. Don\'t forget cement</p><p>The cement building material functions to glue the bricks so that they can become sturdy walls. Cement is also used to glue tile floors. For cement mixing, you need a comparison between the water and the right cement so that it can glue well.</p><p>3. Sand is also important</p><p>Sand building material serves to mix cement. Good sand usually has a sharp grain shape because it is stronger for a mixture of brick or foundation adhesive. While choosing sand, try clenching it. If it clots, the sand is of less quality. Also avoid choosing sand with a mud content of more than 5%</p><p>4. Concrete iron building materials</p><p>Building material in the form of iron concrete serves as a framework for construction of houses. The size of the concrete iron varies from 10 mm to 12 m. There are types that are plain, threaded, and canal shaped. This concrete iron frame is then filled with cement and sand dough.</p><p>5. Wood is also used as building material</p><p>Wooden building materials are still popular as a house frame. There are many types of wood that can be used to build houses, but the best are usually from Kalimantan, such as Rasamala camphor wood and Samarinda camphor.</p><p>If you don\'t find this wood, choose another wood with no more than 20% water content. If necessary, make sure the wood has passed the oven process so that the wood is not easily weathered.</p><p>6. The next building material is tile</p><p>A sturdy house building will not be complete if there is no tile building material that serves to protect the occupants of the house from the heat of the sun and rain. In general, tiles are made from clay. This building material has very strong durability and is not easily weathered due to weather changes so it does not need to be replaced until a dozen or even decades into the future.</p><p>7. Plywood is also very popular</p><p>Building materials in the form of plywood are usually used as a cover for the ceiling or ceiling of the house. Thus the ceiling looks neater, the cables are messy and the roof frame is not visible. Plywood on the ceiling can also be decorated with beautiful paint or carvings.</p><p>8. The role of nails that can\'t be forgotten</p><p>What is the meaning of using wood and plywood without the nail building material. This nail serves to connect wood and plywood so that the house building becomes stronger. Nails are also often used with ropes as a ceramic installation guide.</p><p>9. Pipes must also be present</p><p>Building materials in the form of pipes are needed to deliver water to all parts of the house. For example, in the bathroom, sink, kitchen, to the garden house.</p><p>10. Colorful building materials, paint</p><p>The next building material is paint that acts as a finishing display of the house both interior and exterior. Paints are available in a variety of color choices so you can choose according to your individual wishes.</p><p>11. The role of ceramics in the interior of the house</p><p>Ceramic building materials are used to coat the floor surface. Sometimes it is used as a backsplash coating in the kitchen.</p>', ''),
(5, 2, 2, '9 Types of Building Materials Used in Construction', '<p>9 Types of Building Materials Used in Construction</p><p>Before designing the construction of a building, it\'s good to know in advance what building materials are needed. Not only natural materials used in construction, but also materials from factories.</p><p>Natural building materials get very little factory intervention, such as wood and glass. While manufacturing building materials are mostly processed in factories, such as pipes and cement. Each type has its own function.</p><p>For those of you who are planning to build or renovate a house, it\'s good to know the types of building materials. In addition to adding insight, you can at least know which building materials are suitable for your home.</p><p>1. Bricks</p><p>We certainly know brick as a building material for building walls. The bricks themselves are made from clay which is burned to a distinctive reddish color, or we usually call brick red. In addition, bricks also have many types.</p><p>Along with the development of technology, the use of bricks as building materials for walls began to decline in use. Its popularity began to be replaced by gypsum and bamboo. Bamboo and gypsum as building material for walls are relatively cheaper than bricks. Even so, bricks are still the most commonly used building material, especially because of their robustness.</p><p>2. Mud and Clay</p><p>The use of mud and clay, especially the amount, is very dependent on the building as desired. This also relates to the quality of the land used.</p><p>A mixture of mud on sand can make the strength of buildings weaker. It is recommended that mud and clay blend more smoothly with other building materials, such as concrete, so as not to leave cavities that can pass through buildings.</p><p>Conversely, clay is a building material that is very good at maintaining the temperature balance in the room. So when it\'s summer, the house will feel cool and in winter, the house will feel warm.</p><p>Mud and clay hold heat and then released from time to time. So that residents of the house will not feel a sudden change in temperature</p><p>3. Stone</p><p>Stone is a building material that is the longest used as well as the easiest to find. There are many types of stones that can be used as building materials, of course whether or not it depends on the purpose of construction.</p><p>Although stiff and heavy, stone is a very dense building material that can provide overall protection. Even so, rocks are also difficult to provide warm temperatures without using adequate heating.</p><p>As the oldest building material, stone walls have existed since humans began to build. But now, cement is used to glue stones to one another.</p><p>4. Straw</p><p>Like stones, straw is also the oldest building material. In addition, grass is a good heat retardant and easily harvested. Straw is a building material that is well known in most cultures in the world.</p><p>Tribes in Africa even use straw as the only building material for their homes. Whereas in Europe itself, thatched roofs on houses are very commonly used even though they entered the era of the straw industry. Straw is currently popular again. in the Netherlands for example, thatched roofs are found in many new buildings.</p><p>5. Wood</p><p>Wood is among the most commonly used building materials. Derived from trees or sometimes from fibrous plants, wood is produced into building materials, cabinets, boards, as well as furniture and other furniture.</p><p>Wood has a weight that can be adjusted, remains strong even though it is bent, and is more sturdy when compressed vertically. Wood is also suitable in all seasons. Wood as a building material is generally used to support the roof.</p><p>In the past, wood as a building material was directly used in the form of logs. Trees are just cut into the required size. But after the discovery of cutting machines, wood can be formed into various dimensions and shapes. This simplifies and speeds up the development process.</p><p>6. Cement</p><p>Cement is the most important building material. Without cement, other building materials such as bricks and concrete blocks cannot blend with each other. Cement is also the most vital building material in making very solid foundations.</p><p>Semen itself consists of 4 main elements, namely; limestone as the main component, clay which contains SiO2, Al2O3, and Fe2O3, silica stone which is added when clay has a small amount of SiO2, and the last is iron sand, which is added if clay contains a little Fe2O3.</p><p>7. Metal</p><p>Metal is one of the strongest building materials. Metal is usually used as a framework for the construction of large buildings such as skyscrapers, as well as building coatings. There are various types of metals commonly used as building materials. For example steel, which is a mixture of other materials with iron as the main component, suitable as a building structure.</p><p>Steel is a building material that is strong, flexible and durable. Even so, rust remains the biggest challenge. The mixture of aluminum and tin has a low density but is better at preventing rust than steel. Other metal materials used as building materials are titanium, chrome, silver and gold.</p><p>Titanium can be used for building structures, but the price is indeed much more expensive than steel. Whereas gold, silver and chrome are building materials that are not suitable for building structures, but are very beautiful as decorations.</p><p>8. Glass</p><p>Glass is a building material that can be used as a window. This clear and thin material has indeed been used as a coating on house ventilation since it was first discovered.</p><p>Glass allows residents to get light from the outside but still protected from the adverse effects of the weather. Glass itself is generally made from a mixture of sand and silica, so it\'s so fragile, or easily broken.</p><p>With technological sophistication, glass can now be transformed into a kind of curtain that can cover the surface of the building. Glass can also be used on the roof to get a beautiful view of the sky. An example is skylights.</p><p>9. Pipe</p><p>Although not including building materials that are useful in forming roofs, walls, or foundations, pipes still have an important role in construction. Pipes are used to connect drains and sewers, for example in bathrooms.</p><p>Pipes are made of materials that are resistant to low or high temperatures, so they can drain water well. Pipes are usually made of: carbon steel, carbon moly, ferro nickel, stainless steel, chrome moly, and the most popular, PVC.</p>', ''),
(6, 3, 2, 'Great! Scientists find concrete that can repair its own cracks', '<p>The quality of building materials is one of the people\'s concerns when it comes to building houses or office buildings. If the building material is not good, the building can crack quickly and some even collapse until it causes a fatal accident. Even if there are no cracks on the surface, poor building materials and full of gaps also often cause water absorption which later makes the room mushrooming and musty.</p><p>If the concrete has cracked, most will usually be patched with additional cement. But that is a fragile sign. Now this is a new discovery that can end all the anxiety. A Dutch scientist managed to make concrete that could \'cure\' the cracks themselves. Without the need for cement fillings, cracked concrete can grow on its own to fill the empty gap.</p><p>1. This magical concrete discovery originated from anxiety because concrete often cracked at a young age</p><p>You may often be anxious to see concrete that starts to crack, even almost collapsing. Maybe that anxiety was felt by some researchers from The Delft University of Technology in the Netherlands. A professor named Henk Jonkers found that there was material that could be used to overcome this fracture problem.</p><p>Besides damaging the concrete, it is also often the biggest source of expenditure for building maintenance costs. So if Jonkers\' invention is already widespread, there will be lots of people who can use this technology. There is no need to worry that the building will crack or collapse if the technology of self-healing concrete or concrete that can heal itself can really be improved.</p><p>2. This concrete is the result of combining natural elements and building materials, the composition of which is very diverse</p><p>As reported by CNN, Jonkers and his research team found that there is a natural material in the form of bacteria that can naturally fill cracks in concrete material. Jonkers chose bacillus bacteria to produce spores because these bacteria can last long without food or oxygen. In order for the bacteria to continue to grow in concrete, the researchers included a food supply in the form of calcium lactate in the form of small capsules. The capsule will be mixed in a wet concrete mixture. It\'s not enough just to mix bacteria in the concrete mixture, Jonkers also needs to add adhesive elements such as limestone.</p><p>3. The composition contained in this concrete reacts when exposed to water, the reaction is similar to fungi that develop in tempeh</p><p>The way it works is quite simple. If you ever see the process of making tempeh, this is something like that. When the concrete starts to crack, the water will enter to fill between cracks. The flow of water will encourage capsules mixed in it to break apart and remove bacteria and calcium lactate. The bacteria that comes out of the capsule begins to germinate. Mixed with calcium lactate as a food source, bacteria will continue to grow to close the cracks with the consistency of a kind of hardened limestone.</p><p>4. In addition to concrete, it turns out there is asphalt that is resistant to cracking with the same concept</p><p>Not only concrete, but another professor from The Delft University of Technology also succeeded in developing the ‘self-healing‘ method on asphalt. Professor Erik developed the method of self-healing on asphalt by adapting the workings of induction heating. Only with the addition of steel fiber material, it turns out that asphalt can \"cure\" yourself. Through heat from asphalt, the steel fiber will melt and occupy empty space such as cracks on the asphalt road. Erik\'s asphalt has even been tested for several meters of road in the Netherlands and the results are not disappointing.</p><p>Indonesia is not only just a spectator, you know. Since 2015 Biocomposite Engineering and Eco structure (Keltian) Research Group - LIPI Biomaterial Research Center has examined what bacteria in Indonesia are suitable for patching and bonding concrete cracks. Yes, it\'s pretty bad if you can develop magic concrete like the Dutch researchers, the cost of building maintenance can go down ...</p>', ''),
(7, 4, 2, 'For Dak Beton, Choose the Right Leak-Proof Coating with 5 Tips', '<p>For Dak Beton, Choose the Right Leak-Proof Coating with 5 Tips</p><p>Dak is a part of construction that is at the very top of the building and often functions as an additional area, such as a washing room. Although not concrete is a favorite because of superior durability and the ability to reduce the heat of the sun, using leak-proof coating paint is mandatory.</p><p>Given that Indonesia is a tropical country with increasingly erratic rainfall, there is no harm in ensuring that residential with concrete is more weather resistant with leak-proof coating paint. Armed with the following tips, choose the leakproof coating paint that is right for no concrete.</p><p>1. Choose Leakproof Coating that Is Resistant To Sunlight</p><p>If the concrete in your dak is only made of one layer, make sure you choose a leak-proof coating that is resistant to sun exposure. This is due to the absence of heat blocking space between the roof and the ceiling so that the use of poor quality coatings can accelerate the risk of leakage.</p><p>2. Select Leakproof Coating with Anti-fungal Formula</p><p>In addition to strength, the cleanliness factor is also a major consideration when choosing leak-proof coatings. For that, make sure you choose coating paint with an antifungal, dust and bacterial formulation to make it easier to clean and not cause weathering to occur.</p><p>3. Pay attention to how to use leak-proof coating paint</p><p>When patching leaky parts, you must pay attention to how to use leak-proof coating paint because each product requires a different use step. However, whatever type of coating paint you are using, make sure you have cleaned the roof first by removing mold and dust so that the adhesive strength of the coating is even better.</p><p>4. Note the Large Concrete Dak Cracks</p><p>In choosing the right anti-leak coating paint, you can adjust it to the amount of cracks not concrete in your dwelling. If the damage is large, ideally you will also add other elements such as high-strength cement and use a layer of additive bonding agent. Do not forget, do the leaking part of the leak on the concrete first so that the fillings look neater.</p><p>5. Select the Leakproof Coating according to the type</p><p>At present, there are various types of leakproof coatings. Apart from being in the form of leak-proof paint, know the three types of coatings that are commonly found on the market to overcome the leakage in the following concrete:</p><ul><li>. Styrene Acrylic Leak Coating</li></ul><p>If you prioritize strength, please choose a leakproof coating with a coating made of styrene acrylic because it has excellent durability than other types of coatings. Even so, unfortunately this type of coating is sold at a fairly expensive price.</p><ul><li>. Membrane Anti Leak Coating</li></ul><p>If the previous type is considered too expensive, you can choose a leak-proof coating made from oil from asphalt-like raw materials at a more economical price. The difference from coating paint is that it is sold in sheet form, which contains reinforcement and polyester material.</p><ul><li>. Coating Anti Leak Cementius</li></ul><p>Alternatively, you can use cementius leak-proof paint, which consists of two components, namely cement and addictive substances to bind concrete. In the application, you should coat the concrete more than once so that the adhesive strength is better with different sweeping techniques.</p><p>Of course, you should choose a leak-proof coating with excellent strength and antifungal and anti-dust content so that it lasts longer. Immediately resolve the leak without concrete by choosing the right leak proof coating!</p>', ''),
(10, 5, 2, 'Love Earth, Build a House with 6 Environmentally Friendly Materials', '<p>The increasingly depressing condition of the earth every day reminds us of the dangers of global warming and the human contribution to this drastic change in weather. Turning to environmentally friendly materials, for example patchwork shopping bags, bamboo straws, or wooden cutlery, can be one way to show our love for the earth where we live.<br></p><p>Not only for everyday needs, environmentally friendly materials can also be used to build houses. In addition to helping reduce the contribution to global warming, housing also feels cooler and more natural. Intrigued by environmentally friendly materials that you can use for natural occupancy? Come on, see the list below.</p><p>1. Straw, protection from heat and noise</p><p>Although straw has actually been used for a long time to cover parts of the roof, lately straw has become increasingly popular as an environmentally friendly material, especially for walls. With prices that are cheap and easily found on the market, straw is placed in the space between the column and the beam frame.</p><p>This environmentally friendly material is a good heat insulator and also functions as a silencer. Thus, residential owners will not easily feel hot during the day and can relax without outside noise.</p><p>2. Mild steel, tough anti-slip material</p><p>In ancient times, people built houses using wood as a roof frame and window frame. However, wood cannot be considered an environmentally friendly material because the increasing demand for timber results in mass deforestation.</p><p>Alternatively, you can use a lightweight steel roof truss that is no less powerful than wood. As an environmentally friendly material, mild steel can also be recycled many times, and will save maintenance costs because it does not need anti-vapor drugs.</p><p>3. Bamboo, looks strong and aesthetic</p><p>Apart from mild steel, there is also bamboo material as an environmentally friendly material instead of wood. One of the more popular environmentally friendly materials, bamboo itself has been known since ancient times and is often used because it is very strong in supporting heavy loads, although the weight of the bamboo is light.</p><p>These panda-like plants also grow quickly in the wild, so there is no concern about reduced bamboo stocks. Not only being an environmentally friendly material, bamboo plants can also increase the aesthetic value of a building.</p><p>4. Compacted land, techniques from ancestors</p><p>Have you ever thought of utilizing land compacted as an environmentally friendly material to build a house? In fact this technique has been applied by our ancestors thousands of years ago and proved that this material is durable.</p><p>Compressed soil is used as an environmentally friendly material instead of concrete, whose quality and strength are no less competitive. The house will feel cooler and natural.</p><p>5. Hempcrete environmentally friendly material</p><p>Regarded as an environmentally friendly material, hempcrete is a modern concrete made using hemp plant fibers. The plant fiber is mixed with lime so that the dough shape resembles ordinary concrete.</p><p>Its weight is lighter, but strong to withstand heavy loads. Hempcrete is referred to as an environmentally friendly material because there is a large supply of hemp plants in the wild, caused by the rapid and sustainable growth of hemp plants.</p><p>6. Ashcrete\'s environmentally friendly material</p><p>Furthermore, there is an environmentally friendly material innovation called ashcrete. As the name implies, Ashcrete is made using fly ash which is the product of coal combustion. The presence of Ashcrete is said to be able to replace the use of traditional cement and its adhesive strength is very strong.</p><p>Please consider a number of eco-friendly materials before you build a house, for the sake of the beauty of the environment and also comfort while living in a house property.</p>', ''),
(11, 6, 2, 'Favorite Materials, Know the Forecast of the Prices of the 6 Most Popular Wooden Boards in Indonesia', '<p>Wood material is a favorite of many people because it can provide a natural accent in the dwelling. Generally, wooden boards are used for building structures such as ceilings, tile stands, frames, and for residential interiors such as furniture and decorations.<br></p><p>Especially for the use of plastic, furniture, decoration or cast formwork, the use of wooden boards is the right choice. In Indonesia alone, wood cut in the form of boards comes from processed various types of wood, each of which is sold at different prices with its own shortcomings and advantages.</p><p>If you are currently planning to build dwellings or make DIY furniture and decorations using wood in the form of boards, the following information regarding the current price of wood planks to facilitate the selection of wooden boards based on quality and budget.</p><p>1. Punak Wood Board</p><p>The wood planks are quite popular in Indonesia because they have characteristics that are dense, waterproof and weather, and have the same quality as ironwood. Derived from the tree, which is widely grown in Jambi and Palembang, it is sold at an economical price compared to other solid wood boards. Regarding the price, you can buy wood in the form of boards with a size of 2 cm x 20 cm x 400 cm, at a price of IDR 70,000.</p><p>2. Meranti Wooden Planks</p><p>Next is meranti wood board which has hard characteristics with light to moderate weight. With the characteristics of pink, dark red, and dark brown to red depending on the age of the wood, the boards of the type of meranti wood also have good durability to be processed into various kinds of objects. Regarding the price, you can buy Meranti wood boards with a size of 2 cm x 20 cm x 400 cm at a price of IDR 80,000.</p><p>3. Camphor Wood Board</p><p>There are also camphor wood boards which are famous for their durability and termite resistance. Found in many forests in the Kalimantan region, another advantage of camphor wood is the rough texture that gives its own characteristics when used for furniture. For the price, camphor wood in the form of boards measuring 3 cm x 20 cm x 400 cm can be purchased at a price of Rp. 260,000.00.</p><p>4. Borneo Wood Board</p><p>As the name implies, these wooden boards are produced from tree plantations in the Kalimantan region and include rubber wood, Albasia wood and African wood. With a characteristic yellowish white color, Borneo wood also has a soft-hard character and is classified as heavy wood. Regarding the price, you can now buy Borneo wood in the form of boards measuring 3 cm x 20 cm x 400 cm at a price of Rp. 90,000.00.</p><p>5. Dutch Teak Wood Board</p><p>Also referred to as pine wood, Dutch teak boards are often used for furniture because of their light weight, beautiful bright colors, fine fibers so they are easy to process, and have very good durability. For Dutch teak in the form of a varnished board, you can buy it at a price of Rp170,000.00 for a size of 100 cm x 60 cm x 2 cm.</p><p>6. MDF Wood Board</p><p>Even though it is processed, but MDF board (Medium Density Fiber) is very popular used for furniture making. The reason is, MDF wood has a smooth surface, strong particle bonding, but its weight is quite light so it makes processing easier. While for the price, MDF wood in the form of a board with a thickness of 15 mm can be purchased at a price of Rp. 179,000 per sheet.</p><p>Through the information on the price of the wooden board above, it is expected that you can arrange the budget appropriately, whether to build a house or decorate the interior of the room by making custom furniture.</p>', ''),
(12, 7, 2, 'Want to Install Terrazzo Floors for Occupancy? Know the Next Minus Plus!', '<p>In the world of buildings, there are various types of floors that are often used in residential areas, each with its advantages and disadvantages. Take for example the terrazzo floor, this type of floor that was popular in the past has become a trend to complement the residential design.</p><p>Terrazzo floors are made from a mixture of cement and sand, where the top is coated with hard materials such as marble. So, what are the advantages and disadvantages of terrazzo floors for occupancy? Learn more so that you can adjust the use of terrazzo floors with residential needs.</p><p>1. The \'rough\' terrazzo floor is suitable for exterior floors</p><p>Maybe not many people know that terrazzo floors have two surface variations: plain glossy and rough. If the plain and glossy terrazzo variation tends to be slippery, the rough terrazzo material is suitable for use as a floor for exterior housing.</p><p>Not only will it minimize the risk of slipping, when it rains it will be relatively safer to stand on the rough terrazzo floor even though there is a puddle of water. Exposure to sunlight will also make the terrazzo surface stand out so that the floor looks more aesthetic.</p><p>2. Surface of scratch-resistant terrazzo floor</p><p>Both terrazzo floors with shiny or rough surfaces, both have a scratch-resistant surface. You also do not need to worry if you need to move or shift various furniture with heavy weight or sharp corners on his feet. Especially for women, stepping on the floor when wearing high heels will not cause big problems.</p><p>3. More durable than ceramic floors</p><p>Compared to ceramic floors, the strength of the terrazzo floor is much greater. Not only able to sustain a heavy burden for quite a long time, this floor still looks neat in old houses tens of years old. The strength of this material is that it drives several factories with heavy equipment to switch to using terrazzo floors.</p><p>4. A variety of very charming patterns</p><p>Just like the beauty of mosaic artwork, the terrazzo floor has a variety of very charming patterns thanks to the additional marble fragments inside. Not surprisingly, housing that uses terrazzo as flooring material also looks more luxurious. Terrazzo is also a favorite material for floors of luxury dwellings in Indonesia from the Netherlands in the past.</p><p>5. Terrazzo floor treatment is relatively easy</p><p>Having a marble floor means you have to be prepared to spend more in buying special cleaning fluids and polishing the surface regularly. Another story with terrazzo floors is that maintenance is very easy.</p><p>Just use a mop, and soap mixed with warm water. Mop the floor, then immediately dry it with a rag. Do not forget, brush the floor every day so that dust does not nest in all corners of the surface. Easy, right?</p><p>6. Unfortunately, the price of terrazzo floors is quite expensive</p><p>Although terrazzo floors are considered an alternative to marble floors that are too expensive, the price of terrazzo materials for floors is still relatively expensive when compared to a number of other types of floors such as ceramic tiles. This is what makes a number of people finally turn to ceramic floors to cut expenses when building a house.</p><p>7. The process of installing terrazzo floors is quite complicated</p><p>The process of installing terrazzo floors is quite complex, unlike the installation of ceramic tiles that are simply glued to cement and set to the right position. To get a glossy surface on terrazzo, you need to find professionals to use special terrazzo polishing tools.</p><p>Behind all the shortcomings it has, this terrazzo floor is arguably the right choice for you who prioritizes quality, strength and floor glow. The complicated installation process and the selling price you only need to face at the beginning. Furthermore, you can enjoy the quality and luster of the floor without the need for extra care.</p>', ''),
(17, 8, 2, '7 Narrow Kitchen Paint Color Combinations, Looks Wider!', '<p>Who would have thought kitchen paint turned out to play an important role in beautifying the kitchen? Not only that, choosing the right color combination can create the illusion of a spacious room for a small kitchen.<br></p><p>In addition to the paint color of the kitchen on the wall, every detail in the interior of the kitchen including the kitchen set affects the atmosphere of the room as a whole. As the heart of the house, the atmosphere of the kitchen needs to be ensured to make it comfortable for everyone who uses it.</p><p>Although the kitchen is relatively small, try one of the following kitchen paint color combinations so that the room feels much more spacious and comfortable.</p><p>1. White application with different appearance</p><p>It\'s no secret that white is relied upon to give the impression of being spacious in a tiny room. As long as kitchen paint is applied carefully, in fact the average soft neutral color besides white is also suitable for small kitchens.</p><p>So that the room seems aesthetic and spacious, apply white kitchen paint and take advantage of the appearance of glossy white ceramic tiles as a kitchen backsplash. Even though white can make the kitchen look too monotonous, variations in applications through white derivatives such as creamy white or ivory white can give a different look to the kitchen without looking boring.</p><p>2. Black and White All Elegant</p><p>The combination of kitchen paint colors can be fairly classic, utilizing the black color in the kitchen and white kitchen set on the wall and countertop to create a small kitchen with a monochrome theme.</p><p>Although the kitchen is fairly small, an important point to note when applying this kitchen paint color combination is adequate room lighting from the windows and lighting of the room itself. Thanks to the light in the kitchen at all times, the color of the black kitchen paint in the kitchen set will not seem too dark so the room seems more spacious.</p><p>3. A Touch of Natural Green & Wood</p><p>Want to get closer to nature? The combination of kitchen paint colors can be an option. A small kitchen that applies natural concepts can be realized through material selection and natural colors with soothing coolness.</p><p>Simply combine wood kitchen sets with dark green kitchen paint colors that are in harmony with wood texture. Choose a kitchen backsplash with neutral colors such as white and gray to be able to unite the two elements of the kitchen so that a room that feels more alive and feels far from tight is created.</p><p>4. Combination of Retro Colors</p><p>The appealing kitchen paint color scheme lies in choosing the right kitchen theme. Although the white color seems to dominate the kitchen as the main color, but the retro design accents in the choice of room color palette steal the attention effectively.</p><p>Ranging from green contrast to the impression of vintage or warm shabby chic, antique accessories, to the limiting door with classic carvings, the presentation of a creative kitchen with the right kitchen paint color scheme is the key to making the small kitchen look attractive.</p><p>5. Domination of Turquoise and Red Illuminates</p><p>The small kitchen is guaranteed to look cheerful when combining primary colors as the main focus of the room. Just an example of the inspiration above that combines blue green or turquoise in the kitchen set and kitchen cabinet with orange red kitchen paint on the wall and kitchen utensils.</p><p>Don\'t forget, apply neutral colors as a transition between primary colors in other kitchen areas. That way, the overall paint color of the kitchen will look balanced and harmonious, you will be even more enthusiastic about cooking at home.</p><p>6. Combination of Warm & Cool Kitchen Paints</p><p>When it is difficult to determine the color of the kitchen paint, try a blend of warm and cool hues. The contrast between the two hues can clarify the illusion of a larger room so the kitchen doesn\'t feel tiny.</p><p>The choice of warm kitchen paint can be soft orange like on the wall above or other earth colors such as terracotta, yellow or red. Meanwhile, the choice of cool kitchen paint can be green, blue, or purple. To balance the two types of colors, choose neutral colors like white or gray to tie them harmoniously.</p><p>7. Fashionable Small Kitchen with Soft Pastels</p><p>Soft pastel accents can be a mainstay when choosing a small kitchen paint color. In addition to pastel touches on the walls or window panels, the matching paint color of the kitchen is the dominance of white in other furniture.</p><p>Pastel color paint is an anti-mainstream choice compared to common colors such as white or gray, but it is still easily combined with young wood material to make the kitchen more beautiful. In addition, the color of pastel kitchen paint is suitable for a small kitchen because it has a bright base so that the room seems more open.</p><p>Not only limited to choosing the color of the kitchen paint that makes the room seem more spacious, the combination of kitchen paint colors combined with the appearance of room furniture can distract attention from the narrowness of the room and focus on the aesthetic value of a small kitchen.</p>', ''),
(14, 9, 2, 'Red Brick, Batako Press, and Lightweight Brick, What\'s the Difference?', '<p>Bricks are one of the most popular building materials. Usually, this iconic red brick is often found as a material for construction of walls, fences or other elements of the house because it is very easy to find and the price is quite economical.</p><p>As technology develops, nowadays it\'s not only red bricks that you can use. At present, there are other variations of bricks that you can adjust according to your needs when building a house.</p><p>Through this article, we will invite you to understand the difference between red brick, brick making and light brick and its advantages and disadvantages so you don\'t choose the wrong one.</p><p>1. Red brick</p><p>Red brick is the most common building material because it is very easily found on the market. The red brick is made of clay which passes through the burning process with high temperature until it is hard and dries in the form of a rectangular beam.</p><p>Having a reddish color identity, another reason red brick is so popular is resilience that has been very tested. Apart from that, red bricks have advantages and disadvantages that you can certainly consider so that the house building process runs more efficiently.</p><ul><li>Reduced Red Brick</li></ul><p>In its installation, the red brick looks difficult to order neatly so it takes longer in the process. Not only that, building red brick walls requires a lot of adhesive material, which makes spending more wasteful.</p><p>If you want a weather resistant building, you should avoid using red brick material because it can make the room temperature unstable. Not only is it easy to absorb heat during the summer, it also easily absorbs cold during the winter.</p><ul><li>Excess of Red Brick</li></ul><p>The main reason for the popularity of red brick lies in its very economical price. He also only needs simple adhesive materials, such as sand and instant cement.</p><p>The small size of red brick makes it easily transported or considered more portable. No need for special masons, general contractor services are also sufficient to properly arrange red bricks.</p><p>2. Brick Press</p><p>In addition to red brick, another building material that is currently popular is brick making press. Generally, brick making press is made using a mixture of coarse sand and solid-printed cement, but there are also manufacturers who use a mixture of lime, coal, cement and tras.<br></p><p>As for the disadvantages and advantages of brick making press you can see below:</p><ul><li>Shortage of Brick Press</li></ul><p>Unlike red brick, brick press has a cavity in the middle of the beam so that it is easy to crack. It is also easy to absorb heat so it is less suitable for use in tropical residential interiors.</p><ul><li>Advantages of Brick Press</li></ul><p>No need for anti-leak paint anymore, waterproof brick press. Although they are larger than red bricks, the size of each brick is uniform so it looks neat when stacked into a wall.</p><p>The size of a brick larger than red brick means that it requires less adhesive material and can save time during construction.</p><p>3. Lightweight brick</p><p>One variation of bricks other than red brick is light brick. This building material is often used to lighten the structure of the building.</p><p>Manufactured using a machine with a smooth material character, light brick has a better level of flatness compared to red brick and brick making press. Made from a combination of materials such as cement, lime, quartz sand, aluminum, gypsum and water, light brick also has advantages and disadvantages that you need to consider.</p><ul><li>Lack of light brick</li></ul><p>Lightweight bricks require careful special experts to be able to install them properly and neatly. In addition, the price is more expensive than other brick materials such as red brick and brick making press.</p><ul><li>Excess Light Brick</li></ul><p>Having uniform quality and size, the results of lightweight stone arrangement look neater. He also does not need a lot of adhesive material so it saves budget.</p><p>Not only is it waterproof, light brick walls are also suitable for sound proofing. He also has good durability so that it lasts longer. Very light in size, the time needed for light bricking is shorter.</p><p>Each variation of the bricks above has its own advantages and disadvantages to be adjusted according to your needs. Don\'t forget, carefully understand the differences from the variations of the bricks above so you can have an aesthetic and functional dream home.</p>', ''),
(18, 10, 2, 'The Importance of Exterior Design for Healthy Homes!', '<p>A healthy lifestyle is very important for everyone. In addition to regular exercise and consumption of healthy foods, the interior and exterior design of the dwelling must be able to optimize the healthy lifestyle that you apply.<br></p><p>Talk about healthy housing, there are many elements that you must pay attention to. Moreover, Indonesia is a tropical country with high humidity conditions so you have to maximize the potential of the environment and the exterior of the house so that it is always comfortable and does not affect health.</p><p>Following this, Kania will share important elements in exterior design that you can optimize to create a healthy home.</p><p>1. Number of Adequate Openings for Smooth Air Circulation</p><p>Window is an important exterior element because it acts as an outlet for dirty air from the house which is replaced by the entry of clean air into the house. In designing housing, ideally every room such as a living room, kitchen, to the bedroom is equipped with a window so that air circulation runs smoothly.</p><p>Given the many types of diseases that are easily transmitted through the air, of course the availability of an adequate number of windows on the exterior of the house can prevent residents of the house from getting sick. Don\'t forget, try also to design a home window to be exposed to direct sunlight.</p><p>2. Optimize Circulation with a Charming Roster</p><p>For optimal air and light circulation, you can install a vent or roster on the exterior of the house, such as facades or fences. Not just acting as an aesthetic decoration, the roster on the exterior can make the dwelling avoid damp and stuffy.</p><p>In order to make your exterior look attractive, you can choose a roster with a shape that is adjusted according to the exterior concept that you want to highlight. In fact, roster walls are also available from various materials that you can choose according to your taste and budget, starting from concrete roster, brick, clay, ceramic, wood, to GRC.</p><p>3. Use of Ceiling with Ideal Height</p><p>In addition to the adequate number of openings, the ceiling must also be carefully designed because it affects the spread of air. Ideally, the ceiling on the exterior of the house is made high so that air circulation can be spread optimally. In addition, high ceilings can inhibit heat from the sun so that the house remains cool and comfortable.</p><p>4. Use of Environmentally Friendly Materials</p><p>Not only on the exterior, the use of environmentally friendly materials applies to all elements of the house. Well, there are many variations of environmentally friendly materials that you can apply to the exterior of the house, such as wood or bricks that effectively resist the sun\'s heat so as to minimize the use of air conditioning.</p><p>While on other exterior parts such as the roof, avoid using asbestos material that has the potential to cause disease problems and replace it with an environmentally friendly exterior roof with a mild steel formulation that is much stronger and safer for the environment.</p><p>5. Comfortable House with Green Area</p><p>Besides making the exterior appearance of the house look cool, the existence of plants can provide freshness for residents of the house. There are many variations of tropical greenery that you can care for on the exterior of the house, ranging from pine fans, morning glory, deer antlers, to flower plants such as frangipani and hibiscus.</p><p>If the exterior area of your residence is narrow, you can also make a vertical garden on the wall, and keep a mini pot filled with cactus which also acts as a natural bacterial repellent. However, whatever type of plant you place on the exterior of the house, make sure you take care of it regularly!</p><p>The exterior elements of the house above are very important to be applied because they can support a healthy lifestyle for all residents of the house. Come on, create a healthy residence right now.</p>', ''),
(19, 11, 2, '7 Minimalist Home Front Creations, Different from Others!', '<p>Designing a dream house means thinking about comfort while living in the house. However, too focused on the appearance in making most people apply the front view of a minimalist house with guaranteed beauty.<br></p><p>Having a minimalist home front does not mean limiting yourself in exploring and designing according to creativity. Precisely the appearance of a house with a minimalist design can be attractive and make the house look stunning compared to other houses.</p><p>If you are confused about how to get the best front view of a minimalist house, take a look at some of the following inspirations with a charming and unique minimalist front of the house!</p><p>1. Game of Color Level and Composition</p><p>The choice of color is one of the important aspects in designing a minimalist home front. To avoid reducing the minimalist image, it is important to choose a color scheme that is right for the front of the house.</p><p>Use the same color composition with harmonious color derivatives. Choosing a contrasting color can help provide a point of interest in the appearance of a minimalist home. Other ways you can do by playing with leveling the building mass on the front design of a minimalist home so that the appearance of the house seems more dynamic too.</p><p>2. Strong Material Character</p><p>In addition to the color and composition of the level, you can strengthen the character of the minimalist front of the house with the use of certain building materials that contrast the main material of the house exterior.</p><p>The application of this material can be in the form of a panel that covers part of the house or a hollow partition so that natural lighting can enter the room. Some of the materials that you can use on the front of a minimalist house are steel, exposed concrete, to natural materials such as wood or natural stone.</p><p>3. Touch of Wood Elements to Give Warmth</p><p>Producing a warm, minimalist home front is not difficult, as long as it combines wood elements in the exterior design of the house. Natural elements such as wooden boards are the mainstay material when they want to bring a more inviting atmosphere from the front of the house.</p><p>4. Minimalist House Front View with Shape Composition</p><p>There are also many alternative minimalist house facades that are as simple as through setting the composition of a building mass that has different heights, widths, and lengths. Even though it only relies on one color of paint, different variations in the shape of the building will be seen as a minimalist aesthetic front.</p><p>5. Elegant with Black Domination</p><p>The application of one color paint on the facade of the house can make the front look of a minimalist house more characterless without the need to be confused thinking about the design of a house that is too complicated. However, if you want a minimalist home that still looks elegant and certainly stands out, black might be your consideration.</p><p>6. Modern with a Monochrome theme</p><p>The front view of a minimalist house can actually be simple and charming through the application of charming themes such as the monochrome theme of this house. Wrapped in white and black, the building\'s composition becomes more prominent so it should be used as an example to present a minimalist facade that is attractive to occupancy.</p><p>7. Shadow Games for Dynamic Home Views</p><p>Although it comes with a simple form, it does not mean that the appearance of a minimalist home is always boring. The light of the sun plays an important role in the shadows created from the building of the house.</p><p>Level games as seen in the vertical garden, as well as spaced wood from the front of the glass window produce a minimalist front view that prioritizes the shadow game to turn the face from the house. The shadow effects that change with the passage of the day give a minimalist home front look, so it certainly will never look the same.</p><p>Have you found the concept for the front view of a minimalist house most appropriate for your residential property? Come on, don\'t limit your creativity and start creating an attractive minimalist home front.</p>', '');
INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(20, 12, 2, 'Before Hiring a Contractor to Build a House, Ask These 6 Things!', '<p>The existence of complicated construction work requires that you — who renovate or build a house — to use the services of a contractor. Although contractors are better known for handling large-scale property projects such as apartments and offices, these professional services can be more trusted than contracting services because they already have official certification.</p><p>So, how do you choose the right contractor?</p><p>The contractor you choose not only determines the cost of building a house later, but also the final results of the process. Even if you have received recommendations from people you trust, it is not necessarily the way of working, the payment system, and the implementation of the project in accordance with what you have planned.</p><p>For this reason, it is better to hold interview sessions with prospective contractors and ask the following questions so as not to regret later.</p><p>1. Types of projects that have been handled</p><p>Contractor services have indeed been officially verified, the workers are experts who are certainly qualified in their fields. However, you still have to adjust the project profile that has been handled by prospective contractors with the concept of a dream house.</p><p>If it is appropriate, consider how the quality of the work of the contractor. Don\'t hesitate to ask previous clients to verify the credibility and quality of the final results.</p><p>2. Duration of each project</p><p>In addition to tracing the contractor\'s track record, make sure also whether they complete the project in a timely manner, according to the period in the agreement in the employment contract.</p><p>Even if there is an extension of time, find out the cause is more clear, whether due to constraints in the field, weather conditions, or lack of material availability. Problems like this are still understandable, but avoid contractors who often extend the project implementation time due to less than optimal work efficiency.</p><p>3. Project implementation agreement system</p><p>Before the project is carried out, an agreement needs to be made between the contractor service provider and its users through a work agreement or employment contract. The agreed things include: the scope of project work, the project period, the price, the payment system, and the consequences of breach of the agreement.</p><p>Make sure you understand the contract with the contractor well. If there is a causal that is considered confusing or even detrimental to the service users, do not hesitate to ask and demand renovation. In this agreement too, you should know clearly what are the rights and obligations of both parties.</p><p>4. Project payment system</p><p>There are two types of payment system for contractor services, namely gradual payments or terminals and a system of cost and fees. The difference between the two payment systems lies in who acts as the project manager and the payment period.</p><p>In the term payment system, there are four stages of contractor payment. Starting from a down payment (DP) worth 20-30 percent of the total cost, the second phase of payment when the project has been 50 percent completed to the final repayment when the project has been fully completed. Meanwhile, the contractor fully controls the financial management of the project for a system of costs and fees, you as a service user only need to pay the budget set every month.</p><p>5. Who is the person in charge of the project</p><p>The contracting team will usually report on the progress of the project through the person in charge of the project. Therefore, it is important for you to actively communicate with the person in charge of the project.</p><p>If there are obstacles in the implementation of the project, it is the person in charge of the project who will directly convey the conditions that occur in the field. The solution to these problems can also be directly consulted with the person in charge of the project.</p><p>6. Form of warranty provided</p><p>Professional contractor service providers generally include guarantees in work agreements. The warranty can be used when there is damage to the building after the project is completed by the contractor. However, each contractor provides different forms of warranty, and this relates to the scope of damage that will be dealt with later.</p><p>You should do in-depth consideration before choosing which contractor is right to build a dream home. Because, the use of their services does require a larger budget than using contractor services.</p><p>During the implementation of the project, try to always monitor the contractor\'s work and maintain good communication so that the continuity of the project runs smoothly.</p>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_faq`
--

CREATE TABLE `pg_faq` (
  `id` int(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_faq`
--

INSERT INTO `pg_faq` (`id`, `status`) VALUES
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_faq_description`
--

CREATE TABLE `pg_faq_description` (
  `id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_faq_description`
--

INSERT INTO `pg_faq_description` (`id`, `faq_id`, `language_id`, `question`, `answer`) VALUES
(1, 1, 1, 'test tanya indo', '<p>\r\n	test jawab indo\r\n</p>'),
(2, 1, 2, 'test tanya?', '<p>\r\n	test jawab 1\r\n</p>'),
(3, 2, 2, 'test question 1', '<p>\r\n	test answer 1\r\n</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_list_bank`
--

CREATE TABLE `pg_list_bank` (
  `id` int(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `label` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_list_bank`
--

INSERT INTO `pg_list_bank` (`id`, `nama`, `label`) VALUES
(1, 'bank_mega', 'Bank Mega'),
(2, 'bca', 'BCA'),
(3, 'bca_syariah', 'BCA Syariah'),
(4, 'bii', 'BII'),
(5, 'bni', 'BNI'),
(6, 'bni_syariah', 'BNI Syariah'),
(7, 'bri', 'BRI'),
(8, 'bri_syariah', 'BRI Syariah'),
(9, 'cimb_niaga', 'CIMB Niaga'),
(10, 'cimb_niaga_syariah', 'CIMB Niaga Syariah'),
(11, 'citibank', 'Citibank'),
(12, 'danamon', 'Danamon'),
(13, 'hsbc', 'HSBC'),
(14, 'mandiri', 'Mandiri'),
(15, 'mandiri_syariah', 'Mandiri Syariah'),
(16, 'money_gram', 'Money Gram'),
(17, 'muamalat', 'Muamalat'),
(18, 'paypal', 'Paypal'),
(19, 'permata', 'Permata'),
(20, 'visa', 'Visa'),
(21, 'western_union', 'Western Union');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages`
--

CREATE TABLE `pg_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages`
--

INSERT INTO `pg_pages` (`id`, `name`, `type`, `group`) VALUES
(1, 'testimonial', 0, 'testimonial'),
(2, 'articles', 0, 'blog'),
(3, 'about', 0, 'static'),
(4, 'contact', 0, 'static'),
(5, 'faq', 0, 'faq'),
(6, 'how_to_shop', 0, 'static'),
(7, 'payment_confirmation', 0, 'static'),
(8, 'bank', 0, 'bank');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages_description`
--

CREATE TABLE `pg_pages_description` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages_description`
--

INSERT INTO `pg_pages_description` (`id`, `page_id`, `language_id`, `page_name`, `content`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 4, 1, 'Kontak Kami', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Kontak Kami', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(12, 4, 2, 'Contact', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Contact', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(13, 6, 1, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(14, 6, 2, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(15, 7, 1, 'Konfirmasi Pembayaran', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Konfirmasi Pembayaran', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(16, 7, 2, 'Payment Confirmation', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(17, 3, 2, 'About', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; About\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa lain di website anda di admin panel -&gt; General Setting -&gt; Language(Bahasa)\r\n</p>', 'About', 'edit di admin panel -> Pages -> About', 'edit di admin panel -> Pages -> About');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial`
--

CREATE TABLE `pg_testimonial` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_testimonial`
--

INSERT INTO `pg_testimonial` (`id`, `name`, `email`, `testimonial`, `status`, `date`) VALUES
(1, 'Ibnu', 'ibnu@markdesign.net', '', 1, '2014-07-14 09:51:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial_description`
--

CREATE TABLE `pg_testimonial_description` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_testimonial_description`
--

INSERT INTO `pg_testimonial_description` (`id`, `testimonial_id`, `language_id`, `content`) VALUES
(8, 1, 2, 'test'),
(7, 1, 1, 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_type_letak`
--

CREATE TABLE `pg_type_letak` (
  `id` int(11) NOT NULL,
  `letak` varchar(225) NOT NULL,
  `page_id` int(11) NOT NULL,
  `tampil` int(11) NOT NULL,
  `sort` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_type_letak`
--

INSERT INTO `pg_type_letak` (`id`, `letak`, `page_id`, `tampil`, `sort`) VALUES
(177, 'header', 2, 1, 1),
(178, 'header', 6, 1, 2),
(179, 'header', 4, 1, 3),
(180, 'header', 1, 0, 4),
(181, 'header', 3, 0, 5),
(182, 'header', 5, 0, 6),
(183, 'header', 7, 0, 7),
(184, 'header', 8, 0, 8),
(185, 'footer', 3, 1, 1),
(186, 'footer', 6, 1, 2),
(187, 'footer', 4, 1, 3),
(188, 'footer', 1, 0, 4),
(189, 'footer', 2, 0, 5),
(190, 'footer', 5, 0, 6),
(191, 'footer', 7, 0, 7),
(192, 'footer', 8, 0, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand`
--

CREATE TABLE `prd_brand` (
  `id` int(11) NOT NULL,
  `kode` varchar(225) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand_description`
--

CREATE TABLE `prd_brand_description` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category`
--

CREATE TABLE `prd_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `image2`, `image3`, `type`, `data`) VALUES
(1, 0, 0, '', '', '', 'category', ''),
(2, 0, 0, '', '', '', 'category', ''),
(3, 0, 0, '', '', '', 'category', ''),
(4, 0, 0, '', '', '', 'category', ''),
(5, 0, 0, '', '', '', 'category', ''),
(6, 0, 0, '', '', '', 'category', ''),
(7, 0, 0, '', '', '', 'category', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_description`
--

CREATE TABLE `prd_category_description` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `desc`, `data`) VALUES
(1, 1, 2, 'HOUSEWARE', '', ''),
(2, 2, 2, 'TABLE WARE', '', ''),
(3, 3, 2, 'KITCHEN WARE', '', ''),
(4, 4, 2, 'OFFICE', '', ''),
(5, 5, 2, 'FURNITURE', '', ''),
(6, 6, 2, 'CONTAINER', '', ''),
(7, 7, 2, 'OTHER', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_product`
--

CREATE TABLE `prd_category_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_excel`
--

CREATE TABLE `prd_excel` (
  `id` bigint(20) NOT NULL,
  `nama_produk` varchar(225) DEFAULT NULL,
  `kategori` varchar(225) DEFAULT NULL,
  `file_gambar` varchar(225) DEFAULT NULL,
  `harga` varchar(225) NOT NULL,
  `label_warna` varchar(225) NOT NULL,
  `label_kemasan` varchar(225) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `status` int(2) NOT NULL,
  `onsale` int(2) NOT NULL,
  `trending` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_gallery_highlight`
--

CREATE TABLE `prd_gallery_highlight` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product`
--

CREATE TABLE `prd_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(225) DEFAULT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` decimal(11,2) NOT NULL,
  `harga_coret` decimal(11,2) NOT NULL,
  `harga_retail` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `terbaru` int(11) NOT NULL,
  `terlaris` int(11) NOT NULL,
  `out_stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `data` text NOT NULL,
  `tag` text NOT NULL,
  `filter` text NOT NULL,
  `onsale` int(11) NOT NULL,
  `rekomendasi` int(11) NOT NULL,
  `turun_harga` int(11) NOT NULL,
  `urutan` int(100) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_attributes`
--

CREATE TABLE `prd_product_attributes` (
  `id` int(11) NOT NULL,
  `id_str` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `attribute` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_color`
--

CREATE TABLE `prd_product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_color` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_description`
--

CREATE TABLE `prd_product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_image`
--

CREATE TABLE `prd_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `min_pembelian` int(11) NOT NULL,
  `type_potongan` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `aktif_dari` date NOT NULL,
  `aktif_sampai` date NOT NULL,
  `aktif` int(11) NOT NULL,
  `reusable` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `nama`, `kode`, `min_pembelian`, `type_potongan`, `potongan`, `aktif_dari`, `aktif_sampai`, `aktif`, `reusable`) VALUES
(14, 'test voucher', 'code-123456789', 500000, 0, 50000, '2018-09-17', '2018-09-30', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_list`
--

CREATE TABLE `promo_list` (
  `id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `terpakai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo_list`
--

INSERT INTO `promo_list` (`id`, `promo_id`, `kode`, `terpakai`) VALUES
(1, 14, 'CODE-12345678993181C6790', 0),
(2, 14, 'CODE-123456789DDA806F7E2', 0),
(3, 14, 'CODE-123456789AE7B4B79BB', 0),
(4, 14, 'CODE-1234567897CE32D7CD7', 0),
(5, 14, 'CODE-123456789BEE1BCCFE8', 0),
(6, 14, 'CODE-1234567894601670650', 0),
(7, 14, 'CODE-123456789E2BAEA3685', 0),
(8, 14, 'CODE-12345678955B7D4037D', 0),
(9, 14, 'CODE-123456789AA3463C2A4', 0),
(10, 14, 'CODE-1234567898F3BAEA264', 0),
(11, 14, 'CODE-12345678914A13A85A4', 0),
(12, 14, 'CODE-1234567898113831FD1', 0),
(13, 14, 'CODE-123456789D836419029', 0),
(14, 14, 'CODE-123456789CFACF6AD68', 0),
(15, 14, 'CODE-123456789FCB58719A6', 0),
(16, 14, 'CODE-12345678961073AEF80', 0),
(17, 14, 'CODE-12345678994417CEF27', 0),
(18, 14, 'CODE-123456789B27D827C3B', 0),
(19, 14, 'CODE-12345678912CD5A1AC6', 0),
(20, 14, 'CODE-1234567894A1C32719B', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sertifikasi`
--

CREATE TABLE `sertifikasi` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `images_icon` varchar(225) NOT NULL,
  `images_big` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sertifikasi`
--

INSERT INTO `sertifikasi` (`id`, `name`, `description`, `images_icon`, `images_big`) VALUES
(2, 'Agen tunggal resmi di Indonesia', '', 'edf8c-XADO-certificate-thumbc0cdba.jpg', 'edf8c-XADO-certificate-10bef2.jpg'),
(3, 'Technischer Uberwachungs-Verein', 'The certificate states the efficiency and certifies the XADO gel-revitalizant for gasoline engines effect', '63a71-XADO-certificate-thumb6f863e.jpg', '1af50-XADO-certificate-d20515.jpg'),
(4, 'Kristen Petra University Surabaya Certificate', 'XADO Gel For Diesel Engine', '97272-XADO-certificate-thumb0c1964.jpg', '4c78b-XADO-certificate-efb9bb.jpg'),
(6, 'API certificate', 'API - American Petroleum Institute', 'b1712-XADO-certificate-thumbf05da4.jpg', 'b1712-XADO-certificate-0444a4.jpg'),
(7, 'MAN Certificate', 'Approval For Engine Oil XADO 80W-90 GL-3/4/5', 'f28aa-XADO-certificate-thumbbb60d6.gif', 'f28aa-XADO-certificate-a0d9dd.jpg'),
(8, 'MAN Certificate', 'Approval For Engine Oil XADO 10W-40 Diesel Truck', 'a23f8-XADO-certificate-thumbbb60d6.gif', 'a23f8-XADO-certificate-fecbed.jpg'),
(9, 'VOLVO Certificate', 'Approval For Engine Oil XADO 15W-40 SL/CI-4 & XADO 10W-40 SL/CI-4', '2942f-XADO-certificate-thumbd89b2a.jpg', '2942f-XADO-certificate-db514b.jpg'),
(10, 'VOLVO Certificate', 'Approval For Engine Oil XADO 15W-40 CI-4 Diesel', '931e7-XADO-certificate-thumbd89b2a.jpg', '931e7-XADO-certificate-e931a6.jpg'),
(11, 'VOLVO Certificate', 'Approval For Engine Oil XADO Atomic Oil 15W-40 SM/CJ-4', 'b80dc-XADO-certificate-thumbd89b2a.jpg', 'b80dc-XADO-certificate-120754.jpg'),
(12, 'Daimler-Benz Certificate', 'Approval For Engine Oil XADO 5W-40 SM/CF', 'ab745-XADO-certificate-thumba2f7af.jpg', 'ab745-XADO-certificate-f97b75.jpg'),
(13, 'General Motor Certificate', 'Approval For Engine Oil XADO 5W-40 City Line SL/CF', 'fdfc0-XADO-certificate-thumb109fe4.jpg', 'fdfc0-XADO-certificate-a26364.jpg'),
(14, 'BMW certificate', 'Approval for Engine Oil \"XADO 5W-40 SM/CF\"', '90b56-XADO-certificate-thumbc23299.jpg', '90b56-XADO-certificate-1a4bd9.jpg'),
(15, 'VolksWagen Certificate', 'Approval For Engine Oil XADO SL/CF SAE 5W-40', 'cfe0e-XADO-certificate-thumbc44858.jpg', 'cfe0e-XADO-certificate-09c146.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', '', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'Email Form', 'info@arsimetrisdjaja.com', 'text', 0, 'data', 'n', 1),
(13, 'tax', 'Tax', '11', 'text', 0, 'data', 'n', 1),
(14, 'home_section1_hero_content', 'Section 1 Content', '', 'text', 0, 'data', 'y', 0),
(15, 'home_section1_hero_links_top', 'Section 1 Content Link', '', 'text', 0, 'data', 'n', 0),
(16, 'home_section2_content', 'Section 2 Content', '', 'text', 0, 'data', 'y', 0),
(17, 'home_section3_title', 'Title Content', '', 'text', 0, 'data', 'y', 0),
(18, 'home_section4_title', 'Title Content', '', 'text', 0, 'data', 'y', 0),
(19, 'home_section5_content', 'Content Top', '', 'text', 0, 'data', 'y', 0),
(20, 'home_section5_btmcontent', 'Content Bottom', '', 'text', 0, 'data', 'y', 0),
(21, 'about_hero_image', 'Image', '9dca3f43ddabout-cover.jpg', 'image', 0, 'data', 'n', 0),
(22, 'about_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(23, 'about_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(24, 'about1_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(25, 'about2_pictures_t1', 'Image', '9d3dda50dcabout-pic1.jpg', 'image', 0, 'data', 'n', 0),
(26, 'about2_title_t1', 'Title', '', 'text', 0, 'data', 'y', 0),
(27, 'about2_content_t1', 'Content', '', 'text', 0, 'data', 'y', 0),
(28, 'about2_pictures_t2', 'Image', 'e29b1c2e4cabout-pic2.jpg', 'image', 0, 'data', 'n', 0),
(29, 'about2_title_t2', 'Title', '', 'text', 0, 'data', 'y', 0),
(30, 'about2_content_t2', 'Content', '', 'text', 0, 'data', 'y', 0),
(31, 'about2_pictures_t3', 'Image', 'ef1126eba0about-pic3.jpg', 'image', 0, 'data', 'n', 0),
(32, 'about2_title_t3', 'Title', '', 'text', 0, 'data', 'y', 0),
(33, 'about2_content_t3', 'Content', '', 'text', 0, 'data', 'y', 0),
(34, 'about3_visi', 'Content Visi', '', 'text', 0, 'data', 'y', 0),
(35, 'about3_misi', 'Content Misi', '', 'text', 0, 'data', 'y', 0),
(36, 'agen_hero_image', 'Image', '56d63ad453about-cover (1).jpg', 'image', 0, 'data', 'n', 0),
(37, 'agen_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(38, 'agen_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(39, 'agen1_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(40, 'merek_hero_image', 'Image', '1bde1d4203about-cover (1).jpg', 'image', 0, 'data', 'n', 0),
(41, 'merek_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(42, 'merek_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(43, 'merk1_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(44, 'merk2_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(45, 'merk3_picture', 'Picture', '3d0da042adUntitled-2.png', 'image', 0, 'data', 'n', 0),
(46, 'merk3_sub_title', 'Content', '', 'text', 0, 'data', 'y', 0),
(47, 'merk3_sub_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(48, 'contact_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(49, 'contact_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(50, 'contact_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(51, 'contact_phone', 'Phone', '081 650 28868 ', 'text', 0, 'data', 'n', 0),
(52, 'contact_email', 'Email Website', '', 'text', 0, 'data', 'n', 0),
(53, 'url_facebook', 'URL Facebook', '', 'text', 0, 'data', 'n', 0),
(54, 'url_instagram', 'URL Instagram', '', 'text', 0, 'data', 'n', 0),
(55, 'contact_hero_image', 'Image', 'fe0a963d3cabout-cover (1).jpg', 'image', 0, 'data', 'n', 0),
(56, 'contact_feature_image', 'Picture', 'ca9ba53e2dhubungi.jpg', 'image', 0, 'data', 'n', 0),
(57, 'contact_content2', 'Content', '', 'text', 0, 'data', 'y', 0),
(58, 'contact1_links_map', 'Googles Map', 'https://goo.gl/maps/MdExPmufpgzKts5p9', 'text', 0, 'data', 'n', 0),
(59, 'contact_wa', 'Whatsapp', '081 650 28868 ', 'text', 0, 'data', 'n', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_description`
--

CREATE TABLE `setting_description` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(84, 1, 2, 'Arsimetris Djaja'),
(86, 2, 2, 'Arsimetris Djaja'),
(87, 48, 2, 'Hubungi Kami'),
(88, 49, 2, '<h2>Peluang Untuk Menuju Sukses <br>Ada Di Depan Anda!</h2>'),
(89, 50, 2, 'Apakah anda memerlukan bantuan dalam mencari bahan bangunan di Arsimetris Djaja Banjarmasin? Atau anda membutuhkan informasi lebih lanjut mengenai aneka kebutuhan granit tile, saniter, atap, gypsum, grc board dan bahan bangunan lainnya? Hubungi gallery kami di bawah ini.'),
(90, 57, 2, 'Kedinding Tengah II/14a, Kenjeran, Kota SBY, Jawa Timur 60129, Indonesia \r\nPhone / Whatsapp. 081 650 28868 \r\nEmail. info@arsimetris.com'),
(91, 14, 2, '<h2>Galery Granit Tile Terbesar dan Pusat Aneka Material Bahan Bangunan, <br>Menyediakan Koleksi Terlengkap di Banjarmasin, Kalsel.</h2>'),
(92, 16, 2, '<p><strong>Arsimetris Djaja</strong> adalah sebuah nama yang dapat anda percaya untuk seluruh kebutuhan material bahan bangunan anda di Banjarmasin, Kalimantan Selatan dan sekitarnya, kami memberikan pelayanan terbaik dan harga terbaik serta membuka kesempatan bagi toko atau pelanggan untuk menjadi agen dagang untuk produk produk eksklusif kami.\r\n</p>'),
(93, 17, 2, 'Koleksi Produk Aneka Material Bahan Bangunan Arsimetris Djaja Banjarmasin'),
(94, 18, 2, 'ANEKA BRAND PRODUK BAHAN BANGUNAN YANG KAMI DISTRIBUSIKAN DI BANJARMASIN - KALIMANTAN SELATAN'),
(95, 19, 2, '<h5>Ingin bantuan dalam membeli produk bahan bangunan di Arsimetris Djaja Atau butuh informasi tentang keagenan maupun layanan kami?</h5><p>Tinggalkan detil kontak anda di bawah, kami akan membantu anda.</p>'),
(96, 20, 2, '<p>Staff layanan pelanggan dari Arsimetris Djaja Banjarmasin akan segera menghubungi anda setelah anda melakukan submit data kontak anda, pada hari dan jam kerja berikutnya.</p>'),
(97, 22, 2, 'Profil'),
(98, 23, 2, 'Sejarah & Informasi Perusahaan Arsimetris Djaja'),
(99, 24, 2, '<h3>Arsimetris Djaja adalah sebuah nama yang dapat anda percaya untuk seluruh kebutuhan material bahan bangunan anda di Banjarmasin, Kalimantan Selatan dan kota lain di sekitarnya.</h3><p>Berdiri sejak tahun 2009 di Banjarmasin, Arsimetrid Djaja berkembang dari sebuah toko kecil dan kini telah melesat dengan memiliki infrastruktur gudang sebesar lebih dari 2 hektar untuk memenuhi permintaan aneka keperluan bahan bangunan di Banjarmasin dan Kalimantan pada umumnya. Keunggulan Arsimetris Djaja adalah dalam kehandalan pelayanan, keragaman produk berkualitas, serta ketersediaan stok yang mencukupi permintaan. Dengan konsep gallery dan pusat edukasi produk, Arsimetris Djaja adalah bukan sebuah toko atau agen bahan bangunan biasa, namun lebih sebagai pusat solusi dan pusat konsultasi yang akan menjawab segala kebutuhan informasi akan produk kami.</p>'),
(100, 26, 2, ' Gallery Kami'),
(101, 27, 2, 'Gallery Arsimetris Djaja adalah tempat display produk yang kami rancang untuk mempermudah pelanggan mencari apa yang diinginkan dan membedakan satu sama lain secara cepat. Arsimetris Djaja memberikan sebuah pengalaman pelanggan untuk berinteraksi dan tidak sekedar membayangkan aplikasi produk. Staf layanan pelanggan kami selalu siap menjadi konsultan yang akan memberi pengetahuan produk yang dicari oleh para pelanggan.'),
(102, 29, 2, 'Komitmen Pelayanan Kami'),
(103, 30, 2, 'Arsimetris Djaja Banjarmasin adalah yang terbaik dalam memberikan pelayanan kepada pelanggan. Tujuan utama layanan kami adalah memastikan kepuasan 100% dari pelanggan kami. Pendekatan solutif, usulan yang efisien, pemecahan problem serta konsultasi produk adalah menjadi Standar Operasi Prosedur (SOP) kami dalam melayani tiap pelanggan, tanpa melihat besar kecilnya kebutuhan. Mari datang ke Arsimetris Djaja Banjarmasin dan buktikan pernyataan kami ini.'),
(104, 32, 2, 'Mutu Produk Kami'),
(105, 33, 2, 'Seluruh produk yang kami bawa di Arsimetris Djaja adalah produk unggulan dan produk pilihan yang telah terbukti kualitas dan kehandalannya. Kami memastikan seluruh produk yang diterima oleh pelanggan adalah produk yang tidak cacat dan bukan kualitas kedua. Komitmen kami terhadap mutu juga kami buktikan dengan komitmen untuk melakukan retur / penukaran barang rusak sesuai dengan syarat dan kondisi.'),
(106, 34, 2, '<p>Arsimetris Djaja sebagai tempat pertama yang muncul di benak pikiran para rekan kontraktor, arsitek, desainer, hingga pemilik proyek di Kalimantan dan sekitarnya ketika mereka memikirkan akan aneka produk bahan bangunan berkualitas serta menanamkan perasaan aman di hati karena produk dan layanan yang terpercaya memuaskan.<br></p>'),
(107, 35, 2, '<p>Makin memperluas jaringan dengan kerjasama keagenan yang memampukan distribusi serapan produk bahan bangunan secara lebih merata di Kalimantan dan sekitarnya. <br></p><p><br>Melayani dengan hati dan selalu memikirkan berbagai cara kreatif untuk memberikan rasa nyaman sekaligus mempermudah para pelanggan dalam mencari apa yang mereka inginkan secara efisien.\r\n</p>'),
(108, 41, 2, 'Merk & Keagenan'),
(109, 42, 2, 'Aneka merk yang tergabung di Arsimetris Djaja \r\ndan peluang bekerjasama / keagenan.'),
(110, 43, 2, '<h3><strong>Arsimetris Djaja</strong> adalah sebuah nama yang dapat anda percaya untuk seluruh kebutuhan material bahan bangunan anda di Banjarmasin, Kalimantan Selatan dan kota lain di sekitarnya.</h3><p>Adalah pembuktian dari kerja keras, keuletan, dan hasrat untuk memajukan sektor infrastruktur dengan menggunakan aneka bahan bangunan terbaik yang membuat Arsimetris Djaja dipercaya oleh perusahan top di Indonesia untuk memasarkan aneka produknya di Banjarmasin. Arsimetris Djaja tidak hanya mendistribusikan, namun telah menjadi gallery maupun pusat edukasi dan informasi akan produk-produk yang dibawanya. Hal ini memberikan kenyamanan kepada calon pembeli yang berasal dari arsitek, desainer, kontraktor hingga end-user / pemilik proyek. <br><br>Komitmen kami pada masyarakat Banjarmasin - Kalimantan dan sekitarnya adalah tidak sekedar mencari untung, namun memberikan pelanggan sebuah pengalaman, pengetahuan dan pada akhirnya kepuasan jangka panjang serta hubungan yang berkelanjutan.\r\n</p>'),
(111, 44, 2, '<p>DENGAN BANGGA, ARSIMETRIS DJAJA DI BANJARMASIN, KALIMANTAN SELATAN MEMPERSEMBAHKAN <br>ANEKA BRAND PRODUK BAHAN BANGUNAN PREMIUM YANG BERKUALITAS TINGGI</p>'),
(112, 46, 2, 'Jangkauan Pemasaran Aneka Produk Bahan Bangunan Kami di Banjarmasin (Kalimantan) dan sekitarnya.'),
(113, 47, 2, '<p>Kami memberikan pelayanan terbaik dan harga terbaik serta membuka kesempatan bagi toko atau pelanggan untuk menjadi agen dagang untuk produk produk eksklusif kami.</p>'),
(114, 37, 2, 'Become our agent'),
(115, 38, 2, 'Peluang Untuk Menuju Sukses  Ada Di Depan Anda!'),
(116, 39, 2, '<h3><b>Arsimetris Djaja</b> membuka segala kesempatan untuk bekerja sama dan memperkuat jaringan distribusi untuk kesejahteraan bersama para agen dan toko yang tergabung. Dengan ekslusifitas produk yang dicari oleh masyarakat, jalan menuju kesuksesan terbuka lebar di depan.</h3>\r\n<p>Anda memiliki toko bahan bangunan? Memiliki gudang distribusi? Atau pemasok proyek? Arsimetris Djaja akan siap memberikan dukungan sebagai agen prinsipal berbagai bahan bangunan seperti granit tile, aneka saniter, aneka atap bangunan, dan bahan bangunan lainnya dengan pelayanan terbaik serta harga terbaik. Kami membuka kesempatan bagi toko atau pelanggan untuk menjadi agen dagang untuk produk produk eksklusif kami. <br>Silahkan menghubungi kami dengan mengisi form di bawah ini.\r\n</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shp_shipping_price`
--

CREATE TABLE `shp_shipping_price` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shp_shipping_price`
--

INSERT INTO `shp_shipping_price` (`id`, `type`, `weight`, `price`) VALUES
(1, 1, 1, '20.0000'),
(2, 1, 2, '20.0000'),
(3, 1, 0, '20.0000'),
(4, 1, 3, '20.0000'),
(5, 1, 4, '20.0000'),
(6, 1, 5, '20.0000'),
(7, 1, 6, '20.0000'),
(8, 1, 7, '20.0000'),
(9, 1, 8, '20.0000'),
(10, 1, 9, '20.0000'),
(11, 1, 10, '20.0000'),
(12, 1, 11, '20.0000'),
(13, 1, 12, '20.0000'),
(14, 1, 13, '20.0000'),
(15, 1, 14, '20.0000'),
(16, 1, 15, '20.0000'),
(17, 1, 16, '20.0000'),
(18, 1, 17, '20.0000'),
(19, 1, 18, '20.0000'),
(20, 1, 19, '20.0000'),
(21, 1, 20, '40.0000'),
(22, 1, 21, '40.0000'),
(23, 1, 22, '40.0000'),
(24, 1, 23, '40.0000'),
(25, 1, 24, '40.0000'),
(26, 1, 25, '40.0000'),
(27, 1, 26, '40.0000'),
(28, 1, 27, '40.0000'),
(29, 1, 28, '40.0000'),
(30, 1, 29, '40.0000'),
(31, 1, 30, '40.0000'),
(32, 1, 31, '40.0000'),
(33, 1, 32, '40.0000'),
(34, 1, 33, '40.0000'),
(35, 1, 34, '40.0000'),
(36, 1, 35, '40.0000'),
(37, 1, 36, '40.0000'),
(38, 1, 37, '40.0000'),
(39, 1, 38, '40.0000'),
(40, 1, 39, '40.0000'),
(41, 1, 40, '60.0000'),
(42, 1, 41, '60.0000'),
(43, 1, 42, '60.0000'),
(44, 1, 43, '60.0000'),
(45, 1, 44, '60.0000'),
(46, 1, 45, '60.0000'),
(47, 1, 46, '60.0000'),
(48, 1, 47, '60.0000'),
(49, 1, 48, '60.0000'),
(50, 1, 49, '60.0000'),
(51, 1, 50, '60.0000'),
(52, 1, 51, '60.0000'),
(53, 1, 52, '60.0000'),
(54, 1, 53, '60.0000'),
(55, 1, 54, '60.0000'),
(56, 1, 55, '60.0000'),
(57, 1, 56, '60.0000'),
(58, 1, 57, '60.0000'),
(59, 1, 58, '60.0000'),
(60, 1, 59, '60.0000'),
(61, 1, 60, '80.0000'),
(62, 1, 61, '80.0000'),
(63, 1, 62, '80.0000'),
(64, 1, 63, '80.0000'),
(65, 1, 64, '80.0000'),
(66, 1, 65, '80.0000'),
(67, 1, 66, '80.0000'),
(68, 1, 67, '80.0000'),
(69, 1, 68, '80.0000'),
(70, 1, 69, '80.0000'),
(71, 1, 70, '80.0000'),
(72, 1, 71, '80.0000'),
(73, 1, 72, '80.0000'),
(74, 1, 73, '80.0000'),
(75, 1, 74, '80.0000'),
(76, 1, 75, '80.0000'),
(77, 1, 76, '80.0000'),
(78, 1, 77, '80.0000'),
(79, 1, 78, '80.0000'),
(80, 1, 79, '80.0000'),
(81, 1, 80, '100.0000'),
(82, 1, 81, '100.0000'),
(83, 1, 82, '100.0000'),
(84, 1, 83, '100.0000'),
(85, 1, 84, '100.0000'),
(86, 1, 85, '100.0000'),
(87, 1, 86, '100.0000'),
(88, 1, 87, '100.0000'),
(89, 1, 88, '100.0000'),
(90, 1, 89, '100.0000'),
(91, 1, 90, '100.0000'),
(92, 1, 91, '100.0000'),
(93, 1, 92, '100.0000'),
(94, 1, 93, '100.0000'),
(95, 1, 94, '100.0000'),
(96, 1, 95, '100.0000'),
(97, 1, 96, '100.0000'),
(98, 1, 97, '100.0000'),
(99, 1, 98, '100.0000'),
(100, 1, 99, '100.0000'),
(101, 2, 0, '12.0000'),
(102, 2, 1, '12.0000'),
(103, 2, 2, '12.0000'),
(104, 2, 3, '12.0000'),
(105, 2, 4, '12.0000'),
(106, 2, 5, '12.0000'),
(107, 2, 6, '12.0000'),
(108, 2, 7, '12.0000'),
(109, 2, 8, '12.0000'),
(110, 2, 9, '12.0000'),
(111, 2, 10, '12.0000'),
(112, 2, 11, '12.0000'),
(113, 2, 12, '12.0000'),
(114, 2, 13, '12.0000'),
(115, 2, 14, '12.0000'),
(116, 2, 15, '12.0000'),
(117, 2, 16, '12.0000'),
(118, 2, 17, '12.0000'),
(119, 2, 18, '12.0000'),
(120, 2, 19, '12.0000'),
(121, 2, 20, '24.0000'),
(122, 2, 21, '24.0000'),
(123, 2, 22, '24.0000'),
(124, 2, 23, '24.0000'),
(125, 2, 24, '24.0000'),
(126, 2, 25, '24.0000'),
(127, 2, 26, '24.0000'),
(128, 2, 27, '24.0000'),
(129, 2, 28, '24.0000'),
(130, 2, 29, '24.0000'),
(131, 2, 30, '24.0000'),
(132, 2, 31, '24.0000'),
(133, 2, 32, '24.0000'),
(134, 2, 33, '24.0000'),
(135, 2, 34, '24.0000'),
(136, 2, 35, '24.0000'),
(137, 2, 36, '24.0000'),
(138, 2, 37, '24.0000'),
(139, 2, 38, '24.0000'),
(140, 2, 39, '24.0000'),
(141, 2, 40, '48.0000'),
(142, 2, 41, '48.0000'),
(143, 2, 42, '48.0000'),
(144, 2, 43, '48.0000'),
(145, 2, 44, '48.0000'),
(146, 2, 45, '48.0000'),
(147, 2, 46, '48.0000'),
(148, 2, 47, '48.0000'),
(149, 2, 48, '48.0000'),
(150, 2, 49, '48.0000'),
(151, 2, 50, '48.0000'),
(152, 2, 51, '48.0000'),
(153, 2, 52, '48.0000'),
(154, 2, 53, '48.0000'),
(155, 2, 54, '48.0000'),
(156, 2, 55, '48.0000'),
(157, 2, 56, '48.0000'),
(158, 2, 57, '48.0000'),
(159, 2, 58, '48.0000'),
(160, 2, 59, '48.0000'),
(161, 2, 60, '60.0000'),
(162, 2, 61, '60.0000'),
(163, 2, 62, '60.0000'),
(164, 2, 63, '60.0000'),
(165, 2, 64, '60.0000'),
(166, 2, 65, '60.0000'),
(167, 2, 66, '60.0000'),
(168, 2, 67, '60.0000'),
(169, 2, 68, '60.0000'),
(170, 2, 69, '60.0000'),
(171, 2, 70, '60.0000'),
(172, 2, 71, '60.0000'),
(173, 2, 72, '60.0000'),
(174, 2, 73, '60.0000'),
(175, 2, 74, '60.0000'),
(176, 2, 75, '60.0000'),
(177, 2, 76, '60.0000'),
(178, 2, 77, '60.0000'),
(179, 2, 78, '60.0000'),
(180, 2, 79, '60.0000'),
(181, 2, 80, '72.0000'),
(182, 2, 81, '72.0000'),
(183, 2, 82, '72.0000'),
(184, 2, 83, '72.0000'),
(185, 2, 84, '72.0000'),
(186, 2, 85, '72.0000'),
(187, 2, 86, '72.0000'),
(188, 2, 87, '72.0000'),
(189, 2, 88, '72.0000'),
(190, 2, 89, '72.0000'),
(191, 2, 90, '72.0000'),
(192, 2, 91, '72.0000'),
(193, 2, 92, '72.0000'),
(194, 2, 93, '72.0000'),
(195, 2, 94, '72.0000'),
(196, 2, 95, '72.0000'),
(197, 2, 96, '72.0000'),
(198, 2, 97, '72.0000'),
(199, 2, 98, '72.0000'),
(200, 2, 99, '72.0000'),
(201, 3, 0, '25.0000'),
(202, 3, 1, '25.0000'),
(203, 3, 2, '25.0000'),
(204, 3, 3, '25.0000'),
(205, 3, 4, '25.0000'),
(206, 3, 5, '25.0000'),
(207, 3, 6, '25.0000'),
(208, 3, 7, '25.0000'),
(209, 3, 8, '25.0000'),
(210, 3, 9, '25.0000'),
(211, 3, 10, '25.0000'),
(212, 3, 11, '25.0000'),
(213, 3, 12, '25.0000'),
(214, 3, 13, '25.0000'),
(215, 3, 14, '25.0000'),
(216, 3, 15, '25.0000'),
(217, 3, 16, '25.0000'),
(218, 3, 17, '25.0000'),
(219, 3, 18, '25.0000'),
(220, 3, 19, '25.0000'),
(221, 3, 20, '50.0000'),
(222, 3, 21, '50.0000'),
(223, 3, 22, '50.0000'),
(224, 3, 23, '50.0000'),
(225, 3, 24, '50.0000'),
(226, 3, 25, '50.0000'),
(227, 3, 26, '50.0000'),
(228, 3, 27, '50.0000'),
(229, 3, 28, '50.0000'),
(230, 3, 29, '50.0000'),
(231, 3, 30, '50.0000'),
(232, 3, 31, '50.0000'),
(233, 3, 32, '50.0000'),
(234, 3, 33, '50.0000'),
(235, 3, 34, '50.0000'),
(236, 3, 35, '50.0000'),
(237, 3, 36, '50.0000'),
(238, 3, 37, '50.0000'),
(239, 3, 38, '50.0000'),
(240, 3, 39, '50.0000'),
(241, 3, 40, '75.0000'),
(242, 3, 41, '75.0000'),
(243, 3, 42, '75.0000'),
(244, 3, 43, '75.0000'),
(245, 3, 44, '75.0000'),
(246, 3, 45, '75.0000'),
(247, 3, 46, '75.0000'),
(248, 3, 47, '75.0000'),
(249, 3, 48, '75.0000'),
(250, 3, 49, '75.0000'),
(251, 3, 50, '75.0000'),
(252, 3, 51, '75.0000'),
(253, 3, 52, '75.0000'),
(254, 3, 53, '75.0000'),
(255, 3, 54, '75.0000'),
(256, 3, 55, '75.0000'),
(257, 3, 56, '75.0000'),
(258, 3, 57, '75.0000'),
(259, 3, 58, '75.0000'),
(260, 3, 59, '75.0000'),
(261, 3, 60, '100.0000'),
(262, 3, 61, '100.0000'),
(263, 3, 62, '100.0000'),
(264, 3, 63, '100.0000'),
(265, 3, 64, '100.0000'),
(266, 3, 65, '100.0000'),
(267, 3, 66, '100.0000'),
(268, 3, 67, '100.0000'),
(269, 3, 68, '100.0000'),
(270, 3, 69, '100.0000'),
(271, 3, 70, '100.0000'),
(272, 3, 71, '100.0000'),
(273, 3, 72, '100.0000'),
(274, 3, 73, '100.0000'),
(275, 3, 74, '100.0000'),
(276, 3, 75, '100.0000'),
(277, 3, 76, '100.0000'),
(278, 3, 77, '100.0000'),
(279, 3, 78, '100.0000'),
(280, 3, 79, '100.0000'),
(281, 3, 80, '125.0000'),
(282, 3, 81, '125.0000'),
(283, 3, 82, '125.0000'),
(284, 3, 83, '125.0000'),
(285, 3, 84, '125.0000'),
(286, 3, 85, '125.0000'),
(287, 3, 86, '125.0000'),
(288, 3, 87, '125.0000'),
(289, 3, 88, '125.0000'),
(290, 3, 89, '125.0000'),
(291, 3, 90, '125.0000'),
(292, 3, 91, '125.0000'),
(293, 3, 92, '125.0000'),
(294, 3, 93, '125.0000'),
(295, 3, 94, '125.0000'),
(296, 3, 95, '125.0000'),
(297, 3, 96, '125.0000'),
(298, 3, 97, '125.0000'),
(299, 3, 98, '125.0000'),
(300, 3, 99, '125.0000'),
(301, 4, 1, '29.0000'),
(302, 4, 2, '29.0000'),
(303, 4, 0, '29.0000'),
(304, 4, 3, '29.0000'),
(305, 4, 4, '29.0000'),
(306, 4, 5, '29.0000'),
(307, 4, 6, '29.0000'),
(308, 4, 7, '29.0000'),
(309, 4, 8, '29.0000'),
(310, 4, 9, '29.0000'),
(311, 4, 10, '29.0000'),
(312, 4, 11, '29.0000'),
(313, 4, 12, '29.0000'),
(314, 4, 13, '29.0000'),
(315, 4, 14, '29.0000'),
(316, 4, 15, '29.0000'),
(317, 4, 16, '29.0000'),
(318, 4, 17, '29.0000'),
(319, 4, 18, '29.0000'),
(320, 4, 19, '29.0000'),
(321, 4, 20, '58.0000'),
(322, 4, 21, '58.0000'),
(323, 4, 22, '58.0000'),
(324, 4, 23, '58.0000'),
(325, 4, 24, '58.0000'),
(326, 4, 25, '58.0000'),
(327, 4, 26, '58.0000'),
(328, 4, 27, '58.0000'),
(329, 4, 28, '58.0000'),
(330, 4, 29, '58.0000'),
(331, 4, 30, '58.0000'),
(332, 4, 31, '58.0000'),
(333, 4, 32, '58.0000'),
(334, 4, 33, '58.0000'),
(335, 4, 34, '58.0000'),
(336, 4, 35, '58.0000'),
(337, 4, 36, '58.0000'),
(338, 4, 37, '58.0000'),
(339, 4, 38, '58.0000'),
(340, 4, 39, '58.0000'),
(341, 4, 40, '87.0000'),
(342, 4, 41, '87.0000'),
(343, 4, 42, '87.0000'),
(344, 4, 43, '87.0000'),
(345, 4, 44, '87.0000'),
(346, 4, 45, '87.0000'),
(347, 4, 46, '87.0000'),
(348, 4, 47, '87.0000'),
(349, 4, 48, '87.0000'),
(350, 4, 49, '87.0000'),
(351, 4, 50, '87.0000'),
(352, 4, 51, '87.0000'),
(353, 4, 52, '87.0000'),
(354, 4, 53, '87.0000'),
(355, 4, 54, '87.0000'),
(356, 4, 55, '87.0000'),
(357, 4, 56, '87.0000'),
(358, 4, 57, '87.0000'),
(359, 4, 58, '87.0000'),
(360, 4, 59, '87.0000'),
(361, 4, 60, '116.0000'),
(362, 4, 61, '116.0000'),
(363, 4, 62, '116.0000'),
(364, 4, 63, '116.0000'),
(365, 4, 64, '116.0000'),
(366, 4, 65, '116.0000'),
(367, 4, 66, '116.0000'),
(368, 4, 67, '116.0000'),
(369, 4, 68, '116.0000'),
(370, 4, 69, '116.0000'),
(371, 4, 70, '116.0000'),
(372, 4, 71, '116.0000'),
(373, 4, 72, '116.0000'),
(374, 4, 73, '116.0000'),
(375, 4, 74, '116.0000'),
(376, 4, 75, '116.0000'),
(377, 4, 76, '116.0000'),
(378, 4, 77, '116.0000'),
(379, 4, 78, '116.0000'),
(380, 4, 79, '116.0000'),
(381, 4, 80, '145.0000'),
(382, 4, 81, '145.0000'),
(383, 4, 82, '145.0000'),
(384, 4, 83, '145.0000'),
(385, 4, 84, '145.0000'),
(386, 4, 85, '145.0000'),
(387, 4, 86, '145.0000'),
(388, 4, 87, '145.0000'),
(389, 4, 88, '145.0000'),
(390, 4, 89, '145.0000'),
(391, 4, 90, '145.0000'),
(392, 4, 91, '145.0000'),
(393, 4, 92, '145.0000'),
(394, 4, 93, '145.0000'),
(395, 4, 94, '145.0000'),
(396, 4, 95, '145.0000'),
(397, 4, 96, '145.0000'),
(398, 4, 97, '145.0000'),
(399, 4, 98, '145.0000'),
(400, 4, 99, '145.0000'),
(401, 5, 0, '21.0000'),
(402, 5, 1, '21.0000'),
(403, 5, 2, '21.0000'),
(404, 5, 3, '21.0000'),
(405, 5, 4, '21.0000'),
(406, 5, 5, '21.0000'),
(407, 5, 6, '21.0000'),
(408, 5, 7, '21.0000'),
(409, 5, 8, '21.0000'),
(410, 5, 9, '21.0000'),
(411, 5, 10, '21.0000'),
(412, 5, 11, '21.0000'),
(413, 5, 12, '21.0000'),
(414, 5, 13, '21.0000'),
(415, 5, 14, '21.0000'),
(416, 5, 15, '21.0000'),
(417, 5, 16, '21.0000'),
(418, 5, 17, '21.0000'),
(419, 5, 18, '21.0000'),
(420, 5, 19, '21.0000'),
(421, 5, 20, '42.0000'),
(422, 5, 21, '42.0000'),
(423, 5, 22, '42.0000'),
(424, 5, 23, '42.0000'),
(425, 5, 24, '42.0000'),
(426, 5, 25, '42.0000'),
(427, 5, 26, '42.0000'),
(428, 5, 27, '42.0000'),
(429, 5, 28, '42.0000'),
(430, 5, 29, '42.0000'),
(431, 5, 30, '42.0000'),
(432, 5, 31, '42.0000'),
(433, 5, 32, '42.0000'),
(434, 5, 33, '42.0000'),
(435, 5, 34, '42.0000'),
(436, 5, 35, '42.0000'),
(437, 5, 36, '42.0000'),
(438, 5, 37, '42.0000'),
(439, 5, 38, '42.0000'),
(440, 5, 39, '42.0000'),
(441, 5, 40, '75.0000'),
(442, 5, 41, '75.0000'),
(443, 5, 42, '75.0000'),
(444, 5, 43, '75.0000'),
(445, 5, 44, '75.0000'),
(446, 5, 45, '75.0000'),
(447, 5, 46, '75.0000'),
(448, 5, 47, '75.0000'),
(449, 5, 48, '75.0000'),
(450, 5, 49, '75.0000'),
(451, 5, 50, '75.0000'),
(452, 5, 51, '75.0000'),
(453, 5, 52, '75.0000'),
(454, 5, 53, '75.0000'),
(455, 5, 54, '75.0000'),
(456, 5, 55, '75.0000'),
(457, 5, 56, '75.0000'),
(458, 5, 57, '75.0000'),
(459, 5, 58, '75.0000'),
(460, 5, 59, '75.0000'),
(461, 5, 60, '96.0000'),
(462, 5, 61, '96.0000'),
(463, 5, 62, '96.0000'),
(464, 5, 63, '96.0000'),
(465, 5, 64, '96.0000'),
(466, 5, 65, '96.0000'),
(467, 5, 66, '96.0000'),
(468, 5, 67, '96.0000'),
(469, 5, 68, '96.0000'),
(470, 5, 69, '96.0000'),
(471, 5, 70, '96.0000'),
(472, 5, 71, '96.0000'),
(473, 5, 72, '96.0000'),
(474, 5, 73, '96.0000'),
(475, 5, 74, '96.0000'),
(476, 5, 75, '96.0000'),
(477, 5, 76, '96.0000'),
(478, 5, 77, '96.0000'),
(479, 5, 78, '96.0000'),
(480, 5, 79, '96.0000'),
(481, 5, 80, '117.0000'),
(482, 5, 81, '117.0000'),
(483, 5, 82, '117.0000'),
(484, 5, 83, '117.0000'),
(485, 5, 84, '117.0000'),
(486, 5, 85, '117.0000'),
(487, 5, 86, '117.0000'),
(488, 5, 87, '117.0000'),
(489, 5, 88, '117.0000'),
(490, 5, 89, '117.0000'),
(491, 5, 90, '117.0000'),
(492, 5, 91, '117.0000'),
(493, 5, 92, '117.0000'),
(494, 5, 93, '117.0000'),
(495, 5, 94, '117.0000'),
(496, 5, 95, '117.0000'),
(497, 5, 96, '117.0000'),
(498, 5, 97, '117.0000'),
(499, 5, 98, '117.0000'),
(500, 5, 99, '117.0000'),
(501, 6, 0, '34.0000'),
(502, 6, 1, '34.0000'),
(503, 6, 2, '34.0000'),
(504, 6, 3, '34.0000'),
(505, 6, 4, '34.0000'),
(506, 6, 5, '34.0000'),
(507, 6, 6, '34.0000'),
(508, 6, 7, '34.0000'),
(509, 6, 8, '34.0000'),
(510, 6, 9, '34.0000'),
(511, 6, 10, '34.0000'),
(512, 6, 11, '34.0000'),
(513, 6, 12, '34.0000'),
(514, 6, 13, '34.0000'),
(515, 6, 14, '34.0000'),
(516, 6, 15, '34.0000'),
(517, 6, 16, '34.0000'),
(518, 6, 17, '34.0000'),
(519, 6, 18, '34.0000'),
(520, 6, 19, '34.0000'),
(521, 6, 20, '68.0000'),
(522, 6, 21, '68.0000'),
(523, 6, 22, '68.0000'),
(524, 6, 23, '68.0000'),
(525, 6, 24, '68.0000'),
(526, 6, 25, '68.0000'),
(527, 6, 26, '68.0000'),
(528, 6, 27, '68.0000'),
(529, 6, 28, '68.0000'),
(530, 6, 29, '68.0000'),
(531, 6, 30, '68.0000'),
(532, 6, 31, '68.0000'),
(533, 6, 32, '68.0000'),
(534, 6, 33, '68.0000'),
(535, 6, 34, '68.0000'),
(536, 6, 35, '68.0000'),
(537, 6, 36, '68.0000'),
(538, 6, 37, '68.0000'),
(539, 6, 38, '68.0000'),
(540, 6, 39, '68.0000'),
(541, 6, 40, '102.0000'),
(542, 6, 41, '102.0000'),
(543, 6, 42, '102.0000'),
(544, 6, 43, '102.0000'),
(545, 6, 44, '102.0000'),
(546, 6, 45, '102.0000'),
(547, 6, 46, '102.0000'),
(548, 6, 47, '102.0000'),
(549, 6, 48, '102.0000'),
(550, 6, 49, '102.0000'),
(551, 6, 50, '102.0000'),
(552, 6, 51, '102.0000'),
(553, 6, 52, '102.0000'),
(554, 6, 53, '102.0000'),
(555, 6, 54, '102.0000'),
(556, 6, 55, '102.0000'),
(557, 6, 56, '102.0000'),
(558, 6, 57, '102.0000'),
(559, 6, 58, '102.0000'),
(560, 6, 59, '102.0000'),
(561, 6, 60, '136.0000'),
(562, 6, 61, '136.0000'),
(563, 6, 62, '136.0000'),
(564, 6, 63, '136.0000'),
(565, 6, 64, '136.0000'),
(566, 6, 65, '136.0000'),
(567, 6, 66, '136.0000'),
(568, 6, 67, '136.0000'),
(569, 6, 68, '136.0000'),
(570, 6, 69, '136.0000'),
(571, 6, 70, '136.0000'),
(572, 6, 71, '136.0000'),
(573, 6, 72, '136.0000'),
(574, 6, 73, '136.0000'),
(575, 6, 74, '136.0000'),
(576, 6, 75, '136.0000'),
(577, 6, 76, '136.0000'),
(578, 6, 77, '136.0000'),
(579, 6, 78, '136.0000'),
(580, 6, 79, '136.0000'),
(581, 6, 80, '170.0000'),
(582, 6, 81, '170.0000'),
(583, 6, 82, '170.0000'),
(584, 6, 83, '170.0000'),
(585, 6, 84, '170.0000'),
(586, 6, 85, '170.0000'),
(587, 6, 86, '170.0000'),
(588, 6, 87, '170.0000'),
(589, 6, 88, '170.0000'),
(590, 6, 89, '170.0000'),
(591, 6, 90, '170.0000'),
(592, 6, 91, '170.0000'),
(593, 6, 92, '170.0000'),
(594, 6, 93, '170.0000'),
(595, 6, 94, '170.0000'),
(596, 6, 95, '170.0000'),
(597, 6, 96, '170.0000'),
(598, 6, 97, '170.0000'),
(599, 6, 98, '170.0000'),
(600, 6, 99, '170.0000'),
(601, 7, 1, '0.0000'),
(602, 7, 2, '0.0000'),
(603, 7, 0, '0.0000'),
(604, 7, 3, '0.0000'),
(605, 7, 4, '0.0000'),
(606, 7, 5, '0.0000'),
(607, 7, 6, '0.0000'),
(608, 7, 7, '0.0000'),
(609, 7, 8, '0.0000'),
(610, 7, 9, '0.0000'),
(611, 7, 10, '0.0000'),
(612, 7, 11, '0.0000'),
(613, 7, 12, '0.0000'),
(614, 7, 13, '0.0000'),
(615, 7, 14, '0.0000'),
(616, 7, 15, '0.0000'),
(617, 7, 16, '0.0000'),
(618, 7, 17, '0.0000'),
(619, 7, 18, '0.0000'),
(620, 7, 19, '0.0000'),
(621, 7, 20, '0.0000'),
(622, 7, 21, '0.0000'),
(623, 7, 22, '0.0000'),
(624, 7, 23, '0.0000'),
(625, 7, 24, '0.0000'),
(626, 7, 25, '0.0000'),
(627, 7, 26, '0.0000'),
(628, 7, 27, '0.0000'),
(629, 7, 28, '0.0000'),
(630, 7, 29, '0.0000'),
(631, 7, 30, '0.0000'),
(632, 7, 31, '0.0000'),
(633, 7, 32, '0.0000'),
(634, 7, 33, '0.0000'),
(635, 7, 34, '0.0000'),
(636, 7, 35, '0.0000'),
(637, 7, 36, '0.0000'),
(638, 7, 37, '0.0000'),
(639, 7, 38, '0.0000'),
(640, 7, 39, '0.0000'),
(641, 7, 40, '0.0000'),
(642, 7, 41, '0.0000'),
(643, 7, 42, '0.0000'),
(644, 7, 43, '0.0000'),
(645, 7, 44, '0.0000'),
(646, 7, 45, '0.0000'),
(647, 7, 46, '0.0000'),
(648, 7, 47, '0.0000'),
(649, 7, 48, '0.0000'),
(650, 7, 49, '0.0000'),
(651, 7, 50, '0.0000'),
(652, 7, 51, '0.0000'),
(653, 7, 52, '0.0000'),
(654, 7, 53, '0.0000'),
(655, 7, 54, '0.0000'),
(656, 7, 55, '0.0000'),
(657, 7, 56, '0.0000'),
(658, 7, 57, '0.0000'),
(659, 7, 58, '0.0000'),
(660, 7, 59, '0.0000'),
(661, 7, 60, '0.0000'),
(662, 7, 61, '0.0000'),
(663, 7, 62, '0.0000'),
(664, 7, 63, '0.0000'),
(665, 7, 64, '0.0000'),
(666, 7, 65, '0.0000'),
(667, 7, 66, '0.0000'),
(668, 7, 67, '0.0000'),
(669, 7, 68, '0.0000'),
(670, 7, 69, '0.0000'),
(671, 7, 70, '0.0000'),
(672, 7, 71, '0.0000'),
(673, 7, 72, '0.0000'),
(674, 7, 73, '0.0000'),
(675, 7, 74, '0.0000'),
(676, 7, 75, '0.0000'),
(677, 7, 76, '0.0000'),
(678, 7, 77, '0.0000'),
(679, 7, 78, '0.0000'),
(680, 7, 79, '0.0000'),
(681, 7, 80, '0.0000'),
(682, 7, 81, '0.0000'),
(683, 7, 82, '0.0000'),
(684, 7, 83, '0.0000'),
(685, 7, 84, '0.0000'),
(686, 7, 85, '0.0000'),
(687, 7, 86, '0.0000'),
(688, 7, 87, '0.0000'),
(689, 7, 88, '0.0000'),
(690, 7, 89, '0.0000'),
(691, 7, 90, '0.0000'),
(692, 7, 91, '0.0000'),
(693, 7, 92, '0.0000'),
(694, 7, 93, '0.0000'),
(695, 7, 94, '0.0000'),
(696, 7, 95, '0.0000'),
(697, 7, 96, '0.0000'),
(698, 7, 97, '0.0000'),
(699, 7, 98, '0.0000'),
(700, 7, 99, '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide`
--

CREATE TABLE `sl_slide` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(225) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `url`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `sort`) VALUES
(14, 0, '16afc-DESIGN.jpg', NULL, 1, '0000-00-00 00:00:00', '2019-07-31 09:47:35', 'deoryzpandu@gmail.com', 'info@markdesign.net', '', 1),
(20, 0, 'fd014-6a987-16b7e-design2_07.jpg', NULL, 2, '0000-00-00 00:00:00', '2018-10-18 14:59:25', 'info@markdesign.net', 'info@markdesign.net', '', 2),
(21, 0, '4030f-6a987-16b7e-design2_07.jpg', NULL, 2, '0000-00-00 00:00:00', '2018-10-18 14:59:33', 'info@markdesign.net', 'info@markdesign.net', '', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide_description`
--

CREATE TABLE `sl_slide_description` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `periode` varchar(100) NOT NULL,
  `url_teks` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `subtitle`, `content`, `periode`, `url_teks`, `url`) VALUES
(20, 4, 2, 'understand', '', '<p>\r\n	understand\r\n</p>', '', '', ''),
(21, 5, 2, 'chinese new year', '', '<p>\r\n	chinese new year\r\n</p>', '', '', ''),
(28, 6, 2, 'Title 1', '', '', '', '', ''),
(42, 7, 2, 'Years of uncompromised style.', '', 'From the start, our mission has been to create our Indonesian people proudness of local products,\r\nLinette bags line build consciousnes and love to our customer through exceptional designs that competes\r\nin the international market of fashion.', '', '', '#'),
(25, 8, 2, 'test', '', '', '', '', ''),
(27, 9, 2, 'test', '', '', '', '', ''),
(32, 10, 2, 'title 1', '', '', '', '', ''),
(33, 11, 2, 'title 3', '', '', '', '', ''),
(34, 12, 2, 'title 3', '', '', '', '', ''),
(37, 13, 2, 'Road to 2016', '', '', '', '', ''),
(72, 16, 2, 'Harga Turun Lagi', 'Yuk yang hobby fotografi, segera ikuti lomba foto street style dengan objek utama sepatu sneaker Pre', '<p>\r\n	 Hanya berlaku untuk pembelanjaan dengan nominal di atas Rp 1.000.000 (satu juta rupiah), dan tidak berlaku untuk produk dengan harga discount / potongan.\r\n</p>\r\n<p>\r\n	 Barang yang dibeli tidak dapat dikembalikan\r\n</p>\r\n<p>\r\n	 Valid untuk segala macam metode pembayaran\r\n</p>', '15 Juni - 9 July 2017', '', ''),
(77, 17, 2, 'your Colour, your Style', 'semakin banyak pilihan variasi warna , semakin melengkapi gayamu', '', '', '', ''),
(79, 15, 2, 'Harga Naik Lagi', 'Yuk yang hobby fotografi, segera ikuti lomba foto street style dengan objek utama sepatu sneaker Pre', '<p>\r\n	     Lorem ipsum dolor sit amet, consectetur adipisicing elit. Blanditiis vitae enim commodi nesciunt recusandae facilis perspiciatis dolorem a fugiat, alias reiciendis perferendis cumque distinctio vel, mollitia earum pariatur et, eum odit ab culpa harum itaque adipisci? Dolorem labore facilis, perspiciatis?\r\n</p>\r\n<p>\r\n	     Harum omnis, quod voluptates? Excepturi, nulla architecto esse natus magni sequi quibusdam modi ut, quia dolorum nesciunt unde deleniti ratione iure vel fuga cumque rem molestiae soluta ducimus odio eum voluptatum iusto! Nam eligendi, doloremque amet ipsam obcaecati, reiciendis asperiores.\r\n</p>\r\n<p>\r\n	     Rerum qui ratione dolorem nemo perferendis ut, necessitatibus similique fugiat voluptates debitis vel, numquam nisi beatae corporis dolor iusto? Voluptates doloremque quasi, at sapiente voluptatibus id ut neque ipsa, voluptatum quisquam quo dicta aperiam repellendus quam inventore adipisci molestiae deleniti.\r\n</p>\r\n<p>\r\n	     Molestiae, dolorem non officiis tempore ratione at? Officia inventore possimus dolores suscipit dicta obcaecati a architecto, iure, vel autem quia dolor praesentium nostrum perferendis enim ducimus fugiat omnis. Dolor maxime, aperiam quo reiciendis omnis eligendi quod maiores dolorum nostrum quibusdam.\r\n</p>\r\n<p>\r\n	     Libero quae maxime recusandae aspernatur ratione laborum laudantium iusto nam quaerat id laboriosam voluptatum vero perspiciatis repudiandae dolorum itaque doloremque officia reprehenderit quis impedit, assumenda harum corporis non! Quasi dolor quas vero dolore in odit atque libero enim tenetur commodi.\r\n</p>', '15 Septermber - 20 Semptember 2017', '', ''),
(70, 18, 2, 'Harga Turun Lagi', 'Yuk yang hobby fotografi, segera ikuti lomba foto street style dengan objek utama sepatu sneaker Pre', '<p>\r\n	 Hanya berlaku untuk pembelanjaan dengan nominal di atas Rp 1.000.000 (satu juta rupiah), dan tidak berlaku untuk produk dengan harga discount / potongan.\r\n</p>\r\n<p>\r\n	 Barang yang dibeli tidak dapat dikembalikan\r\n</p>\r\n<p>\r\n	 Valid untuk segala macam metode pembayaran\r\n</p>', '15 Juni - 9 July 2017', '', ''),
(69, 19, 2, 'Harga Turun Lagi', 'Yuk yang hobby fotografi, segera ikuti lomba foto street style dengan objek utama sepatu sneaker Pre', '<p>\r\n	 Hanya berlaku untuk pembelanjaan dengan nominal di atas Rp 1.000.000 (satu juta rupiah), dan tidak berlaku untuk produk dengan harga discount / potongan.\r\n</p>\r\n<p>\r\n	 Barang yang dibeli tidak dapat dikembalikan\r\n</p>\r\n<p>\r\n	 Valid untuk segala macam metode pembayaran\r\n</p>', '15 Juni - 9 July 2017', '', ''),
(95, 20, 2, 'The world under your feet', 'Jackson Brand brings footwear that sets the modern type.', '', '', '', 'https://markdesign.net/jackson/.dev/product/index'),
(96, 21, 2, 'The world under your feet', 'Jackson Brand brings footwear that sets the modern type.', '', '', '', 'http://markdesign.net/jackson/.dev/product/index'),
(97, 14, 2, 'The world under your feet', 'Jackson Brand brings footwear that sets the modern type.', '', '', '', 'http://markdesign.net/jackson/.dev/product/index');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_group`
--

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu_akses`
--

CREATE TABLE `tb_menu_akses` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` blob NOT NULL,
  `sub_action` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu_akses`
--

INSERT INTO `tb_menu_akses` (`id`, `type`, `name`, `controller`, `action`, `sub_action`) VALUES
(22, 'admin', 'User', 'user', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(21, 'admin', 'Slide', 'slide', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(40, 'admin', 'Bank', 'bank', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(18, 'admin', 'Setting', 'setting', 0x613a313a7b733a353a22696e646578223b733a31373a22456469742053657474696e6720556d756d223b7d, 0x613a303a7b7d),
(39, 'admin', 'Member', 'member', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(38, 'admin', 'Order', 'order', 0x613a353a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b733a353a227072696e74223b733a353a225072696e74223b7d, 0x613a303a7b7d),
(32, 'admin', 'Contact Us', 'setting', 0x613a313a7b733a373a22636f6e74616374223b733a32323a2245646974205061676520487562756e6769204b616d69223b7d, 0x613a303a7b7d),
(13, 'admin', 'About Us', 'setting', 0x613a313a7b733a353a2261626f7574223b733a31303a22456469742041626f7574223b7d, 0x613a303a7b7d),
(37, 'admin', 'Category', 'category', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(36, 'admin', 'How To Order', 'setting', 0x613a313a7b733a353a22686f77746f223b733a31323a22486f7720546f204f72646572223b7d, 0x613a303a7b7d),
(30, 'admin', 'Products', 'product', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(41, 'admin', 'Delivery Price', 'delivery', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2015-12-30 08:16:30', 0, 1, '', '2014-02-10 03:17:36', 'deory', ''),
(30, 'info@markdesign.net', 'info markdesign', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 8, '2015-12-30 08:17:01', 0, 1, '', '0000-00-00 00:00:00', 'Admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko`
--

CREATE TABLE `to_toko` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `nama_toko` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko`
--

INSERT INTO `to_toko` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `nama_toko`, `lokasi`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory', 'Pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-07 15:32:14', 0, 1, 'a448d-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'JewelryShop', 'surabaya'),
(4, 'ibnu@markdesign.net', 'Ibnu', 'Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-11-07 15:32:25', 0, 1, '3e491-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'Toko Handoko', 'surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko_product`
--

CREATE TABLE `to_toko_product` (
  `id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko_product`
--

INSERT INTO `to_toko_product` (`id`, `toko_id`, `product_id`) VALUES
(8, 1, 960),
(7, 1, 105),
(6, 1, 719),
(5, 1, 264),
(9, 1, 223),
(10, 1, 930),
(11, 1, 475),
(12, 1, 732),
(13, 4, 264),
(14, 4, 560),
(15, 4, 960),
(16, 4, 505),
(17, 4, 719),
(18, 4, 678),
(19, 4, 475),
(20, 4, 277);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `awal` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `trip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trips`
--

INSERT INTO `trips` (`id`, `year`, `month`, `awal`, `akhir`, `trip`) VALUES
(1, 2016, 1, 1, 3, 'Surabaya'),
(4, 2016, 2, 8, 10, 'Singapore'),
(3, 2016, 2, 7, 10, 'Malaysia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tt_text`
--

CREATE TABLE `tt_text` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'About Us'),
(22, 'admin', 'Contact Us'),
(23, 'admin', 'Trip'),
(24, 'admin', 'Trips'),
(25, 'admin', 'Slide'),
(26, 'admin', 'Healty'),
(27, 'admin', 'ge-ma'),
(28, 'admin', 'Blog/Artikel'),
(29, 'admin', 'Career'),
(30, 'admin', 'Home'),
(31, 'admin', 'Factory'),
(32, 'admin', 'News & Article'),
(33, 'admin', 'Lokasi Penjualan'),
(34, 'admin', 'Jadi Agen'),
(35, 'admin', 'Cara Membeli'),
(36, 'admin', 'PDF'),
(37, 'admin', 'Cara Belanja'),
(38, 'admin', 'Info Pengiriman'),
(39, 'admin', 'FAQ'),
(40, 'admin', 'Syarat & Ketentuan'),
(41, 'admin', 'How To Order'),
(42, 'admin', 'Event'),
(43, 'admin', 'Wholeseler'),
(44, 'admin', 'Wholesale'),
(45, 'admin', 'Lokasi Toko'),
(46, 'admin', 'Home Page'),
(47, 'admin', 'About'),
(48, 'admin', 'Tips/Artikel'),
(49, 'admin', 'Slides/Promo'),
(50, 'admin', 'Promotion'),
(51, 'admin', 'Customer'),
(52, 'admin', 'Promotion/Slide'),
(53, 'admin', 'Homepage'),
(54, 'admin', 'Voucher'),
(55, 'admin', 'Faq Content'),
(56, 'admin', 'Shop Dealer'),
(57, 'admin', 'Voucher Discount'),
(58, 'admin', 'Gallery Spotlight'),
(59, 'admin', 'Home Spotlight'),
(60, 'admin', 'Store Locator'),
(61, 'admin', 'Merchant Partner'),
(62, 'admin', 'Seen On'),
(63, 'admin', 'Static Page'),
(64, 'admin', 'Blog');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_blog`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_blog` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` int(25)
,`id2` int(11)
,`blog_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`quote` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_category`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_category` (
`id` int(11)
,`parent_id` int(11)
,`sort` int(11)
,`image` varchar(200)
,`type` varchar(100)
,`data` text
,`id2` int(11)
,`category_id` int(11)
,`language_id` int(11)
,`name` varchar(100)
,`data2` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_gallery`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_gallery` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`image2` varchar(200)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`city` varchar(100)
,`harga` int(11)
,`color` varchar(100)
,`orientation` int(11)
,`id2` int(11)
,`gallery_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`sub_title` text
,`sub_title_2` text
,`content` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_slide`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_slide` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` varchar(200)
,`id2` int(11)
,`slide_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
,`url` varchar(200)
,`sort` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_blog`  AS  select `pg_blog`.`id` AS `id`,`pg_blog`.`topik_id` AS `topik_id`,`pg_blog`.`image` AS `image`,`pg_blog`.`active` AS `active`,`pg_blog`.`date_input` AS `date_input`,`pg_blog`.`date_update` AS `date_update`,`pg_blog`.`insert_by` AS `insert_by`,`pg_blog`.`last_update_by` AS `last_update_by`,`pg_blog`.`writer` AS `writer`,`pg_blog_description`.`id` AS `id2`,`pg_blog_description`.`blog_id` AS `blog_id`,`pg_blog_description`.`language_id` AS `language_id`,`pg_blog_description`.`title` AS `title`,`pg_blog_description`.`content` AS `content`,`pg_blog_description`.`quote` AS `quote` from (`pg_blog` join `pg_blog_description` on((`pg_blog`.`id` = `pg_blog_description`.`blog_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_category`
--
DROP TABLE IF EXISTS `view_category`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_category`  AS  select `prd_category`.`id` AS `id`,`prd_category`.`parent_id` AS `parent_id`,`prd_category`.`sort` AS `sort`,`prd_category`.`image` AS `image`,`prd_category`.`type` AS `type`,`prd_category`.`data` AS `data`,`prd_category_description`.`id` AS `id2`,`prd_category_description`.`category_id` AS `category_id`,`prd_category_description`.`language_id` AS `language_id`,`prd_category_description`.`name` AS `name`,`prd_category_description`.`data` AS `data2` from (`prd_category` join `prd_category_description` on((`prd_category`.`id` = `prd_category_description`.`category_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_gallery`
--
DROP TABLE IF EXISTS `view_gallery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gallery`  AS  select `gal_gallery`.`id` AS `id`,`gal_gallery`.`topik_id` AS `topik_id`,`gal_gallery`.`image` AS `image`,`gal_gallery`.`image2` AS `image2`,`gal_gallery`.`active` AS `active`,`gal_gallery`.`date_input` AS `date_input`,`gal_gallery`.`date_update` AS `date_update`,`gal_gallery`.`insert_by` AS `insert_by`,`gal_gallery`.`last_update_by` AS `last_update_by`,`gal_gallery`.`writer` AS `writer`,`gal_gallery`.`city` AS `city`,`gal_gallery`.`harga` AS `harga`,`gal_gallery`.`color` AS `color`,`gal_gallery`.`orientation` AS `orientation`,`gal_gallery_description`.`id` AS `id2`,`gal_gallery_description`.`gallery_id` AS `gallery_id`,`gal_gallery_description`.`language_id` AS `language_id`,`gal_gallery_description`.`title` AS `title`,`gal_gallery_description`.`sub_title` AS `sub_title`,`gal_gallery_description`.`sub_title_2` AS `sub_title_2`,`gal_gallery_description`.`content` AS `content` from (`gal_gallery` join `gal_gallery_description` on((`gal_gallery`.`id` = `gal_gallery_description`.`gallery_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_slide`
--
DROP TABLE IF EXISTS `view_slide`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_slide`  AS  select `sl_slide`.`id` AS `id`,`sl_slide`.`topik_id` AS `topik_id`,`sl_slide`.`image` AS `image`,`sl_slide`.`active` AS `active`,`sl_slide`.`date_input` AS `date_input`,`sl_slide`.`date_update` AS `date_update`,`sl_slide`.`insert_by` AS `insert_by`,`sl_slide`.`last_update_by` AS `last_update_by`,`sl_slide`.`writer` AS `writer`,`sl_slide_description`.`id` AS `id2`,`sl_slide_description`.`slide_id` AS `slide_id`,`sl_slide_description`.`language_id` AS `language_id`,`sl_slide_description`.`title` AS `title`,`sl_slide_description`.`content` AS `content`,`sl_slide_description`.`url` AS `url`,`sl_slide`.`sort` AS `sort` from (`sl_slide` join `sl_slide_description` on((`sl_slide_description`.`slide_id` = `sl_slide`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_image`
--
ALTER TABLE `about_image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`gallery_id`);

--
-- Indeks untuk tabel `home_product_spot`
--
ALTER TABLE `home_product_spot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `me_member`
--
ALTER TABLE `me_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `or_order`
--
ALTER TABLE `or_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indeks untuk tabel `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_faq`
--
ALTER TABLE `pg_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type` (`type`);

--
-- Indeks untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`language_id`);

--
-- Indeks untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_excel`
--
ALTER TABLE `prd_excel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_gallery_highlight`
--
ALTER TABLE `prd_gallery_highlight`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`language_id`);

--
-- Indeks untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo_list`
--
ALTER TABLE `promo_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_id` (`promo_id`);

--
-- Indeks untuk tabel `sertifikasi`
--
ALTER TABLE `sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_image`
--
ALTER TABLE `about_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `address`
--
ALTER TABLE `address`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `home_product_spot`
--
ALTER TABLE `home_product_spot`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT untuk tabel `me_member`
--
ALTER TABLE `me_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `or_order`
--
ALTER TABLE `or_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pg_faq`
--
ALTER TABLE `pg_faq`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_excel`
--
ALTER TABLE `prd_excel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_gallery_highlight`
--
ALTER TABLE `prd_gallery_highlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `promo_list`
--
ALTER TABLE `promo_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `sertifikasi`
--
ALTER TABLE `sertifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
