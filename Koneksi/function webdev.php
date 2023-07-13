<?php

$server_name = "localhost";
$username_server = "root";
$password_server = "";
$database_name = "online_course(astrid)";

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

function dataCourse($halaman_awal, $batas)
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

function tambahCourse($data)
{

    global $db;
    $author = 1;

    // ambil data dari tiap elemen dalam form
    $id_kursus = htmlspecialchars($data["id_kursus"]);
    $judul_kurus = htmlspecialchars($data["judul_kursus"]);
    $deskripsi_kursus = htmlspecialchars($data["deskripsi_kursus"]);
    $durasi_kursus = htmlspecialchars($data["durasi_kursus"]);

    $query = "INSERT INTO kursus(id_kursus, judul_kursus, deskripsi_kursus, durasi_kursus)
                VALUES ('$id_kursus','$judul', '$isi_informasi', '$id_gallery' )";
    mysqli_query($db, $query);

    return mysqli_affected_rows($db);
}


