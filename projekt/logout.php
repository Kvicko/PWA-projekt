<?php
    session_start();
    unset($_SESSION['user']);
    $lokacija = $_GET['lokacija'];
    header("location: $lokacija");
?>