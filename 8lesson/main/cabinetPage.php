<?php
function index(){
    if ($_SESSION['adminKey'] == ADMIN_KEY) {
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

    $id = (int)$_SESSION['user'];
    $sql_order = "SELECT * FROM orders WHERE user_id = " . $id;
    $res_order = mysqli_query(connect(), $sql_order);
    $row_order = mysqli_fetch_assoc($res_order);
    $order_items = json_decode($row_order['order_items'], true);
    $orders = '';
    $content = '';
    while ($row_order = mysqli_fetch_assoc($res_order)) {
        $totalPrice = 0;
        $order_items = json_decode($row_order['order_items'], true);
        $content .= <<<php
        <br>
        <div>Номер заказа:{$row_order['id']}</div>
                Дата
                <div><p>{$row_order['date']}</p></div>
            <a href="?id={$row_order['id']}&page=order">
                    Подробнее
            </a>
        </div>
        <hr> 
        

        
php;
}


    }else{
        header('Location: ' .'?page=auth');
    exit;
    }
    return $orders = <<<php
                {$con}
                <h1>Заказы</h1>
                {$content}
                   
php;

}

