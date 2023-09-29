<?php 

    // script pencarian data
    if(isset($_POST["btn-navbar-cari"])) {
        // ambil data dari form pencarian
        $keyword = $_POST["navbar-cari"];
        // header("Location: pencarian-data.php?k=$keyword"); 
        echo "<script>location ='pencarian-data.php?k=$keyword';</script>"; 
    }

?>

<!-- header-start -->
<header>
    <div class="header-area " style="background: #F5F5F5">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid">
                <div class="header_bottom_border">
                    <div class="row align-items-center">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                                <a href="index.php">
                                    <img src="dist/img/logo_ambon.png" alt="Logo Ambon" style="width:110px;">
                                    <!-- <h1 style="color: #ff4a52;">Dolano</h1> -->
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a id="beranda" href="index.php">BERANDA</a></li>
                                        <li><a id="wisata" href="wisata.php">WISATA</a></li>
                                        <li><a id="peta_wisata" href="peta_wisata.php">PETA WISATA</a></li>
                                        <li><a id="tentang" href="tentang.php">TENTANG</a></li>
                                        <li><a id="kontak" href="kontak.php">KONTAK</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 d-none d-lg-block">
                            <div class="social_wrap d-flex align-items-center justify-content-end">
                                <div class="number">
                                    <p> <i style="color: #4682b4;" class="fa fa-user"></i></p>
                                </div>
                                <div class="social_links d-none d-lg-block">
                                    <ul>
                                        <li><b><a id="login" href="admin-dolano/login.php" target="_blank"> Login Admin</a></b>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="seach_icon" style="background: #4682b4">
                            <a data-toggle="modal" data-target="#exampleModalCenter" href="#">
                                <i class="fa fa-search"></i>
                            </a>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
<!-- header-end -->