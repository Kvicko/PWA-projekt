<?php
session_start();
$imeTablice = $_SESSION['baza'];

$ime = $_POST['ime'];
$opis = $_POST['opis'];
$full = $_POST['full'];
$slika = $_POST['photo'];
$dbc = mysqli_connect("localhost", "root","", "projekt") or die("Couldn't connect to database");
$query = "INSERT INTO $imeTablice(ime, opis, full, slika) VALUES(?,?,?,?)";
$stmt = mysqli_prepare($dbc, $query);


if ($stmt) {
    
    mysqli_stmt_bind_param($stmt, "ssss", $ime, $opis, $full, $slika);

    
    if (mysqli_stmt_execute($stmt)) {
       
        mysqli_stmt_close($stmt);
        mysqli_close($dbc);
        header("location: unos.php");
        exit;
    } else {
        
        echo "Error: " . mysqli_error($dbc);
    }
}


mysqli_close($dbc);
header("location: unos.php");

?>
