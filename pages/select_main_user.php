<!-- Info panel -->
  <div class="row">
    <div class="col-12">
      <div class="row d-flex justify-content-center ashiapp">
        <?php if(isset($_SESSION['role'])): ?>
        <?php if ($_SESSION['role']=='user'): ?>
        <a href="index.php?p=select_chat" class="page-scroll">
          <div class="col-lg info-panel mr-3 mb-3">
            <img src="photos/chatdokter.png" alt="ChatDokter">
            <h4>CHAT DOKTER</h4>
            <p>Tanyakan kepada dokter ahli.</p>
          </div>
        </a>
        <?php endif ; ?>
        <?php else: ?>
          <div class="col-lg info-panel mr-3 mb-3">
          <a href="pages/harap_login.php">
            <img src="photos/chatdokter.png" alt="ChatDokter">
            <h4>CHAT DOKTER</h4>
            <P>Anda belum login, Silahkan Login terlebih dahulu!</p>
          </div>
        </a>
      <?php endif ;?>

      <?php if(isset($_SESSION['role'])): ?>
      <?php if ($_SESSION['role']=='user'): ?>
        <a href="pages/select_chat_blank.php" target="_blank">
          <div class="col-lg info-panel mr-3 mb-3">
            <img src="photos/pesan.png" alt="High Res">
            <h4>Pesan</h4>
            <p>Lihat semua pesan anda disini.</p>
          </div>
        </a>
      <?php endif ;?>
      <?php else: ?>
        <a href="#">
          <div class="col-lg info-panel mr-3 mb-3">
          <a href="pages/harap_login.php">
            <img src="photos/pesan.png" alt="High Res">
            <h4>Pesan</h4>
            <P>Anda belum login, Silahkan Login terlebih dahulu!</p>
          </div>
        </a>
      <?php endif; ?>

      <?php if(isset($_SESSION['role'])): ?>
      <?php if ($_SESSION['role']=='user'): ?>
        <a href="pages/question_page.php">
          <div class="col-lg info-panel mr-3 mb-3">
            <img src="photos/stetoskop.png" alt="High Res">
            <h4>Konsultasi</h4>
            <p>Konsultasikan penyakit anda dengan kami.</p>
          </div>
        </a>
      <?php endif ;?>
      <?php else: ?>
          <div class="col-lg info-panel mr-3 mb-3">
          <a href="pages/harap_login.php">
            <img src="photos/stetoskop.png" alt="High Res">
            <h4>Konsultasi</h4>
            <P>Anda belum login, Silahkan Login terlebih dahulu!</p>
          </div>
        </a>
      <?php endif; ?>

      <?php if(isset($_SESSION['role'])): ?>
      <?php if ($_SESSION['role']=='user'): ?>
        <a href="pages/riwayat_konsultasi.php">
          <div class="col-lg info-panel mr-3 mb-3">
            <img src="photos/diagnosa.png" alt="High Res">
            <h4>Riwayat Konsultasi</h4>
            <p>Cek riwayat konsultasi anda disini.</p>
          </div>
        </a>
      <?php endif ;?>
      <?php else: ?>
          <div class="col-lg info-panel mr-3 mb-3">
          <a href="pages/harap_login.php">
            <img src="photos/diagnosa.png" alt="High Res">
            <h4>Riwayat Konsultasi</h4>
            <P>Anda belum login, Silahkan Login terlebih dahulu!</p>
          </div>
        </a>
      <?php endif; ?>


      </div>
    </div>
  </div>
  <!-- Akhir info panel -->
<!-- Working space -->


<?php
  include 'database/Artikel.php';

 ?>
   <?php
          $artikel = new Artikel;

          $data = $artikel->tampilArtikel2();
          $i = 1;
          foreach ($data as $row) :
        ?>

  <div class="row workingspace" id="berita">
    <div class="col-lg-6">
      <img src="<?= $row['foto'] ?>" alt="workingspace" class="img-fluid">
    </div>
    <div class="col-lg-6">
      <h3><?= $row['judul'] ?></h3>
      <p><?= $row['artikel'] ?></p>
      <a href="index.php?p=detail_berita&id=<?=$row['id']?>" class="btn btn-secondary tombol">Read More</a>
    </div>

  </div>
          <?php
              $i++;
        endforeach;

        ?>
  <!-- Akhir working space -->

  <!-- Berita -->
  <div class="row titleberita">
    <div class="col-12">
      <h1>berita terbaru</h1>
    </div>
  </div>

  <div class="row berita">
     <?php
          $artikel = new Artikel;

          $data = $artikel->tampilArtikel();
          $i = 1;
          foreach ($data as $row) :
        ?>
    <div class="col-lg-6 maelee">
      <img src="<?= $row['foto'] ?>" alt="workingspace" class="float-left">
      <h3><?= $row['judul'] ?></h3>
      <p><?= $row['artikel'] ?></p>
       <small class="text-warning">
         <?php
            $harijam = $row['date'] ;
            $date = strtotime($harijam);
            echo date('M - H:I', $date);
          ?>
        </small>
      <a href="index.php?p=detail_berita&id=<?=$row['id']?>"><img src="img/next.png" alt="workingspace" class="float-right" style="width:30px; height: 30px;"></a>

    </div>
     <?php
              $i++;
        endforeach;

        ?>
  </div>

  <!-- Akhir berita -->

