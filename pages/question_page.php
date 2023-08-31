<?php
    include '../database/Diagnosa.php';    
    $dgs = new Diagnosa();
    $data = $dgs->tampilData();
    include 'header_baru.php';
 ?>
<head>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container-fluid ml-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="text-center">Konsultasi Penyakit</h3>
            </div>
            <div class="scroll-box">
                <div class="question mt-5">
                    <h5 id="question-text"><?php echo $data[0]['nama_gejala']; ?></h5>
                    <div class="answers">
                        <button class="btn btn-success" onclick="nextQuestion(true)">Ya</button>
                        <button class="btn btn-danger" onclick="nextQuestion(false)">Tidak</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row footer">
        <div class="col text-center">
            <p>2023 &copy; All Right Reserved Apps E-Bidan</p>
        </div>
    </div>

    <!-- Bootstrap JS from CDN -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        var questions = <?php echo json_encode($data); ?>;
        var currentQuestionIndex = 0;
        var jawabanYa = [];

        function nextQuestion(answer) {
            if (answer === true) {
                jawabanYa.push(questions[currentQuestionIndex]['kode_gejala']);
            }

            currentQuestionIndex++;
            if (currentQuestionIndex < questions.length) {
                var questionText = document.getElementById('question-text');
                questionText.textContent = questions[currentQuestionIndex]['nama_gejala'];
            } else {
                var hasil = [];
                if (jawabanYa.length > 0) {
                    var kodeGejala = jawabanYa.join(",");
                    var xhr = new XMLHttpRequest();
                    xhr.onreadystatechange = function() {
                        if (xhr.readyState === 4 && xhr.status === 200) {
                            hasil = JSON.parse(xhr.responseText);
                            if (hasil.length > 0) {
                                var kodePenyakit = hasil[0]['kode_penyakit'];
                                alert('Hasil konsultasi: Kode Penyakit: ' + kodePenyakit);
                            } else {
                                alert('Tidak ada penyakit yang cocok dengan gejala yang dipilih.');
                            }
                        }
                    };
                    // xhr.open("GET", "proses_konsultasi.php?kode_gejala=" + kodeGejala, true);
                    // xhr.send();
                   
                    window.location.href = "proses_konsultasi.php?kode_gejala=" + kodeGejala;
                } else {
                    alert('Tidak ada jawaban "Ya" yang dipilih.');
                }

                // window.location.href = 'hasil_konsultasi.php';
            }
        }
    </script>
</body>
</html>