<?php
session_start();

$dbc = mysqli_connect("localhost", "root","", "projekt") or die("Couldn't connect to database");
$tablica = $_POST['kategorija'];


$id = $_POST['id'];
$ime = $_POST['ime'];
$opis = $_POST['opis'];
$full = $_POST['full'];
$slika = $_FILES['slika']['name'];
$citanje = "SELECT * FROM $tablica WHERE id = $id";
$res = mysqli_query($dbc,$citanje);
$row = mysqli_fetch_assoc($res);
if($slika == ''){
    $slika = $row['slika'];
}



if (isset($_POST['update'])){
    $query = "UPDATE $tablica SET ime = ?, opis = ?,full = ?, slika = ? WHERE id = ?";
    $stmt = mysqli_prepare($dbc, $query);
    
    if ($stmt) {
    
        mysqli_stmt_bind_param($stmt, "ssssi", $ime, $opis, $full, $slika, $id);
    
        
        if (mysqli_stmt_execute($stmt)) {
           
            mysqli_stmt_close($stmt);
            mysqli_close($dbc);
            header("location: administracija.php");
            exit;
        } else {
            
            echo "Error: " . mysqli_error($dbc);
        }
    }

}
if(isset($_POST['delete'])){
    $query = "DELETE FROM $tablica WHERE id = ?";
    $stmt = mysqli_prepare($dbc, $query);

    if ($stmt) {
    
        mysqli_stmt_bind_param($stmt, "i", $id);
    
        
        if (mysqli_stmt_execute($stmt)) {
           
            mysqli_stmt_close($stmt);
            mysqli_close($dbc);
            header("location: administracija.php");
            exit;
        } else {
            
            echo "Error: " . mysqli_error($dbc);
        }
    }
}


?>