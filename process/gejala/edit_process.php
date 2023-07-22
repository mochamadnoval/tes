<?php
	include '../../database/Gejala.php';
	$id = $_POST['id'];
	$kode_gejala = $_POST['kode_gejala'];
	$nama_gejala = $_POST['nama_gejala'];

	//var_dump($id,$kode_gejala,$nama_gejala);

	$gejala= new Gejala();
	$gejala->updateGejala($id,$kode_gejala,$nama_gejala);
	echo "<script>
						alert('Data Berhasil Diubah!');
						window.location = '../../index.php?p=tabel_gejala';

				</script>";

?>
