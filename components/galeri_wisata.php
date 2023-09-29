<div class="recent_trip_area" style="background: #DCDCDC"> 
    <div class="container" >
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section_title tex>-center mb_70">
                    <h3>Galeri destinasi wisata</h3>
                    <p>Koleksi gambar dari berbagai wisata populer Diambon</p>
                </div>
            </div>
        </div>
        <div class="row">
                <?php foreach($ambilFotoGalWis as $pecahFotoGalWis) { ?>
                <div class="col-lg-4 col-md-12">
                    <div class="single_trip">
                        <div class="thumb">
                            <a href="detail-wisata.php?id=<?=base64_encode($pecahFotoGalWis['id_wisata']); ?>">
                                <img src="admin-dolano/dist/img/tour-gallery/<?=$pecahFotoGalWis['foto_1']; ?>" alt="Foto galeri wisata" height="200px">
                            </a>
                        </div>
                    </div>
                </div>
                <?php } ?>
                
            </div>    
        </div>
    </div>
