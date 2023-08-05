
<?php


class Riwayat
{
	private $pdo;

	function __construct()
	
	{
        $this->pdo = $this->buatKoneksiPDO();
    }
	
	
	function buatKoneksiPDO()
	{
		$host = 'localhost';
		$dbname = 'konsuldoc';
		$username = 'root';
		$password = '';

		try {
			$pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
			$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $pdo;
		} catch (PDOException $e) {
			echo "Koneksi gagal: " . $e->getMessage();
			die(); // Hentikan eksekusi jika gagal koneksi ke database
		}
	}

	public function riwayatKonsultasi($id) {
// Mendapatkan kode gejala dari parameter URL
$kodeGejala = $_GET['kode_gejala'];

// Menggunakan prepared statement untuk mencegah SQL injection
$stmt = $conn->prepare("SELECT kode_penyakit FROM tabel_aturan WHERE kode_gejala IN (?)");
$stmt->bind_param("s", $kodeGejala);
$stmt->execute();
$result = $stmt->get_result();
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