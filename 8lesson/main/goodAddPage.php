<?php
function index()
{
closeNotAdmin();
$content = '';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = clearStr($_POST['name']);
    $price = clearStr($_POST['price']);
    $type = clearStr($_POST['type']);
    $preview = clearStr($_POST['preview']);
    $description = clearStr($_POST['description']);
    $characteristics = clearStr($_POST['characteristics']);
    $sql = "INSERT INTO goods (name, price, type, preview, description, characteristics)
      VALUES ('{$name}', '{$price}', '{$type}', '{$preview}', '{$description}', '{$characteristics}')";
    mysqli_query(connect(), $sql);
    $msg = 'Товар добавлен';
    $_SESSION['msg'] = $msg;
    header('Location: ?page=goods');
    exit;
}

return $content = <<<php
<h1>Добавление товара</h1>
<form method="post">
   Название: <input type="text" name="name"> <br>
   Стоимость: <input type="text" name="price"> <br>
   Категория: <input type="text" name="type"> <br>
   Картинка для списка товаров: <input type="text" name="preview" value="img/"> <br>
   Описание: <textarea name="description" id="" cols="30" rows="1"></textarea> <br>
   Характеристики: <textarea name="characteristics" id="" cols="30" rows="1"></textarea> <br>
    <input type="submit">
</form>
php;
}
