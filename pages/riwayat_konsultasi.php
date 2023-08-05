<?php
session_start();
$role = isset($_SESSION['role']) ? $_SESSION['role'] : 'user';


// Pastikan sesi sudah dimulai untuk mengakses $_SESSION
include '../database/Riwayat.php'; // Ganti path/ke/ dengan direktori tempat Riwayat.php berada
include 'header_baru.php';

$userId = $_SESSION['id'];

// Buat objek riwayat
$riwayat = new Riwayat();

// Ambil riwayat riwayat berdasarkan ID pengguna yang sedang login
$datariwayat = $riwayat->riwayatKonsultasi($userId);

?>

<!-- Tampilkan tabel riwayat konsultasi dengan data sesuai hasil query -->
<!DOCTYPE html>
<html lang="en">

<head>
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

        .input-group {
            margin-bottom: 10px;
        }

        .btn {
            margin-top: 20px;
        }
        .table th {
            text-align: center;
        }
        .table th, .table td {
            padding: 8px;
            text-align: justify;
        }
    </style>
</head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Riwayat Konsultasi</title>
    <!-- Bootstrap CSS from CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<body>
<div class="container">
        
            <div class="box-header with-border">
                <h3 class="text-center">Riwayat Konsultasi</h3>
            </div>
        <table class="table">
            <thead>
                <tr>
                    <th>No </th>
                    <th>Nama Penyakit</th>
                    <th>Info Penyakit</th>
                    <th>Solusi</th>
                    <th>Tanggal</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if (!empty($datariwayat)) {
                    $nomor = 1; // Variabel untuk nomor urut
                    foreach ($datariwayat as $row) {
                        echo "<tr >";
                        echo "<td>".$nomor."</td>";
                        echo "<td>".$row['nama_penyakit']."</td>";
                        echo "<td>".$row['info_penyakit']."</td>";
                        echo "<td>".nl2br($row['solusi'])."</td>";
                        echo "<td>".$row['tanggal']."</td>";
                        echo "</tr>";
                        $nomor++; // Increment nomor urut
                    }
                } else {
                    echo "<tr><td colspan='6'>Tidak ada riwayat konsultasi.</td></tr>";
                }
                
                ?>
            </tbody>
        </table>
    </div>
    <div class="row footer">
  <div class="col text-center">
    <p>2023 &copy; All Right Reserved Apps E-Bidan</a>
    </p>

  </div>
</div>
</body>
</html>
