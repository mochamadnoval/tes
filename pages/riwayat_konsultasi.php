<?php
session_start();
$role = isset($_SESSION['role']) ? $_SESSION['role'] : 'user';

include '../database/Riwayat.php';
include 'header_baru.php';

$userId = $_SESSION['id'];

$riwayat = new Riwayat();
$datariwayat = $riwayat->riwayatKonsultasi($userId);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Kode gaya dan tautan lainnya -->
</head>
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
                    $nomor = 1;
                    foreach ($datariwayat as $row) {
                        echo "<tr>";
                        echo "<td>".$nomor."</td>";
                        echo "<td>".$row['nama_penyakit']."</td>";
                        echo "<td>".$row['info_penyakit']."</td>";
                        echo "<td>".nl2br($row['solusi'])."</td>";
                        echo "<td>".$row['tanggal']."</td>";
                        echo "</tr>";
                        $nomor++;
                    }
                } else {
                    echo "<tr><td colspan='5'>Tidak ada riwayat konsultasi.</td></tr>";
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
