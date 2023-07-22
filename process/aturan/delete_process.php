<?php
	include '../../database/Aturan.php';

	$id = $_GET['id'];

	$aturan = new Aturan();
	$aturan->hapusaturan($id);


	echo "<script>
						alert('Data Berhasil Dihapus !');
						window.location = '../../index.php?p=tabel_aturan';
				</script>";


 ?>
