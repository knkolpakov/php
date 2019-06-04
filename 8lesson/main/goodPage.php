<?php
function index()
{
$id = (int)$_GET['id'];
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $text = clearStr($_POST['text']);
    $sql = "INSERT INTO comments (text, id_good)
      VALUES ('{$text}', '{$id}')";
    mysqli_query(connect(), $sql);
    header('Location: ?id='.$id.'&page=good');
    exit;
}
$sql_good = "SELECT id, name, price, type, preview, description, characteristics, count, date 
FROM goods WHERE id = " . $id;
$res_good = mysqli_query(connect(), $sql_good);
$row_good = mysqli_fetch_assoc($res_good);

$sql_gallery = "SELECT id, name, url, id_good, date FROM gallery WHERE id_good = " . $id;
$res_gallery = mysqli_query(connect(), $sql_gallery);

$items = '';
while ($row_gallery = mysqli_fetch_assoc($res_gallery)) {
    $items .= <<<php
        <img src="{$row_gallery['url']}" alt="">
php;
}

$sql_comments = "SELECT id, id_good, text, date FROM comments WHERE id_good = " . $id;
$res_comments = mysqli_query(connect(), $sql_comments);

$comments = '';
while ($row_comments = mysqli_fetch_assoc($res_comments)) {
$comments .= <<<php
    <div class="comments">
    <p>{$row_comments['text']}</p>
    <p>{$row_comments['date']}</p>
    </div>
php;
}

$content = '';
return $content .= <<<php
    <div class="single_good">
     <div class="single_info">
      <div class="single_preview">
         <img src="{$row_good['preview']}" alt="">
         <div class="single_foto">
         {$items}
         </div>
      </div>

     <div class="single_price">
        <p>Цена: $"{$row_good['price']}"</p>
        <p>Категория: {$row_good['type']}</p>
     </div>
    </div>
    <H1>Описание</H1>
     <div class="single_description">
        <p>{$row_good['description']}</p>
     </div>
    <hr>
    </div>

    <H1>Комментарии</H1>
    <div class="comments_list">
    {$comments}
    <H1>Написать комментарий</H1>
     <form method="post">
      <textarea name="text" id="{$id}" cols="100" rows="5"></textarea> <br>
      <br>
      <input type="submit">
     </form>
    </div>
    
    <hr>
php;
}
