<?php
// $host = 'localhost';
// $dbname = 'ebidan';
// $username = 'root';
// $password = '';

// try {
//     $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
//     $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
//     return $pdo;
// } catch (PDOException $e) {
//     echo "Koneksi gagal: " . $e->getMessage();
//     die(); // Hentikan eksekusi jika gagal koneksi ke database
// }

// // Mendapatkan kode gejala dari parameter URL
// $kodeGejala = $_GET['kode_gejala'];
// // Menggunakan prepared statement untuk mencegah SQL injection
// $stmt = $conn->prepare("SELECT kode_penyakit FROM aturan WHERE kode_gejala IN (?)");
// $stmt->bind_param("s", $kodeGejala);
// $stmt->execute();
// $result = $stmt->get_result();

// $hasil = [];
// while ($row = $result->fetch_assoc()) {
//     $hasil[] = $row;
// }

// // Mengembalikan hasil dalam format JSON
// header('Content-Type: application/json');
// echo json_encode($hasil);

// $stmt->close();
// $conn->close();
?>

<?php
session_start();

// Panggil fungsi untuk membuat koneksi
include '../database/Riwayat.php';
// Buat objek riwayat
$riwayat = new Riwayat();
try {
    // Koneksi ke database
    $host = 'localhost';
    $dbname = 'ebidan';
    $username = 'root';
    $password = '';

    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $koneksi = new mysqli ($host, $username, $password, $dbname); 
    
    // Step 1: Ambil data gejala dari tabel aturan dan gabungkan dalam array
    $gejalaArray = array();
    $queryAturan = "SELECT kode_gejala FROM aturan";
    $resultAturan = $koneksi->query($queryAturan);

    while ($row = $resultAturan->fetch_assoc()) {
        $gejalaArray = array_merge($gejalaArray, explode(',', $row['kode_gejala']));
    }

    $inputGejala = $_GET['kode_gejala']; // get gejala dari pengguna
    $inputGejalaArray = explode(',', $inputGejala);

    $penyakitYangCocok = array();

    // Step 2 & 3: Looping dan Pencarian Diagnosa
    foreach ($inputGejalaArray as $gejala) {
        foreach ($gejalaArray as $kodeGejala) {
            if ($gejala == $kodeGejala) {
                $queryDiagnosa = "SELECT kode_penyakit FROM aturan WHERE kode_gejala LIKE '%$gejala%'";
                $resultDiagnosa = $koneksi->query($queryDiagnosa);

                while ($row = $resultDiagnosa->fetch_assoc()) {
                    $penyakitYangCocok[] = $row['kode_penyakit'];
                }
            }
        }
    }

    // Menghapus duplikat penyakit
    $penyakitYangCocok = array_unique($penyakitYangCocok);
    
    // Simpan data konsultasi ke tabel riwayat_konsultasi
    $user_id = $_SESSION['id'];
    $nama_user = $_SESSION['nama'];
    $tanggal = date('Y-m-d H:i:s'); // Tanggal dan waktu saat ini
    $kode_penyakit = implode(',', $penyakitYangCocok);

    $simpanRiwayat = $koneksi->query("INSERT INTO riwayat_konsultasi (id_user, nama_user, kode_gejala, kode_penyakit, tanggal)
    VALUES('$user_id', '$nama_user', '$inputGejala', '$kode_penyakit', '$tanggal')");    
   
    if ($simpanRiwayat) {
?>
<script>
    window.location.href = "hasil_konsultasi.php?p=" + <?= $koneksi->insert_id ?>;

</script>
<?php
    }
        

} catch (PDOException $e) {
    echo "Koneksi atau eksekusi query gagal: " . $e->getMessage();
}
?>
