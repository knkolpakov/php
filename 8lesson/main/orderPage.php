<?php
function index()
{   
    $id = (int)$_GET['id'];
    $sql_order = "SELECT * FROM orders WHERE id = " . $id;
    $res_order = mysqli_query(connect(), $sql_order);
    $row_order = mysqli_fetch_assoc($res_order);
    $totalPrice = 0;
    $order_items = json_decode($row_order['order_items'], true);
    $info .= <<<php
     <div>
     <br>Номер заказа: {$row_order['id']}<br><br>
     </div>
     <div>
        Стату заказа: 
            <form method="post"  action="?page=order&id={$row_order['id']}&func=status">
            <select name="status">
            <option value="">{$row_order['status']}</option>
            <option name="status" value="Новый">Новый</option>
            <option name="status" value="В работе">В работе</option>
            <option name="status" value="Оплачен">Оплачен</option>
        </select>
        <input type="submit" value="Сменить статус">
            </form>
        <br>
     </div>
     <div>
        ID Клиента: {$row_order['user_id']}<br><br>
     </div>
    
    Комментарии к доставке:<br><br>
    <div class="comments_list">
    <div class="comments">
    <p>{$row_order['comment']}</p>
    <p>{$row_order['date']}</p>
    </div>
    </div>
php;
foreach ($order_items as $id => $good) {
    $totalPrice += ($good['price'] * $good['quantity']);
    $quantity += $good['quantity'];
    $goods .= <<<php
    <div>
        ID Товара: $id<br>
        {$good['name']}
        <p>Количество:{$good['quantity']}</p>
        <p>Цена за единицу товара:{$good['price']}</p>
     </div>
php;
    
}
if ($totalPrice) {
    $content .= "<div>Количество товаров всего: {$quantity}</div><br>Всего сумма: $'{$totalPrice}'";
}

return $orders = <<<php

        <h1>Информация о заказе</h1>
        <div> {$info} </div>
        <div> {$content} </div>
        <H1>Список товаров</H1>
        <div> {$goods} </div>
        <hr>
        
php;
}

function status()
{
    closeNotAdmin();
    $id = (int)$_GET['id'];
    $msg = 'Что-то пошло не так...';
    if ($_SERVER['REQUEST_METHOD'] == "POST") {
        $status = clearStr($_POST['status']);
        if(!empty($_SESSION['user'])){
        $sql = "UPDATE orders 
        SET status='{$status}'
        WHERE id = {$id}";
        mysqli_query(connect(), $sql);
        $msg = 'Статус заказа сменен';
        }
        
    }

    $_SESSION['msg'] = $msg;
    header('Location: '.$_SERVER['HTTP_REFERER']);
    exit;
}