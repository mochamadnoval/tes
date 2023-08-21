
<?php
class Riwayat
{
    private $pdo;

    function __construct()
    {
        try {
            $this->pdo = new PDO('mysql:host=localhost;dbname=konsuldoc', 'root', '');
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            echo "Error koneksi database: " . $e->getMessage();
            die();
        }
    }

	public function riwayatKonsultasi($user_id)
    {
        try {
            $stmt = $this->pdo->prepare("SELECT * FROM riwayat_konsultasi WHERE id_user = ?");
            $stmt->execute([$user_id]);
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
            return [];
        }
    }


     // Metode baru untuk menyimpan data konsultasi
	 public function simpanRiwayat($user_id, $nama_user, $nama_penyakit, $info_penyakit, $solusi, $tanggal)
	 {
		 try {
			 $qry = "INSERT INTO riwayat_konsultasi (id_user, nama_user, nama_penyakit, info_penyakit, solusi, tanggal)
					 VALUES (:id_user, :nama_user, :nama_penyakit, :info_penyakit, :solusi, :tanggal)";
 
			 $stmt = $this->pdo->prepare($qry);
			 $stmt->execute([
				 'id_user' => $user_id,
				 'nama_user' => $nama_user,
				 'nama_penyakit' => $nama_penyakit,
				 'info_penyakit' => $info_penyakit,
				 'solusi' => $solusi,
				 'tanggal' => $tanggal
			 ]);
		 } catch (PDOException $e) {
			 echo "Error: " . $e->getMessage();
			 die();
		 }
	 }
 }
 ?>