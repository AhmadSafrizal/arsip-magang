    <!doctype html>
    <html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>WRK Batulicin</title>
        <link rel="shortcut icon" href="assets/img/lo.png">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- <link rel="stylesheet" href="assets/css/bootstrap.min.css"> -->
        <!-- <link rel="stylesheet" href="assets/css/background.css"> -->
        <link rel="stylesheet" href="assets/css/cs.css">

    </head>

    <body>
        <div class="row">
            <div class="col-lg-12 navbar-header">
                <center>
                    <img src="assets/img/logo/a.png" alt="WRK" class="shadow-lg">
                </center>
            </div>
            <div class="col-lg-12 text">
                <center>
                    <h1>Arsip Digital <strong>WRK Batulicin</strong></h1>
                    <p>Sistem informasi manajemen file WIKA Rekon</p>
                </center>
            </div>
        </div>
        <div class="container">
            <?php
            $koneksi = mysqli_connect("localhost", "root", "", "database_proyek");
            $proyek = mysqli_query($koneksi, "SELECT * FROM proyek WHERE status='Tampil' ORDER BY id ASC");
            while ($p = mysqli_fetch_array($proyek)) {
            ?>
                <div class="card">
                    <div class="box">
                        <div class="content" style="width: 100%;">
                            <h3><?php echo $p['lokasi'] ?></h3>
                            <p><?php echo $p['keterangan'] ?></p>
                            <a href="arsip<?php echo $p['id'] ?>/login.php">Login</a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
        <div style="width: 100vw; display: flex; justify-content: flex-end;">
            <a href="../index.php" style="margin-right: 5%; margin-bottom: 5%; background: #Be2525; padding: 8px 20px; border-radius: 5px;text-decoration: none; color: white;">Home</a>
        </div>
        <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
    </body>

    </html>