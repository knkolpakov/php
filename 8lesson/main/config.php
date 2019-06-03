<?php
const ADMIN_KEY = '__YES__';
const SOL = 'hghj7865gjhggf7tuib67';

function connect()
{
    static $link;
    if (empty($link)) {
        $link = mysqli_connect('localhost','root','root','gbphp');
    }
    return $link;
}

function clearStr($str)
{
    return mysqli_real_escape_string(connect(),strip_tags(trim($str)));
}
function closeNotAdmin($msg = 'Нет доступа')
{
    if (empty($_SESSION['admin']) || $_SESSION['admin'] != ADMIN) {
        $_SESSION['msg'] = $msg;
        header('Location: ?page=auth');
        exit();
    }
}

