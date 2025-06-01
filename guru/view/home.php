<?php $kelkel=mysqli_query($con,"SELECT * FROM kelas order by kelas asc "); ?>
<script type="text/javascript" src="<?php echo $basegu; ?>js/jquery.min.js"></script>
<script src="<?php echo $basegu; ?>js/highcharts.js"></script>
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
<style type="text/css">.judul{width: 100%; background-color: #FFF; padding: 10px;margin-bottom: 10px; }</style>
<br><hr><br>
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
<div class="row">
<?php
// 1. Ambil data siswa dan total bobot pelanggaran
$pps = mysqli_query($con, "SELECT c_siswa, sum(bobot) as jb FROM pelanggaran GROUP BY c_siswa");

// 2. Simpan data ke array untuk proses SAW
$data_siswa = [];
while ($hpps = mysqli_fetch_array($pps)) {
  // Ambil data siswa
  $sis = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM siswa WHERE c_siswa='$hpps[c_siswa]' "));
  // Ambil data kelas
  $kel = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kelas WHERE c_kelas='$sis[c_kelas]' "));
  // Simpan ke array
  $data_siswa[] = [
    'c_siswa' => $hpps['c_siswa'],
    'nama' => $sis['nama'],
    'kelas' => $kel['kelas'],
    'jb' => $hpps['jb']
  ];
}

// 3. Normalisasi nilai bobot pelanggaran
// Cari nilai maksimum bobot pelanggaran
$max_jb = 0;
foreach ($data_siswa as $ds) {
  if ($ds['jb'] > $max_jb) {
    $max_jb = $ds['jb'];
  }
}

// 4. Hitung nilai SAW untuk tiap siswa
// 4. Hitung nilai SAW untuk tiap siswa
// Bobot kriteria (misal: 12 kriteria, bobot sesuai urutan)
$bobot_kriteria = [0.05, 0.02, 0.01, 0.10, 0.15, 0.01, 0.02, 0.15, 0.01, 0.01, 0.04, 0.01];

// Ambil semua kriteria pelanggaran
$kriteria = [];
$qkriteria = mysqli_query($con, "SELECT * FROM benpel ORDER BY c_benpel ASC LIMIT 12");
while ($kr = mysqli_fetch_array($qkriteria)) {
  $kriteria[] = $kr['c_benpel'];
}

// Siapkan array untuk nilai minimum tiap kriteria (untuk normalisasi cost)
$min_kriteria = array_fill(0, count($kriteria), PHP_INT_MAX);

// Hitung total pelanggaran per kriteria untuk tiap siswa
foreach ($data_siswa as $key => $ds) {
  $nilai_kriteria = [];
  foreach ($kriteria as $idx => $c_benpel) {
    // Hitung jumlah pelanggaran siswa ini untuk kriteria ke-$idx
    $q = mysqli_query($con, "SELECT COUNT(*) as jml FROM pelanggaran WHERE c_siswa='{$ds['c_siswa']}' AND c_benpel='$c_benpel'");
    $h = mysqli_fetch_array($q);
    $nilai_kriteria[$idx] = $h['jml'];
    // Simpan nilai minimum untuk normalisasi cost
    if ($h['jml'] < $min_kriteria[$idx]) {
      $min_kriteria[$idx] = $h['jml'];
    }
  }
  $data_siswa[$key]['nilai_kriteria'] = $nilai_kriteria;
}

// Hitung nilai SAW untuk tiap siswa (normalisasi cost: min/nilai)
foreach ($data_siswa as $key => $ds) {
  $nilai_saw = 0;
  foreach ($ds['nilai_kriteria'] as $idx => $nilai) {
    // Normalisasi cost (semakin kecil semakin baik): min/nilai
    if ($nilai > 0) {
      $norm = $min_kriteria[$idx] / $nilai;
    } else {
      // Jika tidak ada pelanggaran, beri nilai normalisasi 1 (terbaik)
      $norm = 1;
    }
    // Kalikan dengan bobot kriteria
    $nilai_saw += $norm * $bobot_kriteria[$idx];
  }
  $data_siswa[$key]['nilai_saw'] = $nilai_saw;
}

// 5. Urutkan siswa berdasarkan nilai SAW tertinggi
usort($data_siswa, function($a, $b) {
  return $b['nilai_saw'] <=> $a['nilai_saw'];
});

// 6. Tampilkan semua peringkat siswa
?>
<div class="col-md-12">
  <div class="box box-primary">
  <div class="box-header">
    <h4 class="text-center">Peringkat Pelanggaran Siswa (Metode SAW)</h4>
  </div>
  <div class="box-body">
    <table class="table table-bordered table-striped">
    <thead>
      <tr>
      <th>Peringkat</th>
      <th>Nama</th>
      <th>Kelas</th>
      <!-- <th>Poin Pelanggaran</th> -->
      <th>Nilai SAW</th>
      <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
    <?php
    $peringkat = 1;
    foreach ($data_siswa as $ds) {
    ?>
      <tr>
      <td><?php echo $peringkat++; ?></td>
      <td><?php echo $ds['nama']; ?></td>
      <td><?php echo $ds['kelas']; ?></td>
      <!-- <td><?php echo $ds['jb']; ?></td> -->
      <td><?php echo round($ds['nilai_saw'], 3); ?></td>
      <td>
        <a href="<?php echo $basegu; ?>lihatpelanggaransiswa/<?php echo $ds['c_siswa']; ?>/_" class="btn btn-primary btn-xs">Lihat Pelanggaran</a>
      </td>
      </tr>
    <?php } ?>
    </tbody>
    </table>
  </div>
  </div>
</div>






