<?php

  $atr = new Aturan;
  // $aturan = $atr->hitungGejala();
  $dataaturan= $atr->tampilAturan();
 ?>
 
<!-- tabel  Pasien-->
<body>
    <div class="container">
        <div class="row titlepanel">
            <div class="col-12">
                <h1>Tabel Aturan</h1>
            </div>
        </div>
        <button type="button" class="btn btn-outline-primary mb-2 mt-2" data-toggle="modal" data-target="#tambah_aturan" data-whatever="@getbootstrap">Tambah Aturan</button>
        <table class="table table_aturan">
            <thead class="thead hijau putih">
                <tr>
                    <th>No</th>
                    <th>Kode penyakit</th>
                    <th>Kode Gejala</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 1;
                foreach ($dataaturan as $row):
                ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $row['kode_penyakit'] ?></td>
                    <td><?= $row['kode_gejala'] ?></td>
                    <td>
                    <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#edit_aturan_<?= $row['id'] ?>" data-kode_penyakit="<?= $row['kode_penyakit'] ?>" data-kode_gejala="<?= $row['kode_gejala'] ?>">Edit</button>

                    <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#delete_aturan_<?= $row['id'] ?>" data-whatever="@getbootstrap">Hapus</button>
                    </td>
                </tr>
                <!-- Modal Delete Dokter -->
          <div class="modal fade" id="delete_aturan_<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Delete Aturan</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                 <p>anda yakin ingin menghapus aturan ini?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <a href="process/aturan/delete_process.php?id=<?= $row['id'] ?>"><button type="button" class="btn btn-danger">Delete</button></a>
                </div>
              </div>
            </div>
          </div>
          <!-- Akhir Modal Delete Dokter -->
          <!-- Modal Edit Gejala -->
<!-- Modal Edit Gejala -->
<div class="modal fade" id="edit_aturan_<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit Aturan</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="process/aturan/edit_process.php" method="post">
              <input type="hidden" name="id" value="<?= $row['id'] ?>">
              <div class="form-group">
                <label for="kode_penyakit">Kode Penyakit</label>
                <input type="text" class="form-control" id="kode_penyakit" name="kode_penyakit" value="<?= $row['kode_penyakit'] ?>">
              </div>
              <div class="form-group">
                <label for="kode_gejala">Kode Gejala</label>
                <input type="text" class="form-control" id="kode_gejala" name="kode_gejala" value="<?= $row['kode_gejala'] ?>">
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

<!-- Akhir Modal Edit Gejala -->

                <!-- Modal tambah Dokter -->
                <div class="modal fade" id="tambah_aturan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tambah Aturan</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="process/aturan/insert_process.php" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Kode Penyakit:</label>
                            <input type="text" class="form-control" id="recipient-name" name="kode_penyakit">
                        </div>

                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Kode Gejala:</label>
                            <input type="text" class="form-control" id="recipient-name" name="kode_gejala">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Simpan</button>
                        </div>
                        </form>
                    </div>

                    </div>
                </div>
                </div>
                <!-- Akhir Modal tambah Dokter -->
                <?php
                $i++;
                endforeach;
                ?>
            </tbody>
        </table>
    </div>


<!-- akhirtable Pasien-->
