<?php

require_once('../isi/auth-check.php');

require_once('../../Koneksi/function.php');

require_once('../section/header.php');

require_once('../section/sidebar.php');

if (isset($_POST["submit"])) {
    // cek apakah data berhasil di ubah atau tidak
    // ubah satu satu
    if (tambahDataInformasi($_POST) > 0) {
        echo "
        <script>
        alert('data berhasil ditambah');
         document.location.href = '../isi/informasi.php';
     </script>
    	";
    } else {
        echo "
        <script>
                   alert('data gagal ditambah');
        			document.location.href = '../isi/informasi.php';
        		</script>
        ";
    }
}


?>

<h2>Tambah Data Informasi</h2>

<form action="" method="POST" enctype="multipart/form-data">
    <div class="form-group">

        <label for="id_course">ID</label>
        <input type="text" name="id_course" class="form-control" id="id_course" required placeholder="example i1 atau lanjutkan id informasi yang telah ada">
        <br>

        <label for="judul">Judul</label>
        <input type="text" name="judul" class="form-control" id="judul" required>

        <br>

        <label for="deskripsi">Deskripsi</label>
        <textarea class="form-control" name="deskripsi" id="deskripsi" rows="8" required></textarea>

        <br>

        <label for="durasi">Durasi</label>
        <input type="text" name="durasi" class="form-control" id="durasi" required>

        <br>
        <button type="submit" name="submit" id="button" class="btn btn-primary">tambah</button>

        <a href="../isi/informasi.php" class="btn btn-primary">batal</a>

    </div>

</form>


</div>
</div>

<?php require_once('../section/footer.php');
?>