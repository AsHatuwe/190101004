<?php 

    // koneksi kedatabase
    require "admin-dolano/connection/koneksi-database.php";

    // ambil data wisata populer (4 data saja)
    $ambilWisPop = $conn->query("SELECT * FROM tbl_wisata ORDER BY id_wisata DESC LIMIT 4");


    // ambil data wisata dan foto galeri wisata
    $ambilFotoGalWis = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_galeri_wisata ON tbl_wisata.id_wisata = tbl_galeri_wisata.id_wisata ORDER BY tbl_wisata.id_wisata DESC LIMIT 6");

?>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> Wisata Ambon | Peta Wisata</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="dist/img/logo_ambon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="dist/css/owl.carousel.min.css">
    <link rel="stylesheet" href="dist/css/magnific-popup.css">
    <link rel="stylesheet" href="dist/css/font-awesome.min.css">
    <link rel="stylesheet" href="dist/css/themify-icons.css">
    <link rel="stylesheet" href="dist/css/nice-select.css">
    <link rel="stylesheet" href="dist/css/flaticon.css">
    <link rel="stylesheet" href="dist/css/gijgo.css">
    <link rel="stylesheet" href="dist/css/animate.css">
    <link rel="stylesheet" href="dist/css/slicknav.css">
    <!-- Pace Loading -->
    <link rel="stylesheet" href="dist/js/pace-progress/themes/blue/pace-theme-minimal.css">

    <link rel="stylesheet" href="dist/css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

    <!-- [Link & Embed CSS] My CSS -->
    <style>
        div.swal2-select {
            display: none !important;
        }
    </style>

    <!-- Sweet Alert2 -->
    <script src="dist/js/sweet-alert/sweet-alert2/sweetalert2.all.min.js"></script>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header -->
    <?php require "components/header.php"; ?>

     <!-- bradcam_area  -->

     <div class="bradcam_area " style="background-image:  url('b4.png'); height: 400px;" >
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>Peta Wisata</h3><br>
                        <p>Titik Lokasi Tempat Wisata</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ bradcam_area  -->

    <!-- ================ contact section start ================= -->

    <section class="contact-section">
 <h3 class="text-center" style="    color:  gray;">Peta lokasi wisata dikota Ambon</h3>
            <div class="container">
                <div class="d-block d-sm-block mb-5 pb-6">
                    <!-- <div id="map" style="height: 480px; position: relative; overflow: hidden;">
                    </div> -->

                    <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d254810.39067324996!2d128.04522644338815!3d-3.7198991478456342!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1swisata%20maluku!5e0!3m2!1sid!2sid!4v1693577611837!5m2!1sid!2sid" width="100%" height="500" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
    
    <!-- footer -->
    <?php require "components/subscribe-area.php"; ?>
    
    <!-- modal pencarian -->
    <?php require "components/modal-pencarian.php"; ?>

        <!-- JS here -->
        <script src="dist/js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="dist/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="dist/js/popper.min.js"></script>
        <script src="dist/js/bootstrap.min.js"></script>
        <script src="dist/js/owl.carousel.min.js"></script>
        <script src="dist/js/isotope.pkgd.min.js"></script>
        <script src="dist/js/ajax-form.js"></script>
        <script src="dist/js/waypoints.min.js"></script>
        <script src="dist/js/jquery.counterup.min.js"></script>
        <script src="dist/js/imagesloaded.pkgd.min.js"></script>
        <script src="dist/js/scrollIt.js"></script>
        <script src="dist/js/jquery.scrollUp.min.js"></script>
        <script src="dist/js/wow.min.js"></script>
        <script src="dist/js/nice-select.min.js"></script>
        <script src="dist/js/jquery.slicknav.min.js"></script>
        <script src="dist/js/jquery.magnific-popup.min.js"></script>
        <script src="dist/js/plugins.js"></script>
        <script src="dist/js/gijgo.min.js"></script>
        <!-- pace-progress -->
        <script src="dist/js/pace-progress/pace.min.js"></script>
    
        <!--contact js-->
        <script src="dist/js/contact.js"></script>
        <script src="dist/js/jquery.ajaxchimp.min.js"></script>
        <script src="dist/js/jquery.form.js"></script>
        <script src="dist/js/jquery.validate.min.js"></script>
        <script src="dist/js/mail-script.js"></script>

        <!-- contact validate(via bootstrap[my script]) -->
        <script src="dist/js/contact-validate/contact-validate.js"></script>
    
        <script src="dist/js/main.js"></script>

    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }
        });

        // load kategori wisata
        $("button#btn-tampilkan").on("click", function(e) {
            const kategori = $("select#select-kategori").val();
            if(kategori == "0") {
                e.preventDefault();
            }
            else {
                $("div#load-more-places").load("ajax-load-pages/kategori-wisata.php?id=" + kategori);
                $("a#btn-loadMorePlaces").css("display", "none");
            }
        });

        // load more places
        $("a#btn-loadMorePlaces").on("click", function(e) {
            e.preventDefault();
            $("div#load-more-places").load("ajax-load-pages/semua-wisata.php?key=wisata");
            $(this).css("display", "none");
        }); 
        
    </script>


    <!-- PHP Script -->
    <?php 

        // jika tombol subscribe ditekan
        if(isset($_POST["btn-subscribe"])) {

            // ambil email subscriber, dan 
            $email = strtolower(htmlspecialchars($_POST["email"]));
            // cek ada email yang sama tidak
            $ambilEmail = $conn->query("SELECT * FROM tbl_subscriber WHERE email = '$email' "); 
            $adaEmailSamaTdk = $ambilEmail->num_rows;
            if($adaEmailSamaTdk > 0) {
                // pesan gagal
                echo "<script>
    
                        Swal.fire({
                            icon: 'info',
                            title: 'Perhatian!',
                            text: 'Email sudah digunakan',
                            showConfirmButton: true
                        })

                </script>";

            }
            else {
                // set default timezone
                date_default_timezone_set('Asia/Jakarta');
                // buat tanggal dan jam sekarang (waktu saat bergabung)
                $tanggal = date("Y-m-d");
                $jam = date("H:i:s");
                // simpan data subscriber kedalam tabel subscriber
                $conn->query("INSERT INTO tbl_subscriber (email, tanggal_gabung, jam_gabung) VALUES ('$email', '$tanggal', '$jam') ");
                // pesan berhasil
                echo "<script>
    
                        Swal.fire({
                            icon: 'success',
                            title: 'Subscribe berhasil',
                            text: 'Terimakasih sudah subscribe',
                            showConfirmButton: true
                        })

                </script>";

            }

        }

    ?>
</body>
    
</html>