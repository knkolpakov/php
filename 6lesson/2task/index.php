<?php
const PUBLIC_DIR = __DIR__;

include ('config.php');

$page = (int)$_GET['page'];

switch ($page) {
    case 1: include ('pages/goodsPage.php'); break;
    case 2: include ('pages/goodAddPage.php'); break;
    case 3: include ('pages/goodPage.php'); break;
    case 4: include ('pages/goodUpdatePage.php'); break;
    default: include ('pages/goodsPage.php'); break;
}

$file = file_get_contents('tmp.html');

echo str_replace('{CONTENT}', $content, $file);

