<form>
    <input name="num1" placeholder = 'Введите первое число'>
    <input name="operation" placeholder = 'Введите действие'>
    <input name="num2" placeholder = 'Введите второе число'>
    <input type="submit">
</form>

<form>
    <input name="num1" placeholder = 'Введите первое число'>
    <input name="num2" placeholder = 'Введите второе число'>
    <input type="submit" name="operation" value = "+">
    <input type="submit" name="operation" value = "-">
    <input type="submit" name="operation" value = "*">
    <input type="submit" name="operation" value = "/">
</form>


<?php
if (! empty($_GET['num1']) && ! empty($_GET['num2']) && ! empty($_GET['operation'])) {
    $a = $_GET['num1'];
    $b = $_GET['num2'];
    $operation = $_GET['operation'];

switch($operation){
    case('+'):
    echo('Сумма чисел: '.($a + $b));
    break;
 
    case('-'):
    echo('Разница чисел: '.($a - $b));
    break;
 
    case('*'):
    echo('Умножение чисел: '.($a * $b));
    break;
 
    case('/'):
    echo('Деление чисел: '.($a / $b));
    break;
 
    default:
    echo($operation.' не арифметическое действиие из предложенных');
    break;
 };
}
?>

