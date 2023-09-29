<?php

	// ambil id penginapan yang akan dihapus di url
	$id_subscriber = $_GET['id'];
	// hapus penginapan dari tabel penginapan
	$conn->query("DELETE FROM  tbl_subscriber WHERE id_subscriber  = '$id_subscriber'");
	echo "<script>

                  Swal.fire({
                      icon: 'success',
                      title: 'Subscriber berhasil dihapus',
                      showConfirmButton: true
                  }).then(() => {
                      document.location.href = 'index.php?halaman=subscriber';
                  })

          </script>";
	
?>