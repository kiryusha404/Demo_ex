<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Чайная лавка</title>
</head>
<body>
<header>
    <?php
        if(isset($_SESSION['id'])){
            echo '<a href="order.php">Заказы</a>';
        }
        if(isset($_SESSION['role'])){
        if($_SESSION['role'] == 'admin'){
            echo '<a href="admin.php">Админ панель</a>';
        }}
    ?>
    <a href="catalog.php">Каталог</a>
    <?php
        if(isset($_SESSION['id'])){
            echo '<a href="logout.php">Выйти</a>';
        }
        else{
            echo '<a href="aut.php">Войти</a>';
        }
    ?>
</header>
