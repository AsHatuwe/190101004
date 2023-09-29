<?php 

  $ambilDataSubs = $conn->query("SELECT * FROM tbl_subscriber ORDER BY id_subscriber DESC");

?>

<!-- Content Header (Page header) -->
<section class="content-header">
    <div class="container-fluid">
    	<div class="row mb-2">
          	<div class="col-sm-6">
            	<h1>Subscribers</h1>
          	</div>
	        <div class="col-sm-6">
	            <ol class="breadcrumb float-sm-right">
	              	<li class="breadcrumb-item">Dashboard</li>
	              	<li class="breadcrumb-item active">Subscribers</li>
	            </ol>
	        </div>
    	</div>
    </div><!-- /.container-fluid -->
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="card card-primary">
        <div class="card-header"  style="background: #4682b4">
          	<h3 class="card-title">Daftar subscriber</h3>

          	<div class="card-tools">
            	<button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              	<i class="fas fa-minus"></i>
            	</button>
            	<button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
              	<i class="fas fa-times"></i>
            	</button>
          	</div>
        </div>
        <div class="card-body table-responsive p-0">

          	<table class="table table-striped projects">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Email</th>
                        <th>Tanggal gabung</th>
                        <th>Jam gabung</th>
                        <th>Status</th>
                        <th class="text-center">Opsi</th>
                    </tr>
                </thead>
                <tbody>

                    <?php 
                      $no = 1;
                      while($pecahDataSubs = $ambilDataSubs->fetch_assoc()) { 
                    ?>
                    <tr>
                      <td>
                          <?=$no; ?>
                      </td>

                      <?php if($pecahDataSubs['tanggal_gabung'] == date('Y-m-d')) { ?>
                      <td>
                          <span class="badge badge-danger">Baru</span><br>
                          <?=$pecahDataSubs['email']; ?>
                      </td>
                      <?php } else { ?>
                      <td>
                          <?=$pecahDataSubs['email']; ?>
                      </td>
                      <?php } ?>

                      <td>
                          <?=$pecahDataSubs['tanggal_gabung']; ?>
                      </td>
                      <td>
                          <?=$pecahDataSubs['jam_gabung']; ?>
                      </td>

                      <td>
                        <?php 
                          if($pecahDataSubs['status'] == 'Mengikuti') { 
                        ?>
                          <span class="badge badge-success"><?=$pecahDataSubs['status']; ?></span>
                        <?php } else { ?>
                          <span class="badge badge-secondary"><?=$pecahDataSubs['status']; ?></span>
                        <?php } ?>
                      </td>
                        <td class="text-center">
                            <a class="btn btn-danger btn-sm" href="index.php?halaman=hapus-subscribers&id=<?=$pecahDataSubs['id_subscriber']; ?>">
                              <i class="fas fa-trash"></i> Hapus
                          </a>
                      </td>
                    </tr>
                    <?php 
                      $no++;
                      } 
                    ?>

                </tbody>
            </table>

        </div>
        <!-- /.card-body -->
    </div>
  	<!-- /.card -->

</section>
<!-- /.content -->