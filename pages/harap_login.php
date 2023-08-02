<?php
session_start();

// Cek apakah pengguna sudah login atau belum
if (!isset($_SESSION['username'])) {
    // Jika pengguna belum login, arahkan ke halaman login atau tampilkan popup
    echo '<script type="text/javascript">
                alert("Anda harus login terlebih dahulu");
                window.location = "../index.php"; // Ganti "index.php" dengan halaman login sesuai kebutuhan
          </script>';
    exit();
}
?>