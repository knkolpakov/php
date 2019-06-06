<?php
use App\models\User;
use App\models\Good;

include ($_SERVER['DOCUMENT_ROOT'] . '/www/services/Autoload.php');

spl_autoload_register([new \App\services\Autoload(), 'loadClass']);

$user1 = new User();

$good = new Good();


//CRUD
/*
$good->id = 3;
$good->name = 'test2';
$good->price = 234;
$good->info = 'lorem';
$good->addGood();
$good->updateGood();
$good->delete();
*/

//$good->getOne(3);
//$good->getAll();

