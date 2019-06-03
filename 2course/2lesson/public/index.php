<?php

include ($_SERVER['DOCUMENT_ROOT'] . '/www/services/Autoload.php');

spl_autoload_register([new Autoload(), 'loadClass']);

$good = new Good(new Db());

var_dump($good->getCount([1,5,5,5]));

