<?php
    include('basis/session.php');
    if($_SESSION['role'] != 'admin'){
        header('Location: catalog.php');
    }
    include('basis/header.php');
    include('basis/footer.php');
?>