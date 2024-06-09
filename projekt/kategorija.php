<?php
session_start();
    $dbc = mysqli_connect("localhost", "root","", "projekt") or die("Couldn't connect to database");
    $site = $_SERVER['PHP_SELF'];

    if(isset($_GET['kategorija'])){
        $kategorija = $_GET['kategorija'];
        
            $query = "SELECT * FROM $kategorija ORDER BY id desc";
            $res = mysqli_query($dbc, $query);
        if($kategorija == "igraci"){
            $kat = "igrac";
            $naslov = "Players";
        }if($kategorija == "klubovi"){
            $kat = "klub";
            $naslov = "Clubs";
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

    <div class="sadrzaj">
        <h2><?php echo $naslov ?></h2>
        <section>
        <?php
                while ($row = mysqli_fetch_assoc($res)) {
                    
                    echo "<article>";
                    echo "<div class='slika ". $kat . "'>";
                    echo "<a href='clanak.php?kategorija=".$kat . "&clanak=". $row['ime'] . "'>";
                    echo "<img src='slike/" . $row['slika'] . "' alt='" . $row['ime'] . "'>";
                    echo "</a>";
                    echo "</div>";
                    echo "<h3>" . $row['ime'] . "</h3>";
                    echo "<p>" . $row['opis'] . "</p>";
                    echo "</article>";
                    
                }
    ?>
        </section>
    </div>

    <footer>
    <p>Ivan Bolješić, iboljesic@tvz.hr 2024</p>
    </footer>

</body>
</html>