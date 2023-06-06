<div>
<form action="#" method="post">
    <p>Логин:</p>
    <input type="text" name="login">
    <p>Пароль:</p>
    <input type="password" name="pass">
    <?php 
        if(isset($_POST['login']) && isset($_POST['pass'])){
            $push = 'SELECT * FROM `users` WHERE login = "'.$_POST['login'].'";';
            $login = mysqli_query($db, $push);
            $row = mysqli_fetch_array($login);
            if(isset($row['pass'])){
            if($_POST['pass'] == $row['pass']){
                $_SESSION['id'] = $row['id_user'];
                $_SESSION['role'] = $row['role'];
                header('Location: index.php');
            }
            else{
                echo '<p>Неверный логин или пароль</p>';
            }
        }else{
            echo '<p>Неверный логин или пароль</p>';
        }
        }
    ?>
    <button>Войти</button>
</form>
<p>У вас нет аккаунта? <a href="reg.php">Создать</a></p>
</div>
