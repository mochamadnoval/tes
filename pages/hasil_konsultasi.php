<?php
include 'header_baru.php';
?>
<head>
<link rel="stylesheet" href="style.css">
</head>

<body>


    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS from CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<body>
    <div class="container-fluid ml-10">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="text-center">Hasil Diagnosa</h3>
            </div>
            <br>

<?php
session_start();

// Panggil fungsi untuk membuat koneksi
include '../database/Riwayat.php';
// Buat objek riwayat
$riwayat = new Riwayat();

try {
    // Koneksi ke database
    $host = 'localhost';
    $dbname = 'ebidan';
    $username = 'root';
    $password = '';

    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Ambil kode_penyakit terbanyak dari tabel aturan
    $query = "SELECT kode_penyakit, COUNT(*) as jumlah FROM aturan GROUP BY kode_penyakit ORDER BY jumlah DESC LIMIT 1";
    $stmt = $pdo->query($query);
    $result = $stmt->fetch();
    $kode_penyakit_terbanyak = $result['kode_penyakit'];

    // Query untuk mendapatkan data penyakit berdasarkan kode_penyakit terbanyak
    $qry2 = "SELECT nama_penyakit, info_penyakit, solusi FROM penyakit WHERE kode_penyakit = ?";
    $stmt2 = $pdo->prepare($qry2);
    $stmt2->execute([$kode_penyakit_terbanyak]);
    $d2 = $stmt2->fetch();

    // Tampilkan hasil diagnosa
    echo "<div class='container-justify'>";
    echo "<table class='table'>";
    echo "<thead>";
    echo "<tr>";
    echo "<th>Nama Penyakit</th>";
    echo "<th>Info Penyakit</th>";
    echo "<th>Solusi</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    echo "<tr>";
    echo "<td>".$d2['nama_penyakit']."</td>";
    echo "<td>".$d2['info_penyakit']."</td>";
    echo "<td>".nl2br($d2['solusi'])."</td>";
    echo "</tr>";
    echo "</tbody>";
    echo "</table>";
    echo "<a href='question_page.php' class='btn btn-primary'>Mulai Konsultasi Ulang</a> ";
    echo "<a href='riwayat_konsultasi.php' class='btn btn-primary'>Cek Riwayat Konsultasi</a>";
    echo "</div>";

    // Simpan data konsultasi ke tabel riwayat_konsultasi
    $user_id = $_SESSION['id'];
    $nama_user = $_SESSION['nama'];
    $nama_penyakit = $d2['nama_penyakit'];
    $info_penyakit = $d2['info_penyakit'];
    $solusi = $d2['solusi'];
    $tanggal = date('Y-m-d H:i:s'); // Tanggal dan waktu saat ini
    $riwayat->simpanRiwayat($user_id, $nama_user, $nama_penyakit, $info_penyakit, $solusi, $tanggal);

} catch (PDOException $e) {
    echo "Koneksi atau eksekusi query gagal: " . $e->getMessage();
}
?>
    <div class="row footer">
  <div class="col text-center">
    <p>2023 &copy; All Right Reserved Apps E-Bidan</a>
    </p>
