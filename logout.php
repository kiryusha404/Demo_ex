<?php
    session_start();
    $_SESSION = array();
    header('Location: catalog.php');
?>