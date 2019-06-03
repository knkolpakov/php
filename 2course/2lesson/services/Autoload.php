<?php

namespace APP\services;
class Autoload
{
    private $dir = [
      'models',  'services', 'traids'
    ];

    public function loadClass($className)
    {
        var_dump($className);
        foreach ($this->dir as $dir)
        {
            $file = $_SERVER['DOCUMENT_ROOT'] . "/www/{$dir}/{$className}.php";
            if (file_exists($file)) {
                include $file;
                break;
            }

        }
    }
}