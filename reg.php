<?php
    include('basis/session.php');
    if(isset($_SESSION['id'])){
        header('Location: catalog.php');
    }
    include('basis/header.php');
    include('content/reg.php');
    include('basis/footer.php');
?>