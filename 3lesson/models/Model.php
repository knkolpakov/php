<?php
namespace App\models;

use App\services\Db;
/**
 * Class Model
 */
abstract class Model implements IModel
{
    /**
     * @var Db
     */
    private $db;

    /**
     * Good constructor.
     */
    public function __construct()
    {
        $this->db = Db::getInstance();
    }

    /**
     * Получение конкретной записи
     *
     * @param $id
     * @return array
     */
    public function getOne($id)
    {
        $sql = "SELECT * FROM {$this->getTableName()} WHERE id = :id";
        $row = $this->db->find($sql, [':id' => $id]);
        $this->name = $row['name'].'<br>';
        $this->price = $row['price'].'<br>';
        $this->info = $row['info'].'<br>';
        echo($this->name.$this->price.$this->info.'<br>');
    }

    /**
     * Получение всех записей
     *
     * @return array
     */
    public function getAll()
    {
        $sql = "SELECT * FROM {$this->getTableName()}";
        $row = $this->db->findAll($sql);
        foreach($row as $value){
            $this->name = $value['name'].'<br>';
            $this->price = $value['price'].'<br>';
            $this->info = $value['info'].'<br>';
            echo($this->name.$this->price.$this->info.'<br>');
        }
    }

    public function addGood()
    {
        $sql = "INSERT INTO {$this->getTableName()} (name, price, info)
        VALUES ('{$this->name}', '{$this->price}', '{$this->info}')";
        return $this->db->findAll($sql);
    }

    public function updateGood()
    {
        $sql = "UPDATE {$this->getTableName()} 
        SET name=:name, price=:price, info=:info
        WHERE id = :id";
        return $this->db->find($sql, 
        [':id' => $this->id, 
        ':name' => $this->name, 
        ':price' => $this->price, 
        ':info' => $this->info]);
    }

    public function delete()
    {
        $sql = "DELETE FROM {$this->getTableName()} WHERE id = :id";
        return $this->db->find($sql, [':id' => $this->id]);
    }


}