<?php
namespace APP\models;
class Good extends Model
{
    public $id;
    public $id_good;
    public $text;
    public $date;

    public function getTableName(): string
    {
        return 'comments';
    }
}