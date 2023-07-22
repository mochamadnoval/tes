-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2023 pada 09.36
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konsuldoc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `id` int(11) NOT NULL,
  `kode_penyakit` varchar(255) DEFAULT NULL,
  `kode_gejala` varchar(255) DEFAULT NULL,
  `solusi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id`, `kode_penyakit`, `kode_gejala`, `solusi`) VALUES
(8, 'P001', 'G001', NULL),
(44, 'P001', 'G002', NULL),
(45, 'P001', 'G003', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` int(5) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'G001', 'Sensasi mual, terutama di pagi hari'),
(2, 'G002', 'Muntah atau ingin muntah'),
(3, 'G003', 'Penurunan nafsu makan'),
(4, 'G004', 'Sulit buang air besar atau buang air besar yang jarang'),
(5, 'G005', 'Rasa kembung atau tidak nyaman di perut'),
(6, 'G006', 'Feses keras atau sulit dikeluarkan'),
(7, 'G007', 'Pembengkakan pada kaki, pergelangan kaki, atau tangan'),
(8, 'G008', 'Sensasi berat atau kaku pada kaki atau tangan'),
(9, 'G009', 'Kulit yang mengkilap pada area tertentu'),
(10, 'G010', 'Pelebaran pembuluh darah pada kaki'),
(11, 'G011', 'Pembengkakan, nyeri, atau sensasi berat pada kaki'),
(12, 'G012', 'Rasa nyeri atau kram'),
(13, 'G013', 'Tekanan darah tinggi'),
(14, 'G014', 'Protein dalam urin'),
(15, 'G015', 'Pembengkakan yang parah, terutama di wajah, tangan, atau kaki'),
(16, 'G016', 'Kenaikan berat badan yang tidak normal'),
(17, 'G017', 'Rasa haus yang berlebihan'),
(18, 'G018', 'Sering buang air kecil'),
(19, 'G019', 'Kelelahan yang berlebihan'),
(20, 'G020', 'Sering buang air kecil'),
(21, 'G021', 'Rasa nyeri atau terbakar saat buang air kecil'),
(22, 'G022', 'Demam atau menggigil'),
(23, 'G023', 'Kelelahan yang berlebihan'),
(24, 'G024', 'Kulit pucat'),
(25, 'G025', 'Sesak napas atau denyut jantung cepat'),
(26, 'G026', 'Gatal-gatal atau iritasi di area vagina'),
(27, 'G027', 'Keputihan yang berubah warna atau konsistensi'),
(28, 'G028', 'Bau yang tidak biasa pada vagina'),
(29, 'G029', 'Nyeri perut yang tajam dan parah, terutama di satu sisi'),
(30, 'G030', 'Pendarahan vagina yang tidak normal'),
(31, 'G031', 'Pusing atau pingsan'),
(32, 'G032', 'Nyeri bahu yang timbul akibat perdarahan internal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(5) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` text NOT NULL,
  `info_penyakit` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode_penyakit`, `nama_penyakit`, `info_penyakit`, `solusi`) VALUES
(1, 'P001', 'MORNING SICKNESS', 'Morning sickness adalah penyakit mual dan muntah yang umum terjadi pada awal kehamilan, terutama di pagi hari. kondisi morning sickness biasanya membaik setelah paruh pertama kehamilan.', '•	Makan beberapa makanan ringan sebelum bangun tidur, seperti biskuit\r\n•	Hindari makanan yang berbau menyengat atau berminyak\r\n•	Makan dalam porsi kecil tapi sering\r\n•	Mengonsumsi makanan yang tinggi karbohidrat, seperti roti atau nasi\r\n•	Konsultasikan dengan dokter tentang obat-obatan yang aman untuk mual dan muntah selama kehamilan\r\n'),
(3, 'P002', 'Konstipasi (sembelit)', 'Konstipasi (sembelit): Konstipasi adalah kondisi yang ditandai dengan kesulitan buang air besar dan tinja yang keras. Selama kehamilan, kadar hormon progesteron yang meningkat dapat memperlambat pergerakan usus, sehingga menyebabkan konstipasi. Selain itu, pertumbuhan rahim yang membesar juga dapat memberikan tekanan pada usus dan mempengaruhi fungsi normalnya.', '•	Tingkatkan asupan serat dengan mengonsumsi buah-buahan, sayuran, dan biji-bijian\r\n•	Minum banyak air untuk menjaga hidrasi\r\n•	Olahraga secara teratur dan jaga aktivitas fisik\r\n•	Hindari makanan yang dapat menyebabkan sembelit, seperti makanan olahan atau tinggi lemak\r\n•	Konsultasikan dengan dokter tentang penggunaan suplemen serat atau pencahar yang aman selama kehamilan\r\n'),
(4, 'P003', 'Edema (pembengkakan kaki dan tangan)', 'Edema adalah kondisi di mana terjadi penumpukan cairan ekstra di jaringan tubuh, yang menyebabkan pembengkakan pada kaki dan tangan. Selama kehamilan, perubahan hormon dan peningkatan volume darah dapat menyebabkan peningkatan retensi air dan pembengkakan.', '•	Istirahatkan kaki sejajar dengan tubuh atau dengan sedikit meninggikan\r\n•	Hindari duduk atau berdiri terlalu lama, lakukan gerakan dan istirahat secara teratur\r\n•	Gunakan alas kaki yang nyaman dan mendukung\r\n•	Kurangi konsumsi garam dalam makanan\r\n•	Konsultasikan dengan dokter jika pembengkakan parah atau disertai gejala lain yang mencurigakan\r\n'),
(5, 'P004', 'Varises', 'Varises adalah pembuluh darah yang membesar dan terlihat menjalar di permukaan kulit. Selama kehamilan, peningkatan volume darah dan tekanan rahim yang meningkat dapat menyebabkan pembuluh darah membesar dan varises menjadi lebih terlihat, terutama di kaki.', '•	Hindari berdiri atau duduk dalam posisi yang sama terlalu lama\r\n•	Angkat kaki atau gunakan bantal untuk meninggikan kaki saat istirahat\r\n•	Kenakan kaus kaki kompresi yang sesuai\r\n•	Lakukan latihan ringan atau olahraga seperti berjalan atau berenang untuk meningkatkan sirkulasi darah\r\n•	Konsultasikan dengan dokter jika varises terasa sangat nyeri atau mengalami perubahan yang signifikan.\r\n'),
(7, 'P005', 'Preeklampsia (Tekanan darah tinggi)', 'Preeklampsia adalah kondisi serius yang mempengaruhi sebagian kehamilan dan ditandai dengan tekanan darah tinggi yang terjadi setelah usia kehamilan 20 minggu. Gejala lainnya meliputi protein dalam urine, gangguan fungsi organ, gangguan penglihatan, dan pembengkakan yang signifikan', '•	Istirahat yang cukup dan hindari aktivitas yang terlalu berat\r\n•	Pantau tekanan darah secara teratur\r\n•	Batasi konsumsi garam dalam makanan\r\n•	Konsumsi makanan sehat, kaya akan nutrisi, dan rendah garam\r\n•	Penting untuk segera berkonsultasi dengan dokter jika mengalami tanda-tanda preeklampsia, seperti tekanan darah tinggi yang persisten, edema yang parah, atau gangguan penglihatan.\r\n'),
(8, 'P006', 'Diabetes gestasional', 'Diabetes gestasional adalah kondisi di mana wanita mengembangkan resistensi insulin selama kehamilan. Ini dapat menyebabkan peningkatan kadar gula darah yang dapat berdampak negatif pada kesehatan ibu dan janin. Biasanya, diabetes gestasional membaik setelah melahirkan, tetapi juga meningkatkan risiko diabetes tipe 2 di masa mendatang.', '•	Makan makanan sehat dan seimbang dengan kontrol karbohidrat yang baik\r\n•	Pantau kadar gula darah secara teratur\r\n•	Lakukan aktivitas fisik ringan secara teratur\r\n•	Jika perlu, dokter dapat meresepkan pengobatan atau insulin yang aman untuk mengontrol gula darah\r\n•	Konsultasikan dengan tim medis untuk mendapatkan penanganan yang tepat dan mengikuti rencana perawatan yang direkomendasikan.\r\n'),
(9, 'P007', 'Infeksi saluran kemih', 'Infeksi saluran kemih (ISK) adalah infeksi bakteri yang terjadi dalam saluran kemih, termasuk kandung kemih, uretra, ginjal, atau ureter. Wanita hamil berisiko lebih tinggi mengalami ISK karena perubahan hormonal dan perubahan mekanis dalam saluran kemih mereka selama kehamilan.', '•	Minum banyak air untuk membantu membuang bakteri dari saluran kemih\r\n•	Segera buang air kecil setelah merasa perlu\r\n•	Hindari menahan buang air kecil\r\n•	Jaga kebersihan daerah genital dengan cermat\r\n•	Jika terdiagnosis dengan infeksi saluran kemih, periksakan diri ke dokter untuk mendapatkan antibiotik yang aman selama kehamilan.\r\n'),
(10, 'P008', 'Anemia kehamilan', 'Anemia kehamilan adalah kondisi di mana kadar hemoglobin dalam darah ibu hamil lebih rendah dari normal. Ini bisa terjadi karena kebutuhan zat besi yang meningkat selama kehamilan atau kekurangan zat besi dalam diet. Anemia kehamilan dapat menyebabkan kelelahan, kelemahan, dan penurunan daya tahan tubuh.', '•	Konsumsi makanan yang kaya zat besi, seperti daging merah, sayuran berdaun hijau, dan kacang-kacangan\r\n•	Konsumsi makanan yang mengandung vitamin C untuk membantu penyerapan zat besi\r\n•	Dokter mungkin meresepkan suplemen zat besi yang aman untuk dikonsumsi selama kehamilan\r\n•	Pantau kadar hemoglobin secara teratur untuk memantau kecukupan zat besi dalam tubuh\r\n•	Jika anemia berat, dokter mungkin perlu melakukan tindakan medis lainnya, seperti transfusi darah.\r\n'),
(11, 'P009', 'Infeksi jamur vagina (kandidiasis)', 'Infeksi jamur vagina, juga dikenal sebagai kandidiasis, adalah infeksi yang disebabkan oleh pertumbuhan berlebihan jamur Candida dalam vagina. Selama kehamilan, perubahan hormonal dapat menyebabkan perubahan lingkungan di vagina yang mempromosikan pertumbuhan jamur Candida, menyebabkan gejala seperti gatal, keputihan yang berwarna putih seperti keju, dan iritasi.', '•	Konsumsi makanan yang kaya zat besi, seperti daging merah, sayuran berdaun hijau, dan kacang-kacangan\r\n•	Konsumsi makanan yang mengandung vitamin C untuk membantu penyerapan zat besi\r\n•	Dokter mungkin meresepkan suplemen zat besi yang aman untuk dikonsumsi selama kehamilan\r\n•	Pantau kadar hemoglobin secara teratur untuk memantau kecukupan zat besi dalam tubuh\r\n•	Jika anemia berat, dokter mungkin perlu melakukan tindakan medis lainnya, seperti transfusi darah.\r\n'),
(12, 'P010', 'Kehamilan ektopik', 'Kehamilan ektopik terjadi ketika janin berkembang di luar rahim, biasanya dalam tuba falopi. Kehamilan ektopik tidak bisa berkembang secara normal dan merupakan kondisi medis yang serius. Gejala yang mungkin muncul termasuk nyeri perut, pendarahan vagina, dan ketidaknyamanan di satu sisi panggul.', 'Kondisi di mana janin berkembang di luar rahim, biasanya di salah satu saluran tuba. Ini adalah kondisi yang serius dan memerlukan penanganan medis segera.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_konsultasi`
--

CREATE TABLE `riwayat_konsultasi` (
  `id` int(10) NOT NULL,
  `id_user` int(15) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `info_penyakit` text NOT NULL,
  `solusi_penyakit` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_konsultasi`
--

INSERT INTO `riwayat_konsultasi` (`id`, `id_user`, `nama_user`, `nama_penyakit`, `info_penyakit`, `solusi_penyakit`, `tanggal`) VALUES
(5, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-03'),
(6, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-03'),
(12, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-24'),
(13, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-24'),
(14, 80, 'aji', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-24'),
(15, 80, 'aji', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-24'),
(16, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-24'),
(17, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-24'),
(18, 78, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-27'),
(19, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-27'),
(20, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-06-27'),
(21, 77, 'noval', 'Hiperemesis Gravidarum', 'Hiperemesis gravidarum adalah mual dan muntah yang muncul secara berlebihan selama hamil.', '1.	Makan dengan porsi kecil tetapi sering\r\n2.	Makanan diselingi oleh makanan berupa biskuit, roti kering dengan the\r\n3.	Makanan yang berlemak dilarang karena pada umumnya menyebabkan mual\r\n4.	 Mengkonsumsi makanan yang mengandung vitamin B1,vitamin B6, vitamin B complex,vitamin C\r\n5.	Obat-obatan yang sering dipergunakan adalah Chlorpromazin yang tidak hanya menenangkan jiwa tapi juga bersifat anti muntah\r\n\r\nIbu hamil yang menderita Hiperemisis Gravidarum harus di rawat di rumah sakit jika :\r\n1.	Segala yang dimakan dan\r\n2.	diminum dimuntahkan, apalagi kalau berlangsung sudah lama\r\n3.	Berat badan sangat turun\r\n4.	Lidah kering\r\n', '2023-07-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tartikel`
--

CREATE TABLE `tartikel` (
  `id` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `artikel` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tartikel`
--

INSERT INTO `tartikel` (`id`, `judul`, `artikel`, `foto`, `date`) VALUES
(23, 'Apa itu Stunting?', 'Stunting adalah kondisi pertumbuhan yang terhambat pada anak-anak akibat kekurangan gizi kronis dalam jangka waktu yang panjang, terutama pada periode 1.000 hari pertama kehidupan, yang dimulai dari masa kehamilan hingga usia 2 tahun. Stunting ditandai dengan tinggi badan yang lebih pendek dari rata-rata usia anak-anak sebaya.\n\nUntuk mengantisipasi stunting pada ibu hamil, berikut adalah beberapa langkah yang dapat diambil:\n\n•	Makan makanan bergizi seimbang: Ibu hamil perlu memastikan asupan makanan yang seimbang dan berkualitas tinggi. Konsumsi makanan yang kaya akan zat gizi seperti protein, zat besi, kalsium, asam folat, dan vitamin A, C, dan D. Makanan yang sehat dan bergizi adalah kunci untuk memenuhi kebutuhan gizi ibu hamil dan membantu pertumbuhan janin dengan baik.\n•	Suplemen gizi: Ibu hamil biasanya direkomendasikan untuk mengonsumsi suplemen gizi yang mengandung zat besi, asam folat, dan kalsium. Suplemen ini membantu memastikan asupan gizi yang cukup selama kehamilan dan membantu mencegah defisiensi gizi.\n•	Pemeriksaan kehamilan secara teratur: Melakukan pemeriksaan kehamilan secara teratur sangat penting untuk memantau pertumbuhan janin dan kesehatan ibu. Dengan melakukan pemeriksaan yang rutin, tenaga medis dapat mendeteksi secara dini adanya masalah pertumbuhan dan memberikan intervensi yang diperlukan.\n•	Perawatan antenatal yang baik: Mengikuti perawatan antenatal yang komprehensif dan terkoordinasi dengan tenaga medis. Ini termasuk pemeriksaan kesehatan, tes laboratorium, serta konsultasi dengan dokter atau bidan yang memberikan pemantauan yang teliti terhadap kesehatan ibu dan pertumbuhan janin.\n•	Kehidupan sehat dan gaya hidup yang baik: Ibu hamil perlu menjaga gaya hidup sehat dengan menghindari merokok, alkohol, dan obat-obatan terlarang. Hindari juga paparan bahan kimia berbahaya atau lingkungan yang tidak sehat.\n•	Pendidikan dan informasi: Ibu hamil perlu mendapatkan pendidikan dan informasi yang tepat tentang gizi, perawatan kehamilan, dan pentingnya pertumbuhan yang baik pada anak. Mengakses sumber informasi yang terpercaya dan berpartisipasi dalam program penyuluhan kesehatan masyarakat dapat membantu meningkatkan pemahaman dan kesadaran akan pentingnya gizi yang baik selama kehamilan.\n•	Dukungan sosial: Dukungan sosial dari keluarga, teman, dan komunitas juga penting. Ini dapat meliputi dukungan emosional, bantuan dalam mencari makanan yang sehat, atau akses ke sumber daya yang mendukung kesehatan ibu hamil.\n/n\nMengantisipasi stunting pada ibu hamil melibatkan upaya untuk memastikan asupan gizi yang baik, pemeriksaan kehamilan yang teratur, perawatan antenatal yang baik, gaya hidup sehat, pendidikan dan informasi yang tepat, serta dukungan sosial yang memadai.\n', 'photos/stunting.jpeg', '2023-07-09 08:42:32'),
(24, 'Tips agar nutrisi ibu hamil tetap terjaga', 'Selalu ingat bahwa setiap ibu hamil memiliki kebutuhan nutrisi yang unik, Agar nutrisi ibu hamil tetap terjaga berikut adalah beberapa tips yang dapat diikuti:•	Konsumsi makanan seimbang: Pastikan Anda mendapatkan makanan dari berbagai kelompok makanan yang sehat. Sertakan dalam diet Anda protein, karbohidrat kompleks, lemak sehat, serat, serta vitamin dan mineral penting. Makanlah makanan segar dan alami, seperti sayuran, buah-buahan, biji-bijian, protein nabati dan hewani yang sehat.•	Perhatikan asupan zat besi: Zat besi penting untuk mencegah anemia kehamilan. Konsumsilah makanan yang kaya zat besi, seperti daging merah, hati, ikan, unggas, kacang-kacangan, biji-bijian, dan makanan yang diperkaya zat besi. Konsumsilah makanan bersama makanan yang kaya vitamin C, seperti jeruk atau tomat, untuk membantu penyerapan zat besi.•	Dapatkan cukup kalsium: Kalsium penting untuk perkembangan tulang dan gigi janin. Sertakan sumber kalsium seperti susu, yoghurt, keju rendah lemak, atau sumber nabati seperti kacang kedelai, biji wijen, dan sayuran hijau tua.•	Asupan asam folat yang cukup: Asam folat penting untuk perkembangan sistem saraf janin. Konsumsilah makanan yang kaya asam folat, seperti sayuran hijau tua, jeruk, stroberi, kacang-kacangan, biji-bijian, dan roti yang diperkaya asam folat. Dokter juga mungkin merekomendasikan suplemen asam folat.•	Hindari makanan mentah atau tidak aman: Selama kehamilan, hindari makanan mentah atau kurang matang seperti daging mentah atau setengah matang, telur mentah, produk susu yang tidak dipasteurisasi, dan ikan yang mengandung tinggi merkuri.•	Jaga porsi makan yang tepat: Hindari makan berlebihan atau kurang makan. Makanlah dalam porsi yang seimbang dan perhatikan kebutuhan energi tambahan selama kehamilan.•	Minum air yang cukup: Pastikan Anda terhidrasi dengan baik dengan minum air yang cukup sepanjang hari. Air membantu menjaga keseimbangan cairan dalam tubuh dan mencegah dehidrasi.•	Hindari konsumsi alkohol dan kafein: Hindari konsumsi alkohol selama kehamilan dan batasi konsumsi kafein. Kafein dapat mempengaruhi penyerapan zat besi dan dapat memengaruhi pertumbuhan janin.•	Konsultasikan dengan tenaga medis: Selalu konsultasikan dengan dokter atau bidan Anda mengenai kebutuhan nutrisi khusus dan suplemen yang mungkin diperlukan selama kehamilan.•	Jaga pola makan yang teratur: Usahakan untuk makan dalam jadwal yang teratur, dengan waktu makan yang teratur sepanjang hari. Hindari melewatkan makanan atau makan terlalu banyak pada satu waktu.Dan juga penting untuk mendiskusikan kebutuhan individu Anda dengan tenaga medis untuk mendapatkan nasihat yang tepat dan sesuai dengan kondisi anda agar tetap sehat.', 'photos/nutrisi.jpg', '2023-05-24 16:27:42'),
(25, 'Hal apa saja sih yang harus diperhatikan selama masa kehamilan?', 'Selama masa kehamilan, ada beberapa hal penting yang perlu diperhatikan:\r\n• Nutrisi seimbang: Pastikan Anda mengonsumsi makanan yang sehat dan bergizi. Perhatikan asupan zat besi, kalsium, asam folat, protein, dan vitamin lain yang penting untuk perkembangan janin. Juga, hindari makanan mentah atau tidak aman seperti daging mentah, ikan mentah, dan produk susu yang tidak dipasteurisasi.\r\n• Pemenuhan kebutuhan cairan: Minumlah cukup air setiap hari untuk menjaga tubuh terhidrasi dengan baik. Pemenuhan kebutuhan cairan yang cukup membantu mengatasi sembelit dan mengurangi risiko infeksi saluran kemih.\r\n• Perawatan prenatal yang teratur: Lakukan kunjungan prenatal secara teratur ke dokter atau bidan untuk memantau perkembangan dan kesehatan Anda serta janin. Ikuti jadwal pemeriksaan, tes laboratorium, dan ultrasonografi yang direkomendasikan.\r\n• Olahraga yang aman: Diskusikan dengan dokter atau bidan Anda tentang jenis dan tingkat aktivitas fisik yang aman selama kehamilan. Olahraga ringan seperti berjalan, berenang, atau yoga prenatal biasanya direkomendasikan, tetapi pastikan untuk menghindari olahraga yang berisiko tinggi atau mengakibatkan benturan.\r\n• Istirahat yang cukup: Dapatkan istirahat yang cukup dan tidur yang berkualitas. Tidur dengan posisi yang nyaman dan gunakan bantal kehamilan untuk mendukung tubuh Anda.\r\n• Hindari stres berlebihan: Kelola stres dengan baik melalui teknik relaksasi, meditasi, pernapasan dalam, atau aktivitas yang menenangkan. Jaga keseimbangan antara pekerjaan, istirahat, dan waktu untuk diri sendiri.\r\n• Hindari zat-zat berbahaya: Hindari merokok, minuman beralkohol, dan obat-obatan terlarang. Juga, berhati-hatilah dengan paparan bahan kimia berbahaya di lingkungan kerja atau rumah Anda.\r\n• Jaga kebersihan dan higienitas: Cuci tangan dengan sabun secara teratur, terutama sebelum makan dan setelah menggunakan toilet. Hindari kontak dengan orang yang sakit dan jaga kebersihan lingkungan sekitar Anda.\r\n• Perhatikan tanda-tanda bahaya: Ketahui gejala-gejala yang perlu diperhatikan, seperti perdarahan vagina yang tidak normal, nyeri perut yang hebat, penurunan gerakan janin, atau demam tinggi. Jika Anda mengalami tanda-tanda tersebut, segera hubungi tenaga medis.\r\n• Dapatkan dukungan dan informasi yang tepat: Diskusikan kekhawatiran atau pertanyaan Anda dengan dokter, bidan, atau kelompok dukungan kehamilan. Dapatkan sumber informasi yang terpercaya dan jangan ragu untuk mencari bantuan saat diperlukan.', 'photos/hamil.jpg', '2023-07-09 08:55:15'),
(26, 'Ternyata ini dampaknya kurang nutrisi saat kehamilan!', '•	Kurangnya nutrisi selama kehamilan dapat memiliki dampak negatif pada kesehatan ibu hamil dan perkembangan janin. Beberapa masalah yang dapat muncul akibat kurangnya nutrisi selama kehamilan termasuk:•	Pertumbuhan janin terhambat: Kurangnya asupan nutrisi, terutama protein, zat besi, kalsium, vitamin A, vitamin D, dan zat gizi lainnya, dapat menghambat pertumbuhan dan perkembangan janin. Hal ini dapat menyebabkan berat badan lahir rendah, ukuran kepala yang kecil, dan masalah perkembangan fisik dan kognitif pada anak.•	Risiko komplikasi kehamilan: Kurangnya nutrisi dapat meningkatkan risiko komplikasi kehamilan seperti preeklampsia, anemia, infeksi, dan perdarahan. Kondisi-kondisi ini dapat berdampak negatif pada kesehatan ibu dan janin.•	Kelemahan sistem kekebalan tubuh: Kurangnya nutrisi dapat melemahkan sistem kekebalan tubuh ibu hamil, meningkatkan risiko infeksi dan penyakit selama kehamilan.•	Risiko kekurangan gizi pada ibu hamil: Kurangnya nutrisi selama kehamilan juga dapat menyebabkan ibu hamil mengalami kekurangan gizi, seperti kekurangan zat besi (anemia), kekurangan vitamin D, atau kekurangan vitamin B kompleks. Kekurangan gizi pada ibu hamil dapat berdampak pada kesehatan ibu dan juga menyebabkan masalah pada janin.', 'photos/kurang nutrisi.jpg', '2023-05-24 16:27:22'),
(27, 'Pentingnya olahraga bagi ibu hamil', 'Olahraga memiliki peran penting dalam menjaga kesehatan ibu hamil, berikut adalah beberapa alasan mengapa olahraga penting bagi ibu hamil:\r\n\r\n•	Meningkatkan kesehatan jantung dan kebugaran: Olahraga yang teratur dan aman dapat membantu meningkatkan kesehatan jantung dan kebugaran fisik ibu hamil. Ini dapat membantu mempertahankan stamina dan energi yang diperlukan selama kehamilan dan persalinan.\r\n•	Mengelola berat badan: Olahraga dapat membantu ibu hamil menjaga berat badan yang sehat selama kehamilan. Hal ini dapat mencegah peningkatan berlebihan berat badan yang dapat meningkatkan risiko komplikasi kehamilan.\r\n•	Meningkatkan mood dan kesejahteraan mental: Aktivitas fisik dapat membantu meningkatkan produksi endorfin, yang dikenal sebagai hormon kebahagiaan. Ini dapat membantu mengurangi stres, meningkatkan mood, dan meningkatkan kesejahteraan mental selama kehamilan.\r\n•	Meningkatkan sirkulasi darah: Olahraga dapat membantu meningkatkan sirkulasi darah dalam tubuh, termasuk ke plasenta. Ini dapat memastikan pasokan oksigen dan nutrisi yang cukup ke janin.\r\n•	Meningkatkan kekuatan dan fleksibilitas: Olahraga yang tepat dan aman selama kehamilan dapat membantu mempertahankan kekuatan otot dan fleksibilitas tubuh. Ini dapat membantu menjaga kenyamanan fisik, mengurangi risiko cedera, dan mempersiapkan tubuh untuk persalinan.\r\nNamun, penting untuk memilih olahraga yang aman dan sesuai dengan kondisi kehamilan. Konsultasikan dengan dokter atau tenaga medis sebelum memulai atau melanjutkan program olahraga selama kehamilan. Mereka akan memberikan saran yang tepat berdasarkan kondisi kesehatan dan kehamilan Anda.\r\n\r\nOlahraga seperti berjalan, berenang, yoga prenatal, pilates prenatal, dan latihan kekuatan ringan biasanya dianggap aman selama kehamilan. Hindari olahraga yang berisiko tinggi atau memiliki potensi cedera, seperti olahraga kontak atau olahraga dengan lonjakan aktivitas yang tinggi.\r\nSelalu dengarkan tubuh Anda dan hentikan aktivitas jika Anda merasa tidak nyaman atau mengalami gejala yang tidak biasa. Jaga kecukupan hidrasi dan jangan lupa untuk melakukan pemanasan dan pendinginan sebelum dan setelah berolahraga.\r\n', 'photos/olahraga.jpg', '2023-05-24 04:31:59'),
(28, '', '', 'photos/Kehamilan ektopik.jpg', '2023-05-25 05:05:54'),
(29, 'jfuful', 'eroigfhweohifw :\r\n- sdjfhksdhf\r\n- kjdgfsdf', 'photos/Screenshot (83).png', '2023-07-08 20:57:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkomentar`
--

CREATE TABLE `tkomentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `komentar` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `post` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tkomentar`
--

INSERT INTO `tkomentar` (`id`, `nama`, `komentar`, `date`, `post`) VALUES
(16, 'Reza', 'Mangga itu buah ya?', '2018-12-08 13:18:44', 2),
(18, 'Henry', 'Besok mulai nanem jagung ah', '2018-12-08 13:19:17', 1),
(19, 'Dhonny', 'Mantap gan!', '2018-12-08 13:19:39', 1),
(20, 'Reza', 'wah hebat', '2019-01-03 14:36:26', 2),
(21, 'Kevin', 'mantaab', '2019-01-03 14:41:33', 2),
(22, 'Reza', 'kereen', '2019-01-08 13:42:43', 2),
(23, 'Kevin', 'beli lah', '2019-01-08 13:44:26', 2),
(24, 'Reza', 'yoi', '2019-01-09 01:53:22', 2),
(25, 'Kevin', 'emang manis sih', '2019-01-13 14:28:38', 2),
(26, 'Reza', 'buat pulkam', '2019-01-13 14:42:28', 2),
(27, 'steven', 'bermanfaat gan', '2019-01-15 03:57:19', 20),
(28, 'steven', 'wah sangat bermanfaat', '2019-01-15 04:04:52', 22),
(29, 'steven', 'buat mamah dirumah ah', '2019-01-16 03:22:16', 2),
(30, 'steven', 'sama ayah', '2019-01-16 03:23:08', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkonsultasi`
--

CREATE TABLE `tkonsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `topik_konsul` text NOT NULL,
  `konsultasi_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_konsul` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpesan`
--

CREATE TABLE `tpesan` (
  `id_pesan` int(11) NOT NULL,
  `id_konsultasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pesan_teks` text NOT NULL,
  `pesan_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pesan_attachment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tspesialisasi`
--

CREATE TABLE `tspesialisasi` (
  `id_spesialisasi` int(11) NOT NULL,
  `kode_spesialisasi` varchar(20) NOT NULL,
  `nama_spesialisasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tspesialisasi`
--

INSERT INTO `tspesialisasi` (`id_spesialisasi`, `kode_spesialisasi`, `nama_spesialisasi`) VALUES
(17, 'KGD', 'Kandungan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tuser`
--

CREATE TABLE `tuser` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `telp_user` varchar(20) NOT NULL,
  `pass_user` varchar(255) NOT NULL,
  `spesialis` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `foto_user` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tuser`
--

INSERT INTO `tuser` (`id_user`, `nama_user`, `email_user`, `telp_user`, `pass_user`, `spesialis`, `role`, `foto_user`, `tgl_lahir`, `jk`) VALUES
(42, 'Nia Maryam', 'admin@gmail.com', '082213525038', '$2y$10$k1XJn46DWrICjAwPh1NA1uBPvT9y0b6KUBTqeD2q7cdCzvrlvS2GK', NULL, 'admin', 'photos/1497221355172.jpg', '1973-02-12', 'Perempuan'),
(77, 'noval', 'noval@gmail.com', '123', '$2y$10$frUGKolgrXC4Bf0wYHSR1.EQHIyd4k.tbmFfJ1Q5rxqK8bbUhCRTy', NULL, 'user', 'photos/64b2e3abcc12a.png', NULL, NULL),
(79, 'Nia Maryam', 'niamaryam@gmail.com', '123', '$2y$10$3Yt6LI6ac6H.mJIBPgw67eXGEfO0AqIGzB8k5NNg1.hhub95nTnE2', 'KGD', 'dokter', 'photos/64b40a8507246.png', '1973-02-12', 'Perempuan'),
(80, 'Lia Tilaar', 'lia@gmail.com', '123', '$2y$10$AdIU3dGDOc7pchsQqXsDkuBZ2v9V3gkP5m4jX0HHaNqXFu2XPAroC', 'KGD', 'dokter', 'photos/64b40b18e8bd8.png', '1993-12-12', 'Perempuan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_penyakit` (`kode_penyakit`,`kode_gejala`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `nama_pasien` (`nama_user`);

--
-- Indeks untuk tabel `tartikel`
--
ALTER TABLE `tartikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tkomentar`
--
ALTER TABLE `tkomentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tkonsultasi`
--
ALTER TABLE `tkonsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter_2` (`id_dokter`,`id_pasien`);

--
-- Indeks untuk tabel `tpesan`
--
ALTER TABLE `tpesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_konsultasi` (`id_konsultasi`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tspesialisasi`
--
ALTER TABLE `tspesialisasi`
  ADD PRIMARY KEY (`id_spesialisasi`),
  ADD UNIQUE KEY `kode_spesialisasi` (`kode_spesialisasi`);

--
-- Indeks untuk tabel `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_user` (`email_user`),
  ADD KEY `spesialis` (`spesialis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tartikel`
--
ALTER TABLE `tartikel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tkomentar`
--
ALTER TABLE `tkomentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tkonsultasi`
--
ALTER TABLE `tkonsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tpesan`
--
ALTER TABLE `tpesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `tspesialisasi`
--
ALTER TABLE `tspesialisasi`
  MODIFY `id_spesialisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tkonsultasi`
--
ALTER TABLE `tkonsultasi`
  ADD CONSTRAINT `fk_tkonsultasi_id_dokter` FOREIGN KEY (`id_dokter`) REFERENCES `tuser` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `tkonsultasi_ibfk_1` FOREIGN KEY (`id_dokter`) REFERENCES `tuser` (`id_user`),
  ADD CONSTRAINT `tkonsultasi_ibfk_2` FOREIGN KEY (`id_pasien`) REFERENCES `tuser` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `tpesan`
--
ALTER TABLE `tpesan`
  ADD CONSTRAINT `tpesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tuser` (`id_user`),
  ADD CONSTRAINT `tpesan_ibfk_2` FOREIGN KEY (`id_konsultasi`) REFERENCES `tkonsultasi` (`id_konsultasi`);

--
-- Ketidakleluasaan untuk tabel `tuser`
--
ALTER TABLE `tuser`
  ADD CONSTRAINT `tuser_ibfk_1` FOREIGN KEY (`spesialis`) REFERENCES `tspesialisasi` (`kode_spesialisasi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
