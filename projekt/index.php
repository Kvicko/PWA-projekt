<?php
    session_start();
    $dbc = mysqli_connect("localhost", "root","", "projekt") or die("Couldn't connect to database");

    $query = "SELECT * FROM igraci ORDER BY id desc LIMIT 4";
    $res = mysqli_query($dbc,$query);

    $queryklub = "SELECT * FROM klubovi ORDER BY id desc LIMIT 4";
    $resklub = mysqli_query($dbc,$queryklub);

    $site = $_SERVER['PHP_SELF'];

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
        <a class="kat-link" href="kategorija.php?kategorija=igraci">
        <h2>Players</h2>
        </a>
    
    <section class="prvi">
        
    <?php
                while ($row = mysqli_fetch_assoc($res)) {
                    
                    echo "<article>";
                    echo "<div class='slika igrac'>";
                    echo "<a href='clanak.php?kategorija=igrac&clanak=". $row['ime'] . "'>";
                    echo "<img src='slike/" . $row['slika'] . "' alt='" . $row['ime'] . "'>";
                    echo "</a>";
                    echo "</div>";
                    echo "<h3>" . $row['ime'] . "</h3>";
                    echo "<p>" . $row['opis'] . "</p>";
                    echo "</article>";
                    
                }
    ?>
        
    </section>
    <a class="kat-link" href="kategorija.php?kategorija=klubovi">
    <h2>Clubs</h2>
    </a>
   
    <section class="drugi">
        
    <?php
                while ($rowklub = mysqli_fetch_assoc($resklub)) {
                   
                    echo "<article>";
                    echo "<div class='slika klub'>";
                    echo "<a href='clanak.php?kategorija=klub&clanak=". $rowklub['ime'] . "'>";
                    echo "<img src='slike/" . $rowklub['slika'] . "' alt='" . $rowklub['ime'] . "'>";
                    echo "</a>";
                    echo "</div>";
                    echo "<h3>" . $rowklub['ime'] . "</h3>";
                    echo "<p>" . $rowklub['opis'] . "</p>";
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

<?php
mysqli_close($dbc);
?>