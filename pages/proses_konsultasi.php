<?php
// Koneksi ke database
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

// Mendapatkan kode gejala dari parameter URL
$kodeGejala = $_GET['kode_gejala'];
// Menggunakan prepared statement untuk mencegah SQL injection
$stmt = $conn->prepare("SELECT kode_penyakit FROM aturan WHERE kode_gejala IN (?)");
$stmt->bind_param("s", $kodeGejala);
$stmt->execute();
$result = $stmt->get_result();

$hasil = [];
while ($row = $result->fetch_assoc()) {
    $hasil[] = $row;
}

// Mengembalikan hasil dalam format JSON
header('Content-Type: application/json');
echo json_encode($hasil);

$stmt->close();
$conn->close();
?>