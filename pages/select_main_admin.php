<?php

spl_autoload_register(function ($class_name) {
    $file_path = 'database/' . $class_name . '.php';
    if (file_exists($file_path)) {
        include $file_path;
    }
});



$art = new Artikel;
$artikel = $art->hitungArtikel();

$atr = new Aturan;
$aturan = $atr->hitungAturan();

$sakit = new Penyakit;
$penyakit = $sakit->hitungPenyakit();

$gjl = new Gejala;
$gejala = $gjl->hitungGejala();

$usr = new User;
$user = $usr->hitungUser();
$datauser = $usr->tampilUser();

$dktr = new Dokter;
$dokter = $dktr->hitungDokter();
$lihatDokter = $dktr->tampilDokterBySpesial();

$spesial = new Spesialisasi;
$spesialis = $spesial->tampilSpesialisasi();
?>

<br />
<div class="alert alert-primary">
  Hallo Dr. <strong><?= $_SESSION['nama'] ?></strong> Tetap Semangat dalam menjalankan tugas </a>
</div>

<!-- infopanel admin -->
<div class="col-12">
  <div class="row">
    <div class="col-lg admin_panel ml-3 mr-3">
      <img src="img/ic4.png" class="float-left">
      <h1><?= $artikel ?></h1>
      <p>Artikel</p>
    </div>
    <div class="col-lg admin_panel ml-3 mr-3">
      <img src="img/ic_doc.png" class="float-left">
      <h1><?= $dokter ?></h1>
      <p>Dokter</p>
    </div>
    <div class="col-lg admin_panel ml-3 mr-3">
      <img src="img/ic_user.png" class="float-left">
      <h1><?= $user ?></h1>
      <p>User</p>
    </div>
    <div class="col-lg admin_panel ml-3 mr-3">
      <img src="img/ic_user.png" class="float-left">
      <h1><?= $penyakit ?></h1>
      <p>Penyakit</p>
    </div>
    <div class="col-lg admin_panel ml-3 mr-3">
      <img src="img/ic_user.png" class="float-left">
      <h1><?= $gejala ?></h1>
      <p>Gejala</p>
    </div>
    <div class="col-lg admin_panel ml-3 mr-3">
      <img src="img/ic_user.png" class="float-left">
      <h1><?= $aturan ?></h1>
      <p>Aturan</p>
    </div>
  </div>
</div>
<!-- akhir infopanel admin -->
