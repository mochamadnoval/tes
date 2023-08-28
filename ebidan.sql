-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2023 pada 18.27
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
  `kode_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id`, `kode_penyakit`, `kode_gejala`) VALUES
(48, 'P001', 'G001'),
(50, 'P001', 'G002'),
(46, 'P001', 'G003'),
(51, 'P002', 'G004'),
(52, 'P002', 'G005'),
(53, 'P002', 'G006');

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
(1, 'G001', 'Apakah anda sering merasa mual atau muntah?'),
(2, 'G002', 'Apakah ada penurunan nafsu makan?'),
(3, 'G003', 'Apakah anda menjadi sensitif terhadap bau atau makanan tertentu?'),
(4, 'G004', 'Apakah anda merasa kembung atau tidak nyaman diperut?'),
(5, 'G005', 'Apakah anda sering merasa mual atau muntah?'),
(6, 'G006', 'Apakah ada kenaikan berat badan yang tidak normal?'),
(7, 'G007', 'Apakah anda mengalami buang air besar yang tidak teratur?'),
(8, 'G008', 'Apakah anda sulit buang air besar?'),
(9, 'G009', 'Apakah anda merasakan nyeri atau tekanan dibawah perut?'),
(10, 'G010', 'Apakah ada pembengkakan pada tangan atau kaki?'),
(11, 'G011', 'Apakah anda merasakan kaku pada kaki atau tangan?'),
(12, 'G012', 'Apakah pembengkakan meningkat setelah berdiri atau duduk terlalu lama?'),
(13, 'G013', 'Apakah kulit terlihat lebih tegang atau mengkilap pada area pembengkakan?'),
(14, 'G014', 'Apakah ada pembengkakan yang berwarna kebiruan atau ungu?'),
(15, 'G015', 'Apakah anda merasakan nyeri atau kram?'),
(16, 'G016', 'Apakah anda merasakan gatal pada area sekitar bengkak?'),
(17, 'G017', 'Apakah terasa panas pada area bengkak?'),
(18, 'G018', 'apakah ada benjolan pada kulit anda?'),
(19, 'G019', 'Apakah tekanan darah melebihi 140/90 mmHg atau lebih tinggi dari biasanya?'),
(20, 'G020', 'Apakah ada pembengkakan pada wajah, tangan dan kaki terutama dipagi hari?'),
(21, 'G021', 'Apakah anda merasakan nyeri atau sakit pada perut bagian atas?'),
(22, 'G022', 'Apakah anda sering merasakan sakit kepala?'),
(23, 'G023', 'Apakah penglihatan anda kabur atau tidak jelas?'),
(24, 'G024', 'Apakah ada pengurangan produksi urin?'),
(25, 'G025', 'Apakah anda merasakan nyeri saat buang air kecil?'),
(26, 'G026', 'Apakah anda sering merasa haus?'),
(27, 'G027', 'Apakah anda sering merasa lapar?'),
(28, 'G028', 'Apakah anda sering buang air kecil?'),
(29, 'G029', 'Apakah ada perubahan warna dan bau pada urin?'),
(30, 'G030', 'Apakah terdapat darah didalam urin?'),
(31, 'G031', 'Apakah anda demam?'),
(32, 'G032', 'Apakah anda mengalami sesak napas?'),
(40, 'G033', 'Apakah anda merasakan detak jantung yang berdebar-debar?'),
(41, 'G034', 'Apakah anda kehilangan nafsu makan?'),
(42, 'G035', 'Apakah anda merasa sulit berkonsentrasi atau sulit fokus?'),
(43, 'G036', 'Apakah anda merasakan gatal-gatal pada area vagina?'),
(44, 'G037', 'Apakah anda mengalami keputihan yang tidak biasa? (kekuningan dan tekstur seperti keju)'),
(46, 'G038	', 'Apakah ada pembengkakan, kemerahan atau iritasi disekitar vagina?'),
(47, 'G039', 'Apakah ada bau yang tidak biasa pada keputihan?'),
(48, 'G040', 'Apakah ada pendarahan vagina yang tidak biasa?'),
(49, 'G041', 'Apakah anda merasakan nyeri saat buang air besar?'),
(50, 'G042', 'Apakah anda merasakan sakit dibagian bahu?'),
(51, 'G043', 'Apakah anda merasa pusing atau bahkan pingsan?');

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
  `solusi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_konsultasi`
--

INSERT INTO `riwayat_konsultasi` (`id`, `id_user`, `nama_user`, `nama_penyakit`, `info_penyakit`, `solusi`, `tanggal`) VALUES
(79, 84, 'salma', 'MORNING SICKNESS', 'Morning sickness adalah penyakit mual dan muntah yang umum terjadi pada awal kehamilan, terutama di pagi hari. kondisi morning sickness biasanya membaik setelah paruh pertama kehamilan.', '•	Makan beberapa makanan ringan sebelum bangun tidur, seperti biskuit\r\n•	Hindari makanan yang berbau menyengat atau berminyak\r\n•	Makan dalam porsi kecil tapi sering\r\n•	Mengonsumsi makanan yang tinggi karbohidrat, seperti roti atau nasi\r\n•	Konsultasikan dengan dokter tentang obat-obatan yang aman untuk mual dan muntah selama kehamilan\r\n', '2023-08-21');

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
(30, 'Apa itu Stunting?', 'Stunting adalah kondisi pertumbuhan yang terhambat pada anak-anak akibat kekurangan gizi kronis dalam jangka waktu yang panjang, terutama pada periode 1.000 hari pertama kehidupan, yang dimulai dari masa kehamilan hingga usia 2 tahun. Stunting ditandai dengan tinggi badan yang lebih pendek dari rata-rata usia anak-anak sebaya.<br />\r\nUntuk mengantisipasi stunting pada ibu hamil, berikut adalah beberapa langkah yang dapat diambil:<br />\r\n•	Makan makanan bergizi seimbang: Ibu hamil perlu memastikan asupan makanan yang seimbang dan berkualitas tinggi. Konsumsi makanan yang kaya akan zat gizi seperti protein, zat besi, kalsium, asam folat, dan vitamin A, C, dan D. Makanan yang sehat dan bergizi adalah kunci untuk memenuhi kebutuhan gizi ibu hamil dan membantu pertumbuhan janin dengan baik.<br />\r\n•	Suplemen gizi: Ibu hamil biasanya direkomendasikan untuk mengonsumsi suplemen gizi yang mengandung zat besi, asam folat, dan kalsium. Suplemen ini membantu memastikan asupan gizi yang cukup selama kehamilan dan membantu mencegah defisiensi gizi.<br />\r\n•	Pemeriksaan kehamilan secara teratur: Melakukan pemeriksaan kehamilan secara teratur sangat penting untuk memantau pertumbuhan janin dan kesehatan ibu. Dengan melakukan pemeriksaan yang rutin, tenaga medis dapat mendeteksi secara dini adanya masalah pertumbuhan dan memberikan intervensi yang diperlukan.<br />\r\n•	Perawatan antenatal yang baik: Mengikuti perawatan antenatal yang komprehensif dan terkoordinasi dengan tenaga medis. Ini termasuk pemeriksaan kesehatan, tes laboratorium, serta konsultasi dengan dokter atau bidan yang memberikan pemantauan yang teliti terhadap kesehatan ibu dan pertumbuhan janin.<br />\r\n•	Kehidupan sehat dan gaya hidup yang baik: Ibu hamil perlu menjaga gaya hidup sehat dengan menghindari merokok, alkohol, dan obat-obatan terlarang. Hindari juga paparan bahan kimia berbahaya atau lingkungan yang tidak sehat.<br />\r\n•	Pendidikan dan informasi: Ibu hamil perlu mendapatkan pendidikan dan informasi yang tepat tentang gizi, perawatan kehamilan, dan pentingnya pertumbuhan yang baik pada anak. Mengakses sumber informasi yang terpercaya dan berpartisipasi dalam program penyuluhan kesehatan masyarakat dapat membantu meningkatkan pemahaman dan kesadaran akan pentingnya gizi yang baik selama kehamilan.<br />\r\n•	Dukungan sosial: Dukungan sosial dari keluarga, teman, dan komunitas juga penting. Ini dapat meliputi dukungan emosional, bantuan dalam mencari makanan yang sehat, atau akses ke sumber daya yang mendukung kesehatan ibu hamil.<br />\r\nMengantisipasi stunting pada ibu hamil melibatkan upaya untuk memastikan asupan gizi yang baik, pemeriksaan kehamilan yang teratur, perawatan antenatal yang baik, gaya hidup sehat, pendidikan dan informasi yang tepat, serta dukungan sosial yang memadai.<br />\r\n', 'photos/stunting.jpeg', '2023-07-29 07:25:07'),
(31, 'Tips agar nutrisi ibu hamil tetap terjaga', 'Agar nutrisi ibu hamil tetap terjaga, berikut adalah beberapa tips yang dapat diikuti:<br />\r\n<br />\r\n•	Konsumsi makanan seimbang: Pastikan Anda mendapatkan makanan dari berbagai kelompok makanan yang sehat. Sertakan dalam diet Anda protein, karbohidrat kompleks, lemak sehat, serat, serta vitamin dan mineral penting. Makanlah makanan segar dan alami, seperti sayuran, buah-buahan, biji-bijian, protein nabati dan hewani yang sehat.<br />\r\n•	Perhatikan asupan zat besi: Zat besi penting untuk mencegah anemia kehamilan. Konsumsilah makanan yang kaya zat besi, seperti daging merah, hati, ikan, unggas, kacang-kacangan, biji-bijian, dan makanan yang diperkaya zat besi. Konsumsilah makanan bersama makanan yang kaya vitamin C, seperti jeruk atau tomat, untuk membantu penyerapan zat besi.<br />\r\n•	Dapatkan cukup kalsium: Kalsium penting untuk perkembangan tulang dan gigi janin. Sertakan sumber kalsium seperti susu, yoghurt, keju rendah lemak, atau sumber nabati seperti kacang kedelai, biji wijen, dan sayuran hijau tua.<br />\r\n•	Asupan asam folat yang cukup: Asam folat penting untuk perkembangan sistem saraf janin. Konsumsilah makanan yang kaya asam folat, seperti sayuran hijau tua, jeruk, stroberi, kacang-kacangan, biji-bijian, dan roti yang diperkaya asam folat. Dokter juga mungkin merekomendasikan suplemen asam folat.<br />\r\n•	Hindari makanan mentah atau tidak aman: Selama kehamilan, hindari makanan mentah atau kurang matang seperti daging mentah atau setengah matang, telur mentah, produk susu yang tidak dipasteurisasi, dan ikan yang mengandung tinggi merkuri.<br />\r\n•	Jaga porsi makan yang tepat: Hindari makan berlebihan atau kurang makan. Makanlah dalam porsi yang seimbang dan perhatikan kebutuhan energi tambahan selama kehamilan.<br />\r\n•	Minum air yang cukup: Pastikan Anda terhidrasi dengan baik dengan minum air yang cukup sepanjang hari. Air membantu menjaga keseimbangan cairan dalam tubuh dan mencegah dehidrasi.<br />\r\n•	Hindari konsumsi alkohol dan kafein: Hindari konsumsi alkohol selama kehamilan dan batasi konsumsi kafein. Kafein dapat mempengaruhi penyerapan zat besi dan dapat memengaruhi pertumbuhan janin.<br />\r\n•	Konsultasikan dengan tenaga medis: Selalu konsultasikan dengan dokter atau bidan Anda mengenai kebutuhan nutrisi khusus dan suplemen yang mungkin diperlukan selama kehamilan.<br />\r\n•	Jaga pola makan yang teratur: Usahakan untuk makan dalam jadwal yang teratur, dengan waktu makan yang teratur sepanjang hari. Hindari melewatkan makanan atau makan terlalu banyak pada satu waktu.<br />\r\n<br />\r\nSelalu ingat bahwa setiap ibu hamil memiliki kebutuhan nutrisi yang unik, dan penting untuk mendiskusikan kebutuhan individu Anda dengan tenaga medis untuk mendapatkan nasihat yang tepat dan sesuai dengan kondisi Anda.<br />\r\n', 'photos/kurang nutrisi.jpg', '2023-07-30 05:50:46'),
(32, 'Hal apa saja sih yang harus diperhatikan selama masa kehamilan?', 'Selama masa kehamilan, ada beberapa hal penting yang perlu diperhatikan:\r\n\r\n•	Nutrisi seimbang: Pastikan Anda mengonsumsi makanan yang sehat dan bergizi. Perhatikan asupan zat besi, kalsium, asam folat, protein, dan vitamin lain yang penting untuk perkembangan janin. Juga, hindari makanan mentah atau tidak aman seperti daging mentah, ikan mentah, dan produk susu yang tidak dipasteurisasi.\r\n•	Pemenuhan kebutuhan cairan: Minumlah cukup air setiap hari untuk menjaga tubuh terhidrasi dengan baik. Pemenuhan kebutuhan cairan yang cukup membantu mengatasi sembelit dan mengurangi risiko infeksi saluran kemih.\r\n•	Perawatan prenatal yang teratur: Lakukan kunjungan prenatal secara teratur ke dokter atau bidan untuk memantau perkembangan dan kesehatan Anda serta janin. Ikuti jadwal pemeriksaan, tes laboratorium, dan ultrasonografi yang direkomendasikan.\r\n•	Olahraga yang aman: Diskusikan dengan dokter atau bidan Anda tentang jenis dan tingkat aktivitas fisik yang aman selama kehamilan. Olahraga ringan seperti berjalan, berenang, atau yoga prenatal biasanya direkomendasikan, tetapi pastikan untuk menghindari olahraga yang berisiko tinggi atau mengakibatkan benturan.\r\n•	Istirahat yang cukup: Dapatkan istirahat yang cukup dan tidur yang berkualitas. Tidur dengan posisi yang nyaman dan gunakan bantal kehamilan untuk mendukung tubuh Anda.\r\n•	Hindari stres berlebihan: Kelola stres dengan baik melalui teknik relaksasi, meditasi, pernapasan dalam, atau aktivitas yang menenangkan. Jaga keseimbangan antara pekerjaan, istirahat, dan waktu untuk diri sendiri.\r\n•	Hindari zat-zat berbahaya: Hindari merokok, minuman beralkohol, dan obat-obatan terlarang. Juga, berhati-hatilah dengan paparan bahan kimia berbahaya di lingkungan kerja atau rumah Anda.\r\n•	Jaga kebersihan dan higienitas: Cuci tangan dengan sabun secara teratur, terutama sebelum makan dan setelah menggunakan toilet. Hindari kontak dengan orang yang sakit dan jaga kebersihan lingkungan sekitar Anda.\r\n•	Perhatikan tanda-tanda bahaya: Ketahui gejala-gejala yang perlu diperhatikan, seperti perdarahan vagina yang tidak normal, nyeri perut yang hebat, penurunan gerakan janin, atau demam tinggi. Jika Anda mengalami tanda-tanda tersebut, segera hubungi tenaga medis.\r\n•	Dapatkan dukungan dan informasi yang tepat: Diskusikan kekhawatiran atau pertanyaan Anda dengan dokter, bidan, atau kelompok dukungan kehamilan. Dapatkan sumber informasi yang terpercaya dan jangan ragu untuk mencari bantuan saat diperlukan.\r\nIngatlah bahwa setiap kehamilan adalah unik, dan penting untuk berkonsultasi dengan tenaga medis Anda untuk mendapatkan nasihat yang sesuai dengan kondisi kesehatan Anda.\r\n', 'photos/hamil.jpg', '2023-07-30 05:37:49'),
(33, 'Dampak kurangnya nutrisi saat kehamilan', 'Penting untuk memperhatikan asupan nutrisi yang cukup dan seimbang selama kehamilan. Mengonsumsi makanan yang kaya nutrisi, seperti sayuran, buah-buahan, biji-bijian, protein nabati dan hewani, serta memperhatikan asupan zat besi, kalsium, dan vitamin yang direkomendasikan dapat membantu memenuhi kebutuhan nutrisi selama kehamilan.\r\n\r\nKurangnya nutrisi selama kehamilan dapat memiliki dampak negatif pada kesehatan ibu hamil dan perkembangan janin. Berikut adalah beberapa masalah yang dapat muncul akibat kurangnya nutrisi selama kehamilan :\r\n\r\n•	Pertumbuhan janin terhambat: \r\nKurangnya asupan nutrisi, terutama protein, zat besi, kalsium, vitamin A, vitamin D, dan zat gizi lainnya, dapat menghambat pertumbuhan dan perkembangan janin. Hal ini dapat menyebabkan berat badan lahir rendah, ukuran kepala yang kecil, dan masalah perkembangan fisik dan kognitif pada anak.\r\n\r\n•	Risiko komplikasi kehamilan:\r\n Kurangnya nutrisi dapat meningkatkan risiko komplikasi kehamilan seperti preeklampsia, anemia, infeksi, dan perdarahan. Kondisi-kondisi ini dapat berdampak negatif pada kesehatan ibu dan janin.\r\n\r\n•	Kelemahan sistem kekebalan tubuh:\r\n Kurangnya nutrisi dapat melemahkan sistem kekebalan tubuh ibu hamil, meningkatkan risiko infeksi dan penyakit selama kehamilan.\r\n\r\n•	Risiko kekurangan gizi pada ibu hamil:\r\n Kurangnya nutrisi selama kehamilan juga dapat menyebabkan ibu hamil mengalami kekurangan gizi, seperti kekurangan zat besi (anemia), kekurangan vitamin D, atau kekurangan vitamin B kompleks. Kekurangan gizi pada ibu hamil dapat berdampak pada kesehatan ibu dan juga menyebabkan masalah pada janin.\r\n\r\nJika ada kekhawatiran mengenai kurangnya nutrisi selama kehamilan, sebaiknya berkonsultasi dengan dokter atau tenaga medis. Mereka dapat memberikan saran yang tepat dan mungkin merekomendasikan suplemen atau diet khusus yang sesuai untuk memastikan kebutuhan nutrisi tercukupi selama kehamilan.\r\n', 'photos/Diabetes gestasional.jpg', '2023-07-30 05:42:57'),
(34, 'Pentingnya olahraga bagi ibu hamil', 'Olahraga memiliki peran penting dalam menjaga kesehatan ibu hamil. Berikut adalah beberapa alasan mengapa olahraga penting bagi ibu hamil:\r\n\r\n•	Meningkatkan kesehatan jantung dan kebugaran: Olahraga yang teratur dan aman dapat membantu meningkatkan kesehatan jantung dan kebugaran fisik ibu hamil. Ini dapat membantu mempertahankan stamina dan energi yang diperlukan selama kehamilan dan persalinan.\r\n•	Mengelola berat badan: Olahraga dapat membantu ibu hamil menjaga berat badan yang sehat selama kehamilan. Hal ini dapat mencegah peningkatan berlebihan berat badan yang dapat meningkatkan risiko komplikasi kehamilan.\r\n•	Meningkatkan mood dan kesejahteraan mental: Aktivitas fisik dapat membantu meningkatkan produksi endorfin, yang dikenal sebagai hormon kebahagiaan. Ini dapat membantu mengurangi stres, meningkatkan mood, dan meningkatkan kesejahteraan mental selama kehamilan.\r\n•	Meningkatkan sirkulasi darah: Olahraga dapat membantu meningkatkan sirkulasi darah dalam tubuh, termasuk ke plasenta. Ini dapat memastikan pasokan oksigen dan nutrisi yang cukup ke janin.\r\n•	Meningkatkan kekuatan dan fleksibilitas: Olahraga yang tepat dan aman selama kehamilan dapat membantu mempertahankan kekuatan otot dan fleksibilitas tubuh. Ini dapat membantu menjaga kenyamanan fisik, mengurangi risiko cedera, dan mempersiapkan tubuh untuk persalinan.\r\nNamun, penting untuk memilih olahraga yang aman dan sesuai dengan kondisi kehamilan. Konsultasikan dengan dokter atau tenaga medis sebelum memulai atau melanjutkan program olahraga selama kehamilan. Mereka akan memberikan saran yang tepat berdasarkan kondisi kesehatan dan kehamilan Anda.\r\nOlahraga seperti berjalan, berenang, yoga prenatal, pilates prenatal, dan latihan kekuatan ringan biasanya dianggap aman selama kehamilan. Hindari olahraga yang berisiko tinggi atau memiliki potensi cedera, seperti olahraga kontak atau olahraga dengan lonjakan aktivitas yang tinggi.\r\n\r\nSelalu dengarkan tubuh Anda dan hentikan aktivitas jika Anda merasa tidak nyaman atau mengalami gejala yang tidak biasa. Jaga kecukupan hidrasi dan jangan lupa untuk melakukan pemanasan dan pendinginan sebelum dan setelah berolahraga.\r\n', 'photos/olahraga.jpg', '2023-07-30 05:44:19');

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

--
-- Dumping data untuk tabel `tkonsultasi`
--

INSERT INTO `tkonsultasi` (`id_konsultasi`, `id_dokter`, `id_pasien`, `topik_konsul`, `konsultasi_date`, `status_konsul`) VALUES
(15, 82, 84, 'selamat malam dok...', '2023-07-30 05:52:12', 'finish'),
(16, 82, 84, 'selamat malam dok...', '2023-08-19 14:54:36', 'finish');

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

--
-- Dumping data untuk tabel `tpesan`
--

INSERT INTO `tpesan` (`id_pesan`, `id_konsultasi`, `id_user`, `pesan_teks`, `pesan_date`, `pesan_attachment`) VALUES
(107, 15, 82, 'selamat malam, ada yang bisa saya bantu?', '2023-07-28 04:10:23', '');

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
(42, 'Nia Maryam', 'admin@gmail.com', '082213525038', '$2y$10$zrLx..UnHAW4G2yq.BNpT.gXchlvjB3fTLUBy890qUV3j2cV4EDFC', NULL, 'admin', 'photos/64c3d99a00e71.png', '1973-12-12', 'Perempuan'),
(82, 'nia maryam', 'niamaryam@gmail.com', '123', '$2y$10$kvRTbDjYJ6tasDBcwAPoP.uERMkwBYUGfqB3uYGOrc9TeBf4ybX1C', 'KGD', 'dokter', 'photos/64c3d99a00e71.png', '1978-11-02', 'Perempuan'),
(83, 'Lia Tilaar', 'lia@gmail.com', '123', '$2y$10$4jPyiPSV7SRsNh8CdqdTIe4XjrLBaprWfjzf7TZLsyWJvfZLqw51C', 'KGD', 'dokter', 'photos/64c3d9c6f161a.png', '1993-11-02', 'Perempuan'),
(84, 'salma', 'salma@gmail.com', '085817918422', '$2y$10$LhImOk4PCTQjTMpl56zveufiQpUseyNc.8H3m3Br39Vu7YJONmbRy', NULL, 'user', 'photos/64c3e05a5811d.jpg', '2001-12-12', 'Perempuan'),
(85, 'noval', 'mochamadnoval30@gmail.com', '085817918422', '$2y$10$7C7VuNuNMTjvrgFL9K3tFOdmIHtimwyTgGWiwHIvNyPJCkCvEbNOa', NULL, 'user', 'photos/64c492dd34373.jpg', NULL, NULL),
(87, 'ila', 'ila@gmail.com', '123', '$2y$10$ywVi3di/jDu503lUwg.i0.vck2nQ0wEv9A9bZL77yiIDGgLBLs6VG', NULL, 'user', 'photos/64ca6d8210e30.jpg', NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `riwayat_konsultasi`
--
ALTER TABLE `riwayat_konsultasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `tartikel`
--
ALTER TABLE `tartikel`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tkomentar`
--
ALTER TABLE `tkomentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tkonsultasi`
--
ALTER TABLE `tkonsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tpesan`
--
ALTER TABLE `tpesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `tspesialisasi`
--
ALTER TABLE `tspesialisasi`
  MODIFY `id_spesialisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
