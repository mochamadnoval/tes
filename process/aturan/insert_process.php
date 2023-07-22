<?php
	include '../../database/Aturan.php';

	$kode_penyakit = $_POST['kode_penyakit'];
	$kode_gejala = $_POST['kode_gejala'];

	$aturan = new Aturan;
	$aturan->tambahaturan($kode_penyakit,$kode_gejala);
	echo "<script>
						alert('Data Berhasil Ditambah !');
						window.location = '../../index.php?p=tabel_aturan';
				</script>";

 ?>
