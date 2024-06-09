<?php
    session_start();
    $dbc = mysqli_connect("localhost", "root","", "projekt") or die("Couldn't connect to database");
    $queryigraci = "SELECT * FROM igraci";
    $queryklubovi = "SELECT * FROM klubovi";
    $resigraci = mysqli_query($dbc,$queryigraci);
    $resklubovi = mysqli_query($dbc,$queryklubovi);
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
        
        <?php
            if($_SESSION['user'] == 'Admin'){

                
            while($row = mysqli_fetch_array($resigraci)) {

                echo '<form enctype="multipart/form-data" action="skripta2.php" method="POST">
                
                <label for="title">Player name:</label>
                
                <input type="text" name="ime" class="form-field-textual"
               value="'.$row['ime'].'">
               
                
                <label for="opis">Player short description (up to 50 characters):</label>
                
                <textarea name="opis" id="opis" cols="30" rows="10" class="formfield-textual">'.$row['opis'].'</textarea>
                
                
                <label for="full">Player full description:</label>
                
                <textarea name="full" id="full" cols="30" rows="10" class="formfield-textual">'.$row['full'].'</textarea>
                
                
                <label for="">Photo:</label><br>
                
               
                <input type="file" class="input-text" id="slika"
               value="'.$row['slika'].'"  name="slika" /> <br><img src="slike/'. $row['slika'] . '" width=100px>
               
                
                
                
                <input type="hidden" name="id" class="form-field-textual"
               value="'.$row['id'].'">
               <input type="hidden" name="kategorija" class="form-field-textual"
               value="igraci">
               <div class="button-group">
                <button type="reset" value="Cancel">Cancel</button>
                <button type="submit" name="update" value="Accept">
               Change</button>
                <button type="submit" name="delete" value="Delete">
               Delete</button>
               </div>
                
                </form>';
            }
            while($row = mysqli_fetch_array($resklubovi)) {

                echo '<form enctype="multipart/form-data" action="skripta2.php" method="POST">
                
                <label for="title">Club name:</label>
                
                <input type="text" name="ime" class="form-field-textual"
               value="'.$row['ime'].'">
                
                
                <label for="opis">Club short description (up to 50 characters):</label>
                
                <textarea name="opis" id="opis" cols="30" rows="10" class="formfield-textual">'.$row['opis'].'</textarea>
                
                
                <label for="full">Club full description:</label>
                
                <textarea name="full" id="full" cols="30" rows="10" class="formfield-textual">'.$row['full'].'</textarea>
                
               
                <label for="">Photo:</label>
                
               
                <input type="file" class="input-text" id="slika"
               value="'.$row['slika'].'" name="slika"/> <br><img src="slike/'. $row['slika'] . '" width=100px>
               
                
                
                
                <input type="hidden" name="id" class="form-field-textual"
               value="'.$row['id'].'">
               <input type="hidden" name="kategorija" class="form-field-textual"
               value="klubovi">
               <div class="button-group">
                <button type="reset" value="Cancel">Cancel</button>
                <button type="submit" name="update" value="Accept">
               Change</button>
                <button type="submit" name="delete" value="Delete">
               Delete</button>
               </div>
                </form>';
            }
        }else{
            echo '<h1 class="adminh"> Only Admin can make changes </h1>';
            echo '<div class="admini">';
            echo '<img class="admini" src="slike/sudac.jpg" </img>';
            echo '</div>';
        }
               
        
        ?>

            

    </div>

    <footer>
    <p>Ivan Bolješić, iboljesic@tvz.hr 2024</p>
    </footer>

</body>
</html>