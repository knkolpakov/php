<?php
$link = mysqli_connect(
    'localhost',
    'root',
    '',
    'gbphp'
);
if (! empty($_GET['id'])) {
    $id = (int)$_GET['id'];
    $sql = "UPDATE gallary SET count = count + 1 WHERE id = $id";
    mysqli_query($link, $sql);
}
if (! empty($_GET['id'])) {
    $id = (int)$_GET['id'];
    $sql = "SELECT id, name, url, count FROM gallary WHERE id = $id";
    mysqli_query($link, $sql);
}

$res = mysqli_query($link, $sql); // or die(mysqli_error($link));
$single = '';
while ($row = mysqli_fetch_assoc($res)) {
    $single.= <<<php
        <img src="{$row['url']}"alt=""><br>
        Количество просмотров: <p>{$row['count']}</p>
php;
};

 echo $single;


?>