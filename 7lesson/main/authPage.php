<?php
function index()
{
$content = '<h1>Форма аторизации</h1>';
if ($_SESSION['adminKey'] != ADMIN_KEY) {
$content .=<<<php
  
    <form method="post" action="?page=auth&func=login">
        <input name="login" placeholder="login">
        <input name="password" placeholder="password">
        <input type="submit" value="Login" >
    </form>

php;
    } else {
        $content .=<<<php
<a href="?page=auth&func=logout">Exit</a>
php;
    }

return $content;
}

function login()
{
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $login = clearStr($_POST['login']);
        $sql = "SELECT id, fio, password 
                FROM users 
                WHERE login = '$login'";
        $res = mysqli_query(connect(), $sql);
        $row = mysqli_fetch_assoc($res);
    

        $password = md5($_POST['password'].SOL);
        
        if (! empty($login) && $password == $row['password']) {
            $_SESSION['adminKey'] = ADMIN_KEY;
            $_SESSION['msg'] = 'Вы авторизованы';
            $_SESSION['login'] = $login;
            header('Location: ' .'?page=cabinet');
        }else{
            $_SESSION['msg'] = 'Не верный логин или пароль';
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        }
        
    }
    exit;
}

function logout()
{
    session_destroy();
    header('Location: ' .'?page=auth');
    exit;
}