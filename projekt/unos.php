<?php
session_start();
$site = $_SERVER['PHP_SELF'];

$enterInfo = isset($_SESSION['info']) ? $_SESSION['info'] : "";
if(isset($_GET['unos'])){
    $unos = $_GET['unos'];
    if($unos == "igrac"){
        $enterInfo = "Player";
        $_SESSION['baza']="igraci";
        $_SESSION['info'] = "Player";
        
    }
    if($unos == "klub"){
        $enterInfo = "Club";
        $_SESSION['baza']="klubovi";
        $_SESSION['info'] = "Club";
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
<body>
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
    <div class="sadrzaj unos">
        <h2>Enter <?php echo $enterInfo ?> Info</h2>
        <form action="skripta.php" method="post">
            <label for="ime"><?php echo $enterInfo ?> name</label><br>
            <input type="text" name="ime" id="ime" required><br>
            <label for="opis"><?php echo $enterInfo ?> short description</label><br>
            <textarea name="opis" id="opis" required></textarea><br>
            <label for="full"><?php echo $enterInfo ?> full description</label><br>
            <textarea name="full" id="full"></textarea><br>
            <label for="photo">Pick a photo</label><br>
            <input type="file" name="photo" id="photo"><br>
            <div>
            <input type="submit" value="Save">
            <input type="reset" value="Cancel">
            </div>
        </form>
    </div>
    <footer>
    <p>Ivan Bolješić, iboljesic@tvz.hr 2024</p>
    </footer>
</body>
</html>

