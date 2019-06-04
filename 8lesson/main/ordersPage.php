<?php
function index()
{
    closeNotAdmin();
    $sql = "SELECT id, user_id, date, comment, order_items, status
            FROM orders ORDER BY id DESC";
    $res = mysqli_query(connect(), $sql);
    $orders = '';
    $content = '';
    while ($row = mysqli_fetch_assoc($res)) {
        $totalPrice = 0;
        $order_items = json_decode($row['order_items'], true);
        $content .= <<<php
        <br>
        <div> <h2>Номер заказа: {$row['id']}</h2> 
            <a href="?id={$row['id']}&page=order">
                    Подробнее
            </a>
        </div>
        <div>
        Статус заказа: {$row['status']}
        </div>
        {$row['date']}

        
php;
        foreach ($order_items as $id => $good) {
            $totalPrice += ($good['price'] * $good['quantity']);
            $quantity += $good['quantity'];
        }
        if ($totalPrice) {
            $content .= "<div><p>Количество товаров: {$quantity}</p></div><p>Всего сумма: $'{$totalPrice}'</p><br><hr>";
        }
    }

    return $orders = <<<php

                <h1>Заказы</h1>
                <div> {$content} </div>
                
php;

}

function add()
{
    $msg = 'Что-то пошло не так...';
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $comment = clearStr($_POST['comment']);
        $order_items = json_encode($_SESSION['cart'], JSON_UNESCAPED_UNICODE);
        var_dump();
        if(!empty($_SESSION['user'])){
        $sql = "INSERT INTO orders(user_id, comment, order_items) 
                VALUES ('{$_SESSION['user']}','{$comment}', '{$order_items}')";
        mysqli_query(connect(), $sql);
        $msg = 'Ваш заказ принят. Его номер:' . mysqli_insert_id(connect());
        }else{
            $msg = 'Для заказа сначала необходимо зарегистрироваться';
            $_SESSION['msg'] = $msg;
            header('Location: '.'?page=auth');
    exit;
        }
        //unset($_SESSION['cart']);
        
    }

    $_SESSION['msg'] = $msg;
    header('Location: '.$_SERVER['HTTP_REFERER']);
    exit;
}