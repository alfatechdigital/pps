-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 12:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poinsmkakh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('123456789', 'Irfan Said', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `benpel`
--

CREATE TABLE `benpel` (
  `c_benpel` varchar(10) NOT NULL,
  `c_katbenpel` varchar(10) NOT NULL,
  `benpel` text NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `benpel`
--

INSERT INTO `benpel` (`c_benpel`, `c_katbenpel`, `benpel`, `bobot`) VALUES
('1P43gh3Io', 'b4tFXbsU5', 'Membawa HP, MP3, MP4, Headset, atau sejenisnya\r\n', 15),
('2lvDmErNU', 'b4tFXbsU5', 'Bertindak tidak sopan kepada sesama siswa\r\n', 4),
('3GYRs8L0Y', 'b4tFXbsU5', 'Pornografi atau pornoaksi di lingkungan atau diluar sekolah\r\n', 50),
('3P5mIgYXA', 'jGC4JtGo0', 'Tidak memakai kaos kaki\r\n', 1),
('9a6POeFZX', 'b4tFXbsU5', 'Berkelahi di lingkungan/ diluar sekolah/ terlibat tawuran antar sekolah\r\n', 30),
('bNXuLtZN8', 'FSyln8F5q', 'Meninggalkan kelas tanpa ijin\r\n', 3),
('BUuC7viVJ', 'b4tFXbsU5', 'Merusak sarana/ prasarana sekolah, software maupun\r\n', 15),
('CLEOoqVM2', 'b4tFXbsU5', 'Membawa senjata tajam, senjata api dan sejenisnya\r\n', 30),
('E9Y7w5B7v', 'FSyln8F5q', 'Tidak mengikuti pelajaran tanpa ijin\r\n', 3),
('gAv9cukMg', 'FSyln8F5q', 'Datang terlambat\r\n', 1),
('HZOvGwLrL', 'b4tFXbsU5', 'Membawa/ memakai/ mengedarkan Miras dan narkoba\r\n', 50),
('iG2hdk9xc', 'FSyln8F5q', 'Tidak mengerjakan tugas PR\r\n', 1),
('Iq7JFPGc6', 'b4tFXbsU5', 'Terlibat tindakan criminal (sampai ditahan\r\n', 50),
('IrntnmJww', 'jGC4JtGo0', 'Tidak memakai ikat pinggang\r\n', 1),
('iyyRQvS1z', 'b4tFXbsU5', 'Mengganggu ketenangan KBM\r\n', 2),
('JzVJu0LEx', 'b4tFXbsU5', 'Membawa/ merokok di sekolah/ diluar sekolah \r\n', 15),
('KKUGKUYFi', 'b4tFXbsU5', 'Mengancam/mengintimi dasi guru, TU, dan siswa\r\n\r\n', 10),
('KllkdzpPW', 'FSyln8F5q', 'Tidak masuk sekolah tanpa keterangan/ keluar sekolah sebelum jam pulang tanpa ijin\r\n', 4),
('LBA0ndGec', 'b4tFXbsU5', 'Tidak mengembalikan/ menghilangkan  buku \r\n', 5),
('lwaAVNFty', 'FSyln8F5q', 'Datang terlambat >45 menit\r\n', 2),
('MsLymFdht', 'b4tFXbsU5', 'Membuang sampah tidak pada tempat yang semestinya', 5),
('nIE89G5W9', 'b4tFXbsU5', 'Meloncat pagar\r\n', 10),
('NX0OF9b02', 'jGC4JtGo0', 'Tidak memakai sepatu hitam/ sepatu sekolah\r\n', 2),
('o6zIRf55a', 'b4tFXbsU5', 'Meninggalkan Kelas Tanpa Izin', 5),
('PyfyUshwQ', 'FSyln8F5q', 'Tidak mengikuti siraman rohani jumat pagi\r\n', 3),
('uW62u0Hkm', 'b4tFXbsU5', 'Mencoret dinding, meja, kursi dan pagar\r\n', 10),
('uYjGIPIho', 'b4tFXbsU5', 'Memalsukan tanda tangan, nilai, dll\r\n', 30),
('VKldu8eFr', 'b4tFXbsU5', 'Hamil/ menghamili/ nikah siri/ Tertangkap tangan melakukan tindak tercela\r\n', 100),
('wuyWoznhK', 'jGC4JtGo0', 'Seragam atribut tidak lengkap\r\n', 2),
('WXgnd8snN', 'b4tFXbsU5', 'Bertindak tidak sopan kepada guru/ karyawan\r\n', 10),
('XQSCLPedz', 'jGC4JtGo0', 'Tidak memasukkan baju seragam\r\n', 1),
('ymVVo3ju5', 'b4tFXbsU5', 'Mengambil hak orang lain, berjudi\r\n', 20),
('ysqEFulRC', 'FSyln8F5q', 'Tidak mengikuti kegiatan ekstrakulikuler/pengemb angan diri\r\n', 3),
('z8cDrORjr', 'FSyln8F5q', 'Datang terlambat < 45 menit\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL,
  `pesan` text NOT NULL,
  `at` datetime NOT NULL,
  `w_g` varchar(1) NOT NULL,
  `sg` varchar(1) NOT NULL,
  `sw` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`c_chat`, `c_guru`, `c_orangtua`, `pesan`, `at`, `w_g`, `sg`, `sw`) VALUES
(1, 'DPCcMKMey', 'tW6FuMey0', 'Assalamualaikum', '2017-11-28 18:49:28', 'w', 'y', 'y'),
(2, 'DPCcMKMey', 'tW6FuMey0', 'Bapak?', '2017-11-28 18:56:49', 'w', 'y', 'y'),
(3, 'DPCcMKMey', '0vEcBeBgF', 'Bismillah', '2017-11-28 19:00:36', 'g', 'y', 'y'),
(4, 'DPCcMKMey', 'tW6FuMey0', 'Iya', '2017-11-29 05:38:34', 'g', 'y', 'y'),
(5, 'DPCcMKMey', 'tW6FuMey0', 'Anak Saya tolong dibimbing ya bapak', '2017-11-29 05:47:55', 'w', 'y', 'y'),
(6, 'DPCcMKMey', 'tW6FuMey0', 'insya Allah bapak, kami selalu berusaha seperti itu, dan juga mohon untuk dibimbing dari pihak keluarga', '2017-11-29 05:59:08', 'g', 'y', 'y'),
(7, 'DPCcMKMey', 'tW6FuMey0', 'Terimakasih bapak', '2017-11-29 05:59:36', 'w', 'y', 'y'),
(8, 'DPCcMKMey', 'tW6FuMey0', 'sama sama', '2017-12-01 06:33:32', 'g', 'y', 'n'),
(9, 'G2sSiWyoD', 'supyLA8lg', 'contoh', '2017-12-13 09:07:33', 'g', 'y', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`c_guru`, `nama`, `username`, `password`, `foto`) VALUES
('DPCcMKMey', 'Fitrotul Laili Rizkia Ningrum', 'bulaili', 'bulaili', 'foto/download.jpg'),
('G2sSiWyoD', 'Enik Sumarni.S,Pd', 'buenik', 'buenik', 'foto/20170816145718.jpg'),
('ptIV5mDk0', 'Irfan Said', 'pakirfan', 'pakirfan', '');

-- --------------------------------------------------------

--
-- Table structure for table `katbenpel`
--

CREATE TABLE `katbenpel` (
  `c_katbenpel` varchar(10) NOT NULL,
  `katbenpel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `katbenpel`
--

INSERT INTO `katbenpel` (`c_katbenpel`, `katbenpel`) VALUES
('b4tFXbsU5', 'SIKAP DAN PERILAKU'),
('FSyln8F5q', 'KERAJINAN'),
('jGC4JtGo0', 'KERAPIAN');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `c_kelas` varchar(10) NOT NULL,
  `kelas` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`c_kelas`, `kelas`) VALUES
('BsDfJwMU5', 'IX-A'),
('FnxByVehH', 'VII-B'),
('M0UH6kgkm', 'IX-B'),
('NBubmIEvI', 'VIII-B'),
('P8cuzICNx', 'VIII-A'),
('teYMZQzuR', 'VII-A');

-- --------------------------------------------------------

--
-- Table structure for table `orangtua`
--

CREATE TABLE `orangtua` (
  `c_orangtua` varchar(10) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orangtua`
--

INSERT INTO `orangtua` (`c_orangtua`, `c_siswa`, `nama`, `username`, `password`) VALUES
('06n0I5ezI', 'yMNwC9eDO', 'WALI CHERILLINATA', 'WALI CHERILLINATA', 'WALI CHERILLINATA'),
('07RZCPNkC', '3hCtww1Fy', 'WALI DIMAS', 'WALI DIMAS', 'WALI DIMAS'),
('0aOxuYuj5', 'hKvVJqY6y', 'WALI ALIA', 'WALI ALIA', 'WALI ALIA'),
('0CfXu0wIE', 'JBsoMvW7L', 'WALI ADI', 'WALIADI', 'WALIADI'),
('0h8d7V2Y7', 'pe3f2N5EW', 'WALI TANZILA', 'WALI TANZILA', 'WALI TANZILA'),
('0LeqPJFto', 'UyfXGSMUW', 'WALI AMABEL', 'WALI AMABEL', 'WALI AMABEL'),
('0xSw8yA27', 'ncD8Oif0z', 'WALI REYHAN', 'WALI REYHAN', 'WALI REYHAN'),
('0ZgHYSFGO', 'i1MfEjrca', 'WALI DANANG', 'WALI DANANG', 'WALI DANANG'),
('2c1DbFcyw', 'FSB5y5SyC', 'WALI Muhamad Syaifullah', 'WALI Muhamad Syaifullah', 'WALI Muhamad Syaifullah'),
('2Fvb43zHp', '0Gvf6j3dR', 'WALI YOGA', 'WALI YOGA', 'WALI YOGA'),
('37adpNcnq', 'jlofcxoym', 'WALI AZRIEL ', 'WALI AZRIEL ', 'WALI AZRIEL '),
('3KBdMvrOQ', 'jfB7Q9lLm', 'WALI JERY', 'WALI JERY', 'WALI JERY'),
('3LHlyyt4S', 'rupnaaLpQ', 'WALI RAFA FAJRI', 'WALI RAFA FAJRI', 'WALI RAFA FAJRI'),
('47uybYLLr', 'jBjqBkxmy', 'WALI VIVIAN', 'WALI VIVIAN', 'WALI VIVIAN'),
('4aZG2IasA', '79eilumr3', 'WALI TITIS', 'WALI TITIS', 'WALI TITIS'),
('4IimSzXaE', '3GDkCBkLw', 'WALI GISCA', 'WALI GISCA', 'WALI GISCA'),
('4iVuUSKwx', 'yBOzdyymx', 'WALI TIRTA', 'WALI TIRTA', 'WALI TIRTA'),
('4LHvSP7mY', 'Wr0eie1X1', 'WALI MUSLIMAH', 'WALI MUSLIMAH', 'WALI MUSLIMAH'),
('5iFtGepWw', '0FYy2lm5h', 'WALI GENI', 'WALI GENI', 'WALI GENI'),
('5pGEE3QQl', '39UkqnlGe', 'WALI MEYLA', 'WALI MEYLA', 'WALI MEYLA'),
('5zRYlAU1F', 'xhKxN9K6o', 'WALI VANNO', 'WALI VANNO', 'WALI VANNO'),
('63uKqqEaz', 't7ymJxRpA', 'WALI Moch. Taufiq', 'WALI Moch. Taufiq', 'WALI Moch. Taufiq'),
('64jwZradP', 'Ssw156yiP', 'WALI ALFINO', 'WALI ALFINO', 'WALI ALFINO'),
('7YOKCxyGD', 'e6Pn3EqNi', 'WALI SYAKIRA', 'WALI SYAKIRA', 'WALI SYAKIRA'),
('8CoSQnSQP', 'XvjUU9IJe', 'WALI VANI', 'WALI VANI', 'WALI VANI'),
('8meh57Xen', 'Vvm0yiXwp', 'WALI SHERIN', 'WALI SHERIN', 'WALI SHERIN'),
('8P2CgAr9R', 'sU4ZNbKR3', 'WALI GEDHE', 'WALI GEDHE', 'WALI GEDHE'),
('92WklYN5i', 'hPyCEzNYk', 'WALI MUHAMMAD AMRULLAH', 'WALI MUHAMMAD AMRULLAH', 'WALI MUHAMMAD AMRULLAH'),
('95cRYNwK4', 'hgcA6jbMI', 'WALI AILSA', 'WALI AILSA', 'WALI AILSA'),
('9bXPiyQU1', 'qSyyhHlXR', 'WALI PINKAN', 'WALI PINKAN', 'WALI PINKAN'),
('9qAkRcBYQ', 'ZQml2NYG1', 'WALI  Nur Ikhatur', 'WALI  Nur Ikhatur', 'WALI  Nur Ikhatur'),
('a0Sbtw30H', 'JrS7uJfaG', 'WALI MOHAMAD YUSUF', 'WALI MOHAMAD YUSUF', 'WALI MOHAMAD YUSUF'),
('A1eePNn42', 'CuCNwn39u', 'WALI GLADYS', 'WALI GLADYS', 'WALI GLADYS'),
('aHksyGan2', 'SJRAs5bDo', 'WALI MEHILDA', 'WALI MEHILDA', 'WALI MEHILDA'),
('ALnQcxsaa', 'nHu3r2EUv', 'WALI VINDA', 'WALI VINDA', 'WALI VINDA'),
('AqA0nqruy', 'JOgg3yVKH', 'WALI MUHAMAD WIJAYA', 'WALI MUHAMAD WIJAYA', 'WALI MUHAMAD WIJAYA'),
('AqXid9P3A', '1tDz8AjDd', 'WALI ISNA', 'WALI ISNA', 'WALI ISNA'),
('awh5sm9wM', 'vDWKEGPBV', 'WALI DAVA', 'WALI DAVA', 'WALI DAVA'),
('B4DRuBlXL', 'COpZyoqyx', 'WALI RIVALDO', 'WALI RIVALDO', 'WALI RIVALDO'),
('Bd8tyOz4j', 'SLmie9uMN', 'WALI NAVIAN', 'WALI NAVIAN', 'WALI NAVIAN'),
('BedW4n1mr', 'BxNin2xYM', 'WALI MAURA', 'WALI MAURA', 'WALI MAURA'),
('bgYA4HF4t', 'uIJ1GFmL1', 'WALI AREINA', 'WALI AREINA', 'WALI AREINA'),
('BHZryv7l1', 'ZWjC4APHz', 'WALI DIAN', 'WALI DIAN', 'WALI DIAN'),
('bLKz6m9O2', 'VyPJaCuyO', 'WALI REVANO', 'WALI REVANO', 'WALI REVANO'),
('bVkVgWezt', 'yNuqugFyb', 'WALI MARISKA', 'WALI MARISKA', 'WALI MARISKA'),
('BXGxN9y0O', '7oYH0unwF', 'WALI CANTIKA', 'WALI CANTIKA', 'WALI CANTIKA'),
('CdUY1AVQ1', 'y2d6qhjeB', 'WALI APRINZA', 'WALI APRINZA', 'WALI APRINZA'),
('cfC4tkNLg', 'IF3EKaiO3', 'WALI ZHILVILIA', 'WALI ZHILVILIA', 'WALI ZHILVILIA'),
('CFhRJvQ3k', '2A6y7y8R8', 'WALI DIVA', 'WALI DIVA', 'WALI DIVA'),
('cMnuqcQW0', 'M9H6u7fR2', 'WALI IHSANIA', 'WALI IHSANIA', 'WALI IHSANIA'),
('cS1sBLFRy', 'Uq4LJAy4Y', 'WALI ISROFIL', 'WALI ISROFIL', 'WALI ISROFIL'),
('CSSRdMCwv', '9mccMm5Br', 'WALI PANDU', 'WALI PANDU', 'WALI PANDU'),
('d8r5mrjcX', 'g7rIwoVEl', 'WALI HAFIZH', 'WALI HAFIZH', 'WALI HAFIZH'),
('d8WZS1d5F', 'mubhwISIw', 'WALI SHINTA', 'WALI SHINTA', 'WALI SHINTA'),
('DfgvDm8ft', 'OOWhuI9nu', 'WALI BERLIAN', 'WALI BERLIAN', 'WALI BERLIAN'),
('DhZcQ0FJj', 'BVOgIy1Uq', 'WALI ELLENA', 'WALI ELLENA', 'WALI ELLENA'),
('Dr9uGBwKO', 'bueSkOcyj', 'WALI RANGGA', 'WALI RANGGA', 'WALI RANGGA'),
('DYxFrondQ', 'buRychXow', 'WALI JULIO', 'WALI JULIO', 'WALI JULIO'),
('dZSgbYWQz', 'BGCEHccHE', 'WALI CAHYO', 'WALI CAHYO', 'WALI CAHYO'),
('Dzuzs05y2', 'dhFegeDDG', 'WALI NUR RAMADHANI', 'WALI NUR RAMADHANI', 'WALI NUR RAMADHANI'),
('e1EEnwNmy', 'ruau8inZ4', 'WALI LISDA', 'WALI LISDA', 'WALI LISDA'),
('EHClDpScv', 'KgdruEEX9', 'WALI MEYKA', 'WALI MEYKA', 'WALI MEYKA'),
('EJ2qgieuC', 'L9HZSfyaw', 'WALI MARIO', 'WALI MARIO', 'WALI MARIO'),
('eYazmhWv4', 'w4UJBntJd', 'WALI DHAMAR', 'WALI DHAMAR', 'WALI DHAMAR'),
('FaDZlp4uc', '8CKSP1zyP', 'WALI NARESWARI', 'WALI NARESWARI', 'WALI NARESWARI'),
('fg97ExVou', 'CKAAZEAtM', 'WALI NEZILA', 'WALI NEZILA', 'WALI NEZILA'),
('FhB6SwU0d', 'rWsywsKyj', 'WALI RICHIE', 'WALI RICHIE', 'WALI RICHIE'),
('Fmk0gosxi', 'ntCJpp4jx', 'WALI MOHAMMAD WAHYU', 'WALI MOHAMMAD WAHYU', 'WALI MOHAMMAD WAHYU'),
('G59jSlzsw', 'nrA3hyKqx', 'WALI NEYLA', 'WALI NEYLA', 'WALI NEYLA'),
('GdDuV7cyx', 'OfgZnZUEX', 'WALI FAREL', 'WALI FAREL', 'WALI FAREL'),
('GjoItfbuL', 'ViodkNMHy', 'WALI MIFTAKHUL', 'WALI MIFTAKHUL', 'WALI MIFTAKHUL'),
('gMUUUO581', 'WGs9K24Ld', 'WALI NOVIA', 'WALI NOVIA', 'WALI NOVIA'),
('GnDjouEjh', 'izvLfa2sx', 'WALI HARIS', 'WALI HARIS', 'WALI HARIS'),
('gOi2uVPL7', 'VaDi8bhxF', 'WALI WHELDA', 'WALI WHELDA', 'WALI WHELDA'),
('h5HUcORF2', 'XHD9Wyidr', 'WALI AZKHYA', 'WALI AZKHYA', 'WALI AZKHYA'),
('hqYsUZaR5', '8kJuA8yyO', 'WALI ALVIANSYAH', 'WALI ALVIANSYAH', 'WALI ALVIANSYAH'),
('Ht4i4gLnd', 'Bok2oCAUu', 'WALI ALVIAN', 'WALI ALVIAN', 'WALI ALVIAN'),
('HVN7v9d8z', '2o0xUAora', 'WALI SHALUL', 'WALI SHALUL', 'WALI SHALUL'),
('I6cSkHgJB', 'DZ3KHajID', 'WALI CAHYA', 'WALI CAHYA', 'WALI CAHYA'),
('I87vsrdgG', '6MRCyZeWr', 'WALI ANISA', 'WALI ANISA', 'WALI ANISA'),
('ideFOQwmd', 's8qzUCSpL', 'WALI APRILLIA', 'WALI APRILLIA', 'WALI APRILLIA'),
('ivX7A0LAZ', 'Dr3QfMrGf', 'WALI ZAHRAHTUSHITA', 'WALI ZAHRAHTUSHITA', 'WALI ZAHRAHTUSHITA'),
('j71H5RYBi', 'VYuQ6ceon', 'WALI DINDA', 'WALI DINDA', 'WALI DINDA'),
('JaMy3wLjs', 'kYEvEAyz8', 'WALI KEYZAHRA', 'WALI KEYZAHRA', 'WALI KEYZAHRA'),
('JbC3gbASu', 'qK7BIZNd6', 'WALI KENNOAH', 'WALI KENNOAH', 'WALI KENNOAH'),
('JMB80Km1H', 'aoiqvQopQ', 'WALI ICHA', 'WALI ICHA', 'WALI ICHA'),
('jMpeCybJ2', 'lyEb8UP9f', 'WALI RAKHA', 'WALI RAKHA', 'WALI RAKHA'),
('jsfckP88U', 'a9Q8c7X2H', 'WALI RIZKY PUTRA', 'WALI RIZKY PUTRA', 'WALI RIZKY PUTRA'),
('kkKh26ycd', 'NdUa7faSU', 'WALI NASHITA', 'WALI NASHITA', 'WALI NASHITA'),
('kLsjA0gBO', 'jgehvPRpg', 'WALI STEVANI', 'WALI STEVANI', 'WALI STEVANI'),
('KrusuWp2Y', 'ZOiOAMRkr', 'WALI RISKI', 'WALI RISKI', 'WALI RISKI'),
('LczGwmRDX', 'kBNzF4yhK', 'WALI FAIZ', 'WALI FAIZ', 'WALI FAIZ'),
('lfmyoVpu8', 'yIc15koVI', 'WALI DAAFIQ', 'WALI DAAFIQ', 'WALI DAAFIQ'),
('lK0dL6CjF', 'dEWviiBQ6', 'WALI MUHAMMAD IRFAN', 'WALI MUHAMMAD IRFAN', 'WALI MUHAMMAD IRFAN'),
('LynQkQgc1', 'IrrwCvgpq', 'WALI RASENDRYA ', 'WALI RASENDRYA ', 'WALI RASENDRYA '),
('MADWjEIVx', 'ULvZPyQJd', 'WALI ALIF', 'WALI ALIF', 'WALI ALIF'),
('mbXIzbW4O', 'ocyJvfFe7', 'WALI GANENDRA', 'WALI GANENDRA', 'WALI GANENDRA'),
('MJknwwLN1', 'ZoKhogzdw', 'WALI AZAHRA', 'WALI AZAHRA', 'WALI AZAHRA'),
('MKGS6yDRn', 'S6Eujucsq', 'WALI NOR', 'WALI NOR', 'WALI NOR'),
('mzr7mILlZ', 'lnrofyhuO', 'WALI TAUFIQ', 'WALI TAUFIQ', 'WALI TAUFIQ'),
('N4b7XteN0', '8kvc5ueaY', 'WALI ALFARREZA', 'WALI ALFARREZA', 'WALI ALFARREZA'),
('n6llJerug', 'cwy2Cyuy0', 'WALI RISMA', 'WALI RISMA', 'WALI RISMA'),
('na5wCZ6cY', 'MeACDQbna', 'WALI NADINE', 'WALI NADINE', 'WALI NADINE'),
('NaozEXjkM', 'wlLqyiOJm', 'WALI WASI', 'WALI WASI', 'WALI WASI'),
('o3yq9wnV6', 'DR9W7jNF2', 'WALI RINGGI', 'WALI RINGGI', 'WALI RINGGI'),
('o89SBI364', 'bQFZQGJsy', 'WALI OLIVIA', 'WALI OLIVIA', 'WALI OLIVIA'),
('oESYJdd5H', 'qFqXbc5CZ', 'WALI BAGAS', 'WALI BAGAS', 'WALI BAGAS'),
('omsN5NEe0', '1ULZq7Qrk', 'WALI ZIDAN', 'WALI ZIDAN', 'WALI ZIDAN'),
('oQ9kqHVVF', 'k2jOKgNQD', 'WALI KAMSIRAH', 'WALI KAMSIRAH', 'WALI KAMSIRAH'),
('P74tYIx64', 'Fxg7biuG6', 'WALI QUEEN', 'WALI QUEEN', 'WALI QUEEN'),
('pcfyjRidZ', 'XdFyk9ArU', 'WALI RAFA', 'WALI RAFA', 'WALI RAFA'),
('PiQljryGy', 'So9louYzw', 'WALI NIKO', 'WALI NIKO', 'WALI NIKO'),
('PKyjaFPQa', 'XfubvcfBI', 'WALI NURUL', 'WALI NURUL', 'WALI NURUL'),
('PxrU90mPu', 'd4tejceGn', 'WALI JOVITA', 'WALI JOVITA', 'WALI JOVITA'),
('Q92h8pa9B', 'KdRayz7MH', 'WALI RAHMA', 'WALI RAHMA', 'WALI RAHMA'),
('qanSWvaim', 'VbWrSZv53', 'WALI RAFI', 'WALI RAFI', 'WALI RAFI'),
('qboM4klec', 'cPHgUh6nP', 'WALI CHISSYA', 'WALI CHISSYA', 'WALI CHISSYA'),
('qOAujYN30', 'fvcv4WFfy', 'WALI RAFKA', 'WALI RAFKA', 'WALI RAFKA'),
('QRpfyPsnA', 'y5w0MygOt', 'WALI M. Tennidy', 'WALI M. Tennidy', 'WALI M. Tennidy'),
('R4vKj1mSd', '2hDqizhiB', 'WALI FITRI', 'WALI FITRI', 'WALI FITRI'),
('r7n27r56u', 'IXcC5aoKU', 'WALI WAHYU', 'WALI WAHYU', 'WALI WAHYU'),
('rEycNJI1R', 'QuF7VMc3g', 'WALI PUTRI', 'WALI PUTRI', 'WALI PUTRI'),
('rhku3v7KF', '7KImNxePo', 'WALI REHAN', 'WALI REHAN', 'WALI REHAN'),
('rjqqPowIb', 'fme6miVMl', 'WALI DYTA', 'WALI DYTA', 'WALI DYTA'),
('rnPCr9LUO', 'vQOzXyigQ', 'WALI TISNA', 'WALI TISNA', 'WALI TISNA'),
('rOEJAtofV', 'nEXnzRY0l', 'WALI ADITYA', 'WALIADITYA', 'WALIADITYA'),
('RY7Um63uX', 'upGC67KEn', 'WALI WAHYU', 'WALI WAHYU', 'WALI WAHYU'),
('s1p2DsbAJ', 'QQAEQBcQI', 'WALI BELA', 'WALI BELA', 'WALI BELA'),
('s2Yu4CxFW', 'RWtZYh5F1', 'WALI BRANDON', 'WALI BRANDON', 'WALI BRANDON'),
('s7ZjzJJiF', 'duHHgua5X', 'WALI AMIRA', 'WALI AMIRA', 'WALI AMIRA'),
('SE15x7ubg', 'nYtfQlSRH', 'WALI SYAMSUDIN', 'WALI SYAMSUDIN', 'WALI SYAMSUDIN'),
('sGgX6Vcjw', 'iYdvLKHqv', 'WALI LENITIYAN', 'WALI LENITIYAN', 'WALI LENITIYAN'),
('Sl0anrW98', 'PVjoDRNxK', 'WALI YOTAM', 'WALI YOTAM', 'WALI YOTAM'),
('Sp73uEunu', 'yy8o480eY', 'WALI AMELIYA', 'WALI AMELIYA', 'WALI AMELIYA'),
('thcyykqCj', 'sGIyLAbnC', 'WALI CITRA', 'WALI CITRA', 'WALI CITRA'),
('tjxu01CiW', 'b08YSkfrR', 'WALI MAULANI', 'WALI MAULANI', 'WALI MAULANI'),
('ub0qy6kWM', 'vHZus1sAh', 'WALI YUMIKA', 'WALI YUMIKA', 'WALI YUMIKA'),
('uB2tvxUop', 'WxgZDp475', 'WALI MITA', 'WALI MITA', 'WALI MITA'),
('ucFw0uZdb', 'Dyp265Fui', 'WALI AURELIA', 'WALI AURELIA', 'WALI AURELIA'),
('UIdg6KRVq', '2s8RlD4jq', 'WALI RIZKA', 'WALI RIZKA', 'WALI RIZKA'),
('UlXvSVXBo', 'Mynpp0jeU', 'WALI ELISA', 'WALI ELISA', 'WALI ELISA'),
('UNtpnMji5', 'dCSuUG4mR', 'WALI SETIAWAN', 'WALI SETIAWAN', 'WALI SETIAWAN'),
('Upydyyuru', 'Int8zldR1', 'WALI RAYENDA', 'WALI RAYENDA', 'WALI RAYENDA'),
('uqj11ugl2', 'mtn2cBKKm', 'WALI MELATI', 'WALI MELATI', 'WALI MELATI'),
('Uu8L7h2Uk', '3uWSyaRIH', 'WALI DINISA', 'WALI DINISA', 'WALI DINISA'),
('UxWQyDXZE', 'pvuLh8nU6', 'WALI FIRDA', 'WALI FIRDA', 'WALI FIRDA'),
('VfVu6NYME', 'oVFAuEm2t', 'WALI AFRISCA', 'WALI AFRISCA', 'WALIAFRISCA'),
('VGUmau725', '4MyGx8RtG', 'WALI ELTHA', 'WALI ELTHA', 'WALI ELTHA'),
('VIcnGCfmB', 'ZHF6d0F0d', 'WALI YUDHI', 'WALI YUDHI', 'WALI YUDHI'),
('VlSr9Y4Qz', 'C9AK7c5oA', 'WALI JEREMY', 'WALI JEREMY', 'WALI JEREMY'),
('vo1dFLnkG', '4u3USxDqV', 'WALI ANGGUN', 'WALI ANGGUN', 'WALI ANGGUN'),
('vSwpFZ96m', 'NOHndKFKC', 'WALI ADITYA RIZKY', 'WALIADITYARIZKY', 'WALIADITYARIZKY'),
('VVgcoGKQu', 'JNh5NFuqq', 'WALI SALUN', 'WALI SALUN', 'WALI SALUN'),
('vZpkLtqDL', 'qf0JZxo1r', 'WALI OKTA', 'WALI OKTA', 'WALI OKTA'),
('w39z6aNkQ', '5nZGHG7ds', 'WALI ZIVEN', 'WALI ZIVEN', 'WALI ZIVEN'),
('whfJhSdBo', 'vSj54XcEM', 'WALI RENITA', 'WALI RENITA', 'WALI RENITA'),
('wjXNqlRPe', 'webmYyDxs', 'WALI SURYO', 'WALI SURYO', 'WALI SURYO'),
('WkvNhr6yD', 'Es5yrYKYk', 'WALI EGGA', 'WALI EGGA', 'WALI EGGA'),
('wRjOPOsOk', 'y8vuuWpF6', 'WALI RIVANDA', 'WALI RIVANDA', 'WALI RIVANDA'),
('X7HOh15j6', 'tZ5y4zOnh', 'WALI JESIKA', 'WALI JESIKA', 'WALI JESIKA'),
('xbANkZCpd', 'I7Rjw3oHR', 'WALI EVELINE', 'WALI EVELINE', 'WALI EVELINE'),
('XcrMa4vkN', 'Ia9psOM1O', 'WALI ALYA', 'WALI ALYA', 'WALI ALYA'),
('XQFMWc7cR', 'inzqH03vZ', 'WALI RAHMAT', 'WALI RAHMAT', 'WALI RAHMAT'),
('xt4cGUn9a', 'P1r4JwpQK', 'WALI FAIDZIL', 'WALI FAIDZIL', 'WALI FAIDZIL'),
('xzpVuDtxF', 'GZGBecMiW', 'WALI DAVY', 'WALI DAVY', 'WALI DAVY'),
('y38EfRHc8', 'Ffen1aVnr', 'WALI NIELMAR', 'WALI NIELMAR', 'WALI NIELMAR'),
('Y5r25PRSz', 'yedhJN4Xy', 'WALI KRISNA', 'WALI KRISNA', 'WALI KRISNA'),
('yGaGFiPZD', 'BC3fhir0Z', 'WALI MARISSA', 'WALI MARISSA', 'WALI MARISSA'),
('ygyodwnv6', 'il3Ptpnku', 'WALI ANNABEL', 'WALI ANNABEL', 'WALI ANNABEL'),
('yHhM4Qxyt', 'toC2qxnmL', 'WALI ANDREW', 'WALI ANDREW', 'WALI ANDREW'),
('yOjw2zGuP', 'ZPquCrY5v', 'WALI SELLA', 'WALI SELLA', 'WALI SELLA'),
('YRa6kvngI', 'waX3U2xq5', 'WALI KENCANA', 'WALI KENCANA', 'WALI KENCANA'),
('yW6LOX3Wf', '3DIIDBnrf', 'WALI LIVIA', 'WALI LIVIA', 'WALI LIVIA'),
('yWlvrvCvi', '4ut82ZbAa', 'WALI RUSTI', 'WALI RUSTI', 'WALI RUSTI'),
('yyvI0fgn5', 'hLKa0HxNa', 'WALI Nofanditya', 'WALI Nofanditya', 'WALI Nofanditya'),
('yZuuQ0d9j', 'yBAj8ZyUw', 'WALI ADELIA', 'WALIADELIA', 'WALIADELIA'),
('Z8LdHZGB1', 'jgB14yayc', 'WALI FACHRI', 'WALI FACHRI', 'WALI FACHRI'),
('zb3pDuOFu', 'b3y25HiJi', 'WALI LAILATUL', 'WALI LAILATUL', 'WALI LAILATUL'),
('Zb5VuODup', 'UtI9l34G2', 'WALI BAYU', 'WALI BAYU', 'WALI BAYU'),
('ZccBDk1Iy', 'jeSVf7Qhu', 'WALI ARTIKA', 'WALI ARTIKA', 'WALI ARTIKA'),
('ZGKYHEd6q', '4u2uG04A7', 'WALI MUHAMMAD FAIZ', 'WALI MUHAMMAD FAIZ', 'WALI MUHAMMAD FAIZ'),
('ZjZN5ysHQ', 'YoxfDerou', 'WALI AISYAH', 'WALI AISYAH', 'WALI AISYAH'),
('ZOwqMhHNp', 'Hd8MEyRlV', 'WALI MOCHAMAD RAIHAN', 'WALI MOCHAMAD RAIHAN', 'WALI MOCHAMAD RAIHAN'),
('ZqC0h4XcJ', 'MxrgDuNO5', 'WALI YUSANDANA', 'WALIYUSANDANA', 'WALIYUSANDANA'),
('ZuBau5AMS', 'YjlERuapv', 'WALI FIONA', 'WALI FIONA', 'WALI FIONA'),
('zUsP1UPSF', 'obflHujpA', 'WALI RIYO', 'WALI RIYO', 'WALI RIYO'),
('zVDyYnNp8', 'DLfvb98oa', 'WALI IVANDA', 'WALI IVANDA', 'WALI IVANDA'),
('ZX9WRn649', 'uLzAXVwWO', 'WALI PRADITA', 'WALI PRADITA', 'WALI PRADITA');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `c_pelanggaran` varchar(5) NOT NULL,
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `c_benpel` varchar(10) NOT NULL,
  `bobot` int(4) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`c_pelanggaran`, `c_siswa`, `c_kelas`, `c_benpel`, `bobot`, `c_guru`, `at`) VALUES
('0ESH', 'aoiqvQopQ', 'P8cuzICNx', 'XQSCLPedz', 1, 'ptIV5mDk0', '2025-05-12 16:49:57'),
('2Xro', 'b08YSkfrR', 'BsDfJwMU5', 'XQSCLPedz', 1, 'DPCcMKMey', '2025-05-12 16:45:18'),
('7BMx', 'y8vuuWpF6', 'P8cuzICNx', 'iG2hdk9xc', 1, 'G2sSiWyoD', '2025-05-12 16:34:04'),
('9PJq', 'ntCJpp4jx', 'NBubmIEvI', 'nIE89G5W9', 10, 'DPCcMKMey', '2025-05-12 16:43:32'),
('aFt8', 'buRychXow', 'M0UH6kgkm', 'JzVJu0LEx', 15, 'ptIV5mDk0', '2025-05-12 16:51:11'),
('alHI', 'ncD8Oif0z', 'P8cuzICNx', 'wuyWoznhK', 2, 'G2sSiWyoD', '2025-05-12 16:59:20'),
('bm5o', 'buRychXow', 'M0UH6kgkm', 'MsLymFdht', 5, 'G2sSiWyoD', '2025-05-12 17:06:48'),
('BWuQ', 'y2d6qhjeB', 'teYMZQzuR', '1P43gh3Io', 15, 'ptIV5mDk0', '2025-05-12 03:51:39'),
('bz4u', 'jfB7Q9lLm', 'NBubmIEvI', '1P43gh3Io', 15, 'ptIV5mDk0', '2025-05-12 16:48:17'),
('DWEI', 'yBAj8ZyUw', 'teYMZQzuR', 'MsLymFdht', 5, 'ptIV5mDk0', '2025-05-12 03:50:14'),
('EZ5x', 'JOgg3yVKH', 'M0UH6kgkm', 'KllkdzpPW', 4, 'G2sSiWyoD', '2025-05-12 17:05:39'),
('In3I', 'ntCJpp4jx', 'NBubmIEvI', 'IrntnmJww', 1, 'ptIV5mDk0', '2025-05-12 16:50:36'),
('Jtog', 'yBAj8ZyUw', 'teYMZQzuR', 'wuyWoznhK', 2, 'G2sSiWyoD', '2025-05-12 17:00:15'),
('kRuY', 'ZPquCrY5v', 'FnxByVehH', 'XQSCLPedz', 1, 'DPCcMKMey', '2025-05-12 16:40:45'),
('lEAR', 'rupnaaLpQ', 'FnxByVehH', '1P43gh3Io', 15, 'G2sSiWyoD', '2025-05-12 16:37:44'),
('MoB7', 'vDWKEGPBV', 'M0UH6kgkm', 'gAv9cukMg', 1, 'ptIV5mDk0', '2025-05-12 16:48:42'),
('n9uW', 'ULvZPyQJd', 'FnxByVehH', 'nIE89G5W9', 10, 'G2sSiWyoD', '2025-05-12 17:04:51'),
('NxFy', 'buRychXow', 'M0UH6kgkm', 'iG2hdk9xc', 1, 'G2sSiWyoD', '2025-05-12 17:04:08'),
('nxwY', 'GZGBecMiW', 'teYMZQzuR', 'XQSCLPedz', 1, 'G2sSiWyoD', '2025-05-12 16:33:16'),
('OGth', '5nZGHG7ds', 'teYMZQzuR', 'XQSCLPedz', 1, 'DPCcMKMey', '2025-05-12 16:41:32'),
('s5oB', 'Es5yrYKYk', 'BsDfJwMU5', 'XQSCLPedz', 1, 'DPCcMKMey', '2025-05-12 16:44:08'),
('sjGu', 'UtI9l34G2', 'BsDfJwMU5', 'MsLymFdht', 5, 'G2sSiWyoD', '2025-05-12 17:00:50'),
('SOwM', 'COpZyoqyx', 'FnxByVehH', 'XQSCLPedz', 1, 'DPCcMKMey', '2025-05-12 16:40:13'),
('SQMp', 'uIJ1GFmL1', 'NBubmIEvI', 'gAv9cukMg', 1, 'G2sSiWyoD', '2025-05-12 16:58:44'),
('t5JS', 'ULvZPyQJd', 'FnxByVehH', 'XQSCLPedz', 1, 'ptIV5mDk0', '2025-05-12 16:49:25'),
('u72e', 'ncD8Oif0z', 'P8cuzICNx', 'IrntnmJww', 1, 'G2sSiWyoD', '2025-05-12 17:06:11'),
('ulEf', '3GDkCBkLw', 'M0UH6kgkm', '3P5mIgYXA', 1, 'G2sSiWyoD', '2025-05-12 16:58:00'),
('UYfn', 'VbWrSZv53', 'P8cuzICNx', 'KllkdzpPW', 4, 'G2sSiWyoD', '2025-05-12 17:03:00'),
('w0e9', '5nZGHG7ds', 'teYMZQzuR', 'XQSCLPedz', 1, 'G2sSiWyoD', '2025-05-12 16:36:54'),
('wHNl', 'OfgZnZUEX', 'P8cuzICNx', 'NX0OF9b02', 2, 'G2sSiWyoD', '2025-05-12 17:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `relasichat`
--

CREATE TABLE `relasichat` (
  `c_chat` int(11) NOT NULL,
  `c_guru` varchar(10) NOT NULL,
  `c_orangtua` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `relasichat`
--

INSERT INTO `relasichat` (`c_chat`, `c_guru`, `c_orangtua`) VALUES
(5, 'DPCcMKMey', '0vEcBeBgF'),
(7, 'DPCcMKMey', 'tW6FuMey0'),
(8, 'G2sSiWyoD', 'supyLA8lg');

-- --------------------------------------------------------

--
-- Table structure for table `sanksi`
--

CREATE TABLE `sanksi` (
  `c_sanksi` varchar(10) NOT NULL,
  `kriteria` varchar(30) NOT NULL,
  `bobot_dari` int(3) NOT NULL,
  `bobot_sampai` int(3) NOT NULL,
  `sanksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sanksi`
--

INSERT INTO `sanksi` (`c_sanksi`, `kriteria`, `bobot_dari`, `bobot_sampai`, `sanksi`) VALUES
('0DhOeINEy', 'Pelanggaran Sangat Rendah', 1, 1, '1. Peringatan Lesan<br>2. Dicatat dalam buku pelanggaran'),
('d3e8l5Jts', 'Pelanggaran Rendah', 2, 4, '1. Peringatan Lesan<br>2. Dicatat dalam buku pelanggaran'),
('HzBNkRxk5', 'Pelanggaran Tinggi', 15, 30, '1. Dicatat dalam buku pelanggaran<br>2. Diberi Surat panggilan Orang Tua\r\n'),
('Sk8x467Qm', 'Pelanggaran Sangat Tinggi', 50, 100, '1. Diberikan Peringatan dan Surat Perjanjian<br>2. BIla Melanggar Kembali dikeluarkan dari sekolahan'),
('uIoDEFU5j', 'Pelanggaran Sedang', 5, 10, '1. Peringatan Lesan<br>2. Dicatat dalam buku pelanggaran');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `c_kelas` varchar(10) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `c_kelas`, `nisn`, `nama`, `jk`, `alamat`, `tl`) VALUES
('0FYy2lm5h', 'teYMZQzuR', '109906214', 'Geni Tahfizul Brilian Argianur', 'L', 'Jombang', '1970-01-01'),
('0Gvf6j3dR', 'NBubmIEvI', '0107301553', 'YOGA DWI SYAHPUTRA', 'L', 'Jombang', '1970-01-01'),
('1tDz8AjDd', 'P8cuzICNx', '3116271862', 'Isna Nur Fajar Ardianti', 'P', 'Jombang', '1970-01-01'),
('1ULZq7Qrk', 'M0UH6kgkm', '3106564297', 'Zidan Eka Fardana', 'L', 'Jombang', '1970-01-01'),
('2A6y7y8R8', 'FnxByVehH', '0105162146', 'DIVA ANGELIA ELFARETA', 'P', 'Jombang', '1970-01-01'),
('2hDqizhiB', 'BsDfJwMU5', '0105379903', 'FITRI MAHARYUNING TIAS', 'P', 'Jombang', '1970-01-01'),
('2o0xUAora', 'NBubmIEvI', '0106908477', 'SHALUL SAWALUDIN PRATAMA', 'L', 'Jombang', '1970-01-01'),
('2s8RlD4jq', 'NBubmIEvI', '0104190693', 'RIZKA FADILATUL AMALIA', 'P', 'Jombang', '1970-01-01'),
('39UkqnlGe', 'NBubmIEvI', '0101920096', 'MEYLA ANGALITA PUTRI', 'P', 'Jombang', '1970-01-01'),
('3DIIDBnrf', 'FnxByVehH', '0107546446', 'LIVIA AIKA PUTRI', 'P', 'Jombang', '1970-01-01'),
('3GDkCBkLw', 'M0UH6kgkm', '103804252', 'GISCA AURA SABRINA', 'P', 'Jombang', '1970-01-01'),
('3hCtww1Fy', 'NBubmIEvI', '0107845789', 'Dimas Wisnu Darmawan', 'L', 'Jombang', '1970-01-01'),
('3uWSyaRIH', 'teYMZQzuR', '3102420430', 'Dinisa Rahmalia Mahrida', 'P', 'Jombang', '1970-01-01'),
('4MyGx8RtG', 'teYMZQzuR', '0105618632', 'ELTHA MEI LARASATI', 'P', 'Jombang', '1970-01-01'),
('4u2uG04A7', 'FnxByVehH', '0117006422', 'MUHAMMAD FAIZ RIZQI FAHRUDDIN', 'L', 'Jombang', '1970-01-01'),
('4u3USxDqV', 'BsDfJwMU5', '0103353876', 'ANGGUN MELINDA WIDYAWATI', 'P', 'Jombang', '1970-01-01'),
('4ut82ZbAa', 'BsDfJwMU5', '3109887641', 'Rusti Lestari Ningrum', 'P', 'Jombang', '1970-01-01'),
('5nZGHG7ds', 'teYMZQzuR', '0112304991', 'ZIVEN WAHYU CRISTIAN', 'L', 'Jombang', '1970-01-01'),
('6MRCyZeWr', 'M0UH6kgkm', '0102755425', 'ANISA ARCELIA', 'P', 'Jombang', '1970-01-01'),
('79eilumr3', 'NBubmIEvI', '0111062713', 'TITIS SABRINA LATIFAH', 'P', 'Jombang', '1970-01-01'),
('7KImNxePo', 'P8cuzICNx', '3106187982', 'REHAN BAGUS SYAHPUTRA', 'L', 'Jombang', '1970-01-01'),
('7oYH0unwF', 'M0UH6kgkm', '0106862977', 'CANTIKA AZZAHRA PUTRI ZULKARNAEN', 'P', 'Jombang', '1970-01-01'),
('8CKSP1zyP', 'P8cuzICNx', '0109029389', 'NARESWARI FITRIA SEPTIANINGRUM', 'P', 'Jombang', '1970-01-01'),
('8kJuA8yyO', 'NBubmIEvI', '0102764574', 'ALVIANSYAH DWI RAHARJO', 'L', 'Jombang', '1970-01-01'),
('8kvc5ueaY', 'BsDfJwMU5', '0104317327', 'ALFARREZA RAFA RAMADHAN', 'L', 'Jombang', '1970-01-01'),
('9mccMm5Br', 'M0UH6kgkm', '0111403954', 'PANDU SASTRA WINATA', 'L', 'Jombang', '1970-01-01'),
('a9Q8c7X2H', 'teYMZQzuR', '0114167338', 'RISKY PUTRA HARIYANTO', 'L', 'Jombang', '1970-01-01'),
('aoiqvQopQ', 'P8cuzICNx', '0109904817', 'ICHA MERY ANDANI', 'P', 'Jombang', '1970-01-01'),
('aXgLbDbql', 'M0UH6kgkm', '0109675938', 'Zakia Citra Pratiwi', 'P', 'Jombang', '1970-01-01'),
('b08YSkfrR', 'BsDfJwMU5', '3119752349', 'Maulani Riska', 'P', 'Jombang', '1970-01-01'),
('b3y25HiJi', 'BsDfJwMU5', '0114109205', 'LAILATUL NADIVA', 'P', 'Jombang', '1970-01-01'),
('BC3fhir0Z', 'P8cuzICNx', '0105236026', 'MARISSA ARLIAN RAMADHANI', 'P', 'Jombang', '1970-01-01'),
('BGCEHccHE', 'P8cuzICNx', '0102751446', 'CAHYO HERU WICAKSONO', 'L', 'Jombang', '1970-01-01'),
('Bok2oCAUu', 'P8cuzICNx', '0109587844', 'ALVIAN RAFKI PRATAMA', 'L', 'Jombang', '1970-01-01'),
('bQFZQGJsy', 'teYMZQzuR', '0101687320', 'OLIVIA DWI PERMATASARI', 'P', 'Jombang', '1970-01-01'),
('bueSkOcyj', 'teYMZQzuR', '0106354599', 'RANGGA DWI AKBAR', 'L', 'Jombang', '1970-01-01'),
('buRychXow', 'M0UH6kgkm', '0107093863', 'JULIO PUTRA PRATAMA', 'L', 'Jombang', '1970-01-01'),
('BVOgIy1Uq', 'M0UH6kgkm', '0103620584', 'ELLENA RAHMA FELIZHA', 'P', 'Jombang', '1970-01-01'),
('BxNin2xYM', 'M0UH6kgkm', '3110925368', 'Maura Echa Nurfadhila', 'P', 'Jombang', '1970-01-01'),
('C9AK7c5oA', 'BsDfJwMU5', '0108349055', 'JEREMY OBAJA NELWAN (K)', 'L', 'Jombang', '1970-01-01'),
('CKAAZEAtM', 'NBubmIEvI', '0116309438', 'NEZILA SYAUQIYAH', 'P', 'Jombang', '1970-01-01'),
('COpZyoqyx', 'FnxByVehH', '0104960433', 'RIVALDO OKTAVIAN HALDIANSYAH', 'L', 'Jombang', '1970-01-01'),
('cPHgUh6nP', 'FnxByVehH', '0103597754', 'CHISSYA PUTRI ARGA CANTIKA', 'P', 'Jombang', '1970-01-01'),
('CuCNwn39u', 'teYMZQzuR', '0119844275', 'GLADYS ZIDAN SUGIARTO', 'P', 'Jombang', '1970-01-01'),
('cwy2Cyuy0', 'FnxByVehH', '0108049234', 'RISMA DWI LAURA', 'P', 'Jombang', '1970-01-01'),
('d4tejceGn', 'M0UH6kgkm', '0112231398', 'JOVITA HERA PRAMESTY', 'P', 'Jombang', '1970-01-01'),
('dCSuUG4mR', 'P8cuzICNx', '3112489542', 'Setiawan Febri Gunawan', 'L', 'Jombang', '1970-01-01'),
('dEWviiBQ6', 'P8cuzICNx', '0105696759', 'MUHAMMAD IRFAN', 'L', 'Jombang', '1970-01-01'),
('dhFegeDDG', 'NBubmIEvI', '0102432931', 'NUR RAMADHANI SAFITRI', 'P', 'Jombang', '1970-01-01'),
('DLfvb98oa', 'NBubmIEvI', '0104067492', 'IVANDA PUTRI ANISYA', 'P', 'Jombang', '1970-01-01'),
('Dr3QfMrGf', 'BsDfJwMU5', '0101657096', 'ZAHRAHTUSHITA', 'P', 'Jombang', '1970-01-01'),
('DR9W7jNF2', 'BsDfJwMU5', '0109707965', 'RINGGI MARLYANTA', 'L', 'Jombang', '1970-01-01'),
('duHHgua5X', 'NBubmIEvI', '0116005530', 'AMIRA FITRIA SADINA', 'P', 'Jombang', '1970-01-01'),
('Dyp265Fui', 'M0UH6kgkm', '0103989486', 'AURELIA ANASTASYA', 'P', 'Jombang', '1970-01-01'),
('DZ3KHajID', 'FnxByVehH', '3107857216', 'Cahya Eka Pratama', 'L', 'Jombang', '1970-01-01'),
('e6Pn3EqNi', 'M0UH6kgkm', '0113571871', 'SYAKIRA GHINA FALIHA', 'P', 'Jombang', '1970-01-01'),
('Es5yrYKYk', 'BsDfJwMU5', '0102130424', 'EGGA DAFA PRAYOGA', 'L', 'Jombang', '1970-01-01'),
('Ffen1aVnr', 'BsDfJwMU5', '0112615912', 'NIELMAR KARERE', 'P', 'Jombang', '1970-01-01'),
('fme6miVMl', 'P8cuzICNx', '0102677638', 'DYTA AISYAH AZZARO', 'P', 'Jombang', '1970-01-01'),
('FSB5y5SyC', 'BsDfJwMU5', '3104236451', 'Muhamad Syaifullah', 'L', 'Jombang', '1970-01-01'),
('fvcv4WFfy', 'NBubmIEvI', '3114160436', 'Rafka Maulana Saputra', 'L', 'Jombang', '1970-01-01'),
('Fxg7biuG6', 'NBubmIEvI', '0105958391', 'QUEEN FORTUNA', 'P', 'Jombang', '1970-01-01'),
('g7rIwoVEl', 'FnxByVehH', '0107367864', 'HAFIZH ATHAYA WAHYUDI', 'L', 'Jombang', '1970-01-01'),
('GZGBecMiW', 'teYMZQzuR', '3112863945', 'Davy Rey Geova Irawan', 'L', 'Jombang', '1970-01-01'),
('Hd8MEyRlV', 'M0UH6kgkm', '0101205379', 'MOCHAMAD RAIHAN FAIRUZ AKBAR', 'L', 'Jombang', '1970-01-01'),
('hgcA6jbMI', 'P8cuzICNx', '0107269556', 'AILSA FELICIA FERNANDA', 'P', 'Jombang', '1970-01-01'),
('hKvVJqY6y', 'BsDfJwMU5', '3104804252', 'ALIA NUR AFIFA', 'P', 'Jombang', '1970-01-01'),
('hLKa0HxNa', 'teYMZQzuR', '0116261021', 'Nofanditya Janna Nuranugrah', 'P', 'Jombang', '1970-01-01'),
('hPyCEzNYk', 'teYMZQzuR', '0099418432', 'MUHAMMAD AMRULLAH DAFA', 'L', 'Jombang', '1970-01-01'),
('i1MfEjrca', 'BsDfJwMU5', '0109632367', 'DANANG MUKTI WIBOWO', 'L', 'Jombang', '1970-01-01'),
('I7Rjw3oHR', 'FnxByVehH', '3099309011', 'EVELINE RIZQIA PUTRI AL MAKKAH', 'P', 'Jombang', '1970-01-01'),
('Ia9psOM1O', 'M0UH6kgkm', '0106828233', 'ALYA KARINI', 'P', 'Jombang', '1970-01-01'),
('IF3EKaiO3', 'FnxByVehH', '0105435982', 'ZHILVILIA AYODHYA PUTRI', 'P', 'Jombang', '1970-01-01'),
('il3Ptpnku', 'teYMZQzuR', '0114385451', 'ANNABEL QUINZA', '', 'Jombang', '1970-01-01'),
('Int8zldR1', 'M0UH6kgkm', '0102823510', 'RAYENDA ELVIA DISTA', 'P', 'Jombang', '1970-01-01'),
('inzqH03vZ', 'BsDfJwMU5', '0102447633', 'RAHMAT SYAWQI ANDIKA PUTRA', 'L', 'Jombang', '1970-01-01'),
('IrrwCvgpq', 'FnxByVehH', '0105808790', 'RASENDRYA ZIDAN ABHIPRAYA', 'L', 'Jombang', '1970-01-01'),
('IslDhKx0o', 'teYMZQzuR', '0113447100', 'ZENETALIA FULIASIE NELLA', 'P', 'Jombang', '1970-01-01'),
('IXcC5aoKU', 'P8cuzICNx', '0113187607', 'WAHYU SETYO WIBOWO', 'L', 'Jombang', '1970-01-01'),
('iYdvLKHqv', 'M0UH6kgkm', '0103012701', 'LENITIYAN DWI JESICA', 'P', 'Jombang', '1970-01-01'),
('izvLfa2sx', 'FnxByVehH', '0107367038', 'HARIS RAGIL WILUJENG', 'P', 'Jombang', '1970-01-01'),
('jBjqBkxmy', 'teYMZQzuR', '0116741154', 'VIVIAN FEBRYANDITA AMELIA', 'P', 'Jombang', '1970-01-01'),
('JBsoMvW7L', 'teYMZQzuR', '0103944651', 'ADI PUTRA RAMADHANI', 'L', 'Jombang', '1970-01-01'),
('jeSVf7Qhu', 'BsDfJwMU5', '0102378010', 'ARTIKA WIDYA WAHAYU NINGTYAS', 'P', 'Jombang', '1970-01-01'),
('jfB7Q9lLm', 'NBubmIEvI', '109756978', 'JERY PRATAMA PUTRA', 'L', 'Jombang', '1970-01-01'),
('jgB14yayc', 'M0UH6kgkm', '0109354337', 'FACHRI ANTONI AZZAM', 'L', 'Jombang', '1970-01-01'),
('jgehvPRpg', 'BsDfJwMU5', '0104535458', 'STEVANI PUTRI ANDRIYANI', 'P', 'Jombang', '1970-01-01'),
('jlofcxoym', 'P8cuzICNx', '0118291722', 'AZRIEL BINTANG PUTRA ANUGRAH', 'L', 'Jombang', '1970-01-01'),
('JNh5NFuqq', 'M0UH6kgkm', '0104303679', 'SALUN DWI NINGTYAS', 'P', 'Jombang', '1970-01-01'),
('JOgg3yVKH', 'M0UH6kgkm', '0119889205', 'MUHAMAD WIJAYA DICKY PRASETYO', 'L', 'Jombang', '1970-01-01'),
('JrS7uJfaG', 'FnxByVehH', '0104886316', 'MOHAMAD YUSUF RIZKY AKBAR', 'L', 'Jombang', '1970-01-01'),
('k2jOKgNQD', 'teYMZQzuR', '0101398104', 'KAMSIRAH RAFIF', 'P', 'Jombang', '1970-01-01'),
('kBNzF4yhK', 'FnxByVehH', '0107813121', 'FAIZ RIZKI ARDIANSYAH', 'L', 'Jombang', '1970-01-01'),
('KdRayz7MH', 'BsDfJwMU5', '0103077631', 'RAHMA PUTRI MIRZA ALIYANA', 'P', 'Jombang', '1970-01-01'),
('KgdruEEX9', 'P8cuzICNx', '3112489256', 'MEYKA CADISTA', 'P', 'Jombang', '1970-01-01'),
('kYEvEAyz8', 'NBubmIEvI', '0108946564', 'KEYZAHRA NADYA SAFITRI', 'P', 'Jombang', '1970-01-01'),
('L9HZSfyaw', 'BsDfJwMU5', '0104734887', 'MARIO STEVANUS WIDARTA ASMARA (K)', 'L', 'Jombang', '1970-01-01'),
('lnrofyhuO', 'teYMZQzuR', '0102714665', 'TAUFIQURAHMAN', 'L', 'Jombang', '1970-01-01'),
('lyEb8UP9f', 'M0UH6kgkm', '0102911671', 'RAKHA NUGRAHA', 'L', 'Jombang', '1970-01-01'),
('M9H6u7fR2', 'NBubmIEvI', '0114640602', 'IHSANIA ARRIFDA LARASATI', 'P', 'Jombang', '1970-01-01'),
('MeACDQbna', 'FnxByVehH', '3101912256', 'NADINE YUANI CYNTIA KIRANA', 'P', 'Jombang', '1970-01-01'),
('mtn2cBKKm', 'FnxByVehH', '0105310970', 'MELATI SUKMA DEWI', 'P', 'Jombang', '1970-01-01'),
('mubhwISIw', 'NBubmIEvI', '0113178256', 'SHINTA RIZKY AULIYA', 'P', 'Jombang', '1970-01-01'),
('MxrgDuNO5', 'NBubmIEvI', '0117165670', 'ADITYA YUSANDANA', 'L', 'Jombang', '1970-01-01'),
('Mynpp0jeU', 'BsDfJwMU5', '0104377583', 'ELISA AYU ANGGRAINI', 'P', 'Jombang', '1970-01-01'),
('ncD8Oif0z', 'P8cuzICNx', '0119895324', 'REYHAN NIRMANDA MAHBUBILLAH', 'L', 'Jombang', '1970-01-01'),
('NdUa7faSU', 'NBubmIEvI', '0104123783', 'NASHITA SALSABILAH', 'P', 'Jombang', '1970-01-01'),
('nEXnzRY0l', 'FnxByVehH', '0105262238', 'ADITIYA BAGUS SAPUTRO', 'L', 'Jombang', '1970-01-01'),
('nHu3r2EUv', 'M0UH6kgkm', '0119000671', 'VINDA ARYANI', 'P', 'Jombang', '1970-01-01'),
('NOHndKFKC', 'P8cuzICNx', '0113692073', 'ADITYA RIZKY ARDIANSYAH', 'L', 'Jombang', '1970-01-01'),
('nrA3hyKqx', 'P8cuzICNx', '0114304514', 'NEYLA ZIA ARIDHO', 'P', 'Jombang', '1970-01-01'),
('ntCJpp4jx', 'NBubmIEvI', '0101640267', 'MOHAMMAD WAHYU ADI SYAHPUTRA', 'L', 'Jombang', '1970-01-01'),
('nYtfQlSRH', 'M0UH6kgkm', '0111242592', 'Syamsudin Nur Rohman', 'L', 'Jombang', '1970-01-01'),
('obflHujpA', 'FnxByVehH', '0102594338', 'RIYO ANDHIKA PRATAMA', 'L', 'Jombang', '1970-01-01'),
('ocyJvfFe7', 'NBubmIEvI', '0106431513', 'GANENDRA WARADANA PRAYUDA', 'L', 'Jombang', '1970-01-01'),
('OfgZnZUEX', 'P8cuzICNx', '0114406941', 'FAREL JOAN PERMADI', 'L', 'Jombang', '1970-01-01'),
('OOWhuI9nu', 'M0UH6kgkm', '0103188673', 'BERLIAN LUTFI ALFARIZI', 'L', 'Jombang', '1970-01-01'),
('oVFAuEm2t', 'FnxByVehH', '0109500105', 'AFFRISCA PUTRI ARINDI', 'P', 'Jombang', '1970-01-01'),
('P1r4JwpQK', 'teYMZQzuR', '0103074106', 'FAIDZIL DWI CHANDRA PRASTYA', 'L', 'Jombang', '1970-01-01'),
('pe3f2N5EW', 'teYMZQzuR', '3104672164', 'TANZILA NURJANNAH', 'P', 'Jombang', '1970-01-01'),
('PVjoDRNxK', 'BsDfJwMU5', '0112250020', 'YOTAM AZRIEL SAPUTRA (K)', 'L', 'Jombang', '1970-01-01'),
('pvuLh8nU6', 'NBubmIEvI', '0105412493', 'FIRDA MELANIE PUTRI', 'P', 'Jombang', '1970-01-01'),
('qf0JZxo1r', 'M0UH6kgkm', '0104461166', 'OKTA VIA AYU SENJA', 'P', 'Jombang', '1970-01-01'),
('qFqXbc5CZ', 'NBubmIEvI', '0113089287', 'BAGAS ARIA KUSUMA', 'L', 'Jombang', '1970-01-01'),
('qK7BIZNd6', 'teYMZQzuR', '0111853954', 'KENNOAH NABIGH NARARYA', 'L', 'Jombang', '1970-01-01'),
('QQAEQBcQI', 'NBubmIEvI', '0103155328', 'BELA AYATUL KUSNA', 'P', 'Jombang', '1970-01-01'),
('qSyyhHlXR', 'teYMZQzuR', '0115353695', 'PINKAN AURA SYIFA', 'P', 'Jombang', '1970-01-01'),
('QuF7VMc3g', 'P8cuzICNx', '0105822708', 'PUTRI RENITA WAHYU CANTIKA', 'P', 'Jombang', '1970-01-01'),
('ruau8inZ4', 'teYMZQzuR', '0103693488', 'LISDA AYU KRISTANTI', 'P', 'Jombang', '1970-01-01'),
('rupnaaLpQ', 'FnxByVehH', '01091161134', 'RAFA FAJRI HENDRIANO', 'L', 'Jombang', '1970-01-01'),
('rWsywsKyj', 'NBubmIEvI', '0113809643', 'RICHIE RICHARDO', 'L', 'Jombang', '1970-01-01'),
('RWtZYh5F1', 'teYMZQzuR', '0104829957', 'BRANDON ALIF ALFIHANI ARROSYID', 'L', 'Jombang', '1970-01-01'),
('S6Eujucsq', 'FnxByVehH', '0104100322', 'NOR HIDAYATUL JANAH', 'P', 'Jombang', '1970-01-01'),
('s8qzUCSpL', 'P8cuzICNx', '0109058332', 'APRILLIA AMIRA PUTRI PRATAMA', 'P', 'Jombang', '1970-01-01'),
('sGIyLAbnC', 'NBubmIEvI', '0122402669', 'CITRA AYU RAHMADANI', 'P', 'Jombang', '1970-01-01'),
('SJRAs5bDo', 'teYMZQzuR', '3100317414', 'Mehilda Ilvi Arya Ramadhani', 'P', 'Jombang', '1970-01-01'),
('SLmie9uMN', 'P8cuzICNx', '0104912736', 'MOCH. NAVIAN PUTRA HARIYANTO', 'L', 'Jombang', '1970-01-01'),
('So9louYzw', 'BsDfJwMU5', '0116145488', 'NIKO AKBAR ARDIANSYAH', 'L', 'Jombang', '1970-01-01'),
('Ssw156yiP', 'M0UH6kgkm', '0109391084', 'ALFINO PRATAMA', 'L', 'Jombang', '1970-01-01'),
('sU4ZNbKR3', 'M0UH6kgkm', '0101833377', 'GEDHE ARY LIMANTORO', 'L', 'Jombang', '1970-01-01'),
('t7ymJxRpA', 'NBubmIEvI', '3116945752', 'Moch. Taufiq Diera Valentino', 'L', 'Jombang', '1970-01-01'),
('toC2qxnmL', 'M0UH6kgkm', '0091166419', 'ANDREW ALFIANO KURNIAWAN', 'L', 'Jombang', '1970-01-01'),
('tZ5y4zOnh', 'BsDfJwMU5', '0107928881', 'JESIKA RISMA PRATIWI', 'P', 'Jombang', '1970-01-01'),
('uIJ1GFmL1', 'NBubmIEvI', '3111292428', 'AREINA NUR EKA DELLY', '', 'Jombang', '1970-01-01'),
('ULvZPyQJd', 'FnxByVehH', '0105264739', 'ALIF PUTRA YUNANSYAH', 'L', 'Jombang', '1970-01-01'),
('uLzAXVwWO', 'FnxByVehH', '0102082548', 'PRADITA LADY EVERLYN', 'P', 'Jombang', '1970-01-01'),
('upGC67KEn', 'BsDfJwMU5', '0111541859', 'ANDRE WAHYU WIJAYA', 'L', 'Jombang', '1970-01-01'),
('Uq4LJAy4Y', 'P8cuzICNx', '3102851834', 'ISROFIL TRI ARDIANSYAH PUTRA', 'L', 'Jombang', '1970-01-01'),
('UtI9l34G2', 'BsDfJwMU5', '0106165398', 'BAYU FEBRI HARIANTO', 'L', 'Jombang', '1970-01-01'),
('UyfXGSMUW', 'FnxByVehH', '3109533637', 'AMABEL DAMARA ELISIA', 'P', 'Jombang', '1970-01-01'),
('VaDi8bhxF', 'P8cuzICNx', '0115698034', 'WHELDA ROSAVITA ANGGRAINI', 'P', 'Jombang', '1970-01-01'),
('VbWrSZv53', 'P8cuzICNx', '0106171913', 'RAFI FERDIANSYAH', 'L', 'Jombang', '1970-01-01'),
('vDWKEGPBV', 'M0UH6kgkm', '0096516109', 'DAVA DWI ARIANDA', 'L', 'Jombang', '1970-01-01'),
('vHZus1sAh', 'NBubmIEvI', '0108795313', 'YUMIKA AIRIN ERLINDIA', 'P', 'Jombang', '1970-01-01'),
('ViodkNMHy', 'BsDfJwMU5', '0103202375', 'MIFTAKHUL JANNAH', 'P', 'Jombang', '1970-01-01'),
('vQOzXyigQ', 'P8cuzICNx', '0108842567', 'TISNA HESTRICIA MARDIYANTI', 'P', 'Jombang', '1970-01-01'),
('vSj54XcEM', 'teYMZQzuR', '0108293330', 'RENITA APRILLIA', 'P', 'Jombang', '1970-01-01'),
('Vvm0yiXwp', 'P8cuzICNx', '3117211693', 'Sherin Evrilia Ferista', 'P', 'Jombang', '1970-01-01'),
('VyPJaCuyO', 'NBubmIEvI', '3102098075', 'REVANO KELFIYANTO', 'L', 'Jombang', '1970-01-01'),
('VYuQ6ceon', 'M0UH6kgkm', '0103015496', 'DINDA PUTRI APRILIA', 'P', 'Jombang', '1970-01-01'),
('w4UJBntJd', 'FnxByVehH', '0103453875', 'DHAMAR SYATRIA KUMALA', 'L', 'Jombang', '1970-01-01'),
('waX3U2xq5', 'FnxByVehH', '0112166519', 'KENCANA LINTANG PRAMUDYAH', 'P', 'Jombang', '1970-01-01'),
('webmYyDxs', 'BsDfJwMU5', '0102754934', 'SURYO ADI SAPUTRO', 'L', 'Jombang', '1970-01-01'),
('WGs9K24Ld', 'FnxByVehH', '0102 858423', 'NOVIA DWI SABRINA', 'P', 'Jombang', '1970-01-01'),
('wlLqyiOJm', 'FnxByVehH', '0107858949', 'WASI KHOTUL UMMAH', 'P', 'Jombang', '1970-01-01'),
('Wr0eie1X1', 'teYMZQzuR', '0118430996', 'MUSLIMAH', 'P', 'Jombang', '1970-01-01'),
('WxgZDp475', 'M0UH6kgkm', '0105150629', 'MITA REGINA JULIA ARTIKA', 'P', 'Jombang', '1970-01-01'),
('XdFyk9ArU', 'teYMZQzuR', '0109907175', 'RAFA ANDREA MESSI', 'L', 'Jombang', '1970-01-01'),
('XfubvcfBI', 'BsDfJwMU5', '0111325593', 'NURUL LAILATUL LATIFAH', 'P', 'Jombang', '1970-01-01'),
('XHD9Wyidr', 'P8cuzICNx', '0101169737', 'AZKHYA ALFYANIE', 'P', 'Jombang', '1970-01-01'),
('xhKxN9K6o', 'FnxByVehH', '0109878677', 'VANNO MAHARDIKA PRATAMA', 'L', 'Jombang', '1970-01-01'),
('XvjUU9IJe', 'BsDfJwMU5', '0103233525', 'VANI DEWI SUCIATI', 'P', 'Jombang', '1970-01-01'),
('y2d6qhjeB', 'teYMZQzuR', '0098955487', 'APRINZA SENJA ANTONI', 'L', 'Jombang', '1970-01-01'),
('y5w0MygOt', 'P8cuzICNx', '0106723188', 'M. Tennidy Javaxione', 'L', 'Jombang', '1970-01-01'),
('y8vuuWpF6', 'P8cuzICNx', '0108036072', 'RIVANDA DWI RAMADHANI', 'P', 'Jombang', '1970-01-01'),
('yBAj8ZyUw', 'teYMZQzuR', '0105855792', 'ADELIA OCTARISYA PUTRI', 'P', 'Jombang', '1970-01-01'),
('yBOzdyymx', 'teYMZQzuR', '3118904839', 'TIRTA PRABU FIRMANSYAH', 'L', 'Jombang', '1970-01-01'),
('yedhJN4Xy', 'FnxByVehH', '0101192671', 'KRISNA DIAN SAPUTRA', 'L', 'Jombang', '1970-01-01'),
('yIc15koVI', 'NBubmIEvI', '3103030971', 'DAAFIQ RAHMATUL PUTRA', 'L', 'Jombang', '1970-01-01'),
('YjlERuapv', 'P8cuzICNx', '0118135194', 'FIONA ANDINI', 'P', 'Jombang', '1970-01-01'),
('yMNwC9eDO', 'teYMZQzuR', '0108759983', 'CHERILLINATA PUTRI NIRENDA', 'P', 'Jombang', '1970-01-01'),
('yNuqugFyb', 'BsDfJwMU5', '0115105472', 'MARISKA PUTRI HANA (K)', 'P', 'Jombang', '1970-01-01'),
('YoxfDerou', 'NBubmIEvI', '0115529401', 'AISYAH AFILAH', 'P', 'Jombang', '1970-01-01'),
('yy8o480eY', 'P8cuzICNx', '3115473831', 'Ameliya Fernanda', 'P', 'Jombang', '1970-01-01'),
('ZHF6d0F0d', 'BsDfJwMU5', '0107586347', 'YUDHI HAKIKI', 'L', 'Jombang', '1970-01-01'),
('ZOiOAMRkr', 'M0UH6kgkm', '3110800146', 'Riski Ardiansah', 'L', 'Jombang', '1970-01-01'),
('ZoKhogzdw', 'FnxByVehH', '0117098151', 'AZAHRA MAYCITRA FIRKASARI', 'P', 'Jombang', '1970-01-01'),
('ZPquCrY5v', 'FnxByVehH', '0108324211', 'SELLA GIVALINA DWIMUKTI', 'P', 'Jombang', '1970-01-01'),
('ZQml2NYG1', 'P8cuzICNx', '0104357953', 'Nur Ikhatur Rahmadania', 'P', 'Jombang', '1970-01-01'),
('ZWjC4APHz', 'BsDfJwMU5', '0109021596', 'DIAN AYU TRI RAHMAWATI', 'P', 'Jombang', '1970-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `benpel`
--
ALTER TABLE `benpel`
  ADD PRIMARY KEY (`c_benpel`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indexes for table `katbenpel`
--
ALTER TABLE `katbenpel`
  ADD PRIMARY KEY (`c_katbenpel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`c_kelas`);

--
-- Indexes for table `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`c_orangtua`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`c_pelanggaran`);

--
-- Indexes for table `relasichat`
--
ALTER TABLE `relasichat`
  ADD PRIMARY KEY (`c_chat`);

--
-- Indexes for table `sanksi`
--
ALTER TABLE `sanksi`
  ADD PRIMARY KEY (`c_sanksi`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `relasichat`
--
ALTER TABLE `relasichat`
  MODIFY `c_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
