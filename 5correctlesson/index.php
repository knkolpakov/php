<?php
$link = mysqli_connect(
    'localhost',
    'root',
    '',
    'gbphp'
);
if (! empty($_GET['id'])) {
    $id = (int)$_GET['id'];
    $sql = "DELETE FROM gallary WHERE id = $id";
    mysqli_query($link, $sql);
    header('Location: /www');
    exit();
}
$sql = "SELECT id, name, url, count FROM gallary ORDER BY gallary.count DESC";
$res = mysqli_query($link, $sql); // or die(mysqli_error($link));
$html = file_get_contents('tmp.html');

function renderGal($res){
$gellery = '';
while ($row = mysqli_fetch_assoc($res)) {
        $gellery .= <<<php
        <div>
        <a  href="single.php?id={$row['id']}" target="_blank"><img src="{$row['url']}"alt=""></a> 
        <a href="?id={$row['id']}">Удалить</a> 
        </div>
php;
    };

    return $gellery;
}

$html = str_replace('{img}', '<div class="gal">'.renderGal($res).'</div>', $html); 

echo $html;


?>