<?php
include "koneksi.php";
session_start();
if ($_SESSION['level'] == "") {
    header("location:login.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Wali Murid</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Sistem Pelanggaran Siswa</a>
        <div class="ml-auto">
            <span class="navbar-text text-white mr-3">Halo, <?php echo $_SESSION['nama']; ?></span>
            <a class="btn btn-outline-light" href="logout.php">Logout</a>
        </div>
    </nav>

    <div class="container mt-4">
        <h2>Selamat Datang, <?php echo $_SESSION['nama']; ?></h2>
        <hr>

        <!-- MENU TAMBAHAN -->
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link <?php if (!isset($_GET['menu']) || $_GET['menu'] == 'beranda') echo 'active'; ?>" href="?menu=beranda">Beranda</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?php if (isset($_GET['menu']) && $_GET['menu'] == 'benpel') echo 'active'; ?>" href="?menu=benpel">Data Bentuk Pelanggaran</a>
            </li>
        </ul>

        <div class="mt-4">
            <?php
            // Menu Beranda Default
            if (!isset($_GET['menu']) || $_GET['menu'] == 'beranda') {
                echo "<h4>Informasi Umum</h4>";
                echo "<p>Gunakan menu untuk melihat data pelanggaran siswa dan poin-poin pelanggaran.</p>";
            }

            // Menu Data Bentuk Pelanggaran
            if (isset($_GET['menu']) && $_GET['menu'] == 'benpel') {
                echo "<h4>Data Bentuk Pelanggaran & Poin</h4>";
                echo '<table class="table table-bordered table-hover">';
                echo '<thead class="thead-dark">
                        <tr>
                            <th>No</th>
                            <th>Kategori</th>
                            <th>Bentuk Pelanggaran</th>
                            <th>Poin</th>
                        </tr>
                      </thead><tbody>';

                $no = 1;
                $query = mysqli_query($conn, "SELECT benpel.*, katbenpel.katbenpel FROM benpel 
                                              JOIN katbenpel ON benpel.c_katbenpel = katbenpel.c_katbenpel");
                while ($data = mysqli_fetch_array($query)) {
                    echo "<tr>
                            <td>{$no}</td>
                            <td>{$data['katbenpel']}</td>
                            <td>{$data['benpel']}</td>
                            <td>{$data['bobot']}</td>
                          </tr>";
                    $no++;
                }

                echo '</tbody></table>';
            }
            ?>
        </div>
    </div>

    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
