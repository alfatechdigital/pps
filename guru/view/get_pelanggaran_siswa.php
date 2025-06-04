<?php
if(isset($_POST['c_siswa'])) {
    $c_siswa = mysqli_real_escape_string($con, $_POST['c_siswa']);
    $q = mysqli_query($con, "SELECT p.c_pelanggaran, b.benpel, p.at FROM pelanggaran p LEFT JOIN benpel b ON p.c_benpel=b.c_benpel WHERE p.c_siswa='$c_siswa' ORDER BY p.at DESC");
    if(mysqli_num_rows($q) > 0) {
        echo '<option value="">-- Pilih Pelanggaran --</option>';
        while($d = mysqli_fetch_array($q)) {
            echo '<option value="'.$d['c_pelanggaran'].'">'.htmlspecialchars($d['benpel']).' ('.date("d/m/Y", strtotime($d['at'])).')</option>';
        }
    } else {
        echo '<option value="">Tidak ada pelanggaran</option>';
    }
}
?>