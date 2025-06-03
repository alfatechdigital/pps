<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       <h3 class="box-title">Cari Siswa</h3>
        <div class="pull-right box-tools">
          <button class="btn btn-default btn-xs" data-widget="collapse" data-toggle="tooltip" title="Sembunyikan/Tampilkan">
          <i class="glyphicon glyphicon-minus"></i></button>
        </div>
      </div>
      <div class="box-body">
      <form action="<?php echo $basegu; ?>keinputpelanggaran" method="post">
        <div class="row">
          <div class="col-md-8 col-xs-12">
            <div class="form-group">
              <input type="text" name="namanisn" class="form-control" placeholder="NISN / NAMA" required>
            </div>
          </div>
          <div class="col-md-4 col-xs-12">
            <div class="form-group">
              <button class="btn btn-success"><i class="glyphicon glyphicon-search"></i> Mencari...</button>
            </div>
          </div>
        </div>
      </form>
      </div>
    </div>
  </div>
</div>
<?php if(isset($_GET['s'])){
  $s=str_replace("_", " ", $_GET['s']); 
?>
<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       Hasil Pencarian Nama/Nisn <b><?php echo $s; ?></b> 
      </div>
      <form action="<?php echo $basegu; ?>nextinput" method="post">
      <div class="box-body">
        <table class="table table-bordered table-hover">
          <thead>
          <tr>
            <th>NAMA</th>
            <th>KELAS</th>
            <th>OPSI</th>
          </tr>
          </thead>
          <tbody>
<?php 
$smk=mysqli_query($con,"SELECT * FROM siswa WHERE nisn LIKE '%$s%' OR nama LIKE '%$s%' ORDER BY nama ASC");
$vr=1;$jumakh=mysqli_num_rows($smk);
if($jumakh>0){
  while($akh=mysqli_fetch_array($smk)){ 
    $kelas = mysqli_fetch_array(mysqli_query($con,"SELECT kelas FROM kelas WHERE c_kelas='".$akh['c_kelas']."'"));
?>                
  <tr>
    <td><?php echo $akh['nama']; ?></td>
    <td><?php echo $kelas['kelas']; ?></td>
    <td><label><input type="checkbox" name="pilih[]" value="<?php echo $akh['c_siswa']; ?>">&nbsp;Pilih Siswa</label></td>
  </tr>
<?php $vr++; }
} else {
  echo '<tr><td colspan="3">Tidak Ada Data</td></tr>';
}?> 
          </tbody>
       </table>
      </div>
<?php if($jumakh>0){ ?>
      <div class="box-footer">
        <button class="btn btn-primary">Selanjutnya <i class="glyphicon glyphicon-menu-right"></i></button>
      </div>
<?php } ?>
      </form>
    </div>
  </div>
</div>
<?php } ?>
<?php if($_SESSION['pesan']!=NULL){ $_SESSION['pesan']=''; ?>
<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
       
      </div>
      <div class="box-body">
       SELESAI MENGINPUTKAN PELANGGARAN SISWA
      </div>
    </div>
  </div>
</div>
<?php } ?>
