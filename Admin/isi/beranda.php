<?php

require_once('../isi/auth-check.php');

require_once('../../Koneksi/function.php');

require_once('../section/header.php');

require_once('../section/sidebar.php');

$jml_informasi = query("SELECT COUNT(id_informasi) as hasilInformasi FROM informasi")[0];
$jml_zodiak  = query("SELECT COUNT(id_zodiak) as hasilGallery FROM zodiak")[0];
$jml_gambar = query("SELECT COUNT(id_gallery) as jmlFoto FROM gallery")[0];
$zodiak_hari = query("SELECT COUNT(id_hari) as jmlZodiakHari FROM hari")[0];
$zodiak_minggu = query("SELECT COUNT(id_minggu) as jmlZodiakMinggu FROM minggu")[0];
$profile_admin = query("SELECT nama as 'nama admin' FROM admin")[0];

?>

<h2>Hai,<?php echo $profile_admin ['nama admin']; ?></h2>
<p>Selamat datang di dashboard admin ZodiakU</p>

<div class="row">

    <!--STATUS PANELS -->
    <div class="col-md-3">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">
                    <center>
                        <i class="fa fa-user"></i>
                        Jumlah Informasi
                    </center>
                </h5>
                <div class="panel-body">
                    <center>
                        <h1><?php echo number_format($jml_informasi['hasilInformasi']); ?></h1>
                    </center>
                </div>

                <a href="../isi/informasi.php" class="card-link">
                    <center>
                        Menu Informasi
                    </center>
                </a>
            </div>
        </div>
        <!--/grey-panel -->
    </div><!-- /col-md-3-->

    <!--STATUS PANELS -->
    <div class="col-md-3" style="margin-left: 50px;">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">
                    <center>
                        <i class="fa fa-user"></i>
                        Data Zodiak
                    </center>
                </h5>
                <div class="panel-body">
                    <center>

                        <h1><?php echo number_format($jml_zodiak['hasilGallery']); ?></h1>
                    </center>
                </div>

                <a href="../isi/zodiak.php" class="card-link">
                    <center>
                        Menu Zodiak
                    </center>
                </a>
            </div>
        </div>
        <!--/grey-panel -->
    </div><!-- /col-md-3-->

    <br>
    <br>
    <!--STATUS PANELS -->
    <div class="col-md-4" style="margin-left: 50px;">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">
                    <center>
                        <i class="fa fa-user"></i>
                        Jumlah Gallery
                    </center>
                </h5>
                <div class="panel-body">
                    <center>
                        <h1><?php echo number_format($jml_gambar['jmlFoto']); ?></h1>
                    </center>
                </div>

                <a href="../isi/gallery.php" class="card-link">
                    <center>
                        Menu Gallery
                    </center>
                </a>
            </div>
        </div>
        <!--/grey-panel -->
    </div><!-- /col-md-3-->

    <br>
    <br>
    <!--STATUS PANELS -->
    <div class="col-md-3" style="margin-left: 50px;">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">
                    <center>
                        <i class="fa fa-user"></i>
                        Update Hari
                    </center>
                </h5>
                <div class="panel-body">
                    <center>
                        <h1><?php echo number_format($zodiak_hari['jmlZodiakHari']); ?></h1>
                    </center>
                </div>

                <a href="../isi/hari.php" class="card-link">
                    <center>
                        Menu Update Hari
                    </center>
                </a>
            </div>
        </div>
        <!--/grey-panel -->
    </div><!-- /col-md-3-->

    <br>
    <br>
    <!--STATUS PANELS -->
    <div class="col-md-1" style="margin-left: 50px;">
        <div class="card" style="width: 18rem;">
            <div class="card-body">
                <h5 class="card-title">
                    <center>
                        <i class="fa fa-user"></i>
                        Update Minggu
                    </center>
                </h5>
                <div class="panel-body">
                    <center>
                        <h1><?php echo number_format($zodiak_minggu['jmlZodiakMinggu']); ?></h1>
                    </center>
                </div>

                <a href="../isi/minggu.php" class="card-link">
                    <center>
                        Menu Update Minggu
                    </center>
                </a>
            </div>
        </div>
        <!--/grey-panel -->
    </div><!-- /col-md-3-->

</div>

</div>
</div>

<?php

require_once('../section/footer.php');

?>