<?php
   session_start();
   $dbc = mysqli_connect("localhost", "root", "", "projekt") or die("Couldn't connect to database");
   $site = $_SERVER['PHP_SELF'];
   
   $poruka = "";

   
    if(isset($_SESSION['user'])){
        header("location: administracija.php");
    }
   
   
   if (isset($_POST['Register'])) {
       header("location: register.php");
       exit;
   }
   
   if (isset($_POST['Login'])) {
       $username = $_POST['user'];
       $password = $_POST['password']; 
       $query = "SELECT user,password FROM korisnici WHERE user = ?";
       
       $stmt = mysqli_prepare($dbc, $query);
   
       if ($stmt) {
           mysqli_stmt_bind_param($stmt, "s", $username);
   
           if (mysqli_stmt_execute($stmt)) {
               mysqli_stmt_store_result($stmt); 
   
               if (mysqli_stmt_num_rows($stmt) > 0) {
                   mysqli_stmt_bind_result($stmt, $kime, $lozinka);
                   mysqli_stmt_fetch($stmt);
   
                   
                   if (password_verify($password, $lozinka)) {
                       
                       $_SESSION['user'] = $kime;
                       mysqli_stmt_close($stmt);
                       mysqli_close($dbc);
                       header("location: administracija.php");
                       exit;
                   } else {
                       $poruka = "Invalid password.";
                   }
               } else {
                   $poruka = "No such username exists.";
               }
   
               mysqli_stmt_close($stmt);
           } else {
               $poruka = "Error: " . mysqli_error($dbc);
           }
       } else {
           $poruka = "Error preparing statement.";
       }
   
       mysqli_close($dbc);
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
    <h2>Login</h2>
        <form action="login.php" method="post">
            <label for="user">Username:</label><br>
            <input type="text" name="user" id="user" ><br>
            <label for="password">Password:</label><br>
            <input type="password" name="password" id="password" ><br>
            <div>
            <input type="submit" value="Login" name="Login">
            <input type="submit" value="Register" name="Register">
            <input type="reset" value="Cancel">
            <p><?php echo $poruka ?></p>
            </div>
            </form>
    </div>

    <footer>
    <p>Ivan Bolješić, iboljesic@tvz.hr 2024</p>
    </footer>

</body>
</html>
