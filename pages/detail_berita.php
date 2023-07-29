<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
		ul {
			text-align: justify;
			list-style-position: inside;
		}
	</style>
</head>
<body>

<?php
  include 'database/Artikel.php';
  include 'database/Komentar.php';
  $id = $_GET['id'];
  $user = new Artikel;
  $data = $user->tampilArtikelById($id);
?>

<div class="row">
<div class="col-8 detailberita">
    <h1 class="text-hijau mt-2">
        <?php echo $data['judul']  ?>
    </h1>
    <input type="hidden" name="" value="<?= $data['id'] ?>" id="id_artikel">
    <small class="text-secondary"><span class="oi oi-calendar"></span> <?php echo $data['date']?></small>
    <!-- &nbsp;<small class="text-secondary"><span class="oi oi-people"></span></span> Admin1</small> --><br>
    <img src="<?php echo $data['foto']?>" alt="workingspace" class="img-fluid">
    <br />
	<ul>
    <?php
    $artikelContent = explode("\n", $data['artikel']);
    foreach ($artikelContent as $paragraph) {
        if (!empty(trim($paragraph))) {
            echo nl2br(trim($paragraph)) . "<br>";
        }
    }
    ?>
	</ul>
</div>

	<div class="col-4">
		<div class="recent-post">
			<table class="w-100">
				<tr>
					<th class="hijau putih">Recent Post</th>
					<?php
						$artikel = new Artikel;
						$recent = $artikel->tampilRecentArtikel();
						foreach ($recent as $row ) :
					?>
					<tr>
						<td>
							<img src="<?= $row['foto'] ?>">
							<a href="index.php?p=detail_berita&id=<?= $row['id'] ?>">
								<h1><?= $row['judul'] ?></h1>
								<p><?= $row['artikel'] ?></p>
							</a>
						</td>
					</tr>
					<?php endforeach; ?>
				</tr>
			</table>
		</div>
	</div>
</div>
<br />



<script type="text/javascript" src="js\komentarArtikel.js"></script>
<script type="text/javascript" src="js\sendKomentarArtikel.js"></script>

</body>
</html>
