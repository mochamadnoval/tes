<?php
    include '../database/Diagnosa.php';    
    $dgs = new Diagnosa();
    $data = $dgs->tampilData();
    include 'header_baru.php';
 ?>
<head>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .container-fluid {
            max-width: 800px;
        }

        .box {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
        }

        .box-header {
            background-color: #f0f0f0;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }

        .text-center {
            text-align: center;
        }

        .scroll-box {
            overflow: scroll;
            height: 467px;
        }

        .input-group {
            margin-bottom: 10px;
        }

        .btn {
            margin-top: 20px;
        }
    </style>
</head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Konsultasi Penyakit</title>
    <!-- Bootstrap CSS from CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

    <div class="container-fluid ml-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="text-center">Konsultasi Penyakit</h3>
            </div>
            <center>
                <br>
                <form class="col-12" method="POST" action="proses_konsultasi.php">
                    <div style="overflow: scroll; height: 467px;">
                        <?php
                        foreach ($data as $row) {
                        ?>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                        <input type="checkbox" aria-label="Checkbox for following text input" value="<?= $row['kode_gejala'] ?>" name="<?= $row['id'] ?>">
                                    </div>
                                </div>
                                <input type="text" class="form-control" aria-label="Text input with checkbox" value="<?= $row['nama_gejala'] ?>" readonly>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                    <input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="submit">
                </form>
            </center>
        </div>
    </div>

    <!-- Bootstrap JS from CDN -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>


