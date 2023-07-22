<?php
	include '../../database/Penyakit.php';

	$kode_penyakit = $_POST['kode_penyakit'];
	$nama_penyakit = $_POST['nama_penyakit'];
	$info_penyakit = $_POST['info_penyakit'];
	$solusi = $_POST['solusi'];

	$penyakit = new Penyakit;
	$penyakit->tambahPenyakit($kode_penyakit,$nama_penyakit,$info_penyakit,$solusi);
	echo "<script>
						alert('Data Berhasil Ditambah !');
						window.location = '../../index.php?p=tabel_penyakit';
				</script>";

 ?>
