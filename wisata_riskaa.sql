-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 03:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_riskaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `pk_login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`pk_login_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'riska', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `pk_transaksi_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `tempat_wisata` int(11) DEFAULT NULL,
  `tanggal_kunjungan` varchar(50) DEFAULT NULL,
  `dewasa` varchar(50) DEFAULT NULL,
  `anak` varchar(50) DEFAULT NULL,
  `qrcode` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`pk_transaksi_id`, `nama_lengkap`, `no_identitas`, `no_hp`, `tempat_wisata`, `tanggal_kunjungan`, `dewasa`, `anak`, `qrcode`, `created_date`, `status`) VALUES
(14, 'test', '32323', '12', 2, '2022-04-17', '2', '3', '470081814.png', '2022-04-17', 'N'),
(15, 'titisan', '2323565', '08999', 2, '2022-04-17', '1', '2', '432131819.png', '2022-04-17', 'N'),
(18, 'Ari', '121321321', '123132123', 1, '2022-04-17', '2', '1', '651520538.png', '2022-04-17', 'N'),
(21, 'Nazar', '3434354', '434343', 3, '2022-04-18', '2', '2', NULL, '2022-04-18', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `wisata_id` int(11) NOT NULL,
  `nama_tempat` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tiket_dewasa` int(11) DEFAULT NULL,
  `tiket_anak` int(11) DEFAULT NULL,
  `embed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`wisata_id`, `nama_tempat`, `lokasi`, `deskripsi`, `foto`, `tiket_dewasa`, `tiket_anak`, `embed`) VALUES
(1, 'Danau Lemona', 'Kabupaten Tasikmalaya', 'Danau Lemona itu sendiri terletak di sebelah tenggara kota Tasikmalaya. Untuk dapat menuju ke destinasi kuliner populer ini dibutuhkan kurang lebih 32 km dari pusat kota. Lumayan agak jauh namun akses jalan yang dilalui tergolong mudah. Di bawah ini ialah ulasan lengkap mengenai danau Lemona.', 'https://1.bp.blogspot.com/-tqU5koO_0PY/YGLkjGmnodI/AAAAAAAAGqk/9XmXoIzhv6QuFOOHNOQlzyCAnI6p49ZrQCLcBGAsYHQ/s750/WISATA.jpg', 20000, 10000, 'https://www.youtube.com/embed/_j7XWZdGCCY'),
(2, 'Pantai Karang Tawulan', 'Kabupaten Tasikmalaya', 'Salah satu pantai populer dan eksotis di Tasikmalaya adalah Pantai Karang Tawulan yang menawarkan pasir pantai putih dan tersembunyi di balik tebing. Pantai Karang Tawulan yang indah ini terletak di Desa Cimanuk, Kalapagenep, Kecamatan Cikalong, Tasikmalaya.', 'https://asset.kompas.com/crops/Fz0jDIh3z6Dxp642Di1MUK7KkkE=/0x0:800x533/750x500/data/photo/2020/10/19/5f8d5c603a93f.jpg', 30000, 15000, 'https://www.youtube.com/embed/td8EVbRbhog'),
(3, 'Taraju', 'Kabupaten Tasikmalaya', 'udara sejuk, pemandangan alam yang ditawarkan tempat wisata tersebut mungkin mampu membuat suasana liburanmu menjadi tenang.\r\n\r\n', 'https://r1.community.samsung.com/t5/image/serverpage/image-id/1608861iE51B9FD78117B476/image-size/large?v=v2&px=999', 10000, 5000, 'https://www.youtube.com/embed/10aoijwYOzw'),
(4, 'Gunung Galunggung', 'Kabupaten Tasikmalaya', 'Gunung Galunggung merupakan salah satu tempat wisata favorit yang ada di Kabupaten Tasikmalaya. Gunung ini masih aktif dan memiliki ketinggian 2.167 meter di atas permukaan laut (mdpl), sehingga pengunjung dapat merasakan udara yang sangat sejuk. Banyak keindahan yang dapat ditemukan di Gunung Galunggung, seperti Kawah Hijau, pemandian air panas, gardu pandang, sampai Curug Agung yang penuh warna.', 'https://kabaralam.com/img/2020/999/d355f7d1-0c2e-4868-aefd-522e9a0fd3c4.jpg', 10000, 5000, 'https://www.youtube.com/embed/d0U2rjzA1Kg'),
(5, 'Situ Gede', 'Kota Tasikmalaya', 'Situ Gede merupakan kawasan danau yang telah berdiri sejak zaman kolonial Belanda dengan menyajikan keindahan pemandangan alam, sehingga menarik banyak wisatawan. Di tengah danau, terdapat pulau dengan luas mencapai 1 hektar. Konon, di sana terdapat tiga makam yang juga menjadi asal-usul Situ Gede.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"25 Wisata Tasikmalaya, Pas Dikunjungi Saat Libur Panjang\", Klik untuk baca: https://travel.kompas.com/read/2020/10/24/165141327/25-wisata-tasikmalaya-pas-dikunjungi-saat-libur-panjang?page=all.\r\nPenulis : Lenny Septiani\r\nEditor : Anggara Wikan Prasetya\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'https://www.bogorraincake.com/wp-content/uploads/2018/01/Situ-Gede-Bogor-1-1024x684.jpg', 12000, 6000, 'https://www.youtube.com/embed/H2jvOiGyz58'),
(6, 'Pantai Sayang Heulang', 'Kabupaten Garut', 'Pantai Sayang Heulang merupakan sebuah pantai yang ada di Garut Selatan, tepatnya di Kecamatan Pameungpeuk, Desa Mancagahar. Pantai ini memiliki bentangan sekitar 3,5 km dengan hamparan pasir yang dihiasi batuan karang, air lautnya bersih dengan deburan ombak yang cukup kencang.', 'https://pinhome-blog-assets-public.s3.amazonaws.com/2021/10/Andi-Astina-1024x576.png', 25000, 12500, 'https://www.youtube.com/embed/nmh6lFp9VNc'),
(7, 'Kopi sarasa', 'Kota Tasikmalaya', 'Kopi Sarasa yang bertempat di wisata curug badak, merupakan tempat ngopi yang memang berbeda dibandingkan dengan tempat ngopi yang ada di Tasikmalaya pada umumnya. Karena selain bisa menikmati secangkir kopi yang original, tentunya disini juga pengunjung dapat sekaligus berwisata dan menikmati pemandangan alam yang sangat menyegarkan dan sungguh indah.\r\n\r\n', 'https://r1.community.samsung.com/t5/image/serverpage/image-id/1952514iBA9CFE0E0015654D/image-size/large?v=v2&px=999', 10000, 5000, 'https://www.youtube.com/embed/KGcGcQMvcCQ'),
(8, 'Pantai Pangandaran', 'Kabupaten Tasikmalaya', 'Aktivitas yang dapat meliputi menikmati pemandanganyang indah, berfoto, hingga berenang jika kondisi air tidak sedang banjir. Di sini, masih belum ada fasilitas karena masih sangat baru dan masih masuk tahap penyadaran kepada warga desa akan potensi wisata yang dimiliki. Tiket masuknya pun masih gratis.', 'https://sweetrip.id/wp-content/uploads/2021/06/pantai-pangandaran-sunset-1.jpg', 20000, 10000, 'https://www.youtube.com/embed/XnzWR77HxYU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_login_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pk_transaksi_id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`wisata_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `pk_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pk_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `wisata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
