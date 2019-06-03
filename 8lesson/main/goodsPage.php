<?php
function index()
{
    

$sql = "SELECT id, name, price, type, preview, date, count FROM goods";
$res = mysqli_query(connect(), $sql);
$content = '<h1>Товары</h1>';
$items = '';
while ($row = mysqli_fetch_assoc($res)) {

$items .= <<<php
    <div class="item">
    
         <div class="addcart">
         <a href="?id={$row['id']}&page=good">
                 <div>Подробнее</div>
                 </a>
        <a href="?id={$row['id']}&page=goods&func=addCart&action=add">
                 <div>Купить</div>
                 </a>
         </div>
    
         <img src="{$row['preview']}" alt="">
         <div class="dis">{$row['name']}</div>
         <div class="price">
         $'{$row['price']}'
         
         </div>
         <a href="?id={$row['id']}&page=goodUpdate">Обновить..</a>
     </div>
     
php;

$content = '<h1>Товары</h1><div class="items">'.$items.'</div>';

}
return $content;
}

function addCart(){
    if(isset($_GET['action']) && $_GET['action']=="add"){ 
        $id=intval($_GET['id']);   
        if(isset($_SESSION['cart'][$id])){ 
            $_SESSION['cart'][$id]['quantity']++; 
        }else{ 
            $sql_cart="SELECT name, id, price FROM goods 
                WHERE id ={$id}"; 
            $query_cart=mysqli_query(connect(), $sql_cart); 
            if(mysqli_num_rows($query_cart)!=0){ 
                $row_cart=mysqli_fetch_array($query_cart);   
                $_SESSION['cart'][$row_cart['id']]=array( 
                        "quantity" => 1, 
                        "price" => $row_cart['price'],
                        "name" => $row_cart['name']
                    ); 
            }else{ 
                  
               return $msg="Даннго id товара нет";   
            }   
        } 
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } 
    
}
