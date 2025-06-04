<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">Cari Siswa</h3>
        <div class="pull-right box-tools">
          <button class="btn btn-default btn-xs" data-widget="collapse" data-toggle="tooltip" title="Sembunyikan/Tampilkan">
            <i class="glyphicon glyphicon-minus"></i>
          </button>
        </div>
      </div>
      <div class="box-body">
        <form action="" method="post">
          <div class="row">
            <div class="col-md-8 col-xs-12">
              <div class="form-group">
                <input type="text" name="namanisn" class="form-control" placeholder="NISN / NAMA" required value="<?php echo isset($_POST['namanisn']) ? htmlspecialchars($_POST['namanisn']) : ''; ?>">
              </div>
            </div>
            <div class="col-md-4 col-xs-12">
              <div class="form-group">
                <button class="btn btn-success"><i class="glyphicon glyphicon-search"></i> Cari</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<?php
if (!empty($_POST['namanisn'])) {
    $keyword = mysqli_real_escape_string($con, $_POST['namanisn']);
    $query = mysqli_query($con, "SELECT * FROM siswa WHERE nisn LIKE '%$keyword%' OR nama LIKE '%$keyword%'");
    $jumlah = mysqli_num_rows($query);

    if ($jumlah == 1) {
        // Jika hanya satu siswa ditemukan, langsung tampilkan form pelanggaran
        $siswa = mysqli_fetch_array($query);
        $kelas = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kelas WHERE c_kelas='".$siswa['c_kelas']."'"));
        ?>
        <form action="<?php echo $basegu; ?>g-control/<?php echo md5('inputpel'); ?>/accesss" method="post">
        <input type="hidden" name="pilihsis[]" value="<?php echo $siswa['c_siswa']; ?>">
        <div class="row">
          <div class="col-xs-12 col-md-12 col-lg-12">
            <div class="box box-info">
              <div class="box-header with-border">
                <h3 class="box-title">Siswa Yang Melanggar</h3>
              </div>
              <div class="box-body">
                <table class="table table-bordered table-hover">
                  <tr>
                    <th>NISN</th>
                    <th>NAMA</th>
                    <th>KELAS</th>
                  </tr>
                  <tr>
                    <td><?php echo $siswa['nisn']; ?></td>
                    <td><?php echo $siswa['nama']; ?></td>
                    <td><?php echo $kelas['kelas']; ?></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- Form pelanggaran langsung ditulis di sini -->
        <div class="row">
          <div class="col-xs-12">
            <div class="box box-primary">
              <div class="box-header with-border">Pilih Pelanggaran Yang Dilakukan Siswa Tersebut</div>
              <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                  <?php $smkkat=mysqli_query($con,"SELECT * FROM katbenpel order by katbenpel asc ");while($akhkat=mysqli_fetch_array($smkkat)){ ?>
                    <li><a href="#<?php echo $akhkat['c_katbenpel']; ?>" data-toggle="tab"><?php echo $akhkat['katbenpel']; ?></a></li>
                    <?php } ?>
                    <li class="pull-right">
                    <button class="btn btn-success" style="margin-left:10px;">
                      Selesaikan <i class="glyphicon glyphicon-ok"></i>
                    </button>
                    </li>
                  </ul>
                <div class="tab-content">
                  <?php $ngikat=mysqli_query($con,"SELECT * FROM katbenpel order by katbenpel asc "); while($ngi=mysqli_fetch_array($ngikat)){ ?>
                    <div class="tab-pane" id="<?php echo $ngi['c_katbenpel']; ?>">
                      <table class="table table-bordered table-hover">
                        <thead>
                          <tr>
                            <th>BENTUK PELANGGARAN</th>
                            <th>BOBOT</th>
                            <th>OPSI</th>
                          </tr>
                        </thead>
                        <tbody>
                          <?php $smkben=mysqli_query($con,"SELECT * FROM benpel where c_katbenpel='$ngi[c_katbenpel]' order by bobot asc ");while($akhben=mysqli_fetch_array($smkben)){ ?>
                          <tr>
                            <td><?php echo $akhben['benpel']; ?></td>
                            <td><?php echo $akhben['bobot']; ?></td>
                            <td><label><input type="checkbox" name="pilihben[]" value="<?php echo $akhben['c_benpel']; ?>"> Melanggar</label></td>
                          </tr>
                          <?php } ?>
                        </tbody>
                      </table>
                    </div>
                  <?php } ?>
                  <div class="tab-pane" id="selesai">
                    <p>Pastikan Anda Telah Memilih Pelanggaran Yang Siswa Lalukan</p>
                    <button class="btn btn-success">Selesaikan <i class="glyphicon glyphicon-ok"></i></button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        </form>
        <?php
    } elseif ($jumlah > 1) {
        // Jika lebih dari satu siswa ditemukan, tampilkan daftar untuk memilih
        ?>
        <div class="row">
          <div class="col-xs-12 col-md-12 col-lg-12">
            <div class="box box-info">
              <div class="box-header with-border">
                <h3 class="box-title">Pilih Siswa</h3>
              </div>
              <div class="box-body">
                <form action="" method="post">
                  <input type="hidden" name="namanisn" value="<?php echo htmlspecialchars($keyword); ?>">
                  <table class="table table-bordered table-hover">
                    <tr>
                      <th>Pilih</th>
                      <th>NISN</th>
                      <th>Nama</th>
                      <th>Kelas</th>
                    </tr>
                    <?php while($siswa = mysqli_fetch_array($query)) {
                        $kelas = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kelas WHERE c_kelas='".$siswa['c_kelas']."'"));
                    ?>
                    <tr>
                      <td><button type="submit" name="pilihsis" value="<?php echo $siswa['c_siswa']; ?>" class="btn btn-primary btn-xs">Pilih</button></td>
                      <td><?php echo $siswa['nisn']; ?></td>
                      <td><?php echo $siswa['nama']; ?></td>
                      <td><?php echo $kelas['kelas']; ?></td>
                    </tr>
                    <?php } ?>
                  </table>
                </form>
              </div>
            </div>
          </div>
        </div>
        <?php
    } else {
        echo '<div class="alert alert-danger">Siswa tidak ditemukan.</div>';
    }
} elseif (!empty($_POST['pilihsis'])) {
    // Jika siswa dipilih dari daftar, tampilkan form pelanggaran
    $c_siswa = mysqli_real_escape_string($con, $_POST['pilihsis']);
    $siswa = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM siswa WHERE c_siswa='$c_siswa'"));
    $kelas = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kelas WHERE c_kelas='".$siswa['c_kelas']."'"));
    ?>
  <form action="<?php echo $basegu; ?>g-control/<?php echo md5('inputpel'); ?>/accesss" method="post">
    <input type="hidden" name="pilihsis[]" value="<?php echo $siswa['c_siswa']; ?>">
    <div class="row">
      <div class="col-xs-12 col-md-12 col-lg-12">
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Siswa Yang Melanggar</h3>
          </div>
          <div class="box-body">
            <table class="table table-bordered table-hover">
              <tr>
                <th>NISN</th>
                <th>NAMA</th>
                <th>KELAS</th>
              </tr>
              <tr>
                <td><?php echo $siswa['nisn']; ?></td>
                <td><?php echo $siswa['nama']; ?></td>
                <td><?php echo $kelas['kelas']; ?></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
    <!-- Form pelanggaran langsung ditulis di sini -->
    <div class="row">
      <div class="col-xs-12">
        <div class="box box-primary">
          <div class="box-header with-border">Pilih Pelanggaran Yang Dilakukan Siswa Tersebut</div>
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <?php $smkkat=mysqli_query($con,"SELECT * FROM katbenpel order by katbenpel asc ");while($akhkat=mysqli_fetch_array($smkkat)){ ?>
                <li><a href="#<?php echo $akhkat['c_katbenpel']; ?>" data-toggle="tab"><?php echo $akhkat['katbenpel']; ?></a></li>
              <?php } ?>
              <li><a href="#selesai" data-toggle="tab">Selesai</a></li>
            </ul>
            <div class="tab-content">
              <?php $ngikat=mysqli_query($con,"SELECT * FROM katbenpel order by katbenpel asc "); while($ngi=mysqli_fetch_array($ngikat)){ ?>
                <div class="tab-pane" id="<?php echo $ngi['c_katbenpel']; ?>">
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>BENTUK PELANGGARAN</th>
                        <th>BOBOT</th>
                        <th>OPSI</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php $smkben=mysqli_query($con,"SELECT * FROM benpel where c_katbenpel='$ngi[c_katbenpel]' order by bobot asc ");while($akhben=mysqli_fetch_array($smkben)){ ?>
                      <tr>
                        <td><?php echo $akhben['benpel']; ?></td>
                        <td><?php echo $akhben['bobot']; ?></td>
                        <td><label><input type="checkbox" name="pilihben[]" value="<?php echo $akhben['c_benpel']; ?>"> Melanggar</label></td>
                      </tr>
                      <?php } ?>
                    </tbody>
                  </table>
                </div>
              <?php } ?>
              <div class="tab-pane" id="selesai">
                <p>Pastikan Anda Telah Memilih Pelanggaran Yang Siswa Lalukan</p>
                <button class="btn btn-success">Selesaikan <i class="glyphicon glyphicon-ok"></i></button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
    <?php
}
?>


