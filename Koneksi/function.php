<?php

$server_name = "localhost";
$username_server = "root";
$password_server = "";
$database_name = "zodiaku";

$db = mysqli_connect($server_name, $username_server, $password_server, $database_name);

function query($query)
{
    global $db;
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataInformasi($halaman_awal, $batas)
{
    global $db;
    $query = "SELECT
              g.id_gallery as 'id gallery',
              i.id_informasi as 'id informasi',
              a.nama as 'author',
              i.id_gallery as 'gambar',
              g.gambar as 'nama gambar',
              i.judul as 'judul berita',
              i.isi as 'isi'
            FROM informasi as i
            INNER JOIN gallery g on (i.id_gallery = g.id_gallery)
            INNER JOIN admin a on (i.id_admin = a.id_admin)
            LIMIT $halaman_awal, $batas ";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}


function semuaDataZodiak($halaman_awal, $batas)
{
    global $db;
    $query = "SELECT 
             z.id_zodiak as 'id zodiak',
             g.id_gallery as 'id gallery',
             g.gambar as 'gambar',
             z.nama_zodiak as 'nama zodiak',
             z.profile as 'profile',
             a.nama as 'author',
             z.waktu_buat as 'tanggal buat'
             FROM zodiak as z
             INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
             INNER JOIN admin a on (a.id_admin = z.id_admin)
             LIMIT $halaman_awal, $batas ";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataHari($halaman_awal, $batas)
{
    global $db;
    $query = "SELECT * FROM hari";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataMinggu($halaman_awal, $batas)
{
    global $db;
    $query = "SELECT * FROM minggu";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataZodiakGroup($keyword)
{
    global $db;
    $query = "SELECT
                z.id_zodiak as 'id zodiak',
                g.id_gallery as 'id gallery',
                g.gambar as 'gambar',
                z.nama_zodiak as 'nama zodiak',
                z.profile as 'profile',
                a.nama as 'author',
                z.waktu_buat as 'tanggal buat'
                FROM zodiak as z
                INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
                INNER JOIN admin a on (a.id_admin = z.id_admin)
                WHERE z.id_zodiak = '$keyword'
             ";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataHariGroup($keyword)
{
    global $db;
    $query = "SELECT * FROM hari
                WHERE id_hari = '$keyword'
             ";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataMingguGroup($keyword)
{
    global $db;
    $query = "SELECT * FROM minggu
                WHERE id_minggu = '$keyword'
             ";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function ubahProfile($data)
{
    global $db;
    $id = 1;
    // ambil data dari tiap elemen dalam form

    $nama = htmlspecialchars($data["nama"]);
    $alamat = htmlspecialchars($data["alamat"]);
    $email = htmlspecialchars($data["email"]);
    $gambar = htmlspecialchars($data["gambar"]);

    $file_name = $_FILES['upload_gambar']['name'];
    $file_temp_name = $_FILES['upload_gambar']['tmp_name'];

    if ($file_name == null) {

        $query = "UPDATE admin
        SET nama = '$nama',
        alamat = '$alamat',
        email = '$email'

        WHERE id_admin = '$id'";

        // query insert data
        mysqli_query($db, $query);

        return mysqli_affected_rows($db);
    } else {

        if (file_exists('../../Aset/Image/' . $gambar)) {
            unlink('../../Aset/Image/' . $gambar);
        }

        move_uploaded_file($file_temp_name, '../../Aset/Image/' . $file_name . '');
        $query = "UPDATE admin
            SET nama = '$nama',
            alamat = '$alamat',
            email = '$email',
            gambar = '$file_name'
    
            WHERE id_admin = '$id'";

        // query insert data
        mysqli_query($db, $query);

        return mysqli_affected_rows($db);
    }
}

function DataInformasiTertentu($id_informasi)
{
    global $db;
    $query = "SELECT
             g.id_gallery as 'id gallery',
              i.id_informasi as 'id informasi',
              a.nama as 'author',
              i.id_gallery as 'gambar',
              g.gambar as 'nama gambar',
              i.judul as 'judul berita',
              i.isi as 'isi'
            FROM informasi as i
            INNER JOIN gallery g on (i.id_gallery = g.id_gallery)
            INNER JOIN admin a on (i.id_admin = a.id_admin)
            WHERE i.id_informasi = '$id_informasi'";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function hapusDataInformasi($id_informasi, $id_detail_informasi, $id_gallery)
{
    global $db;

    $query_tampil_gallery = "SELECT * FROM gallery
    WHERE id_gallery = '$id_gallery' ";
    $result_gallery = mysqli_query($db, $query_tampil_gallery);
    $row_gallery = mysqli_fetch_array($result_gallery, MYSQLI_ASSOC);

    $gambar = $row_gallery['gambar'];

    if (file_exists('../Aset/Image/' . $gambar)) {
        unlink('../Aset/Image/' . $gambar);
    }

    $query = "DELETE FROM gallery WHERE id_gallery = '$id_gallery'";
    mysqli_query($db, $query);

    $query = "DELETE FROM informasi WHERE id_informasi = '$id_informasi'";
    mysqli_query($db, $query);
    return mysqli_affected_rows($db);
}

function ubahDataInformasi($data)
{
    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    // ambil data dari tiap elemen dalam form
    $id_informasi = htmlspecialchars($data["id_informasi"]);
    $id_gallery = htmlspecialchars($data["id_gallery"]);

    $judul = htmlspecialchars($data["judul"]);
    $isi_informasi = htmlspecialchars($data["isi_informasi"]);
    $gambar = htmlspecialchars($data['gambar']);

    $file_name = $_FILES['upload_gambar']['name'];
    $file_temp_name = $_FILES['upload_gambar']['tmp_name'];


    if ($file_name == null) {

        if ($judul != null) {
            $query = "UPDATE informasi
            SET judul = '$judul'
            WHERE id_informasi = '$id_informasi'";
            mysqli_query($db, $query);

            $query = "UPDATE informasi
            SET isi = '$isi_informasi'
            WHERE id_informasi ='$id_informasi'";
            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        } else {

            $query = "UPDATE informasi
            SET judul = '$judul'
            WHERE id_informasi = '$id_informasi'";

            mysqli_query($db, $query);
            return mysqli_affected_rows($db);
        }
    } else {

        if ($isi_informasi != null) {
            if (file_exists('../../Aset/Image/konten/' . $gambar)) {
                unlink('../../Aset/Image/konten/' . $gambar);
            }

            move_uploaded_file($file_temp_name, '../../Aset/Image/konten/' . $file_name . '');

            $query = "UPDATE gallery
                  SET gambar = '$file_name'
                  WHERE id_gallery = '$id_gallery'";
            mysqli_query($db, $query);

            $query = "UPDATE informasi
                      SET isi = '$isi_informasi'
                      WHERE id_informasi ='$id_informasi'";
            mysqli_query($db, $query);

            $query = "UPDATE informasi
                      SET judul = '$judul'
                WHERE id_informasi = '$id_informasi'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        } else {
            if (file_exists('../../Aset/Image/konten/' . $gambar)) {
                unlink('../../Aset/Image/konten/' . $gambar);
            }

            move_uploaded_file($file_temp_name, '../../Aset/Image/konten/' . $file_name . '');

            $query = "UPDATE gallery
                  SET gambar = '$file_name'
                  WHERE id_gallery = '$id_gallery'";
            mysqli_query($db, $query);

            $query = "UPDATE informasi
                      SET judul = '$judul'
                WHERE id_informasi = '$id_informasi'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        }
    }
}

function tambahDataInformasi($data)
{

    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    $id_informasi = htmlspecialchars($data["id_informasi"]);
    $id_gallery = htmlspecialchars($data["id_gallery"]);

    $judul = htmlspecialchars($data["judul_informasi"]);
    $isi_informasi = htmlspecialchars($data["isi"]);

    $file_name = $_FILES['gambar']['name'];
    $file_temp_name = $_FILES['gambar']['tmp_name'];

    move_uploaded_file($file_temp_name, '../../Aset/Image/konten/' . $file_name . '');


    $query = "INSERT INTO gallery (id_gallery, gambar) VALUES ('$id_gallery','$file_name')";
    mysqli_query($db, $query);

    $query = "INSERT INTO informasi(ID_INFORMASI, ID_ADMIN, JUDUL, ISI, id_gallery)
                VALUES ('$id_informasi','$author','$judul', '$isi_informasi', '$id_gallery' )";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function limitDataInformasi()
{
    global $db;
    $query = "SELECT
              g.id_gallery as 'id gallery',
              i.id_informasi as 'id informasi',
              a.nama as 'author',
              i.id_gallery as 'gambar',
              g.gambar as 'nama gambar',
              i.judul as 'judul berita',
              i.isi as 'isi'
            FROM informasi as i
            INNER JOIN gallery g on (i.id_gallery = g.id_gallery)
            INNER JOIN admin a on (i.id_admin = a.id_admin);";
    $result = mysqli_query($db, $query);
    $jumlah_data = mysqli_num_rows($result);

    return $jumlah_data;
}

function semuaDataGallery()
{
    global $db;
    $query = "SELECT * FROM gallery";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function limitDataZodiak()
{
    global $db;

    $query = "SELECT       
                z.id_zodiak as 'id zodiak',
                g.id_gallery as 'id gallery',
                g.gambar as 'gambar',
                z.nama_zodiak as 'nama zodiak',
                z.profile as 'profile',
                a.nama as 'author',
                z.waktu_buat as 'tanggal buat'
    FROM zodiak as z
    INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
    INNER JOIN admin a on (a.id_admin = z.id_admin)";

    $result = mysqli_query($db, $query);
    $jumlah_data = mysqli_num_rows($result);

    return $jumlah_data;
}

function limitDataHari()
{
    global $db;

    $query = "SELECT * FROM hari";

    $result = mysqli_query($db, $query);
    $jumlah_data = mysqli_num_rows($result);

    return $jumlah_data;
}

function limitDataMinggu()
{
    global $db;

    $query = "SELECT * FROM minggu";

    $result = mysqli_query($db, $query);
    $jumlah_data = mysqli_num_rows($result);

    return $jumlah_data;
}

function cariNamaZodiak($keyword)
{
    $query = "SELECT            
                z.id_zodiak as 'id zodiak',
                g.id_gallery as 'id gallery',
                g.gambar as 'gambar',
                z.nama_zodiak as 'nama zodiak',
                z.profile as 'profile',
                z.karir as 'karir',
                z.keuangan as 'keuangan',
                z.percintaan as 'percintaan',
                z.nasihat as 'nasihat',
                a.nama as 'author',
                z.waktu_buat as 'tanggal buat'
    FROM zodiak as z
    INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
    INNER JOIN admin a on (a.id_admin = z.id_admin)
    WHERE
    z.nama_zodiak LIKE '%$keyword%'";

    return query($query);
}

function cariNamaZodiakHari($keyword)
{
    $query = "SELECT * FROM hari
              WHERE nama_zodiak LIKE '%$keyword%'";

    return query($query);
}

function DataZodiakTertentu($id_zodiak)
{
    global $db;
    $query = "SELECT       
                    z.id_zodiak as 'id zodiak',
                    g.id_gallery as 'id gallery',
                    g.gambar as 'gambar',
                    z.nama_zodiak as 'nama zodiak',
                    z.profile as 'profile',
                    a.nama as 'author',
                    z.waktu_buat as 'tanggal buat'
                FROM zodiak as z
                INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
                INNER JOIN admin a on (a.id_admin = z.id_admin)
                WHERE z.id_zodiak = '$id_zodiak'";

    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function DataHariTertentu($id_hari)
{
    global $db;
    $query = "SELECT * FROM hari
              WHERE id_hari = '$id_hari'";

    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function DataMingguTertentu($id_minggu)
{
    global $db;
    $query = "SELECT * FROM minggu
              WHERE id_minggu = '$id_minggu'";

    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function ubahDataZodiak($data)
{
    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    $id_zodiak = htmlspecialchars($data["id_zodiak"]);
    $id_gallery = htmlspecialchars($data["id_gallery"]);
    $nama_zodiak = htmlspecialchars($data["nama_zodiak"]);
    $profile = htmlspecialchars($data["profile"]);
    $gambar = htmlspecialchars($data["gambar"]);

    $file_name = $_FILES['upload_gambar']['name'];
    $file_temp_name = $_FILES['upload_gambar']['tmp_name'];


    if ($file_name == null) {
        if ($profile != null) {
            $query = "UPDATE zodiak
            SET nama_zodiak = '$nama_zodiak',
                `profile` ='$profile',
                id_gallery  = '$id_gallery',
                waktu_buat = now()
            WHERE id_zodiak = '$id_zodiak'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        } else {
            $query = "UPDATE zodiak
        SET nama_zodiak = '$nama_zodiak',
            `profile` ='$profile',
            id_gallery  = '$id_gallery',
            waktu_buat = now()
        WHERE id_zodiak = '$id_zodiak'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        }
    } else {
        if ($profile != null) {
            if (file_exists('../../Aset/Image/konten/' . $gambar)) {
                unlink('../../Aset/Image/konten/' . $gambar);
            }

            move_uploaded_file($file_temp_name, '../../Aset/Image/konten/' . $file_name . '');

            $query = "UPDATE gallery
                  SET gambar = '$file_name'
                  WHERE id_gallery = '$id_gallery'";
            mysqli_query($db, $query);

            $query = "UPDATE zodiak
                        SET nama_zodiak = '$nama_zodiak',
                        `profile` ='$profile',
                        id_gallery  = '$id_gallery',
                        waktu_buat = now()
                    WHERE id_zodiak = '$id_zodiak'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        } else {

            if (file_exists('../Aset/Image/' . $gambar)) {
                unlink('../../Aset/Image/konten/' . $gambar);
            }

            move_uploaded_file($file_temp_name, '../../Aset/Image/konten' . $file_name . '');

            $query = "UPDATE gallery
                  SET gambar = '$file_name'
                  WHERE id_gallery = '$id_gallery'";
            mysqli_query($db, $query);

            $query = "UPDATE zodiak
                        SET nama_zodiak = '$nama_zodiak',
                        `profile` ='$profile',
                        id_gallery  = '$id_gallery',
                        waktu_buat = now()
                    WHERE id_zodiak = '$id_zodiak'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        }
    }
}

function ubahDataHari($data)
{
    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    $id_hari= htmlspecialchars($data["id_hari"]);
    $nama_zodiak = htmlspecialchars($data["nama_zodiak"]);
    $karir = htmlspecialchars($data["karir"]);
    $keuangan = htmlspecialchars($data["keuangan"]);
    $percintaan = htmlspecialchars($data["percintaan"]);

        if ($karir != null) {
            $query = "UPDATE hari
            SET nama_zodiak = '$nama_zodiak',
                karir ='$karir',
                keuangan ='$keuangan',
                percintaan ='$percintaan'
            WHERE id_hari = '$id_hari'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        } else {
            $query = "UPDATE hari
        SET nama_zodiak = '$nama_zodiak',
            karir ='$karir',
            keuangan ='$keuangan',
            percintaan ='$percintaan'
        WHERE id_hari = '$id_hari'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        }
}

function ubahDataMinggu($data)
{
    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    $id_minggu= htmlspecialchars($data["id_minggu"]);
    $nama_zodiak = htmlspecialchars($data["nama_zodiak"]);
    $karir = htmlspecialchars($data["karir"]);
    $keuangan = htmlspecialchars($data["keuangan"]);
    $percintaan = htmlspecialchars($data["percintaan"]);

        if ($karir != null) {
            $query = "UPDATE minggu
            SET nama_zodiak = '$nama_zodiak',
                karir ='$karir',
                keuangan ='$keuangan',
                percintaan ='$percintaan'
            WHERE id_minggu = '$id_minggu'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        } else {
            $query = "UPDATE minggu
        SET nama_zodiak = '$nama_zodiak',
            karir ='$karir',
            keuangan ='$keuangan',
            percintaan ='$percintaan'
        WHERE id_minggu = '$id_minggu'";

            mysqli_query($db, $query);

            return mysqli_affected_rows($db);
        }
}

function tambahDataZodiak($data)
{

    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    $id_destinasi = htmlspecialchars($data["id_destinasi"]);
    $id_gallery = htmlspecialchars($data["id_gallery"]);

    $nama_zodiak = htmlspecialchars($data["nama_zodiak"]);
    $profile = htmlspecialchars($data["profile"]);
    $karir = htmlspecialchars($data["karir"]);
    $keuangan = htmlspecialchars($data["keuangan"]);
    $percintaan = htmlspecialchars($data["percintaan"]);
    $nasihat = htmlspecialchars($data["nasihat"]);
    $gambar = htmlspecialchars($data["gambar"]);

    $file_name = $_FILES['upload_gambar']['name'];
    $file_temp_name = $_FILES['upload_gambar']['tmp_name'];

    move_uploaded_file($file_temp_name, '../Aset/Image/' . $file_name . '');


    $query = "INSERT INTO gallery (id_gallery, gambar) VALUES ('$id_gallery','$file_name')";
    mysqli_query($db, $query);

    $query = "INSERT INTO zodiak (id_zodiak, nama_zodiak, `profile`, karir, keuangan, percintaan, nasihat,id_gallery,id_admin)
             VALUES ('$id_zodiak','$nama_zodiak','$profile','$karir','$keuangan','$percintaan','$nasihat','$id_gallery','$author');";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}

function hapusDataZodiak($id_zodiak, $id_gallery)
{
    global $db;

    $query_tampil_gallery = "SELECT * FROM gallery
    WHERE id_gallery = '$id_gallery' ";
    $result_gallery = mysqli_query($db, $query_tampil_gallery);
    $row_gallery = mysqli_fetch_array($result_gallery, MYSQLI_ASSOC);

    $gambar = $row_gallery['gambar'];

    if (file_exists('../Aset/Image/' . $gambar)) {
        unlink('../Aset/Image/' . $gambar);
    }

    $query = "DELETE FROM gallery WHERE id_gallery = '$id_gallery'";
    mysqli_query($db, $query);

    $query = "DELETE FROM zodiak WHERE id_zodiak = '$id_zodiak'";
    mysqli_query($db, $query);
    return mysqli_affected_rows($db);
}

function limitDataZodiakTampil($keyword)
{
    global $db;

    $query = "SELECT
                    z.id_zodiak as 'id zodiak',
                    g.id_gallery as 'id gallery',
                    g.gambar as 'gambar',
                    z.nama_zodiak as 'nama zodiak',
                    z.profile as 'profile',
                    z.karir as 'karir',
                    z.keuangan as 'keuangan',
                    z.percintaan as 'percintaan',
                    z.nasihat as 'nasihat',
                    a.nama as 'author',
                    z.waktu_buat as 'tanggal buat'
                FROM zodiak as z
                INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
                INNER JOIN admin a on (a.id_admin = z.id_admin)
    GROUP BY ds.waktu_buat ASC
    LIMIT $keyword";

    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function limitDataHariTampil($keyword)
{
    global $db;

    $query = "SELECT * FROM hari
              LIMIT $keyword";

    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function semuaDataZodiakSlider()
{
    global $db;
    $query = "SELECT 
             SELECT
                    z.id_zodiak as 'id zodiak',
                    g.id_gallery as 'id gallery',
                    g.gambar as 'gambar',
                    z.nama_zodiak as 'nama zodiak',
                    z.profile as 'profile',
                    z.karir as 'karis',
                    z.keuangan as 'keuangan',
                    z.percintaan as 'percintaan',
                    z.nasihat as 'nasihat',
                    a.nama as 'author',
                    z.waktu_buat as 'tanggal buat'
                FROM zodiak as z
                INNER JOIN gallery as g ON (g.id_gallery = z.id_gallery)
                INNER JOIN admin a on (a.id_admin = z.id_admin)";
    $result = mysqli_query($db, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}
