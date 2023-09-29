<?php

  // ambil data kategori wisata dari tabel kategori wisata(untuk data wisata)
  $ambilDatKatWis = $conn->query("SELECT * FROM tbl_kategori_wisata");

?>

<!-- Content Header (Page header) -->
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h3>Tambah Wisata</h3>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Dashboard</li>
            <li class="breadcrumb-item">Wisata</li>
            <li class="breadcrumb-item active">Tambah wisata</li>
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>


<!-- Main content -->
<section class="content">
  <div class="container-fluid">

    <div class="row">
      <div class="col-md-8">
        <div class="card card-primary">
          <div class="card-header"style="background: #4682b4">
            <h3 class="card-title">Input data wisata</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->

          <form action="" method="post" enctype="multipart/form-data">
          <div class="card-body">

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="nama-wisata">Nama wisata</label>
                  <input type="text" class="form-control" id="nama-wisata" name="nama_wisata" placeholder="Masukan nama wisata" required>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label for="alamat-wisata">Alamat wisata</label>
                  <input type="text" class="form-control" id="alamat-wisata" name="alamat_wisata" placeholder="Masukan alamat wisata" required>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="url-lokasi">Url lokasi wisata</label>
                  <input type="text" class="form-control" id="url-lokasi" name="url_lokasi" placeholder="Masukan url lokasi wisata" required>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label for="peta-area">Peta Area Wisata</label>
                  <input type="text" class="form-control" id="peta-area" name="peta_area" placeholder="Masukan source peta  area" required>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="harga-tiket-dewasa">Harga tiket (Dewasa)</label>
                  <input type="text" class="form-control" id="harga-tiket-dewasa" name="harga_tiket_dewasa" placeholder="Masukan harga tiket dewasa" required>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label for="harga-tiket-anak">Harga tiket (Anak)</label>
                  <input type="text" class="form-control" id="harga-tiket-anak" name="harga_tiket_anak" placeholder="Masukan harga tiket anak" required>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="nomor-telepon">Nomor Telepon</label>
                  <input type="number" class="form-control" id="nomor-telepon" name="nomor_telepon" placeholder="Masukan nomor telepon" required>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label for="jam-buka">Jam Operasional</label>
                  <input type="text" class="form-control" id="jam-buka" name="jam_buka" placeholder="Masukan jam operasional" required>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
              <div class="col-md-6">
                <!-- select -->
                <div class="form-group">
                  <label>Kategori wisata</label>
                  <select class="form-control" name="id_kategori_wisata" required>
                    <option value="">Pilih kategori wisata</option>
                    <?php 
                      while($pecahDatKatWis = $ambilDatKatWis->fetch_assoc()) {
                    ?>
                    <option value="<?=$pecahDatKatWis['id_kategori_wisata']; ?>">
                      <?=$pecahDatKatWis['kategori_wisata']; ?>
                    </option>
                    <?php } ?>
                  </select>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label for="youtube">Link Youtube</label>
                  <input type="text" class="form-control" id="youtube" name="youtube" placeholder="Masukan link video youtube" required>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

    
            <!-- /.row -->
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="instagram">Link Instagram</label>
                  <input type="text" class="form-control" id="instagram" name="instagram" placeholder="Masukan link instagram" required>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-md-6" >
                <div class="form-group">
                    <label for="input-foto">Input foto wisata</label>
                      <div class="input-group">
                        <input type="file" id="input-foto" name="foto_wisata" required>
                      </div>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="row">
              <div class="col-md-6">
                <!-- textarea -->
                <div class="form-group">
                  <label>Deskripsi wisata</label>
                  <textarea class="form-control" rows="3" name="deskripsi_wisata" placeholder="Enter ..." required></textarea>
                </div>
              </div>
              <!-- /.col -->
              
              <!-- /.col -->
            </div>
            <!-- /.row -->

          </div>
          <!-- /.card-body -->

          <!-- save-button -->
          <div class="card-footer">
            <div class="  text-center">
                <button type="submit" class="btn btn-primary" name="submit" style="background: #4682b4">Simpan</button>
                <a href="javascript:history.back()" class="btn btn-warning" style="color: white;">Batal</a>
            </div>
          </div>

          
        </div>
        <!-- /.card -->
      </div>

      <div class="col-md-4">
        <div class="card card-secondary">
          <div class="card-header" style="background: #4682b4">
            <h3 class="card-title">Input foto galeri</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="card-body">  
            <div class="form-group">
              <label for="input-foto-galeri">Input foto</label>
              <div class="input-group">
                <div class="custom-file">
                  <input type="file" class="custom-file-input" id="input-foto-galeri" name="foto_wisata_galeri[]" multiple="multiple">
                  <label class="custom-file-label" for="input-foto-galeri">Choose file</label>
                </div>
              </div>

              <em><p class="text-danger">* Foto galeri harus 4!</p></em>
            </div>

          </div>
          <!-- /.card-body -->

          </form>
          
        </div>
        <!-- /.card -->
      </div>
    </div>
    
  </div>
</section>


<!-- PHP Script -->
<?php 

  // jika tombol submit ditekan
  if(isset($_POST["submit"])) {
    // ambil foto dari form(nama foto dan lokasi foto wisata/thumbnail)
    $namaFoto   = $_FILES["foto_wisata"]["name"];
    $lokasiFoto = $_FILES["foto_wisata"]["tmp_name"];
    // ambil nama ekstensinya(foto wisata/thumbnail)
    $namaEkstensi = pathinfo($namaFoto, PATHINFO_EXTENSION);

    // lokasi foto galeri yg diunggah
    $lokasiFileFoGal   = $_FILES["foto_wisata_galeri"]["tmp_name"];
    // hitung jumlah foto galeri yang dipilih(jika ada)
    $jumlah            = count($_FILES["foto_wisata_galeri"]["name"]);

    // cek apakah format foto valid / invalid (foto wisata/thumbnail)
    if( $namaEkstensi == "jpg" || 
        $namaEkstensi == "JPG" || 
        $namaEkstensi == "png" || 
        $namaEkstensi == "PNG" ||
        $namaEkstensi == "jpeg" ||
        $namaEkstensi == "JPEG" ) {
        
        // aktifkan uniqid
        $uniqId = uniqid();
        // buat nama foto baru
        $namaFotoBaru = $uniqId."_".$namaFoto;
        // pindahkan foto dari lokasi sementara ke folder tourist-img
        move_uploaded_file($lokasiFoto, "dist/img/tour-img/" .$namaFotoBaru);

        // ambil data dari form
        $namaWisata         = htmlspecialchars($_POST["nama_wisata"]);
        $alamatWisata       = htmlspecialchars($_POST["alamat_wisata"]);
        $urlLokasi          = htmlspecialchars($_POST["url_lokasi"]);
        $petaArea           = htmlspecialchars($_POST["peta_area"]);
        $nomorTelepon       = htmlspecialchars($_POST["nomor_telepon"]);
        $jamBuka            = htmlspecialchars($_POST["jam_buka"]);
        $hargaTiketDewasa   = htmlspecialchars($_POST["harga_tiket_dewasa"]);
        $hargaTiketAnak     = htmlspecialchars($_POST["harga_tiket_anak"]);
        $idKategoriWisata   = htmlspecialchars($_POST["id_kategori_wisata"]);
        $instagram          = htmlspecialchars($_POST["instagram"]);
        $youtube            = htmlspecialchars($_POST["youtube"]);
        $deskripsiWisata    = htmlspecialchars($_POST["deskripsi_wisata"]);
        $fotoWisata         = $namaFotoBaru;

        // masukkan data wisata baru ke dalam tabel wisata
        $conn->query("INSERT INTO tbl_wisata (nama_wisata, alamat_wisata, url_lokasi, peta_area, nomor_telepon, jam_buka, harga_tiket_dewasa, harga_tiket_anak, id_kategori_wisata, instagram, youtube, deskripsi_wisata, foto_wisata) VALUES ('$namaWisata', '$alamatWisata', '$urlLokasi', '$petaArea', '$nomorTelepon', '$jamBuka', '$hargaTiketDewasa', '$hargaTiketAnak', '$idKategoriWisata', '$instagram', '$youtube', '$deskripsiWisata', '$fotoWisata') ");

        // ambil id wisata yg baru diinputkan ke tabel wisata
        $idWisataBarusan = $conn->insert_id;

        // cek jika ada foto galeri yg diunggah
        if($lokasiFileFoGal == [""]) {
          // masukkan data ke dalam tabel galeri wisata tanpa memasukkan foto wisata galeri
          mysqli_query($conn, "INSERT INTO tbl_galeri_wisata (id_kategori_wisata, id_wisata) VALUES ('$idKategoriWisata', '$idWisataBarusan')");

          // ambil id galeri wisata yg baru diinputkan ke tabel galeri wisata
          $idGalWisBarusan = $conn->insert_id;

          // ambil id wisata yg baru saja diinput, tapi id wisata yg ada ditabel galeri wisata
          $ambilIdWis = mysqli_query($conn, "SELECT * FROM tbl_galeri_wisata WHERE id_galeri_wisata = '$idGalWisBarusan' ");
          $pecahIdWis = mysqli_fetch_assoc($ambilIdWis);


          // ambil data wisata ditabel wisata berdasarkan id wisata di url
          $ambilDataWisata = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_kategori_wisata ON tbl_wisata.id_kategori_wisata = tbl_kategori_wisata.id_kategori_wisata JOIN tbl_galeri_wisata ON tbl_galeri_wisata.id_wisata = tbl_wisata.id_wisata WHERE tbl_wisata.id_wisata = '$idWisataBarusan'");
          $pecahDataWisata = $ambilDataWisata->fetch_assoc();
          // ambil kategori wisata
          $katWis = strtolower($pecahDataWisata["kategori_wisata"]);

          // pesan berhasil menambahkan data & kirim notifikasi email ke semua subscribers
          echo "<script>

                  Swal.fire({
                      icon: 'success',
                      title: 'Data wisata berhasil ditambahkan',
                      text: 'Anda belum unggah foto galeri, anda bisa mengunggahnya dihalaman edit wisata',
                      showConfirmButton: true
                  }).then(() => {
                      document.location.href = 'index.php?halaman=wisata-$katWis';
                  })

          </script>";
          
        }
        else {
          // jika foto yang dipilih ada 4
          if($jumlah == 4) {
            // lakukan looping
            for ($i = 0; $i < $jumlah; $i++) { 
              $namaFileFoGal       = $_FILES["foto_wisata_galeri"]["name"][$i];
              $lokasiFileFoGalLoop = $_FILES["foto_wisata_galeri"]["tmp_name"][$i];
              $namaFileFoGalBaru   = uniqid();
              $namaFileFoGal       = $namaFileFoGalBaru.".jpg";
            
              // pindahkan foto galeri dari lokasi sementara ke folder tour gallery
              move_uploaded_file($lokasiFileFoGalLoop, "dist/img/tour-gallery/". $namaFileFoGal);
              // masukkan setiap nama foto baru yang sudah dibuat ke variabel foto 
              $foto[$i] = $namaFileFoGal;
            }

            // masukkan semua foto yang dipilih ke dalam tabel galeri wisata
            mysqli_query($conn, "INSERT INTO tbl_galeri_wisata (id_kategori_wisata, id_wisata, foto_1, foto_2, foto_3, foto_4) VALUES ('$idKategoriWisata', '$idWisataBarusan', '$foto[0]', '$foto[1]', '$foto[2]', '$foto[3]')");

            // ambil id galeri wisata yg baru diinputkan ke tabel galeri wisata
            $idGalWisBarusan = $conn->insert_id;

            // ambil id wisata yg baru saja diinput, tapi id wisata yg ada ditabel galeri wisata
            $ambilIdWis = mysqli_query($conn, "SELECT * FROM tbl_galeri_wisata WHERE id_galeri_wisata = '$idGalWisBarusan' ");
            $pecahIdWis = mysqli_fetch_assoc($ambilIdWis);


            // ambil data wisata ditabel wisata berdasarkan id wisata di url
            $ambilDataWisata = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_kategori_wisata ON tbl_wisata.id_kategori_wisata = tbl_kategori_wisata.id_kategori_wisata JOIN tbl_galeri_wisata ON tbl_galeri_wisata.id_wisata = tbl_wisata.id_wisata WHERE tbl_wisata.id_wisata = '$idWisataBarusan'");
            $pecahDataWisata = $ambilDataWisata->fetch_assoc();
            // ambil kategori wisata
            $katWis = strtolower($pecahDataWisata["kategori_wisata"]); 

            // pesan berhasil menambahkan data & kirim notifikasi email ke semua subscribers
            echo "<script>

                    Swal.fire({
                        icon: 'success',
                        title: 'Data wisata berhasil ditambahkan',
                        showConfirmButton: true
                    }).then(() => {
                       document.location.href = 'index.php?halaman=wisata-$katWis';
                    })

            </script>";

          }
          // jika foto yang dipilih kurang dari 4 atau lebih dari 4
          else if($jumlah < 4 || $jumlah > 4) {
            // masukkan data ke dalam tabel galeri wisata tanpa memasukkan foto wisata galeri
            mysqli_query($conn, "INSERT INTO tbl_galeri_wisata (id_kategori_wisata, id_wisata) VALUES ('$idKategoriWisata', '$idWisataBarusan')");

            // ambil id galeri wisata yg baru diinputkan ke tabel galeri wisata
            $idGalWisBarusan = $conn->insert_id;

            // ambil id wisata yg baru saja diinput, tapi id wisata yg ada ditabel galeri wisata
            $ambilIdWis = mysqli_query($conn, "SELECT * FROM tbl_galeri_wisata WHERE id_galeri_wisata = '$idGalWisBarusan' ");
            $pecahIdWis = mysqli_fetch_assoc($ambilIdWis);

          
           // ambil data wisata ditabel wisata berdasarkan id wisata di url
            $ambilDataWisata = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_kategori_wisata ON tbl_wisata.id_kategori_wisata = tbl_kategori_wisata.id_kategori_wisata JOIN tbl_galeri_wisata ON tbl_galeri_wisata.id_wisata = tbl_wisata.id_wisata WHERE tbl_wisata.id_wisata = '$idWisataBarusan'");
            $pecahDataWisata = $ambilDataWisata->fetch_assoc();
            // ambil kategori wisata
            $katWis = strtolower($pecahDataWisata["kategori_wisata"]); 

            // pesan gagal menambahkan foto galeri & kirim notifikasi email ke semua subscribers
            echo "<script>

                    Swal.fire({
                        icon: 'error',
                        title: 'Gagal mengunggah foto galeri!',
                        text: 'Jumlah foto galeri harus 4! Anda bisa unggah kembali foto galeri ini dihalaman edit wisata',
                        showConfirmButton: true
                    }).then(() => {
                        document.location.href = 'index.php?halaman=wisata-$katWis';
                    })

            </script>";

          }
          // selain itu gagal upload
          else {
            // masukkan data ke dalam tabel galeri wisata tanpa memasukkan foto wisata galeri
            mysqli_query($conn, "INSERT INTO tbl_galeri_wisata (id_kategori_wisata, id_wisata) VALUES ('$idKategoriWisata', '$idWisataBarusan')");

            // ambil id galeri wisata yg baru diinputkan ke tabel galeri wisata
            $idGalWisBarusan = $conn->insert_id;

            // ambil id wisata yg baru saja diinput, tapi id wisata yg ada ditabel galeri wisata
            $ambilIdWis = mysqli_query($conn, "SELECT * FROM tbl_galeri_wisata WHERE id_galeri_wisata = '$idGalWisBarusan' ");
            $pecahIdWis = mysqli_fetch_assoc($ambilIdWis);

             
             // ambil data wisata ditabel wisata berdasarkan id wisata di url
            $ambilDataWisata = $conn->query("SELECT * FROM tbl_wisata JOIN tbl_kategori_wisata ON tbl_wisata.id_kategori_wisata = tbl_kategori_wisata.id_kategori_wisata JOIN tbl_galeri_wisata ON tbl_galeri_wisata.id_wisata = tbl_wisata.id_wisata WHERE tbl_wisata.id_wisata = '$idWisataBarusan'");
            $pecahDataWisata = $ambilDataWisata->fetch_assoc();
            // ambil kategori wisata
            $katWis = strtolower($pecahDataWisata["kategori_wisata"]); 

            // pesan gagal menambahkan foto galeri & kirim notifikasi email ke semua subscribers
            echo "<script>

                    Swal.fire({
                        icon: 'error',
                        title: 'Gagal mengunggah foto galeri!',
                        text: 'Anda bisa unggah kembali foto galeri ini dihalaman edit wisata',
                        showConfirmButton: true
                    }).then(() => {
                      document.location.href = 'index.php?halaman=wisata-$katWis';
                    })

            </script>";

          }

        }

    }
    else {
        // jika foto invalid/format foto salah/bukan foto
        // pesan gagal menyimpan data
        echo "<script>

                Swal.fire({
                    icon: 'error',
                    title: 'Format foto salah!',
                    text: 'Gunakan format foto yang valid',
                    showConfirmButton: true
                })

        </script>";

    }

  }

?>