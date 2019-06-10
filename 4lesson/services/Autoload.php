<?php
namespace App\services;

class Autoload
{
    public function loadClass($className)
    {
        $file = str_replace(
            ['App\\', '\\'],
            [$_SERVER['DOCUMENT_ROOT'] . "/www/", '/'],
            $className
        ) . '.php';
        if (file_exists($file)) {
            include $file;
        }
    }
}