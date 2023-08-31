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

    $koneksi = new mysqli ($host, $username, $password, $dbname); 
    
    $id_konsul = $_GET['p'];
    $konsultasi = $koneksi->query("SELECT * FROM riwayat_konsultasi WHERE id = $id_konsul")->fetch_assoc();
    
    $penyakit =  $konsultasi['kode_penyakit'];
    //explode koma
    $explode = explode(',', $penyakit);

    $kode_penyakit = "'" . implode("','", $explode) . "'";
    // Ambil kode_penyakit dari tabel aturan
    $query = $koneksi->query("SELECT * FROM penyakit WHERE kode_penyakit in ($kode_penyakit)");

    //Tampilkan hasil diagnosa
    echo "<div class='container'>";
    echo "<table class='table'>";
    echo "<thead>";
    echo "<tr>";
    echo "<th>Nama Penyakit</th>";
    echo "<th>Info Penyakit</th>";
    echo "<th>Solusi</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";

    while ($data = $query ->fetch_assoc()){
        echo "<tr>";
        echo "<td>".$data['nama_penyakit']."</td>";
        echo "<td>".$data['info_penyakit']."</td>";
        echo "<td>".nl2br($data['solusi'])."</td>";
        echo "</tr>";
    }
    echo "</tbody>";
    echo "</table>";
    echo "<a href='question_page.php' class='btn btn-primary'>Mulai Konsultasi Ulang</a> ";
    echo "<a href='riwayat_konsultasi.php' class='btn btn-primary'>Cek Riwayat Konsultasi</a>";
    echo "</div>";  

} catch (PDOException $e) {
    echo "Koneksi atau eksekusi query gagal: " . $e->getMessage();
}
?>
    <div class="row footer">
  <div class="col text-center">
    <p>2023 &copy; All Right Reserved Apps E-Bidan</a>
    </p>
