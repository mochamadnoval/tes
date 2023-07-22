<?php
	include '../../database/Gejala.php';

	$id = $_GET['id'];

	$gejala = new Gejala();
	$gejala->hapusGejala($id);


	echo "<script>
						alert('Data Berhasil Dihapus !');
						window.location = '../../index.php?p=tabel_gejala';
				</script>";


 ?>
