<?php

require_once('../isi/auth-check.php');

require_once('../../Koneksi/function.php');

require_once('../section/header.php');

require_once('../section/sidebar.php');

$id_zodiak = $_GET['id_zodiak'];

$data_zodiak = DataZodiakTertentu($id_zodiak);

?>

<h2>Detail Informasi</h2>

<div class="text-center">
    <img src="../../Aset/Image/konten/<?php echo $data_zodiak[0]['gambar']; ?>" style="width: 200px; height:200px;" alt="foto-destinasi">
</div>

<form action="">
    <div class="form-group">
        <label for="">ID Zodiak</label>
        <input type="text" name="id_zodiak" class="form-control" id="exampleFormControlInput1" readonly required value="<?php echo $data_zodiak[0]['id zodiak']; ?>">
        <br>

        <label for="exampleFormControlInput1">Nama Zodiak</label>
        <input type="text" name="nama_zodiak" class="form-control" id="exampleFormControlInput1" readonly required value="<?php echo $data_zodiak[0]['nama zodiak']; ?>">

        <label for="exampleFormControlInput1">Profile</label>
        <textarea class="form-control" name="profile" id="profile" rows="8" placeholder="<?php echo $data_zodiak[0]['profile']; ?>"></textarea>

        <br>
        <label for="exampleFormControlInput2">Author</label>
        <input type="text" name="author" class="form-control" id="author" readonly required value="<?php echo $data_zodiak[0]['author']; ?>">

        <br>
        <label for="exampleFormControlInput2">Gambar</label>
        <input type="text" name="gambar" class="form-control" id="gambar" readonly required value="<?php echo $data_zodiak[0]['gambar']; ?>">

        <br>
        <a href="../isi/zodiak.php" class="btn btn-primary">kembali</a>
    </div>

</form>


</div>
</div>

<?php require_once('../section/footer.php');
?>