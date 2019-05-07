<?php

$html = file_get_contents('tmp.html');
$date = (date('r'). PHP_EOL);
$img = file('img.txt');
$data = fopen('data.txt', 'a');
fwrite($data, $date);
fclose($data);

function renderGal($img){
    $gellery = '';
    foreach($img as $value){
        $gellery .= '<a  href='.$value.' target="_blank"><img src='.$value.'alt="">'.'</a>';
       
    }
    return $gellery;
}

$html = str_replace('{img}', '<div class="gal">'.renderGal($img).'</div>', $html); 

echo $html;


?>