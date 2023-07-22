<?php
	include '../../database/Penyakit.php';
	$id = $_POST['id'];
	$kode_penyakit = $_POST['kode_penyakit'];
	$nama_penyakit = $_POST['nama_penyakit'];
	$info_penyakit = $_POST['info_penyakit'];
	$solusi = $_POST['solusi'];
	
	//var_dump($id,$kode_gejala,$nama_gejala);

	$penyakit= new Penyakit();
	$penyakit->updatePenyakit($id, $kode_penyakit, $nama_penyakit, $info_penyakit, $solusi);
	echo "<script>
						alert('Data Berhasil Diubah!');
						window.location = '../../index.php?p=tabel_penyakit';

				</script>";

?>
