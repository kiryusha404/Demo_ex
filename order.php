<?php
    include('basis/session.php');
    if(!$_SESSION['id']){
        header('Location: catalog.php');
    }
    include('basis/header.php');
    include('basis/footer.php');
?>