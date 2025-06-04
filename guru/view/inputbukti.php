
      <div class="row">
        <div class="col-xs-12 col-md-12 col-lg-12">
        <?php if(isset($_SESSION['pesan']) && $_SESSION['pesan']=='hapus'){?>
          <div style="display: none;" class="alert alert-danger alert-dismissable">Pelanggaran Siswa Berhasil Dihapus
             <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          </div>
        <?php } ?>
        <?php $_SESSION['pesan'] = '';?>
          <div class="box box-info">
            <div class="box-header  with-border">
                <h3 class="box-title">&nbsp;History Input Pelanggaran Siswa</h3>
                <span class="pull-right">
                    <a href="<?php echo $basegu; ?>inputpelanggaran" class="btn bg-navy btn-sm">
                        <i class="glyphicon glyphicon-plus"></i> Input Pelanggaran
                    </a>
                    <a target="_blank" class="btn bg-blue btn-sm" href="<?php echo $basegu.'print/printpelguru?guru='.$_SESSION['c_guru'].''; ?>">
                        <i class="glyphicon glyphicon-print"></i> Print
                    </a>
                    
                </span>

                <!-- Modal Upload Bukti -->
                <div class="modal fade" id="uploadBuktiModal" tabindex="-1" role="dialog" aria-labelledby="uploadBuktiLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <form id="formUploadBukti" action="" method="post" enctype="multipart/form-data">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="uploadBuktiLabel">Upload Bukti Pelanggaran</h4>
                                </div>
                                <div class="modal-body">
                                    <!-- <div class="form-group">
                                        <label for="c_siswa">Nama Siswa</label>
                                        <select class="form-control" name="c_siswa" id="c_siswa" required>
                                            <option value="">-- Pilih Siswa --</option>
                                            <?php
                                                $qsiswa = mysqli_query($con, "SELECT * FROM siswa ORDER BY nama ASC");
                                                while($ds = mysqli_fetch_array($qsiswa)){
                                                    echo '<option value="'.$ds['c_siswa'].'">'.$ds['nama'].'</option>';
                                                }
                                            ?>
                                        </select>
                                    </div> -->
                                    <div class="form-group">
                                        <label for="bukti">Upload Bukti (Drag & Drop atau Klik)</label>
                                        <div id="drop-area" style="border:2px dashed #ccc; padding:20px; text-align:center; cursor:pointer;">
                                            <input type="file" name="bukti" id="bukti" style="display:none;" required>
                                            <p id="drop-text"><i class="glyphicon glyphicon-cloud-upload"></i> Drag & Drop file di sini atau klik untuk memilih file</p>
                                            <div id="file-preview"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" name="upload_bukti" class="btn btn-primary"><i class="glyphicon glyphicon-upload"></i> Upload</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <script>
                document.addEventListener('DOMContentLoaded', function() {
                    var dropArea = document.getElementById('drop-area');
                    var fileInput = document.getElementById('bukti');
                    var filePreview = document.getElementById('file-preview');
                    var dropText = document.getElementById('drop-text');

                    dropArea.addEventListener('click', function() {
                        fileInput.click();
                    });

                    dropArea.addEventListener('dragover', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        dropArea.style.background = '#f0f0f0';
                    });

                    dropArea.addEventListener('dragleave', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        dropArea.style.background = '';
                    });

                    dropArea.addEventListener('drop', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        dropArea.style.background = '';
                        if(e.dataTransfer.files.length) {
                            fileInput.files = e.dataTransfer.files;
                            showPreview(e.dataTransfer.files[0]);
                        }
                    });

                    fileInput.addEventListener('change', function() {
                        if(fileInput.files.length) {
                            showPreview(fileInput.files[0]);
                        }
                    });

                    function showPreview(file) {
                        filePreview.innerHTML = '';
                        if(file && file.type.match('image.*')) {
                            var reader = new FileReader();
                            reader.onload = function(e) {
                                filePreview.innerHTML = '<img src="'+e.target.result+'" style="max-width:100%;max-height:150px;margin-top:10px;">';
                            }
                            reader.readAsDataURL(file);
                        } else {
                            filePreview.innerHTML = '<p style="margin-top:10px;">'+file.name+'</p>';
                        }
                    }
                });
                </script>

            <?php
            // Proses upload bukti
            if(isset($_POST['upload_bukti']) && isset($_POST['c_siswa_upload'])) {
                $c_siswa_upload = $_POST['c_siswa_upload'];
                // Ambil nama siswa
                $ds = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM siswa WHERE c_siswa='$c_siswa_upload'"));
                $nama_siswa = preg_replace('/[^a-zA-Z0-9_\-]/', '_', $ds['nama']); // sanitize nama folder

                $uploadDir = __DIR__ . '/../uploads/' . $nama_siswa . '/';
                if(!is_dir($uploadDir)) {
                    mkdir($uploadDir, 0777, true);
                }
                if(isset($_FILES['bukti']) && $_FILES['bukti']['error'] == 0) {
                    $fileName = basename($_FILES['bukti']['name']);
                    $fileTmp = $_FILES['bukti']['tmp_name'];
                    $fileExt = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
                    $allowed = array('jpg','jpeg','png','pdf','doc','docx');
                    if(in_array($fileExt, $allowed)) {
                        $newName = uniqid('bukti_', true) . '.' . $fileExt;
                        $targetFile = $uploadDir . $newName;
                        if(move_uploaded_file($fileTmp, $targetFile)) {
                            // Simpan ke database jika perlu
                            // mysqli_query($con, "INSERT INTO bukti_pelanggaran (c_siswa, file_bukti, tgl_upload) VALUES ('$c_siswa_upload', '$newName', NOW())");
                            echo '<div class="alert alert-success">Bukti berhasil diupload ke folder siswa.</div>';
                        } else {
                            echo '<div class="alert alert-danger">Gagal upload file.</div>';
                        }
                    } else {
                        echo '<div class="alert alert-danger">Format file tidak didukung.</div>';
                    }
                } else {
                    echo '<div class="alert alert-danger">File tidak ditemukan.</div>';
                }
            }
            ?>        
            </div>        <!-- /.box-header -->
            <div class="box-body table-responsive">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="1%">NO</th>
                  <th>NAMA SISWA</th>
                  <th width="40%">BENTUK PELANGGARAN</th>
                  <th width="1%">B</th>
                  <th width="10%">PADA</th>
                  <th>OPSI</th>
                </tr>
                </thead>
                <tbody>
            <?php 
            $smk=mysqli_query($con,"SELECT * FROM pelanggaran where c_guru='$_SESSION[c_guru]' order by at desc ");
            $vr=1;
            while($akh=mysqli_fetch_array($smk)){
                $sis=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM siswa where c_siswa='$akh[c_siswa]' "));
                $kel=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM kelas where c_kelas='$akh[c_kelas]' "));
                $ben=mysqli_fetch_array(mysqli_query($con,"SELECT * FROM benpel where c_benpel='$akh[c_benpel]' "));
                $nama_siswa = preg_replace('/[^a-zA-Z0-9_\-]/', '_', $sis['nama']);
            ?>
                <tr>
                  <td><?php echo $vr; ?></td>
                  <td><?php echo $sis['nama']; ?><br>(<?php echo $kel['kelas']; ?>)</td>
                  <td><?php echo $ben['benpel']; ?></td>
                  <td><?php echo $akh['bobot']; ?></td>
                  <td><?php echo date("d/m/Y", strtotime($akh['at'])); ?></td>
                  <td align="center">
                    <button 
                        class="btn btn-success btn-sm upload-bukti-btn" 
                        data-toggle="modal" 
                        data-target="#uploadBuktiModal" 
                        data-c_siswa="<?php echo $sis['c_siswa']; ?>" 
                        data-nama_siswa="<?php echo $nama_siswa; ?>"
                    >
                        <i class="glyphicon glyphicon-upload"></i> Upload Bukti
                    </button>
                    <a class="btn btn-danger btn-sm" data-target="#hapus<?php echo $akh['c_pelanggaran']; ?>" data-toggle="modal"><i class="glyphicon glyphicon-remove"></i></a>
                  </td>
                </tr>
            <div id="hapus<?php echo $akh['c_pelanggaran']; ?>" class="modal" tabindex="-2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="myModalLabel">Konfirmasi Hapus Pelanggaran Siswa</h4>
                    </div>
                    <div class="modal-footer">
                      <a href="<?php echo $basegu; ?>g-control/<?php echo md5('hapuspel').'/'.$akh['c_pelanggaran'];?>" class="btn btn-primary btn-circle"><i class="glyphicon glyphicon-ok"></i> Lanjutkan</a> 
                      <button class="btn btn-danger" data-dismiss="modal"><i class="glyphicon glyphicon-remove"></i> Tutup</button>
                    </div>
                    </div>
                </div>
            </div>
            <?php $vr++; } ?>
                </tbody>
              </table>
            </div>
            <script>
            document.addEventListener('DOMContentLoaded', function() {
                // Untuk mengisi input hidden c_siswa_upload pada modal saat tombol upload diklik
                var uploadButtons = document.querySelectorAll('.upload-bukti-btn');
                uploadButtons.forEach(function(btn) {
                    btn.addEventListener('click', function() {
                        var cSiswa = btn.getAttribute('data-c_siswa');
                        // Set value ke input hidden di modal
                        var inputSiswa = document.getElementById('c_siswa_upload');
                        if(inputSiswa) inputSiswa.value = cSiswa;
                    });
                });
            });
            </script>
            <!-- Tambahkan input hidden pada form modal upload bukti -->
            <script>
            document.addEventListener('DOMContentLoaded', function() {
                var form = document.getElementById('formUploadBukti');
                if(form && !document.getElementById('c_siswa_upload')) {
                    var input = document.createElement('input');
                    input.type = 'hidden';
                    input.name = 'c_siswa_upload';
                    input.id = 'c_siswa_upload';
                    form.appendChild(input);
                }
            });
            </script>
<?php $vr++;  ?>
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