
<?php


class Aturan
{
	private $pdo;

	function __construct()
	{
		try {
			$this->pdo = new PDO('mysql:host=localhost;dbname=ebidan', 'root', '');
		} catch (PDOException $e) {
			echo $e;
		}
	}


	public function hitungAturan()
		{
			$sql = "SELECT * FROM aturan";
			$stmt = $this->pdo->prepare($sql);
			$stmt->execute();
			$count = $stmt->rowCount();
			return $count;
		}

	public function tambahAturan($kode_penyakit, $kode_gejala)
	{

		$sql = "INSERT INTO aturan (kode_penyakit,kode_gejala) VALUES(?,?)";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([
			$kode_penyakit, $kode_gejala
		]);
	}

	public function tampilAturan()
	{
		$sql = "SELECT * FROM aturan";
		$stmt = $this->pdo->query($sql);
		return $stmt;
	}

	public function tampilJumlahAturan()
	{
		$sql = "SELECT * FROM aturan";
		$stmt = $this->pdo->query($sql);
		$count = $stmt->rowCount();
		return $count;
	}

	public function tampilJumlahAturanByKode($kode)
	{
		$sql = "SELECT * FROM aturan WHERE  kode_penyakit=?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$kode]);
		$count = $stmt->rowCount();
		return $count;
	}

	public function tampilAturanByKode($kode)
	{
		$sql = "SELECT * FROM aturan
				WHERE kode_penyakit=?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$kode]);
		$data = $stmt->fetch();
		return $data;
	}

	public function tampilAturanById($id)
	{
		$sql = "SELECT * FROM aturan
				WHERE kode_penyakit=?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$id]);
		$data = $stmt->fetch();
		return $data;
	}

public function updateAturan($id, $kode_penyakit, $kode_gejala)
    {
        $sql = "UPDATE aturan
                SET kode_penyakit = ?,
                    kode_gejala = ?
                    WHERE id=?";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$kode_penyakit, $kode_gejala, $id]);
    }

	public function hapusAturan($id)
	{
		$sql = "DELETE FROM aturan WHERE id= ?";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute([$id]);
	}
}


