<?php
namespace APP\models;
class User extends Model
{
    public $id;
    public $fio;
    public $login;
    public $password;
    public $date;
    public $count;

    public function getTableName(): string
    {
        return 'users';
    }
}