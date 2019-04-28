<?php


// 1 Задание
$a = 18;
$b = -6;

if($a >= 0 && $b >= 0){
    echo $a - $b;
}elseif($a < 0 && $b < 0){
    echo $a * $b;
}
else{
    echo $a + $b;
};

 echo '<br>';
 echo '<br>';


// 2 Задание
$random = rand (0, 15);

switch ($random){
 case '0':
 echo '0 <br>';
 case '1':
 echo '1 <br>';
 case '2':
 echo '2 <br>';
 case '3':
 echo '3 <br>';
 case '4':
 echo '4 <br>';
 case '5':
 echo '5 <br>';
 case '6':
 echo '6 <br>';
 case '7':
 echo '7 <br>';
 case '8':
 echo '8 <br>';
 case '9':
 echo '9 <br>';
 case '10':
 echo '10 <br>';
 case '11':
 echo '11 <br>';
 case '12':
 echo '12 <br>';
 case '13':
 echo '13 <br>';
 case '14':
 echo '14 <br>';
 case '15':
 echo '15 <br>';
 break;
}

echo '<br>';
echo '<br>';


//3 - 4 задание
function addition($a,$b)
{
   return ($a + $b);
};

function subtraction($a,$b)
{
   return ($a - $b);
};

function multiplication($a,$b)
{
   return ($a * $b);
};

function division($a,$b)
{
   return ($a / $b);
};
$operation = 'addition';
switch($operation){
    case('addition'):
    echo('Сумма чисел: '.addition($a,$b));
    break;
 
    case('subtraction'):
    echo('Разница чисел: '.subtraction($a,$b));
    break;
 
    case('multiplication'):
    echo('Умножение чисел: '.multiplication($a,$b));
    break;
 
    case('division'):
    echo('Деление чисел: '.division($a,$b));
    break;
 
    default:
    echo($operation.' не арифметическое действиие из предложенных');
    break;
 };
 
 echo '<br>';
 echo '<br>';


 // 6 задание
 function power($val = 1, $pow = 2){
    if ($pow == 0){
        return 1;
    }
    return $val * power($val, $pow-1);
 };
 echo '<br> Возведение числа в степень: '.power(3, 4);

?>




