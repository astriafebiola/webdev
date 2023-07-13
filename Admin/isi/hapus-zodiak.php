<?php

require_once('../isi/auth-check.php');

require_once('../../Koneksi/function.php');

require_once('../section/header.php');

require_once('../section/sidebar.php');

$id_zodiak = $_GET['id_zodiak'];
$id_gallery = $_GET['id_gallery'];

// $data_informasi = HapusDataInformasiTertentu($id_informasi, $id_detail_informasi);

if (hapusDatazodiak($id_zodiak, $id_gallery) > 0) {
    echo "
				<script>
					alert('data berhasil dihapus!');
					document.location.href = '../isi/zodiak.php';
				</script>
		";
} else {
    echo "
		<script>
					alert('data gagal dihapus!');
					document.location.href = '../isi/zodiak.php';
				</script>
		";
}
