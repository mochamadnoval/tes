<!DOCTYPE html>
<html lang="en">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hasil Diagnosa</title>
    <!-- Bootstrap CSS from CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .container-fluid {
            max-width: 800px;
        }

        .box {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }

        .box-header {
            background-color: #f0f0f0;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }

        .text-center {
            text-align: center;
        }

        .scroll-box {
            overflow: scroll;
            height: 467px;
        }

        .input-group {
            margin-bottom: 10px;
        }

        .btn {
            margin-top: 20px;
        }
    </style>
</head>

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

// Pastikan file Riwayat.php telah berada di direktori yang tepat
$riwayat = new Riwayat();
$pdo = $riwayat->buatKoneksiPDO();

$gejala = array();
if (isset($_POST)) {
    foreach ($_POST as $key => $value) {
        if ($value != 'submit') {
            // If the value contains comma, it means multiple gejala are selected
            if (strpos($value, ',') !== false) {
                $gejala = array_merge($gejala, explode(',', $value));
            } else {
                $gejala[] = $value;
            }
        }
    }
}

// Remove duplicate gejala if any
$gejala = array_unique($gejala);

// Tambahkan pesan log sederhana untuk melihat nilai gejala
var_dump($gejala);

// Buat query SQL untuk mencari aturan-aturan terkait dengan gejala
$qry = "SELECT kode_penyakit FROM aturan WHERE ";
$conditions = array();

foreach ($gejala as $value) {
    $conditions[] = "kode_gejala = '" . $value . "'";
}

$qry .= implode(" OR ", $conditions);

$data = $pdo->query($qry);

// Inisialisasi array untuk menyimpan penyakit yang sesuai aturan
$penyakit = array();
while ($d = $data->fetch()) {
    $penyakit[] = $d['kode_penyakit'];
}

// Jika tidak ada gejala yang cocok dengan aturan, tampilkan pesan
if (empty($penyakit)) {
    echo "<p>Sistem tidak dapat menentukan penyakit anda, <br> Silahkan gunakan fitur live chat untuk berkonsultasi langsung dengan dokter :)</p>";
    echo "<a href='http://localhost:8080/wil/index.php?p=select_chat' class='btn btn-primary'>Chat Dokter</a>";
    echo "</div>";
} else {
    // Hitung penyakit yang paling sering muncul pada array penyakit
    $penyakit_terbanyak = array_count_values($penyakit);
    arsort($penyakit_terbanyak);
    $kode_penyakit = key($penyakit_terbanyak);

    // Query untuk mendapatkan solusi berdasarkan kode_penyakit yang terbanyak
    $qry2 = "SELECT nama_penyakit, info_penyakit, solusi FROM penyakit WHERE kode_penyakit = ?";
    $stmt2 = $pdo->prepare($qry2);
    $stmt2->execute([$kode_penyakit]);
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
    echo "<a href='diagnosa.php' class='btn btn-primary'>Mulai Konsultasi Ulang</a> ";
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
}

// Tutup koneksi ke database
$pdo = null;
?>
