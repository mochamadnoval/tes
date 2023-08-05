<?php

class Diagnosa
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

    public function tampilData()
    {
        $sql = "SELECT * FROM gejala ORDER BY id";
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}

?>