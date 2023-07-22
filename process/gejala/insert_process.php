<?php
	include '../../database/Gejala.php';

	$kode_gejala = $_POST['kode_gejala'];
	$nama_gejala = $_POST['nama_gejala'];

	$gejala = new Gejala;
	$gejala->tambahGejala($kode_gejala,$nama_gejala);
	echo "<script>
						alert('Data Berhasil Ditambah !');
						window.location = '../../index.php?p=tabel_gejala';
				</script>";

 ?>
