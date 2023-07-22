<?php

  $sakit = new Penyakit;
  $datapenyakit = $sakit->tampilPenyakit();

 ?>
<!-- tabel  Pasien-->
<body>
    <div class="container">
        <div class="row titlepanel">
            <div class="col-12">
                <h1>Tabel Penyakit</h1>
            </div>
        </div>
        <button type="button" class="btn btn-outline-primary mb-2 mt-2" data-toggle="modal" data-target="#tambah_penyakit" data-whatever="@getbootstrap">Tambah Penyakit</button>
        <table class="table table_penyakit">
            <thead class="thead hijau putih">
                <tr>
                    <th>No</th>
                    <th>Kode Penyakit</th>
                    <th>Nama Penyakit</th>
                    <th>Detail Penyakit</th>
                    <th>Solusi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $i = 1;
                foreach ($datapenyakit as $row):
                ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $row['kode_penyakit'] ?></td>
                    <td><?= $row['nama_penyakit'] ?></td>
                    <td><?= $row['info_penyakit'] ?></td>
                    <td><?= nl2br($row['solusi']) ?></td>
                    <td>
                    <button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target="#edit_penyakit_<?= $row['id'] ?>" data-kode_gejala="<?= $row['kode_gejala'] ?>" data-nama_gejala="<?= $row['nama_gejala'] ?>">Edit</button>

                    <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#delete_penyakit_<?= $row['id'] ?>" data-whatever="@getbootstrap">Hapus</button>
                    </td>
                </tr>
                <!-- Modal Delete Dokter -->
          <div class="modal fade" id="delete_penyakit_<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Delete Penyakit</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                 <p>anda yakin ingin menghapus penyakit ini?</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <a href="process/penyakit/delete_process.php?id=<?= $row['id'] ?>"><button type="button" class="btn btn-danger">Delete</button></a>
                </div>
              </div>
            </div>
          </div>
          <!-- Akhir Modal Delete Dokter -->
          <!-- Modal Edit Gejala -->
<!-- Modal Edit Gejala -->
<div class="modal fade" id="edit_penyakit_<?= $row['id'] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit penyakit</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="process/penyakit/edit_process.php" method="post">
              <input type="hidden" name="id" value="<?= $row['id'] ?>">
              <div class="form-group">
                <label for="kode_penyakit">Kode Penyakit</label>
                <input type="text" class="form-control" id="kode_penaykit" name="kode_penyakit" value="<?= $row['kode_penyakit'] ?>">
              </div>
              <div class="form-group">
                <label for="nama_penyakit">Nama Penyakit</label>
                <input type="text" class="form-control" id="nama_penyakit" name="nama_penyakit" value="<?= $row['nama_penyakit'] ?>">
              </div>
              <div class="form-group">
                <label for="info_penyakit">Detail Penyakit</label>
                <input type="text" class="form-control" id="info_penyakit" name="info_penyakit" value="<?= $row['info_penyakit'] ?>">
              </div>
              <div class="form-group">
                <label for="solusi">Solusi</label>
                <input type="text" class="form-control" id="solusi" name="solusi" value="<?= $row['solusi'] ?>">
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
                <div class="modal fade" id="tambah_penyakit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Tambah Penyakit</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="process/penyakit/insert_process.php" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                        <label for="kode_penyakit">Kode Penyakit</label>
                        <input type="text" class="form-control" id="kode_penaykit" name="kode_penyakit">
                        </div>
                        <div class="form-group">
                            <label for="nama_penyakit">Nama Penyakit</label>
                            <input type="text" class="form-control" id="nama_penyakit" name="nama_penyakit">
                        </div>
                        <div class="form-group">
                            <label for="info_penyakit">Detail Penyakit</label>
                            <input type="text" class="form-control" id="info_penyakit" name="info_penyakit">
                        </div>
                        <div class="form-group">
                            <label for="solusi">Solusi</label>
                            <input type="text" class="form-control" id="solusi" name="solusi">
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
