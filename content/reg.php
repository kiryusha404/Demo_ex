<div>
<form action="#" method="post">
    <p>Имя:</p>
    <input type="text" name="name">
    <p>Фамилия:</p>
    <input type="text" name="sur">
    <p>Отчество:</p>
    <input type="text" name="pat">
    <p>Логин:</p>
    <input type="text" name="login">
    <p>Емаил:</p>
    <input type="email" name="email">
    <p>Пароль:</p>
    <input type="pass" name="pass">
    <p>Повторите пароль:</p>
    <input type="pass" name="pass2">
    <p>Согласие с правилами регистрации</p>
    <input type="checkbox" name="check">
    <?php
        if(isset($_POST['name']) && isset($_POST['sur']) && isset($_POST['pass2']) && isset($_POST['login']) && isset($_POST['email']) && isset($_POST['pass']) && isset($_POST['check'])){
            $push = "Select * from users where login = '".$_POST['login']."'";
            $login = mysqli_query($db, $push);
            $row = mysqli_fetch_array($login);
            if(!isset($row['id_users'])){
                $push = "Select * from users where email = '".$_POST['email']."'";
                $login = mysqli_query($db, $push);
                $row = mysqli_fetch_array($login);
                if(!isset($row['id_users'])){
                    if($_POST['pass2'] == $_POST['pass']){
                            $push = 'INSERT INTO `users` (`id_user`, `name`, `surname`, `patronymic`, `login`, `email`, `pass`, `role`) VALUES (NULL, "'.$_POST['name'].'", "'.$_POST['sur'].'", "'.$_POST['pat'].'", "'.$_POST['login'].'", "'.$_POST['email'].'", "'.$_POST['pass'].'", "user");';
                            $login = mysqli_query($db, $push);

                            $push = "Select * from users where login = '".$_POST['login']."'";
                            $login = mysqli_query($db, $push);
                            $row = mysqli_fetch_array($login);

                            $_SESSION['id'] = $row['id_user'];
                            $_SESSION['role'] = $row['role'];

                            header('Location: index.php');

                    }else{
                        '<p>Пароли не совпадают</p>';
                    }
                }
                else{
                    '<p>Такая почта уже существует</p>';
                }
            }
            else{
                '<p>Такой логин уже существует</p>';
            }
        }
    ?>
    <button>Зарегистрироваться</button>

</form>
<p>У вас есть аккаунт? <a href="aut.php">Войти</a></p>
</div>