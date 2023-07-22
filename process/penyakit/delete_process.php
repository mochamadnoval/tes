<?php
	include '../../database/Penyakit.php';

	$id = $_GET['id'];

	$penyakit = new Penyakit();
	$penyakit->hapusPenyakit($id);


	echo "<script>
						alert('Data Berhasil Dihapus !');
						window.location = '../../index.php?p=tabel_penyakit';
				</script>";


 ?>
