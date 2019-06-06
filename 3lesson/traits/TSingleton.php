<?php
namespace App\traits;

trait TSingleton
{
    private static $item;

    protected function __construct() {}
    protected function __clone() {}
    protected function __wakeup() {}

    public static function getInstance()
    {
        if (empty(static::$item)) {
            static::$item = new static();
        }
        return static::$item;
    }


}