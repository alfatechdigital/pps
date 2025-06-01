<div class="row">
  <div class="col-xs-12 col-md-12 col-lg-12">
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">&nbsp;Daftar Bentuk Pelanggaran</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body table-responsive">
        <table id="example1" class="table table-bordered table-hover">
          <thead>
            <tr>
              <th width="1%">NO</th>
              <th>BENTUK PELANGGARAN</th>
              <th>BOBOT</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $benpel = mysqli_query($con, "SELECT benpel.benpel, benpel.bobot FROM benpel ORDER BY benpel.benpel ASC");
            if (!$benpel) {
                echo "Error: " . mysqli_error($con);
                exit;
            }
            $no = 1;
            while ($row = mysqli_fetch_array($benpel)) {
            ?>
              <tr>
                <td><?php echo $no; ?></td>
                <td><?php echo $row['benpel']; ?></td>
                <td><?php echo $row['bobot']; ?></td>
              </tr>
            <?php $no++;
            } ?>
          </tbody>
        </table>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
  <!-- /.col -->
</div>
<!-- /.row -->
