<div class="row">
  <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
    <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
      <div class="widget-user-header bg-green">
        <p class="text-center" style="font-size: 20px;border-bottom: 1px solid #fff;">Wali Murid Dari Siswa</p>
        <div class="widget-user-image">
          <img class="img-circle" src="<?php echo $base; ?>php/img/siswa.png" alt="User Avatar">
        </div>
              <!-- /.widget-user-image -->
        <h4 class="widget-user-username" style="font-size: 20px;"><?php echo $siswa['nama']; ?></h4>
        <h5 class="widget-user-desc"><?php echo $kelas['kelas']; ?></h5>
      </div>
      <div class="box-footer no-padding">
        <ul class="nav nav-stacked">
            <div class="panel-group" id="accordion">
            <!-- Accordion 1 -->
            <div class="panel panel-default">
              <div class="panel-heading">
              <h4 class="panel-title">
              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
              <?php 
              $smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_siswa='$or[c_siswa]' order by at desc ");
              $totalPelanggaran = mysqli_num_rows($smk);
              $totalBobot = 0;
              while($akh=mysqli_fetch_array($smk)){
                $ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
                $totalBobot += $ben['bobot'];
                }
                ?>
                Total Pelanggaran
                </a>
                </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                <?php if ($totalPelanggaran > 0) { ?>
                  Ananda <?php echo $siswa['nama']; ?> 
                  <br>
                  melakukan pelanggaran sebanyak <?php echo $totalPelanggaran; ?>x (<?php echo $totalBobot; ?> poin)
                  <br>
                  <p>dengan rincian sebagai berikut:</p>
                  <ol>
                  <?php 
                  $smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_siswa='$or[c_siswa]' order by at desc ");
                  while($akh=mysqli_fetch_array($smk)){
                    $ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
                  ?>
                    <li><?php echo $ben['benpel']; ?> - Poin: <?php echo $ben['bobot']; ?></li>
                  <?php } ?>
                  </ol>
                <?php } else { ?>
                  Ananda <?php echo $siswa['nama']; ?> tidak melakukan pelanggaran.
                <?php } ?>
                </div>
            </div>
            </div>
            
            <!-- Accordion 2 -->
            <div class="panel panel-default">
            <div class="panel-heading">
            <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
            Poin Pelanggaran
            </a>
            </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
            <div class="panel-body">
            <table class="table table-hover">
            <thead>
            <tr>
            <th>#</th>
            <th>Pelanggaran</th>
            <th>Bobot</th>
            </tr>
            </thead>
            <tbody>
            <?php 
            $benpelData = mysqli_query($con, "SELECT * FROM benpel");
            $vr = 1;
            while ($ben = mysqli_fetch_array($benpelData)) {
            ?>
            <tr>
            <td><?php echo $vr; ?></td>
            <td><?php echo $ben['benpel']; ?></td>
            <td><?php echo $ben['bobot']; ?></td>
            </tr>
            <?php $vr++; } ?>
            </tbody>
            </table>
            </div>
            </div>
            </div>
            </div>
        </ul>
      </div>
    </div>
          <!-- /.widget-user -->
  </div>
  <div class="col-xs-12 col-md-8 col-lg-8">
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">&nbsp;Pelanggaran <?php echo $siswa['nama'] ?></h3><p class="pull-right"><a target="_blank" class="btn bg-blue btn-sm" href="<?php echo $basewa.'print/printpelsiswa?siswa='.$siswa['c_siswa'].''; ?>"><i class="glyphicon glyphicon-print"></i> Print</a></p>
      </div>
      <div class="box-body">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>#</th>
              <th>Pelanggaran</th>
              <th>Guru</th>
              <th>Tanggal</th>
              <th>Bobot</th>
            </tr>
          </thead>
          <tbody>
<?php $smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_siswa='$or[c_siswa]' order by at desc ");$vr=1;while($akh=mysqli_fetch_array($smk)){
$gur=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM guru where c_guru='$akh[c_guru]' "));
$ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
?>                
            <tr>
              <td><?php echo $vr; ?></td>
              <td><?php echo $ben['benpel']; ?></td>
              <td><?php echo $gur['nama']; ?></td>
              <td><?php echo date("d/m/Y", strtotime($akh['at'])); ?></td>
              <td><?php echo $ben['bobot']; ?></td>
            </tr>
<?php $vr++; } ?>
          </tbody>
        </table>
      </div>
            <!-- /.box-body -->
  </dsiv>
</div>
</div>
