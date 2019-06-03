<?php

function index()
{   
    if(! empty($_SESSION['cart'])){ 
    $content ='';
    $item = '';
    foreach($_SESSION['cart'] as $id => $value) { 
        list('price' => $price, 'name' => $name, 'quantity' => $quantity) = $value;
        $sum = $price * $quantity;
        $total += $sum;
        $item .= <<<php
            <div class="products">

                <div class="productinfo">

                    <div class="productfoto">
                        
                    </div>
                    <div class="producttext">
                        <div>{$name}</div>
                    </div>
                </div>
                <div>$ {$price}</div>
                <div class="quantity">
                <form >
                <a href="?id={$id}&page=cart&func=minquantityGood&action=min&quantity={$quantity}">
                -
                </a>
                <input type="text" value="{$quantity}" >
                <a href="?id={$id}&page=cart&func=addquantityGood&action=add&quantity={$quantity}">
                +
                </a>
                </form>
                </div>
                <div>$ {$sum}</div>
                <div> 
                    <a href="?id={$id}&page=cart&func=delGood&action=del">
                    <img src="img/x.png" alt="foto">
                 </a>
                </div>
            </div>
            <hr>
php;
        
    }
   
    return $content = <<<php
    
    <div class="rowname">
                <div>Product Details </div>
                <div>unite Price</div>
                <div>Quantity</div>
                <div>SUBTOTAL</div>
                <div>ACTION</div>
            </div>
            <hr>
        {$item}
    <div class="total">Итого: $ {$total}</div>
    <h1>Форма заказа</h1>
    <form method="post" action="?page=orders&func=add">
        <textarea 
            name="comment" 
            placeholder="Введите контактные данные" 
            id="" 
            cols="30" 
            rows="5"></textarea>
            <input type="submit" value="Создать заказ">    
    </form>
php;


}else{ 
    
    return $msg = "Ваша корзина пуста"; 
      
} 
}
function minquantityGood(){
    if(isset($_GET['action']) && $_GET['action']=="min"){ 
        $id=(int)($_GET['id']);
        $quantity = (int)($_GET['quantity']);
        if($quantity <= 1){
            unset($_SESSION['cart'][$id]);
        }else{
            $_SESSION['cart'][$id]['quantity']--;
        }
    }
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

function addquantityGood(){
    if(isset($_GET['action']) && $_GET['action']=="add"){ 
        $id=(int)($_GET['id']);
        $quantity = (int)($_GET['quantity']);
            $_SESSION['cart'][$id]['quantity']++;
    }
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
}

function delGood(){
    if(isset($_GET['action']) && $_GET['action']=="del"){ 
        $id=(int)($_GET['id']);
        unset($_SESSION['cart'][$id]);
    }
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    exit;
    
}