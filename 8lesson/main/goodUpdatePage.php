<?php
function index()
{
closeNotAdmin();
$id = (int)$_GET['id'];
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = clearStr($_POST['name']);
    $price = clearStr($_POST['price']);
    $type = clearStr($_POST['type']);
    $preview = clearStr($_POST['preview']);
    $description = clearStr($_POST['description']);
    $characteristics = clearStr($_POST['characteristics']);
    $sql = "UPDATE goods 
        SET name='{$name}', price='{$price}', type='{$type}', preview='{$preview}', description='{$description}', characteristics='{$characteristics}'
        WHERE id = {$id}";
    mysqli_query(connect(), $sql);
    header('Location: ?page=1');
    exit;
}

$sql = "SELECT id, name, price, type, preview, description, characteristics, count, date 
FROM goods WHERE id = " . $id;

$res = mysqli_query(connect(), $sql);
$row = mysqli_fetch_assoc($res);
$content = '';
return $content =<<<php
<h1>Редактирование информации</h1>
<form method="post">
   Название: <input type="text" name="name" value="{$row['name']}"> <br>
   Стоимость: <input type="text" name="price" value="{$row['price']}"> <br>
   Категория: <input type="text" name="type" value="{$row['type']}"> <br>
   Картинка для списка товаров: <input type="text" name="preview" value="{$row['preview']}"> <br>

   Описание: <textarea name="description" id="" cols="30" rows="1">{$row['description']}</textarea> <br>
   Характеристики: <textarea name="characteristics" id="" cols="30" rows="1">{$row['characteristics']}</textarea> <br>
    <input type="submit">
</form>
php;
}
