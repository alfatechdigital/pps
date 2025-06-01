<div class="row">
  <div class="col-md-4">
    <div class="box box-solid">
      <div class="box-header with-border">
      <h3 class="box-title">Guru</h3>
      <div class="box-tools">
        <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="glyphicon glyphicon-minus"></i></button>
      </div>
      </div>
      <div class="box-body no-padding">
      <ul class="nav nav-pills nav-stacked">
      <?php 
      $guruQuery = mysqli_query($con, "SELECT * FROM guru");
      while($guru = mysqli_fetch_array($guruQuery)) { ?>
          <li <?php if(isset($_GET['q']) && $_GET['q'] == $guru['c_guru']) { echo 'class="active"'; } ?>>
            <a href="<?php echo $basewa; ?>pesan/<?php echo $guru['c_guru']; ?>/_">
            <?php echo $guru['nama']; ?>
            <i class="fa fa-inbox"></i>
            </a>
          </li>
      <?php } ?>
      </ul>
      </div>
    </div>
  </div>
  <div class="col-md-8">
  	<?php if(empty($_GET['q'])){ ?>
  		<div class="box box-primary box-solid direct-chat direct-chat-primary">
        <div class="box-header">
        </div><!-- /.box-header -->
        <div class="box-body">
  
          <div class="direct-chat-messages">
            <div class="direct-chat-msg">
              <img class="direct-chat-img" src="<?php echo $base; ?>theme/dist/img/user1-128x128.jpg" alt="message user image">
              <div class="direct-chat-text">
                Pilih Salah Satu Percakapan...
              </div>
            </div>
          </div>
        </div>
      </div>
    <?php }else {  $gu=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM guru where c_guru='$_GET[q]' "));  ?>
    	<div id="hilang" class="alert alert-info alert-dismissable">Memproses Pesan...</div>
    	<div class="box box-primary box-solid direct-chat direct-chat-primary" style="">
        <div class="box-header">
          <h3 class="box-title">Percakapan Anda Dengan <?php echo $gu['nama']; ?></h3>
          <a class="pull-right"><i class="glyphicon glyphicon-remove-circle"></i></a>
        </div><!-- /.box-header -->
    		<div id="tampildata"></div>
    		<div class="box-footer">
        	<form id="form-kirim" method="post">
            <div class="input-group">
              <span class="input-group-btn">
                <button type="reset" class="btn btn-danger btn-flat"><i class="glyphicon glyphicon-refresh"></i></button>
              </span>
              <input required="" autocomplete="off" type="text" name="pesan" placeholder="Tulis Pesan..." class="form-control">
              <span class="input-group-btn">
                <a id="tombol-simpan" class="btn btn-primary btn-flat">Kirim <i class="glyphicon glyphicon-send"></i></a>
              </span>
            </div>
          </form>
        </div><!-- /.box-footer-->  
      </div>
    <?php } ?>
    
 	</div>
</div>

<!--<div id="hilang" class="alert alert-info alert-dismissable">Memproses Pesan...</div>
