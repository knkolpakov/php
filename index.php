<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    
</head>
<body>
<?php
$h1='<h1>Hello</h1>';
$title='Title';
?>

<header><?php echo $h1;?></header>

<main><?php echo $title; ?></main>

<footer><?php echo date ('D,M,Y') ?></footer>


<?php
$a = 5;
$b = '05';
var_dump($a == $b);                             // Почему true? - Сравнение без типа данных в переменных
var_dump((int)'012345');                        // Почему 12345? - приведение к числу
var_dump((float)123.0 === (int)123.0); // Почему false? - float значение сплавающей запятой, а второе значение приводится к числу сравнение строгое
var_dump((int)0 === (int)'hello, world'); // Почему true? - строгое сравнение при приведении числа к 0 и строки, строка не 0
?>

</body>
</html>

