<?php 

  // cek jika belum ada session admin/belum login
  if(!isset($_SESSION["admin"])) {
    // alihkan kembali kehalaman login
    header("Location: login.php");
    exit();
  }

  // panggil fungsi date untuk menampilkan tahun
  $tahun = date("Y");

?>

<!-- Main Footer -->
  <footer class="main-footer">
    <strong>Website <a href="#" target="_blank"></a>:</strong>
    Pemetaan objek wisata dikota Ambon
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- Bootstrap -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- jQuery UI -->
<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Ekko Lightbox -->
<script src="plugins/ekko-lightbox/ekko-lightbox.min.js"></script>
<!-- Filterizr-->
<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="dist/js/demo.js"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="plugins/raphael/raphael.min.js"></script>
<script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>

<!-- pace-progress -->
<script src="plugins/pace-progress/pace.min.js"></script>

<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>

<!-- PAGE SCRIPTS -->
<script src="dist/js/pages/dashboard2.js"></script>

<!-- jQuery Script -->
<script>

  // Lightbox Script
  $(function () {
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
      event.preventDefault();
      $(this).ekkoLightbox({
        alwaysShowClose: true
      });
    });

    $('.filter-container').filterizr({gutterPixels: 3});
    $('.btn[data-filter]').on('click', function() {
      $('.btn[data-filter]').removeClass('active');
      $(this).addClass('active');
    });
  })
  // End Lightbox Script

  // Script notifikasi bell
  // function read message
  function readMessage() {
    const statusPesan = "Terbaca";
    $.ajax({
      type: "POST",
      data: "statusPesan="+statusPesan,
      url: "pesan-terbaca.php",
      success: function(result) {
        // tampilkan respon datanya 
      }
    });
  }
  
  // jika tombol bell ditekan
  $("a#btn-bell").on("click", function() {
    readMessage();
    $("a#btn-bell span").addClass("d-none");
  });
  // Akhir script notifikasi bell

</script>

</body>
</html>