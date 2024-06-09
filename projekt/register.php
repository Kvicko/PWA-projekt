<?php
    $dbc = mysqli_connect("localhost", "root", "", "projekt") or die("Couldn't connect to database");
    $site = $_SERVER['PHP_SELF'];
   
    
 
    if(isset($_POST['Create'])){
        $ime = $_POST['name'];
    $prezime = $_POST['surname'];
    $kime = $_POST['user'];
    $lozinka = $_POST['password'];
 
    $query = "INSERT INTO korisnici (ime,prezime,user,password) VALUES(?,?,?,?)";
 
    $stmt = mysqli_prepare($dbc, $query);
    mysqli_stmt_bind_param($stmt, "ssss", $ime, $prezime, $kime, password_hash($lozinka, CRYPT_BLOWFISH));
    mysqli_stmt_execute($stmt);
    header("location: login.php");
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
    <h2>Register</h2>
        <form action="register.php" method="post">
            <label for="name">Name:</label><br>
            <input type="text" name="name" id="name"><br>
            <label for="name" name="nameLabel" id="nameLabel" ></label><br>
            <label for="surname">Surname:</label><br>
            <input type="text" name="surname" id="surname"><br>
            <label for="surname" name="surnameLabel" id="surnameLabel" ></label><br>
            <label for="user">Username:</label><br>
            <input type="text" name="user" id="user" ><br>
            <label for="userLabel" name="userLabel" id="userLabel" ></label><br>
            <label for="password">Password:</label><br>
            <input type="password" name="password" id="password" ><br>
            <label for="password" name="passwordLabel" id="passwordLabel"></label><br>
            <label for="repassword">Repeat password:</label><br>
            <input type="password" name="repassword" id="repassword"><br>
            <label for="password" name="repasswordLabel" id="repasswordLabel"></label><br>
            <div>
            <input type="submit" value="Register" name="Create" id="Create">
            
            <input type="reset" value="Cancel">
            
            </div>
            </form>
    </div>
    <script>
        document.getElementById("Create").onclick = function(event){
            var slanje = true;

            var name = document.getElementById('name').value;
            var surname = document.getElementById('surname').value;
            var username = document.getElementById('user').value;
            var password = document.getElementById('password').value;
            var repassword = document.getElementById('repassword').value;
            var nameLabel = document.getElementById('nameLabel');
            var surnameLabel = document.getElementById('surnameLabel');
            var userLabel = document.getElementById('userLabel');
            var passwordLabel = document.getElementById('passwordLabel');
            var repasswordLabel = document.getElementById('repasswordLabel');

            if(name.length < 1){
                slanje = false;
                nameLabel.innerHTML = "Name field should not be empty";
                nameLabel.style.color = "Red";
            }else {
                nameLabel.innerHTML = "";
            }
            if(surname.length < 1){
                slanje = false;
                surnameLabel.innerHTML = "Surname field should not be empty";
                surnameLabel.style.color = "Red";
            }else{
                surnameLabel.innerHTML = "";
            }
            if(username.length < 5 || username > 30){
                slanje = false;
                userLabel.innerHTML = "Username should be between 5 and 30 characters";
                userLabel.style.color = "Red";
            }else{
                userLabel.innerHTML = "";
            }
            if(password.length < 8 ){
                slanje = false;
                passwordLabel.innerHTML = "Password should be at last 8 characters long";
                passwordLabel.style.color = "Red";

            }else{
                passwordLabel.innerHTML = "";
            }
            if(repassword != password){
                slanje = false;
                repasswordLabel.innerHTML = "Should be the same as password";
                repasswordLabel.style.color = "Red";

            }else{
                repasswordLabel.innerHTML = "";
            }


            if(!slanje){
            event.preventDefault();
            }
        }
    </script>

    <footer>
    <p>Ivan Bolješić, iboljesic@tvz.hr 2024</p>
    </footer>

</body>
</html>