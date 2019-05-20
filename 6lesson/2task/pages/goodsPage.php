<?php
$sql = "SELECT id, name, price, type, preview, date, count FROM goods";
$res = mysqli_query(connect(), $sql);
$content = '<h1>Товары</h1>';
$items = '';
while ($row = mysqli_fetch_assoc($res)) {

$items .= <<<php
    <div class="item">
    
         <div class="addcart">
         <a href="?id={$row['id']}&page=3">
                 <div>Подробнее</div>
                 </a>
         </div>
    
         <img src="{$row['preview']}" alt="">
         <div class="dis">{$row['name']}</div>
         <div class="price">
         $'{$row['price']}'
         
         </div>
         <a href="?id={$row['id']}&page=4">Обновить..</a>
     </div>
     
php;

$content = '<h1>Товары</h1><div class="items">'.$items.'</div>';
}
