<?php 
  
  // mengambil data dari tabel wisata
  $ambilDataWisata = $conn->query("SELECT * FROM tbl_wisata");
  // jml data wisata
  $jmlDataWisata   = $ambilDataWisata->num_rows;


  // mengambil data dari tabel subscriber 
  $ambilDataSubscriber = $conn->query("SELECT * FROM tbl_subscriber WHERE status = 'Mengikuti' ");
  // jml data subscriber
  $jmlDataSubscriber   = $ambilDataSubscriber->num_rows;

?>
<div class="container-fluid" style="background-image:  url('bg1.png')">
<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Dashboard</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="index.php?halaman=dashboard" class ="text-white">Dashboard</a></li>      
        </ol>
      </div><!-- /.col -->
    </div><!-- /.row -->
  </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <!-- Info boxes -->
    <div class="row">
      <div class="col-12 col-sm-6 col-md-6">
        <div class="info-box">
          <span class="info-box-icon bg-success elevation-1"><i class="fas fa-tree"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Total data wisata</span>
            <span class="info-box-number">
              <?=$jmlDataWisata; ?>
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <!-- /.col -->
      <div class="col-12 col-sm-6 col-md-6">
        <div class="info-box mb-3">
          <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Total subscriber</span>
            <span class="info-box-number"><?=$jmlDataSubscriber; ?></span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </div><!--/. container-fluid -->
</section>
</div>
<!-- /.content -->