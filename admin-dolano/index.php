<?php require "header.php"; ?>

  <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      
        <?php
        
          if(isset($_GET["halaman"])) {

            if($_GET["halaman"] == "dashboard") {
              require "dashboard.php";
            }
            else if($_GET["halaman"] == "wisata-pegunungan") {
              require "wisata-pegunungan.php";
            }
            else if($_GET["halaman"] == "wisata-pantai") {
              require "wisata-air.php";
            }
            else if($_GET["halaman"] == "wisata-sejarah") {
              require "wisata-religi.php";
            }
            else if($_GET["halaman"] == "tambah-wisata") {
              require "tambah-wisata.php";
            }           
            else if($_GET["halaman"] == "galeri-wisata") {
              require "galeri-wisata.php";
            }         
            else if($_GET["halaman"] == "subscriber") {
              require "subscriber.php";
            }
            else if($_GET["halaman"] == "edit-wisata") {
              require "edit-wisata.php";
            }
            else if($_GET["halaman"] == "hapus-wisata") {
              require "hapus-wisata.php";
            }
            else if($_GET["halaman"] == "hapus-subscribers") {
              require "hapus-subscribers.php";
            }


          }

        ?>

    </div>
  <!-- /.content-wrapper -->

<?php require "footer.php"; ?>