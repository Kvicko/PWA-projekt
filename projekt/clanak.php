<?php
    session_start();
    $dbc = mysqli_connect("localhost", "root","", "projekt") or die("Couldn't connect to database");
    $site = $_SERVER['PHP_SELF'];
    if(isset($_GET['kategorija'])){
        $kategorija = $_GET['kategorija'];
        if($kategorija == "igrac"){
            $clanak = $_GET['clanak'];
            $query = "SELECT * FROM igraci WHERE ime = '$clanak' limit 1";
            $res = mysqli_query($dbc, $query);
            $row = mysqli_fetch_assoc($res);
        }
        if($kategorija == "klub"){
            $clanak = $_GET['clanak'];
            $query = "SELECT * FROM klubovi WHERE ime = '$clanak' limit 1";
            $res = mysqli_query($dbc, $query);
            $row = mysqli_fetch_assoc($res);
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body class="clanak-body">
<header>
        <h1>Football Players Hub</h1>
        <div class="ball">
        <img  src="slike/ball.png" alt="">
        </div>
    </header>
    <nav>
        <div class="nav"><a href="index.php">Home</a></div>
        <div class="nav item"><a href="login.php">Administration</a></div>
        <div class="nav item"><a href="unos.php?unos=klub">Enter a new club</a></div>
        <div class="nav item"><a href="unos.php?unos=igrac">Enter a new player</a></div>
        <div class="nav item menu"><a href="">
        <?php
                                if(isset($_SESSION['user'])){
                                    echo $_SESSION['user'];
                                }
                                ?></a> 
                    <div class="content">
                    <a href='logout.php?lokacija=<?php echo $site ?>'>Log out</a>
                    </div>

        </div>
        
    </nav>

    <div class="sadrzaj">
        <div class="clanak-slika">
            <img src="slike/<?php echo $row['slika']?>" alt="">
        </div>
        <h2 class="clanak-naslov"><?php echo $row['ime'] ?></h2>
        <p class="clanak-tekst"><?php echo $row['full'] ?></p>
    </div>


    <footer>
    <p>Ivan Bolješić, iboljesic@tvz.hr 2024</p>
    </footer>
</body>
</html>
<?php
mysqli_close($dbc);
?>