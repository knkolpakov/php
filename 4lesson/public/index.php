<?php
use App\models\User;
use App\models\Good;


include ($_SERVER['DOCUMENT_ROOT'] . '/www/services/Autoload.php');
spl_autoload_register([new \App\services\Autoload(), 'loadClass']);

@$controllerName = $_GET['c'] ?: 'good';
@$actionName = $_GET['a'];

$controllerName = 'App\\controllers\\'
    . ucfirst($controllerName) . 'Controller';

if (class_exists($controllerName)) {
    $controller = new $controllerName();
    $controller->run($actionName);
}
