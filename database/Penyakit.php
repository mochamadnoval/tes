
<?php


class Penyakit
{
	private $pdo;

	function __construct()
	{
		try {
			$this->pdo = new PDO('mysql:host=localhost;dbname=konsuldoc', 'root', '');
		} catch (PDOException $e) {
			echo $e;
		}
	}

	public function hitungPenyakit()
		{
			$sql = "SELECT * FROM penyakit";
			$stmt = $this->pdo->prepare($sql);
			$stmt->execute();
			$count = $stmt->rowCount();
			return $count;
		}

	public function tambahPenyakit($kode_penyakit, $nama_penyakit, $info_penyakit, $solusi)
	{

		$sql = "INSERT INTO penyakit (kode_penyakit,nama_penyakit,info_penyakit,solusi) VALUES(?,?,?,?)";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([
			$kode_penyakit, $nama_penyakit, $info_penyakit, $solusi
		]);
	}

	public function tampilPenyakit()
	{
		$sql = "SELECT * FROM penyakit";
		$stmt = $this->pdo->query($sql);
		return $stmt;
	}
public function updatePenyakit($id, $kode_penyakit, $nama_penyakit, $info_penyakit, $solusi)
{
    $sql = "UPDATE penyakit
            SET kode_penyakit = ?,
                nama_penyakit = ?,
                info_penyakit = ?,
                solusi = ?
            WHERE id=?";
    $stmt = $this->pdo->prepare($sql);
    $stmt->execute([$kode_penyakit, $nama_penyakit, $info_penyakit, $solusi, $id]);
}


	public function hapusPenyakit($id)
	{
		$sql = "DELETE FROM penyakit WHERE id= ?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$id]);
	}
}
