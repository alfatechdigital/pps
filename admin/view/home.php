<?php
$jsi=mysqli_query($con,"SELECT * FROM siswa ");$hsi=mysqli_num_rows($jsi);
$jgu=mysqli_query($con,"SELECT * FROM guru ");$hgu=mysqli_num_rows($jgu);
$jwa=mysqli_query($con,"SELECT * FROM orangtua ");$hwa=mysqli_num_rows($jwa);
$jpe=mysqli_query($con,"SELECT * FROM pelanggaran ");$hpe=mysqli_num_rows($jpe);
?>
<script type="text/javascript" src="<?php echo $basead; ?>js/jquery.min.js"></script>
<script src="<?php echo $basead; ?>js/highcharts.js"></script>
<script type="text/javascript">
$(function () {
    var chart;
    $(document).ready(function() {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'containertm', 
                type: 'column',  
                marginRight: 0,
                marginBottom: 50
            },
            title: {
                text: '',
                x: -20 
            },
            subtitle: {
                text: '',
                x: -20
            },
            xAxis: {  
                categories: [
                'Total Pelanggaran',             
                ]
            },
            yAxis: {
                title: {
                    text: ''
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: { 
                formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                        this.x +': '+ this.y ;
                }
            },
            legend: {
                layout: 'vertical',
                align: 'left',
                verticalAlign: 'top',
                x: -10,
                y: 0,
                borderWidth: 0
            },
            series: [
            <?php $kel=mysqli_query($con,"SELECT * FROM kelas order by kelas asc "); while($dkel=mysqli_fetch_array($kel)){ $jum=mysqli_query($con,"SELECT * FROM pelanggaran where c_kelas='$dkel[c_kelas]' "); $jumpel=mysqli_num_rows($jum); ?>
            {  
                name: '<?php echo $dkel['kelas']; ?>',
                data: 
                [
                  <?php  echo ''.$jumpel.','; ?>
                ],
            },
            <?php } ?>
            ]
        });
    });
    
});
</script>
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="border-bottom: 3px solid #5bc0de;">
            <a href="<?php echo $basead; ?>siswa"><span class="info-box-icon bg-aqua"><i class="glyphicon glyphicon-education"></i></span></a>

            <div class="info-box-content">
              <span class="info-box-text">Siswa</span>
              <span class="info-box-number"><?php echo $hsi; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="border-bottom: 3px solid #5cb85c;">
            <a href="<?php echo $basead; ?>guru"><span class="info-box-icon bg-green"><i class="glyphicon glyphicon-blackboard"></i></span></a>

            <div class="info-box-content">
              <span class="info-box-text">Guru</span>
              <span class="info-box-number"><?php echo $hgu; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="border-bottom: 3px solid #f0ad4e;">
            <a href="<?php echo $basead; ?>walimurid"><span class="info-box-icon bg-yellow"><i class="glyphicon glyphicon-user"></i></span></a>

            <div class="info-box-content">
              <span class="info-box-text">Wali Murid</span>
              <span class="info-box-number"><?php echo $hwa; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box" style="border-bottom: 3px solid #d9534f;">
            <a href="<?php echo $basead; ?>pelanggaransiswa"><span class="info-box-icon bg-red"><i class="glyphicon glyphicon-remove-circle"></i></span></a>

            <div class="info-box-content">
              <span class="info-box-text">Pelanggaran</span>
              <span class="info-box-number"><?php echo $hpe; ?></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
<div class="judul">
  Top 4 Pelanggaran Siswa
</div>
<div class="row">
<?php
// Ambil data pelanggaran siswa beserta detail siswa dan kelas
$weights = [1]; // Bobot 100% untuk total bobot pelanggaran (jika hanya 1 kriteria)
$kriteria = ['jb']; // 'jb' = jumlah bobot pelanggaran

// Ambil semua data pelanggaran siswa untuk normalisasi
$all_siswa = [];
$all_values = [];
$q = mysqli_query($con, "SELECT c_siswa, SUM(bobot) as jb FROM pelanggaran GROUP BY c_siswa");

// Cek apakah query berhasil dijalankan
if($q){
  while($row = mysqli_fetch_assoc($q)) {
    $all_siswa[$row['c_siswa']] = $row;
    foreach($kriteria as $idx => $k) {
      $all_values[$k][] = $row[$k];
    }
  }
} else {
  // Tampilkan pesan error jika query gagal
  echo "<div style='color:red;'>Query error: " . mysqli_error($con) . "</div>";
}

// Normalisasi data (karena cost, gunakan nilai minimum dibagi nilai siswa)
$normal = [];
foreach($all_siswa as $cid => $data) {
  foreach($kriteria as $idx => $k) {
    $min = min($all_values[$k]);
    $normal[$cid][$k] = $min > 0 ? $min / ($data[$k] > 0 ? $data[$k] : 1) : 0;
  }
}

// Hitung skor SAW untuk setiap siswa
$saw_score = [];
foreach($normal as $cid => $data) {
  $score = 0;
  foreach($kriteria as $idx => $k) {
    $score += $weights[$idx] * $data[$k];
  }
  $saw_score[$cid] = $score;
}

// Urutkan semua siswa berdasarkan skor SAW
arsort($saw_score);

// Tampilkan semua peringkat siswa berdasarkan SAW
$rank = 1;
foreach($saw_score as $cid => $score) {
  $sis = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM siswa WHERE c_siswa='$cid' "));
  $kel = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kelas WHERE c_kelas='{$sis['c_kelas']}' "));
  $hpps = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(bobot) as jb FROM pelanggaran WHERE c_siswa='$cid' "));
?>
  <div class="col-md-3">
  <div class="box box-primary">
    <div class="box-body box-profile">
    <h4 class="profile-username text-center" style="font-size: 16px;">
      <?php echo $rank . ". " . $sis['nama']; ?>
    </h4>
    <p class="text-muted text-center"><?php echo $kel['kelas']; ?></p>
    <ul class="list-group list-group-unbordered">
      <li class="list-group-item">
      <?php if($hpps['jb']>20){ $style='style="font-size: 28px;margin-top: -10px;color:#d9534f;"'; }else{ $style='style="font-size: 28px;margin-top: -10px;"'; } ?>
      <b>Poin Pelanggaran<a class="pull-right" <?php echo $style.'>'.$hpps['jb']; ?></a></b>
      </li>
    </ul>
    <a href="<?php echo $basead; ?>lihatpelanggaransiswa/<?php echo $cid; ?>" class="btn btn-primary btn-block"><b>Lihat Pelanggaran</b></a>
    </div>
  </div>
  </div>
<?php
  $rank++;
}
?>
</div>
<div class="row">
  <div class="col-md-4">
    <div class="box">
      <div class="box-header">
        <p>Top 5 Pelanggaran Yang Sering Dilakukan</p>
        <div class="box-tools">
          <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="glyphicon glyphicon-minus"></i></button>
        </div>
      </div>
      <div class="box-body">
      <table class="table table-hover">
        <thead></thead>
        <tbody>
    <?php $vr=1; $pyd=mysqli_query($con,"SELECT c_benpel, count(c_benpel) as bp from pelanggaran group by c_benpel order by bp desc limit 5 ");while($hpyd=mysqli_fetch_array($pyd)){
    $ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$hpyd[c_benpel]' "));
    ?>                
          <tr>
            <td><?php echo $ben['benpel']; ?></td>
            <td><?php echo $hpyd['bp']; ?></td>
          </tr>
    <?php $vr++; } ?>
        </tbody>
      </table>
      </div>
    </div>
  </div>
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box">
      <div class="box-header">
        <h5 class="text-center"></h5>
      </div>
      <div class="box-body">
      <table>
        <div id="containertm" style="width:90%;"></div>
      </table>
      </div>
    </div>
  </div>
</div>





