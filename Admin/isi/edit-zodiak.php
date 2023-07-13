<?php

require_once('../isi/auth-check.php');

require_once('../../Koneksi/function.php');

require_once('../section/header.php');

require_once('../section/sidebar.php');

$id_zodiak = $_GET['id_zodiak'];

$data_zodiak = DataZodiakTertentu($id_zodiak);

if (isset($_POST["submit"])) {
    // cek apakah data berhasil di ubah atau tidak
    // ubah satu satu
    if (ubahDataZodiak($_POST) > 0) {
        echo "
    			<script>
    				alert('data berhasil diubah!');
    				document.location.href = '../isi/zodiak.php';
    			</script>
    	";
    } else {
        echo "
        <script>
                    alert('data gagal diubah!');
        			document.location.href = '../isi/zodiak.php';
        		</script>
        ";
    }
}


?>

<h2>Edit Zodiak</h2>

<div class="text-center">
    <img src="../../Aset/Image/konten/<?php echo $data_zodiak[0]['gambar']; ?>" style="width: 200px; height:200px;" alt="foto-informasi">
</div>

<form action="" method="POST" enctype="multipart/form-data">
    <div class="form-group">

        <input type="hidden" name="id_zodiak" class="form-control" id="exampleFormControlInput1" required value="<?php echo $data_zodiak[0]['id zodiak']; ?>">


        <input type="hidden" name="id_gallery" class="form-control" id="exampleFormControlInput1" required value="<?php echo $data_zodiak[0]['id gallery']; ?>">

        <label for="exampleFormControlInput1">Nama Zodiak</label>
        <input type="text" name="nama_zodiak" class="form-control" id="exampleFormControlInput1" required value="<?php echo $data_zodiak[0]['nama zodiak']; ?>">

        <br>

        <label for="exampleFormControlInput1">Profile</label>
        <textarea class="form-control" name="profile" id="profile" rows="8" placeholder="<?php echo $data_zodiak[0]['profile']; ?>"></textarea>

        <br>
        <label for="exampleFormControlInput2">Author</label>
        <input type="text" name="author" class="form-control" id="author" readonly required value="<?php echo $data_zodiak[0]['author']; ?>">

        <br>
        <label for="exampleFormControlInput2">Gambar</label>
        <input type="text" name="gambar" class="form-control" id="gambar" readonly required value="<?php echo $data_zodiak[0]['gambar']; ?>">

        <br>
        <br>
        <input type="file" name="upload_gambar" id="upload_gambar" class="form-control-file">

        <br>
        <button type="submit" name="submit" id="button" class="btn btn-primary">ubah</button>

        <a href="../isi/zodiak.php" class="btn btn-primary">batal</a>

    </div>

</form>


</div>
</div>

<?php require_once('../section/footer.php');
?>