<?php
function index(){
    $login = $_SESSION['login'];
    $sql = "SELECT id, fio, login, password 
                FROM users 
                WHERE login = '$login'";
    $res = mysqli_query(connect(), $sql);
    $con = ''; 
    while ($row = mysqli_fetch_assoc($res)) {
    $con .= <<<php
            <h1>Личный кабинет</h1>
            <div class="dis">Здравствуйте {$row['fio']}, Ваш логин: {$row['login']}</div>
            <a href="?page=auth&func=logout">Exit</a>
php;
    }
    return $con;

}

