<?php

require_once('../../Koneksi/function.php');

require_once('../section/header.php');

error_reporting(0);
 
session_start();

if (isset($_POST["submit"])) {

    global $db;
    $username = $_POST['user'];
    $password = $_POST['password'];

    $query = mysqli_query($db, "SELECT * FROM login
    WHERE user = '$username' & md5(password='$password')");

    // Mengecek pengguna
    if (mysqli_num_rows($query) != 0) {
        $row = mysqli_fetch_assoc($query);

        // var_dump($row);
        // die();
        // Membuat session
        session_start();
        $_SESSION['id_session_login'] = $row['id_login'];

        echo "
        		<script>
        			alert('berhasil login');
        			document.location.href = '../isi/beranda.php';
        		</script>
        ";
    } else {
        echo "
        <script>
            alert('gagal login');
            document.location.href = '../isi/login.php';
        </script>
";
    }
}


?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" type="text/css" href="../../Aset/CSS/styleLogin.css">
 
    <title>Toko Sepatu ASTRID</title>
</head>
<body>
 
    <div class="container">
        <form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">LOGIN ADMIN <br> ZodiakU</p>
            <div class="input-group">
                <input type="username" placeholder="Username" name="username" value="<?php echo $username; ?>" required>
            </div>
            <div class="input-group">
                <input type="password" placeholder="Password" name="password" value="<?php echo $_POST['password']; ?>" required>
            </div>
            <div class="input-group">
                <button name="submit" class="btn">Login</button>
        </form>
    </div>
</body>
</html>


<?php require_once('../section/footer.php'); ?>