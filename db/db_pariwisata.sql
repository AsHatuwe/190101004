-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 04:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri_wisata`
--

CREATE TABLE `tbl_galeri_wisata` (
  `id_galeri_wisata` int(11) NOT NULL,
  `id_kategori_wisata` int(11) NOT NULL,
  `id_wisata` int(11) NOT NULL,
  `foto_1` varchar(100) NOT NULL,
  `foto_2` varchar(100) NOT NULL,
  `foto_3` varchar(100) NOT NULL,
  `foto_4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri_wisata`
--

INSERT INTO `tbl_galeri_wisata` (`id_galeri_wisata`, `id_kategori_wisata`, `id_wisata`, `foto_1`, `foto_2`, `foto_3`, `foto_4`) VALUES
(5, 3, 0, '6062fac7a7e22.jpg', '6062fac7a8714.jpg', '6062fac7a90b0.jpg', '6062fac7a95af.jpg'),
(6, 3, 0, '6062fd438b7a4.jpg', '6062fd4397324.jpg', '6062fd4398042.jpg', '6062fd4398640.jpg'),
(17, 2, 0, '', '', '', ''),
(21, 1, 0, '64fa02aaee504.jpg', '64fa02aaeeaea.jpg', '64fa02aaef180.jpg', '64fa02aaef8fa.jpg'),
(38, 2, 34, '64fad5ea633aa.jpg', '64fad5ea637de.jpg', '64fad5ea63b47.jpg', '64fad5ea63ebe.jpg'),
(39, 3, 35, '64fb27f42c674.jpg', '64fb27f42cfc2.jpg', '64fb27f42d833.jpg', '64fb27f42e094.jpg'),
(40, 1, 36, '64fb2a7f19682.jpg', '64fb2a7f19a82.jpg', '64fb2a7f19df2.jpg', '64fb2a7f1a14a.jpg'),
(41, 2, 37, '64fb2c589159f.jpg', '64fb2c5891af3.jpg', '64fb2c5891ffc.jpg', '64fb2c589254d.jpg'),
(42, 2, 38, '64fb2d53eabb2.jpg', '64fb2d53eb1d0.jpg', '64fb2d53eb78c.jpg', '64fb2d53ec0b5.jpg'),
(43, 2, 39, '64ff00a98448e.jpg', '64ff00a991706.jpg', '64ff00a992003.jpg', '64ff00a9929c6.jpg'),
(44, 2, 40, '64fb2f0816ac0.jpg', '64fb2f081700c.jpg', '64fb2f0817405.jpg', '64fb2f081799e.jpg'),
(45, 2, 41, '64fb2fc933d92.jpg', '64fb2fc934138.jpg', '64fb2fc934516.jpg', '64fb2fc934885.jpg'),
(47, 1, 43, '65001b838e95c.jpg', '65001b83b27c0.jpg', '65001b83b2ff6.jpg', '65001b83b3627.jpg'),
(48, 3, 44, '65001c4433489.jpg', '65001c4433e89.jpg', '65001c443469f.jpg', '65001c4434e99.jpg'),
(49, 1, 45, '650994f5abc40.jpg', '650994f5ac4d8.jpg', '650994f5accd0.jpg', '650994f5ad76a.jpg'),
(50, 1, 46, '6509b0212aa2d.jpg', '6509b0212c6bf.jpg', '6509b0212cf81.jpg', '6509b0212d6e6.jpg'),
(51, 1, 47, '65099d4d73e20.jpg', '65099d4d7426e.jpg', '65099d4d74686.jpg', '65099d4d74a5c.jpg'),
(52, 1, 48, '65099f12a5331.jpg', '65099f12a5777.jpg', '65099f12a5b13.jpg', '65099f12a5e91.jpg'),
(53, 3, 49, '65099ffec659f.jpg', '65099ffec6eea.jpg', '65099ffec76f5.jpg', '65099ffec806a.jpg'),
(54, 3, 50, '6509a107e2963.jpg', '6509a107e2f79.jpg', '6509a107e351d.jpg', '6509a107e385e.jpg'),
(55, 3, 51, '6509a1b3170e9.jpg', '6509a1b317b34.jpg', '6509a1b31877a.jpg', '6509a1b319063.jpg'),
(56, 2, 52, '6509b5f04f1b3.jpg', '6509b5f04fbf7.jpg', '6509b5f05043c.jpg', '6509b5f050c80.jpg'),
(57, 2, 53, '6509b3ff3953b.jpg', '6509b3ff3992a.jpg', '6509b3ff39cc6.jpg', '6509b3ff3a043.jpg'),
(58, 2, 54, '6509b4c6ebd9d.jpg', '6509b4c6ec190.jpg', '6509b4c6ec53e.jpg', '6509b4c6ecc6d.jpg'),
(59, 3, 55, '6509b6fca5fbb.jpg', '6509b6fca6e25.jpg', '6509b6fca7ab0.jpg', '6509b6fca82a8.jpg'),
(60, 1, 56, '6509b8a0e9a80.jpg', '6509b8a0e9e55.jpg', '6509b8a0ea1bc.jpg', '6509b8a0ea53a.jpg'),
(61, 3, 57, '6509b96fc1b93.jpg', '6509b96fc23d0.jpg', '6509b96fc2d03.jpg', '6509b96fc38cc.jpg'),
(63, 2, 59, '6509bbb89b67b.jpg', '6509bbb89be54.jpg', '6509bbb89c2a7.jpg', '6509bbb89c711.jpg'),
(64, 2, 60, '650e3e75e7495.jpg', '650e3e75eaa93.jpg', '650e3e75eb385.jpg', '650e3e75ebef0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_wisata`
--

CREATE TABLE `tbl_kategori_wisata` (
  `id_kategori_wisata` int(11) NOT NULL,
  `kategori_wisata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_wisata`
--

INSERT INTO `tbl_kategori_wisata` (`id_kategori_wisata`, `kategori_wisata`) VALUES
(1, 'Pegunungan'),
(2, 'Pantai'),
(3, 'Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `id_subscriber` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggal_gabung` date NOT NULL,
  `jam_gabung` time NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Mengikuti',
  `status_pesan` varchar(100) NOT NULL DEFAULT 'Belum terbaca'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`id_subscriber`, `email`, `tanggal_gabung`, `jam_gabung`, `status`, `status_pesan`) VALUES
(33, 'ciko45@gmail.com', '2023-09-11', '19:50:50', 'Mengikuti', 'Terbaca'),
(34, 'fandi78@gmail.com', '2023-09-11', '19:52:15', 'Mengikuti', 'Terbaca'),
(36, 'siti@gmail.com', '2023-09-12', '15:31:43', 'Mengikuti', 'Terbaca'),
(37, 'arhan@gmail.com', '2023-09-13', '19:00:35', 'Mengikuti', 'Terbaca'),
(39, 'beranda@gmail.com', '2023-09-19', '22:51:13', 'Mengikuti', 'Terbaca'),
(40, 'wisata@gmail.com', '2023-09-19', '22:52:08', 'Mengikuti', 'Terbaca'),
(41, 'peta_wisata@gmail.com', '2023-09-19', '22:52:45', 'Mengikuti', 'Terbaca'),
(42, 'kuliner@gmail.com', '2023-09-19', '22:53:19', 'Mengikuti', 'Terbaca'),
(43, 'tentang@gmail.com', '2023-09-19', '22:53:46', 'Mengikuti', 'Terbaca'),
(44, 'kontak@gmail.com', '2023-09-19', '22:54:21', 'Mengikuti', 'Terbaca'),
(45, 'bestari99@gmail.com', '2023-09-19', '22:55:19', 'Mengikuti', 'Terbaca'),
(46, 'rifki02@gmail.com', '2023-09-19', '22:55:51', 'Mengikuti', 'Terbaca'),
(47, 'caniiimuet@gmail.com', '2023-09-19', '22:56:21', 'Mengikuti', 'Terbaca'),
(48, 'lingling@gmail.com', '2023-09-19', '22:57:03', 'Mengikuti', 'Terbaca'),
(49, 'syifa@gmail.com', '2023-09-19', '22:57:24', 'Mengikuti', 'Terbaca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wisata`
--

CREATE TABLE `tbl_wisata` (
  `id_wisata` int(11) NOT NULL,
  `id_kategori_wisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) NOT NULL,
  `alamat_wisata` varchar(255) NOT NULL,
  `url_lokasi` varchar(255) NOT NULL,
  `peta_area` varchar(255) NOT NULL,
  `nomor_telepon` varchar(100) NOT NULL,
  `jam_buka` varchar(100) NOT NULL,
  `harga_tiket_dewasa` int(100) NOT NULL,
  `harga_tiket_anak` int(100) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `deskripsi_wisata` text NOT NULL,
  `foto_wisata` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wisata`
--

INSERT INTO `tbl_wisata` (`id_wisata`, `id_kategori_wisata`, `nama_wisata`, `alamat_wisata`, `url_lokasi`, `peta_area`, `nomor_telepon`, `jam_buka`, `harga_tiket_dewasa`, `harga_tiket_anak`, `instagram`, `youtube`, `deskripsi_wisata`, `foto_wisata`) VALUES
(34, 2, 'Pantai Pintu Kota', 'Nusaniwe, Kec. Nusaniwe, Kota Ambon, Provinsi Maluku', 'https://goo.gl/maps/ikwk8dmAuEQoTBMD6', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3981.182050874569!2d128.14985817392136!3d-3.770531143385715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sid!2sid!4v1694099775129!5m2!1sid!2sid', '081324526621', '06.00-21.00 WIT', 10000, 10000, 'https://www.instagram.com/reel/CwgfIbBS2iT/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/Xe62X3ZZ2cs?si=zEXXnLQQ6zgmNCtZ', 'Pantai Pintu Kota merupakan   salah satu pantai yang cukup populer bagi para wisatawan baik domestik maupun mancanegara. Pantai ini memiliki pemandangan yang cukup indah dan termasuk jenis pantai yang berkarang dan berbatu. Di pantai ini terdapat sebuah tebing yang menjorok ke laut dan berlubang di tengahnya. Lubang tersebut uniknya berbentuk seperti sebuah pintu gerbang. Tebing dengan lubang berbentuk pintu gerbang inilah yang menjadi ikon pantai ini.\r\nPantai ini memang tidak terlalu luas. Sebagian pantainya banyak dipenuhi dengan karang dan bebatuan. Sebagian lagi terhampar pasir pantai yang berwarna putih kecoklatan dengan kapal-kapal kecil yang berlabuh. Meski begitu pantai ini tetap menjadi salah satu pantai favorit bagi para wisatawan. Dan pantai ini sering dijadikan sebagai lokasi pemotretan serta lokasi penyelaman karena memiliki pemandangan bawah laut yang cukup indah.', '64fb246227f10_pintu_kota1.png'),
(35, 3, 'Benteng Amsterdam', 'Kaitetu, Kec. Leihitu, Kabupaten Maluku Tengah, Maluku, Indonesia', 'https://goo.gl/maps/yeymMU9CdZi58L9dA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.020078475223!2d128.0805645739195!3d-3.58286284244693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cfad4c6874ac7%3A0xb2ee545928ea5c55!2sCagar%20Budaya%20Benteng%20Amsterdam!5e0!3m2!1sid!2', '081266436445', '06.00-18.00 WIT', 0, 0, 'https://www.instagram.com/reel/CwZsSemJegr/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/Ozq_pGMNBjw?si=uQQOWMskdbjIf-Qh', 'Bangunan utama dari Benteng Amsterdam pertama kali dibangun oleh Portugis yang dipimpin oleh Fransisco Serrao pada tahun 1512 dan dijadikan sebagai Loji perdagangan. Kemudian pada tahun 1605, Belanda mengambil alih bangunan Loji tersebut dan mengubahnya menjadi kubu pertahanan. Gubernur Jendral Belanda Jaan Ottens tahun 1637 mengubah Loji menjadi kubu pertahanan disebabkan oleh pertempuran antara bangsa Belanda dengan Kerajaan Hitu yang dipimpin oleh Kapitan Kakialy pada tahun 1633-1654. Pada 1642,benteng ini diperbesar dan dilanjtukan kembali pembangunnanya pada tahun 1656 oleh Arnold De Vlaming Van Ouds Hoorn dan menamakannya Benteng Amsterdam.\r\nKontruksi bangunan benteng ini seperti sebuah bangunan rumah. Bangunannya terdiri dari 3 lantai.  Lantai pertama terdiri lantai berbata merah, lantai dua dan tiga terdiri lantai berkayu besi. Pada ujung bangunan terdapat sebuah menara pengintai. Lantai satu berfungsi sebagai tempat tidur para serdadu, lantai dua untuk tempat pertemuan para perwira dan lantai tiga berfungsi sebagai pos pemantau.\r\nBenteng ini ditinggalkan oleh bangsa Belanda pada awal 1900 dalam keadaan rusak dan telah ditumbuhi sebatang pohon beringin besar sebelum dipugar kembali oleh departemen Pendidikan dan Kebudayaan Republik Indonesia Kantor Wilayah Propinsi Maluku, mulai bulan Juli Tahun 1991 hingga bulan Maret tahun 1994.', '64fb27f3efa94_amsterdam1.png'),
(36, 1, 'Air Terjun Telaga pange', 'Rumah Tiga, Kec. Tlk. Ambon, Kota Ambon, Maluku', 'https://goo.gl/maps/ERrtq3cgfpr7S9cn8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127424.66763055674!2d128.00073645444124!3d-3.582682451653116!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cef0b5766a4cd%3A0xd48d0f70d7177459!2sAir%20Terjun%20Taeno!5e0!3m2!1sid!2sid!4v1694100', '082147728088', '24 Jam', 5000, 5000, 'https://www.instagram.com/reel/CwRKgJQvhv3/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/mJfDoeCAW3o?si=69z2YEw1paTW2QLH', 'Wisata Air Terjun Taeno, kerap juga disebut Air Terjun Telaga Pange berlokasi tepat di Dusun Taeno, Desa Rumah Tiga, Kecamatan Teluk Ambon, Kota Ambon.\r\nWisata air terjun setinggi 40 meter ini berlokasi sekitar kurang lebih 15 kilometer dari pusat Kota Ambon. Wisatawan hanya membutuhkan waktu beberapa menit untuk bisa menikmati pesona alamnya yang asri dan tenang.Bagi yang berada di pulau Ambon, Air Terjun Taeno kerap dijadikan sebagai salah satu obyek wisata favorit di akhir pekan.\r\nDi sana, wisatawan akan dimanjakan dengan keindahan hutan yang alami. Air jernih yang tampak hijau kebiruan, suasana alam yang tenang, menjadi pesona tersendiri yang dapat menghilangkan segala penat.\r\n', '65001cd79a415_air_terjun7.png'),
(37, 2, 'Pantai Huluwa Beach', 'Wakasihu, Kec. Leihitu Bar., Kabupaten Maluku Tengah, Maluku', 'https://goo.gl/maps/bP79HuVRQzxWGHvc7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31849.316013927113!2d127.90659420093688!3d-3.7743614945351784!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6d20e4f9af4439%3A0x6e79efd931726ae!2sHULUWA%20BEACH%20WAKASIHU!5e0!3m2!1sid!2sid!4v16', '082355898122', '24 Jam', 5000, 5000, 'https://www.instagram.com/p/CKxx84wn4Iw/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/jsq934nC2yo?si=VJ36WOPURL2jzTzN', 'Pantai Huluwa merupakan pantai berbatu dengan gugusan batu karang yang unik di sepanjang pantai dan dikelilingi oleh pohon-pohon bonsai yang berumur ratusan tahun.  Arti nama Huluwa berasal dari bahasa Wakasihu, yaitu ‘Hulu’ yang berarti nama kebun di lokasi pantai itu berada dan ‘Uwa’ yang berarti tanjung, karena lokasi pantai ini berada tepat di tanjung. \r\nPantai ini buka untuk umum pada tahun 2015, dan semenjak itu Pantai Huluwa didatangi oleh banyak wisatawan lokal maupun mancanegara. Pantai ini juga popular karena suasana alamnya yang mirip dengan Tanah Lot di Bali', '64fb2c587d6a4_huluwa1.png'),
(38, 2, 'Pantai Hukurila', 'Kec. Leitimur Sel., Kota Ambon, Maluku', 'https://goo.gl/maps/4cfTV6zCr3ppnUbX8', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3981.329718419033!2d128.2382160739211!3d-3.7381453432195912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sid!2sid!4v1694100078739!5m2!1sid!2sid', '083288257721', '24 Jam', 15000, 0, 'https://www.instagram.com/reel/CwwRV1zRkpY/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/Zi1l22y8olo?si=IMEWdDkSDrbn3NqP', 'Pantai ini terletak di Desa Hukurila, bagian selatan Pulau Ambon, Maluku, Kecamatan Leihitu Selatan di Kota Ambon. Pantai yang menghadap langsung ke Laut Banda ini berjarak 12 kilometer atau sekitar 20 menit dari Kota Ambon. Selama ini, Pantai Hukurila dikenal akan keindahan bawah airnya.\r\nTerumbu karang di pantai ini masih sangat terjaga keasriannya. Pantainya memiliki pasir berwarna putih kehitaman dan dipenuhi batu karang yang mempesona serta air yang berwarna kehijau-hijauan seperti kristal yang terkena pantulan sinar matahari. Terdapat gunung api tua yang sudah mati di sekitar pantai, tetapi masih menyisakan endapan material vulkanik dalam bentuk pasir hitam. Lautnya memiliki kedalaman lebih dari 20 meter. Pantai ini menghadap ke timur, sehingga cocok untuk melihat matahari terbit.\r\nTidak hanya sekedar pantai, Hukurila juga memiliki gua yang sangat indah, yaitu Gua Hukurila. Gua yang berada di bawah laut ini memiliki sejumlah tumpukan batu yang besar. Gua ini memiliki beberapa pintu masuk. Salah satu pintunya memiliki celah yang sempit dan terkesan menyeramkan. Tetapi justru ini yang menjadi daya tarik para penyelam untuk semakin ingin menjelajahi gua ini. Di dalam gua pengunjung akan menemukan pemandangan bawah laut yang indah dengan batu karang yang cantik, serta ditemani dengan beraneka ragam ikan-ikan kecil.\r\n', '64fb2d53c83dc_hukurilla1.png'),
(39, 2, 'Pantai Namasua', 'Naku, Kec. Leitimur Sel., Kota Ambon, Maluku', 'https://goo.gl/maps/Wy2yb1n1SGjC3rzS8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.298185703929!2d128.21407117392107!3d-3.745084443255054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cc23134316227%3A0x6dc73cd03ca2320b!2sPantai%20Namasua%20Desa%20Naku!5e0!3m2!1sid!2sid!', '081282119756', '24 Jam', 0, 0, '-', 'https://youtu.be/jTv1YQWQGRY?si=_iX5n39pF_8Zr_0_', 'Pantai Naku, yang juga disebut Pantai Namasua, merupakan sebuah pantai terpencil yang bentuk pantainya seperti huruf &quot;U&quot;, memiliki pasir putih, suhu air yang cukup dingin, dan masih sangat sepi, karena belum banyak orang yang mengetahui letak pantai ini. Perjalanan menuju pantai ini cukup terjal, ditempuh dari pemukiman warga ke pantai ini memerlukan kurang lebih 35 menit jalan kaki.\r\n', '64feec943445f_namasua2.png'),
(40, 2, 'Pantai Kota Jawa', 'Jl. Ir. M. Putuhena, Rumah Tiga, Kec. Tlk. Ambon, Kota Ambon, Maluku', 'https://goo.gl/maps/YD86ZSeBMZB4o6kPA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.6746883032015!2d128.17648737392028!3d-3.6613735428326626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce97313f9e59b%3A0x18ccd1e2d47dd569!2sPantai%20Kota%20Jawa!5e0!3m2!1sid!2sid!4v169410', '081399041180', '17.00-22.00 WIT', 0, 0, '-', 'https://youtu.be/GLTBznT8nT4?si=6tvRLaNrAVCtw40F', 'Pantai Kota Jawa, Teluk Ambon, menjadi rekomendasi lokasi ngabuburit bagi kalangan muda saat bulan ramadhan.Di Pantai Kota Jawa Ambon, warga bisa temukan berbagai takjil. Tidak hanya itu, Kota Jawa merupakan lokasi yang tempatnya luas dan disuguhkan pemandangan pusat kota di seberang.\r\nDi Pantai Kota Jawa juga menjadi pusat kuliner dengan harga terjangkau mulai dari Rp3 ribu sampai dengan Rp15 ribu. Selain itu, di Kota Jawa, warga bisa sekalian memesan makanan berat. Pasanya di Kota Jawa juga ada bakso, soto, nasi goreng, sate, dan makanan berat lainnya yang bikin pengunjung betah berlama-lama.\r\n', '64fb2f0808582_kota_jawa2.png'),
(41, 2, 'Pantai Natsepa', 'Suli, Kec. Salahutu, Kabupaten Maluku Tengah, Maluku', 'https://goo.gl/maps/pNUqGdujHuR7ghY3A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15927.40371070498!2d128.28182003052777!3d-3.6215249266367437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cece6e8bfa427%3A0x4f23bfbc3a9673f2!2sPantai%20Natsepa!5e0!3m2!1sid!2sid!4v16941002406', '0821881139881', '6.00-21.00 WIT', 3000, 3000, 'https://www.instagram.com/reel/CwfJ98HuIZM/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/zJlbBcRwL34?si=ORUD_T9GTey5T8cd', 'Pantai Natsepa adalah salah satu obyek wisata di Ambon yang cukup melegenda. Selama bertahun-tahun pantai ini menjadi tempat untuk berwisata baik bagi penduduk lokal maupun para wisatawan dalam negeri dan mancanegara. Bahkan, nama Natsepa sudah terkenal hingga penjuru Eropa terutama di telinga masyarakat Maluku yang menjadi warga negara Belanda. Bagi mereka, Pantai Natsepa seperti sebuah simbol atas kerinduan mereka pada tanah leluhur mereka di Bumi Pertiwi.\r\nSelain pantainya yang luas dan memiliki garis pantai yang panjang, pantai ini juga terkenal dengan rujak buahnya, yaitu rujak Natsepa. Karena luasnya, pantai ini juga jadi tempat liburan favorit warga lokal, terutama untuk yang mempunyai anak-anak atau yang ingin sambil menikmati kelezatan rujaknya.\r\n', '64fb2fc91d924_natsepa1.png'),
(43, 1, 'Siwang Paradise', 'Siwang, Urimesing, Kec. Nusaniwe, Kota Ambon, Maluku', 'https://maps.app.goo.gl/bQv5Ui7Y6VMhtJ188 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.3408464004983!2d128.16619247386467!3d-3.735693443206977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cc3ea8e452e55%3A0x3c9aa7085f38397e!2sSiwang%20Paradise!5e0!3m2!1sid!2sid!4v1695104233', '081377298008', '09.00-17.00 WIT', 8000, 8000, 'https://instagram.com/siwang_paradise?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/1GV10FW_Tv8?si=SeC97AeEL6eGsaTX', 'Siwang Paradise merupakan lokasi wisata yang pertama kali dibangun di Dusun Siwang. Lokasi wisata ini awalnya mulai dikerjakan pada bulan November 2019 dan baru viral di media sosial sekitar bulan Februari 2020. Sempat ditutup beberapa waktu lamanya saat PSBB pertama di Kota Ambon, kini lokasi wisata Siwang Paradise telah dibuka kembali.\r\nKedudukan lokasi wisata ini jauh lebih tinggi dari lokasi wisata lainnya di Dusun Siwang. Jadi, kalian harus mendaki cukup jauh dari area parkiran menuju lokasi wisata Siwang Paradise. \r\n', '65001b82cd523_siwang1.png'),
(44, 3, 'Monumen Gong Perdamaian Dunia', 'Desa, Uritetu, Kec. Sirimau, Kota Ambon, Maluku', 'https://maps.app.goo.gl/iq4S1udotvN1K4su8 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.532896329535!2d128.17863247386427!3d-3.6931217429913636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce85058510ac7%3A0x82e5d75c684bc1d7!2sMonumen%20Gong%20Perdamaian%20Dunia!5e0!3m2!1sid', '082174419820', '24 Jam', 5000, 5000, 'https://www.instagram.com/p/CsBGhLfBxSE/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/DzF95yBgCrA?si=NyewGieroPsmZouI', 'Monumen Gong Perdamaian Dunia merupakan salah satu tempat bersejarah yang tepat berada di pusat kota Ambon. Gong Perdamaian Dunia di Ambon merupakan gong perdamaian dunia ke-35 di dunia dan ketiga di Indonesia. Gong ini memiliki diameter seluas 2 meter dan berwarna keemasan. Pada bagian tengah gong terdapat dari lambing tiap agama, miniatur bumi serta bertuliskan ‘Gong Perdamaian Dunia’ pada bagian atas dan ‘World Peace Gong’ pada bagian bawah. Gong ini juga dikelilingi dengan 200 gambar bendera dari berbagai negara dan disanggah dengan dua pilar raksasa, serta di bagian atas pilar terdapat lambang Pancasila. \r\nMonumen Gong Perdamaian Dunia  ini menjadi simbol perdamaian bagi masyarakat Ambon dan sebagai pengingat tragedi kemanusiaan umat beragama di Ambon pada tahun 1999. Salah satu upaya pemerintah dalam mengatasi konfilk tersebut ialah dengan membangun Gong Perdamaian ini. Tujuan pembangunan gong tersebut diharapkan dapat membangun kembali perdamaian antarumat beragama dan diharapkan masyarakat dapat belajar dari sejarah yang ada. Gong ini diresmikan pada tanggal 25 November 2009 oleh Presiden Susilo Bambang Yudhoyono.Lokasi gong ini mudah ditemukan. Letaknya berada di dekat Kantor Gubernur Maluku, Lapangan Merdeka dan Taman Pattimura.\r\n', '65001c43ec2ba_gong3.png'),
(45, 1, 'Puncak Kezia', 'Urimesing, Kec. Nusaniwe, Kota Ambon, Provinsi Maluku', 'https://maps.app.goo.gl/bn33aGBVcym7zpkR8 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d248.8395742528533!2d128.1798925680473!3d-3.7152848759530426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce94bdf894155%3A0xb96d1816c8d86dc5!2sWisata%20Puncak%20Kezia!5e0!3m2!1sid!2sid!4v16951', '082111743336', '10.00-20.00 WIT', 10000, 10000, 'https://www.instagram.com/p/CoEJSzSr3SD/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/iO4nj5bayko?si=tbLnatWa7rXEDkqx', 'Puncak Kezia merupakan salah satu tempat wisata yang menarik di Ambon, Maluku. Terletak di ketinggian, Puncak Kezia menawarkan pemandangan spektakuler yang memukau para pengunjung. Dari Puncak Kezia, pengunjung dapat menikmati panorama yang menakjubkan, meliputi pemandangan kota Ambon yang indah, perbukitan hijau, serta lautan yang memukau. Keindahan alam yang disajikan dari ketinggian ini akan membuat Anda terpesona dan takjub akan keajaiban Ambon. Selain menikmati pemandangan yang menakjubkan, Puncak Kezia juga menyediakan jalur trekking atau hiking bagi para petualang.  Anda dapat menjelajahi jalur-jalur yang memikat melalui hutan dan perbukitan, sambil menikmati udara segar dan keindahan alam sekitar. Perjalanan ini akan memberikan pengalaman yang memuaskan bagi pecinta alam dan penggemar olahraga petualangan. Puncak Kezia juga menjadi tempat yang populer untuk menikmati matahari terbit atau matahari terbenam yang memukau.  Anda dapat menyaksikan langit yang berubah warna dan memancarkan keindahan luar biasa, menciptakan momen yang magis dan romantis.', '650994f54b82c_puncak_kezia1.png'),
(46, 1, 'Walang Gantung', 'Siwang, Urimesing, Kec. Nusaniwe, Kota Ambon, Provinsi Maluku', 'https://maps.app.goo.gl/vFLdkEZPPV7cgqdx5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.385295371021!2d128.17260077386467!3d-3.7258836431570295!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cc29bc75490a5%3A0x9047e0844c466e40!2sWalang%20Gantung!5e0!3m2!1sid!2sid!4v16951043524', '082248859023', '24 Jam', 5000, 5000, 'https://instagram.com/walang_gantung?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/gatokZDEhF4?si=P2pNbfnVNWmBkdF6', 'Walang Gantung merupakan salah satu tempat wisata yang ada di Ambon yang dibuat oleh masyarakat sekitar untuk di jadikan spot Selfi. Tempat ini terdiri dari walang atau rumah-rumah kecil yang di buat unik dan menarik. Bagi para pencinta foto atau berselfi harus mengunjungi tempat ini.', '650996d3ae8a2_walang_gantung1.png'),
(47, 1, 'Air Terjun Ureng', 'Ureng, Kec. Leihitu, Kabupaten Maluku Tengah, Provinsi Maluku', 'https://maps.app.goo.gl/zekHZzbC2MUczfQ96 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127413.45622376789!2d127.81284254335938!3d-3.6623136999999972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6d1dde1ee1471f%3A0x8c299393f1e2916f!2sAir%20Terjun%2FWael%20Mananahu!5e0!3m2!1sid!2si', '085244248240', '24 Jam', 10000, 10000, 'https://www.instagram.com/p/BfrwWvbnL7W/?igshid=MzRlODBiNWFlZA== ', 'https://youtu.be/PQz67voNItY?si=739oxu2WDupXdHF9', 'Air terjun ureng atau biasa disebut air terjun manahu merupakan salah satu dari air terjun yang terdapat dikawasan jezirah leihitu. Air terjun ini telah menjadi salah satu destinasi wisata alam yang dikunjungi baik oleh wisatawan domestik maupun wisatawan mancanegera. Memiliki air dan udara yang bersih dan segar menjadikannya sebagai spot untuk berwisata sambil melepeskan kepenatan setelah bekerja. ', '65099d4d4a62f_at_ureng1.png'),
(48, 1, 'Bukit Paralayang', 'Nusaniwe, Kec. Nusaniwe, Kota Ambon,Provinsi Maluku', 'https://maps.app.goo.gl/PxKDo9HAMm1212Mr9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.2244587111218!2d128.14483667386492!3d-3.7612589433378623!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cdd860e4b37d5%3A0xb9bd56775558cb07!2sBukit%20Paralayang!5e0!3m2!1sid!2sid!4v16951047', '0', '24 Jam', 5000, 5000, 'https://www.instagram.com/reel/CYqRmXLMANj/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/m8qoaTNBWWw?si=3mAZQ1Edi3-q-obV', 'Pada tahun 2019 lokasi ini dibuka untuk Event Nasional Sport Extrem Paralayang oleh TNI AU. Berlokasi di Desa Airlow Kecamatan Nusaniwe, anda dapat menempuh jarak kurang lebih 30 menit dari Kota Ambon dengan menggunakan kendaraan roda dua atau roda empat. Bukit Paralayang  ketinggian sekitar 100 meter di atas permukaan taut yang mana di hadapan tebingnya langsung menghadap ke laut. Lokasi ini menjadi salah satu destinasi favorit yang sering dikunjungi wisatawan untuk wisata olahraga paralayang, berkemah atau sekedar berfoto selfi.', '65099f1284d79_bukit_paralayang1.png'),
(49, 3, 'Benteng Nieuw Victoria', 'Jl. Slamet Riyadi No.1, Uritetu, Kec. Sirimau, Kota Ambon, Maluku ', 'https://maps.app.goo.gl/oFUcwRvJqLHHTwJt7 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.5344221907976!2d128.17990757386423!3d-3.6927815429896755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce850f28ddc35%3A0xe2373ab58800130a!2sBenteng%20Nieuw%20Victoria!5e0!3m2!1sid!2sid!4v', '0', '08.00-18.00 WIT', 20000, 20000, 'https://www.instagram.com/p/CT4ehP5JByJ/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/FDdJaD8Izi4?si=ILFKogPZPO2xM2IY', 'Benteng Victoria adalah salah satu benteng peninggalan Portugis yang merupakan benteng tertua di kota Ambon. Benteng Victoria dibangun oleh Portugis pada tahun 1775, tetapi kemudian diambil alih oleh Belanda.\r\nPada masa pemerintahan Belanda, benteng ini berfungsi strategis, yakni sebagai pusat pemerintahan kolonial. Benteng ini juga digunakan sebagai tempat pertahanan dari berbagai serangan masyarakat pribumi yang melakukan perlawanan. Dan, tepat di depan benteng inilah pahlawan nasional bernama Pattimura digantung, yakni pada tanggal 6 Desember 1817.\r\nKeistimewaan dari Benteng Victoria adalah di dalam benteng ini dapat ditemui sisa-sisa meriam berukuran raksasa. Di beberapa kamar terdapat patung berukir terbuat dari kayu pilihan, peta perkembangan kota Ambon dari abad XVII hingga abad IX, dan beberapa koleksi lukisan para administratur Belanda di Maluku. Dengan melihat peninggalan ini kamu dapat merekam sejarah lahir dan berkembangnya kota Ambon.\r\n', '65099ffe8b186_banteng_victoria1.png'),
(50, 3, 'Museum Siwalima Provinsi Maluku', 'Jl. Dr. Malaiholo, Taman Makmur, Kec. Nusaniwe, Kota Ambon, Maluku', 'https://maps.app.goo.gl/XoJvJcev66Vjvqg7A', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1990.720788566032!2d128.15170376299275!3d-3.7134252412762843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce80eafbfeb7d%3A0xbf9977619e9db228!2sMuseum%20Siwalima%20Provinsi%20Maluku!5e0!3m2!1s', '0911341652', '08.00-18.00 WIT', 5000, 2000, 'https://instagram.com/museumsiwalimamaluku?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/_UspowwBqVU?si=iIWrMrNAmcBLhgeK', 'Lokasi bangunan museum yang berada di atas bukit yang menghadap ke Teluk Ambon membuatnya semakin eksotis. Di museum ini kalian bisa melihat koleksi yang terkait dengan kebudayaan dan adat-istiadat Maluku serta yang terkait dengan sejarah kelautan Maluku. Nama Museum Siwalima diambil dari dua kata, yakni ‘ulusiwa’ berarti kumpulan 9 kerajaan yang menguasai Maluku Selatan dan ‘patalima’ yakni kumpulan 5 kerajaan penguasa Maluku Utara. Kata Siwalima mewakili kekayaan sejarah, alam, dan budaya Maluku, tanah para raja-raja. Museum Siwalima menyimpan koleksi benda bersejarah berjumlah 5.347 yang terbagi dalam 10 jenis koleksi.', '6509a107c3a9f_museum_siwalima1.png'),
(51, 3, 'Patung Martha Christina Tiahahu', 'Kel Amantelu, Kec. Sirimau, Kota Ambon, Provinsi Maluku', 'https://maps.app.goo.gl/oJahchpT8RGMKHry7 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.5580295624263!2d128.18974627386413!3d-3.687514142963221!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce92a8fd6d89b%3A0x8966dc572c62f750!2sPatung%20Christina%20Martha%20Tiahahu!5e0!3m2!1s', '082248100799', '24 Jam', 0, 0, 'https://www.instagram.com/p/BIt9mnFDGit/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/fOSuPZ7gBjk?si=aSYlwUU8b1UHN2XG ', 'Patung ini dibangun untuk mengenang jasa pahlawan perempuan dari tanah Maluku dalam melawan para penjajah. Martha Christina Tiahahu dan ayahnya (Paulus Tiahahu) serta Kapitan Pattimura  bersatu dalam mengusir penjajah di Nusalaut, Maluku. Patung ini berdiri tegak di daerah perbukitan Karang Panjang dan mengarah langsung ke arah Laut Banda. Patung ini diarahkan ke Laut Banda untuk mengenang jasad pahlawan wanita nasional ini yang dikuburkan di Laut Banda. Patung ini terbuat dari perunggu dengan tinggi sekitar 6-7 meter. Patung Martha C. Tiahahu ditampilkan membawa tombak, tetapi berdasarkan legenda, ia melemparkan batu ke tentara Belanda ketika pasukannya kehabisan amunisi dalam pertempuran melawan Belanda. Terdapat dua patung  Martha Christina Tiahahu di Maluku. Patung versi lama ada di pusat Kota Ambon yang didirikan sejak tahun 1969, setelah penganugerahan gelar pahlawan nasional diberikan kepada Martha Christina Tiahahu oleh pemerintah. Patung baru berada di Pulau Nusalaut yang merupakan tanah kelahiran Martha Christina Tiahahu yang didirikan pada tahun 2018.  Tidak sulit untuk menemukan lokasi patung ini karena berada di pusat kota Ambon dan berada di sebelah Kantor DPRD Provinsi Maluku.', '6509a1b2cbdc0_patung_christina1.png'),
(52, 2, 'Pantai Moki ', 'Liang, Kec. Salahutu, Kabupaten Maluku Tengah, Provinsi Maluku', 'https://maps.app.goo.gl/3tRR4UiyMLeSwJYy8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.353926409042!2d128.24136257386235!3d-3.505307142075658!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cf5995f4d4ed7%3A0x5b563686d7701df7!2sPantai%20Moki%20(Moki%20Beach)!5e0!3m2!1sid!2sid!', '082399363170', '24 Jam', 2500, 2500, 'https://instagram.com/pantai_moki?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/uQHif8DE_Yc?si=4dLoqom91jU3siJa ', 'Salah satu alternatif destinasi Wisata Maluku yang harus dicoba di akhir pekan, adalah Pantai Moki.  Pantai Moki adalah objek wisata yang terletak di Negeri Morela, Leihitu, Maluku Tengah.  Pantai ini masih satu kawasan dengan Pantai Lubang Buaya yang juga terletak di Morela. Pantai Moki sendiri menjadi salah satu tempat wisata keluarga yang direkomendasikan ketika berkunjung ke Maluku. Terlebih pantai ini mudah dijangkau, karena hanya berjarak 36 kilometer dari pusat Kota Ambon. Hanya membutuhkan waktu sekitar satu jam menggunakan kendaraan roda dua maupun empat, wisatawan sudah bisa bersantai sambil menikmati pemandangan pantai yang eksotis ini. Kelebihan destinasi wisata Pantai Moki ini, adalah lokasinya yang tepat menghadap Selat Seram. Pantainya menyuguhkan pemandangan alam dengan ombak yang besar. Di sana juga terdapat area pasir pantai yang luas dan panjang.', '6509b5f02845a_pantai_moki2.png'),
(53, 2, 'Pantai Sopapei', 'Bawah, Suli, Kec. Salahutu, Kabupaten Maluku Tengah, Provinsi Maluku', 'https://maps.app.goo.gl/55akuQz6dguCW9eh7 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15927.365379858504!2d128.28942152962617!3d-3.623702876651487!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cece77535b459%3A0xf0bc0c7772f94ebc!2sPantai%20Sopapei!5e0!3m2!1sid!2sid!4v16951053836', '0', '24 Jam', 10000, 10000, 'https://www.instagram.com/explore/locations/577475721/pantai-sopapei-ambon?igshid=MTc4MmM1YmI2Ng== ', 'https://youtu.be/fC-arPC7u_w?si=N8Yj1_iG2T6oKWIs', 'Pantai Sopapei adalah satu pantai yang baru saja dibuka secara resmi oleh warga sekitarnya sebagai obyek wisata. Fasilitas dan infrastruktur pendukung pantai ini juga belum selengkap Natsepa atau Pantai Liang. Namun, hamparan pasir putih, air laut yang jernih dan suasana yang begitu nyaman akan selalu menyambut Anda ketika memasuki wilayah Pantai Sopapei. Bila Anda ingin menikmati pantai dan lautan dengan situasi tenang dan nyaman, Pantai ini sangat tepat untuk dijadikan pilihan. Satu hal yang paling mencolok dari karakteristik Pantai Sopapei adalah aura tenangnya yang begitu menawan sehingga dapat membuat siapapun enggan beranjak cepat dari pantai ini.', '6509b3ff21497_pantai_sopapei1.png'),
(54, 2, 'Pantai Lubang Buaya Morella ', 'Morella, Kec. Leihitu, Kabupaten Maluku Tengah, Provinsi Maluku', 'https://maps.app.goo.gl/AMXoV4GHyEhFEHWF8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.2983420128585!2d128.22108077386244!3d-3.518338342137319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cf6ae7693ae9f%3A0x201c7423df81cfcc!2sLubang%20Buaya%20Morela!5e0!3m2!1sid!2sid!4v1695', '082399363170', '24 Jam', 5000, 5000, 'https://www.instagram.com/p/CLET06PBpZk/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/YMU3NdGb4DY?si=owFjBAo7GfCkijSE', 'Lubang Buaya Morella sebenarnya adalah kawasan pantai di Desa Morella. Pantai Lubang Buaya tidak ada hamparan pasir putih dan mempunyai air laut bewarna biru kehijauan yang  bening. Nama lubang buaya berasal dari mitos yang beredar di daerah ini. Konon, terdapat seekor buaya putih yang tinggal di dalam lubang karang di tepi pantai. Informasi lain juga menyebutkan bahwa ada sebuah cekungan dengan sebagian dinding di pantai terdapat lubang sehingga bernama Pantai Buaya. Ada juga yang menyebutkan nama ini diambil dari lengkungan garis pantai yang konon menyerupai buaya.\r\nNama lain Pantai Lubang Buaya adalah Pantai Namanalu. Lokasi Lubang Buaya Morela terletak kurang lebih 20 kilometer dari pusat Kota Ambon. Sejak tahun 2016, objek wisata Pantai Lubang Buaya semakin dikenal oleh pecinta snorkeling dan diving. Lubang Buaya Morella menyimpan keindahan bawah laut yang menakjubkan. Ikan dan karang di pantai ini sangat beragam dan masih asri. Palung-palung hingga gua yang menganga ada di bawah permukaan laut.\r\n', '6509b4c6cbbd3_pantai_lb2.png'),
(55, 3, 'Taman Pattimura ', 'Uritetu, Kec. Sirimau, Kota Ambon, Provinsi Maluku', 'https://maps.app.goo.gl/9Pg3XU1WFDnmwQvU6 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.5332461866788!2d128.18109177386427!3d-3.6930437429909895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce8519e8f62bd%3A0xdd06871045372d08!2sTaman%20Pattimura!5e0!3m2!1sid!2sid!4v169510496', '0', '24 Jam', 0, 0, 'https://www.instagram.com/p/CWhpKk9p3pK/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/IstiPmoPUfU?si=UVlW0uualqycs6L0', 'Taman Patimura ini merupakan salah satu tempat wisata sejarah yang memiliki banyak sejarah. Di dalam taman ini juga terdapat sebuah patung pahlawan nasional yaitu patung Thomas Matulessy yang mempunyai gelar Kapitan atau panglima perang, untuk menggantikan patung lama yang sudah dipindahkan pada kawasan sekitar Museum Siwalima. Patung baru ini terbuat dari bahan perunggu dan memiliki setinggi sekitar tujuh meter serta memilki berat sekitar kurang lebih empat ton. Patung ini dibuat oleh seorang pematung yang bernama Risdian Rachmadi dan patung dikerjakan di Kota Bandung.\r\nMonumen yang satu ini memang sengaja dibuat untuk mengenang tanggal 15 Mei 1817 yang juga merupakan awal mulanya perlawanan pahlawan Pattimura saat melawan bangsa Belanda. Di tempat ini juga ada jenazah Pattimura yang diletakkan setelah sudah dihukum dengan cara digantung pada tahun 1817. Untuk menemukan taman yang satu ini memanglah tidak sulit karena taman ini letaknya hanya diapit oleh Kantor Walikota Ambon, Gereja Kristen Protestan Maranatha, serta Gong Perdamaian Dunia di sekitar persimpangan Slamet Riyadi, pada Jalan Imam Bonjol dan juga Jalan Pattimura.\r\n', '6509b6fc6d2b9_taman_pattimura1.jpeg'),
(56, 1, 'Rumah Pohon Waai', 'Waai, Kec. Salahutu, Kabupaten Maluku Tengah,Provinsi Maluku', 'https://maps.app.goo.gl/YXvvJdLHe1JvABKcA ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3982.139944419546!2d128.2958846!3d-3.5552113999999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cf39cb4643d95%3A0x17ab86e38548a767!2sRumah%20Pohon%20Waai!5e0!3m2!1sid!2sid!4v1695104618507!', '0', '07.00-20.00 WIT', 10000, 10000, 'https://instagram.com/rumahpohon_waai?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/mKyuLEZ2DSE?si=oKP36nw42KbiePkC', 'Wisata Rumah Pohon Waai, Kecamatan Salahutu, Kabupaten Maluku Tengah bisa jadi alternatif tempat liburan.\r\nJika melihat tempatnya, pada dasarnya Rumah Pohon Waai merupakan wisata alam dengan banyak spot foto unik yang disediakan pengelola.\r\nPanorama perbukitan dan hutan yang menakjubkan menjadi sajiannya. Tak ketinggalan lautan biru yang terpampang dari daerah menuju puncak gunung Salahutu itu.\r\nInilah yang menjadikan Rumah Pohon Waai cukup viral dan selalu ramai dikunjungi sejak pertama kali dibuka.\r\nTak hanya viral, Rumah Pohon Waai di Tahun 2020 pernah mendapat penghargaan Destinasi Wisata Kreatif Terpopuler se Indonesia. Rumah Pohon Waai juga menyediakan belasan spot foto.\r\nAda berbentuk kupu-kupu, tangga ke surga, bingkai bunga-bunga, ayunan, keranjang gantung, rumah hobit dan lainnya.\r\nDari semua spot foto, sepeda gantung menjadi yang disukai pengunjung.\r\nPemandangan bukit hijau dan lautan menjadi sajian utamanya. Khusus sepeda gantung dan keranjang gantung, seharga Rp 25 ribu sudah langsung mendapat foto dari fotograger, \r\nSementara wahana lainnya gratis. Di dekat wisata rumah Pohon  juga terdapat wisata Air terjun yang terletak tak jauh dari Rumah Pohon Waai, sekitar 10 menit perjalanan kaki. Kejernihan air di air terjun pun masih terjaga, bersih dan segar. Tebing batu di sisi air terjun juga menambah pesonanya.\r\n', '6509b8a0cef61_rm_waai2.png'),
(57, 3, 'Taman Makam Australia', 'Pandan Kasturi, Kec. Sirimau, Kota Ambon, Provinsi Maluku', 'https://maps.app.goo.gl/oNZTqaXBHHR3gQag6 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3981.6136922744254!2d128.1892754738641!3d-3.675064542900854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6ce91dc7b123cb%3A0xc47077f3f0286c52!2sTaman%20Makam%20Australia!5e0!3m2!1sid!2sid!4v169', '081240454320', '24 Jam', 5000, 5000, 'https://www.instagram.com/p/BT8RBmoBpSS/?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/hRB15wApxNs?si=ntnvLRJxWGNflLVR', 'Ambon sebagai ibukota provinsi Maluku tidak hanya kaya akan keindahan alam dan budaya, namun salah satu kota besar di Indonesia Timur ini pun memiliki warisan sejarah yang luar biasa. Tidak hanya sejarah yang berkaitan dengan perjuangan meraih kemerdekaan Bangsa Indonesia, Ambon ternyata terhubung dengan kisah sejarah bangsa lain di luar Indonesia. Salah satu kisah sejarah bangsa lain yang terkait dengan Ambon adalah perjuangan para tentara ANZAC melawan Jepang di perang dunia ke-2. ANZAC sendiri adalah satuan tentara gabungan Australia dan Selandia Baru yang awalnya dibentuk oleh sekutu untuk melawan kekuatan pasukan Turki pada perang dunia ke-1. Pasukan ANZAC umumnya berisi para serdadu yang berasal dari Negara-negara sekutu, terutama persemakmuran Inggris seperti India, Kanada, Afrika Selatan, Selandia Baru dan Australia sendiri. Namun, dalam perkembangannya pada perang dunia ke-2, pasukan ANZAC terus diberikan misi dan salah satunya adalah melawan kekuatan Jepang. Langit yang biru di atas Ambon siang itu membawa saya dan rombongan lain menuju sebuah taman indah di pinggiran kota Ambon. Taman ini bukanlah taman biasa, namun merupakan sebuah makam para pejuang ANZAC yang gugur dalam pertempuran melawan kekuatan tentara Jepang di perang dunia ke-2. Makam ini dibentuk sedemikian rupa sehingga menjadi sangat indah, bahkan bagi sebagian wisatawan tempat ini merupakan sebuah obyek wisata yang cukup menarik untuk dikunjungi.', '6509b96f8e7cc_tm_australia3.png'),
(59, 2, 'Pantai Halasi ', 'Jl. Propinsi, Morela, Kec. Leihitu, Kabupaten Maluku Tengah, Maluku', 'https://maps.app.goo.gl/vFm57DDhVd897QGU6 ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15928.916962199808!2d128.20330582961157!3d-3.53447157599583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cf14728529623%3A0xd70fd2dd09d53f00!2sPantai%20Halasi!5e0!3m2!1sid!2sid!4v1695105438667', '085243012750', '24 Jam', 5000, 5000, 'https://www.instagram.com/p/BfUgTZlAyLK/?igshid=MzRlODBiNWFlZA== ', 'https://youtu.be/z27czmd2gyU?si=HiTcj3RyGFPiTMMb ', 'Pantai Halasi merupakan tempat wisata di Desa morela yang berbatasan dengan Negeri Liang Maluku Tengah, pantai ini belum banyak dikenal oleh masyarakat, namun fasilitas pentai tersebut sangat memadai. Selain pantai yang indah yang menghadap ke pulau seram, pantai ini memiliki fasilitas seperti dermaga yang indah dan dihiasi oleh payung berwarna – warni, pondokan – pondokan kecil di pesisir pantai untuk tempat bersantai, fasilitas penginapan, mushola, kios, wc umum, tempat parkir serta fasilitas lain yang sementara dikejar pembangunannya seperti restoran dan Kolam renang. Untuk berkunjung ke tempat ini waktu yang akan ditembuh sekitar 55 menit dari pusat kota ambon apabila arus lalu lintas lancar. Selama perjalanan ke tempat ini,mata anda akan dimanjakan oleh suasana kehidupan masyarakat pedesaan yang hidup berdampingan serta pepohonan yang memberikan anda udara segar yang tidak dijumpai di lingkungan perkotaan. ', '6509bbb886db7_pantai_halasi5.jpg'),
(60, 2, 'Pantai Hunimua Liang', 'Jalan Propinsi, Liang, Salahutu, Kabupaten Maluku Tengah, Maluku', 'https://goo.gl/maps/gaWRV8vYJD7wok9Q9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7964.714651324054!2d128.33767537178906!3d-3.5045086512810366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6c8b4d049b04b7%3A0x34b7df42fb67f814!2sPantai%20Liang!5e0!3m2!1sid!2sid!4v1694099684398', '311333', '24 Jam', 15000, 15000, 'https://instagram.com/pantai_liang?igshid=MzRlODBiNWFlZA==', 'https://youtu.be/4J18CsBIgWI?si=37pkmTi6mYhj5ZFlDeskrips', 'Pantai Hunimua merupakan pantai yang terletak di Liang, Salahutu, Maluku Tengah, Provinsi Maluku. Pantai ini terletak 40 km dari pusat Kota Ambon.\r\nPantai Liang atau yang mempunyai nama lain Pantai Hunimua memiliki hamparan pasir putih dipadukan dengan air yang cukup jernih berwarna kebiruan, yang membuatnya menjadi salah satu objek wisata di Maluku Tengah. Di sana, pengunjung dapat melakukan berbagai kegiatan atau rangkaian aktivitas karena ombak Pantai Liang cukup tenang. Terdapat pula dermaga kayu sederhana yang menjorok ke pantai sepanjang 200 meter di lokasi ini. Fasilitas yang tersedia untuk pengunjung antara lain ruang bilas, ruang berganti baju, hingga warung-warung kecil yang tersusun rapi yang menjajakan makanan ringan dan pakaian. Pantai Liang pernah dinobatkan oleh UNDP-PBB sebagai pantai terindah di Indonesia pada tahun 1990.\r\n', '650e3e74dca73_liang7.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_galeri_wisata`
--
ALTER TABLE `tbl_galeri_wisata`
  ADD PRIMARY KEY (`id_galeri_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- Indexes for table `tbl_kategori_wisata`
--
ALTER TABLE `tbl_kategori_wisata`
  ADD PRIMARY KEY (`id_kategori_wisata`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`id_subscriber`);

--
-- Indexes for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `id_wisata` (`id_wisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_galeri_wisata`
--
ALTER TABLE `tbl_galeri_wisata`
  MODIFY `id_galeri_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_kategori_wisata`
--
ALTER TABLE `tbl_kategori_wisata`
  MODIFY `id_kategori_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `id_subscriber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_wisata`
--
ALTER TABLE `tbl_wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
