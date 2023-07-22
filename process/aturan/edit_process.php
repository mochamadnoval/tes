<?php
	include '../../database/Aturan.php';
	$id = $_POST['id'];
	$kode_penyakit = $_POST['kode_penyakit'];
	$kode_gejala = $_POST['kode_gejala'];

	//var_dump($id,$kode_gejala,$kode_gejala);

	$aturan= new Aturan();
	$aturan->updateAturan($id,$kode_penyakit,$kode_gejala);
	echo "<script>
						alert('Data Berhasil Diubah!');
						window.location = '../../index.php?p=tabel_aturan';

				</script>";

?>
