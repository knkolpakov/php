<?php
$link = mysqli_connect(
    'localhost',
    'root',
    '',
    'gbphp'
);
if (! empty($_GET['name']) && ! empty($_GET['url'])) {
    $name = $_GET['name'];
    $url = $_GET['url'];
    $sql = "INSERT INTO gallary (name, url) 
              VALUES ('{$name}' , '{$url}')";
    mysqli_query($link, $sql);
    header('Location: /www');
    exit();
}
?>

<form>
    <input name="name" placeholder = 'Имя картинки'>
    <input name="url" value = 'img/'>
    <input type="submit">
</form>