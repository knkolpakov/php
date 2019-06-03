<?php
namespace APP\models;
class Good extends Model
{
    public $id;
    public $name;
    public $price;
    public $preview;
    public $description;
    public $count;
    public $date;

    public function getTableName(): string
    {
        return 'goods';
    }
}