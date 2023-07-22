
<?php


class Gejala
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


	public function hitungGejala()
		{
			$sql = "SELECT * FROM gejala";
			$stmt = $this->pdo->prepare($sql);
			$stmt->execute();
			$count = $stmt->rowCount();
			return $count;
		}

	public function tambahGejala($kode_gejala, $nama_gejala)
	{

		$sql = "INSERT INTO gejala (kode_gejala,nama_gejala) VALUES(?,?)";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([
			$kode_gejala, $nama_gejala
		]);
	}

	public function tampilGejala()
	{
		$sql = "SELECT * FROM gejala";
		$stmt = $this->pdo->query($sql);
		return $stmt;
	}

	public function tampilJumlahGejala()
	{
		$sql = "SELECT * FROM gejala";
		$stmt = $this->pdo->query($sql);
		$count = $stmt->rowCount();
		return $count;
	}

	public function tampilJumlahGejalaByKode($kode)
	{
		$sql = "SELECT * FROM gejala WHERE  kode_gejala=?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$kode]);
		$count = $stmt->rowCount();
		return $count;
	}

	public function tampilGejalaByKode($kode)
	{
		$sql = "SELECT * FROM gejala
				WHERE kode_gejala=?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$kode]);
		$data = $stmt->fetch();
		return $data;
	}

	public function tampilGejalaById($id)
	{
		$sql = "SELECT * FROM gejala
				WHERE id=?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$id]);
		$data = $stmt->fetch();
		return $data;
	}

public function updateGejala($id, $kode_gejala, $nama_gejala)
    {
        $sql = "UPDATE gejala
                SET kode_gejala = ?,
                    nama_gejala = ?
                    WHERE id=?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$kode_gejala, $nama_gejala, $id]);
    }

	public function hapusGejala($id)
	{
		$sql = "DELETE FROM gejala WHERE id= ?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$id]);
	}
}
