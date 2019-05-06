<?php




$html = file_get_contents('tmp.html');
$menu = array(
'ГЛАВНАЯ' => '#', 
'НОВОСТИ' => array('Новости о спорте' => '#', 'Новости о политеке' => '#', 'Новости о мире' => '#'), 
'КОНТАКТЫ' => '#', 
'СПРАВКА' => '#');


function renderMenu($menu){
    $render = null;
    foreach($menu as $key => $link){
       if(is_array($link)){
           $render .= '<div>'.'<a>'.'<span>'.$key.'</span>'.'<div>'.renderMenu($link).'</div>'.'</a>'.'</div>';  
       }else{
        $render .= '<div>'.'<a  href="'.$link.'">'.'<span>'.$key.'</span>'.'</a>'.'</div>';
       }
    };
    return $render;
};

$html = str_replace('{Menu}', renderMenu($menu), $html); 
echo $html;


?>