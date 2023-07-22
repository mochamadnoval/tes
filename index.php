<?php

session_start();
include 'database/Spesialisasi.php';
include 'database/Dokter.php';
include 'database/Konsultasi.php';
include 'database/User.php';
include 'database/Pesan.php';
include 'database/Gejala.php';
include 'database/Penyakit.php';
include 'database/Aturan.php';
include 'database/Riwayat.php';
include 'database/Diagnosa.php';


?>
<?php
include 'templates/header.php';
?>

<?php
if(!isset($_GET['p'])){
  $page = "select_main";
}else{
  $page = $_GET['p'];
}
include 'pages/'.$page .'.php';
?>

<?php
include 'templates/footer.php';
?>
