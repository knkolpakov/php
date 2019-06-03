<?php
/**
 * Class Model
 */
namespace APP\models;
abstract class Model implements IModel
{
    use Calc;
    private $db;

    /**
     * Good constructor.
     * @param IDb $bd Экзепляр класса Db
     */
    public function __construct(IDb $bd)
    {
        $this->db = $bd;
    }

    /**
     * Получение конкретной записи
     *
     * @param $id
     * @return string
     */
    public function getOne($id)
    {
        $sql = "SELECT * FROM {$this->getTableName()} WHERE id = {$id}";
        return $this->db->find($sql);
    }

    /**
     * Получение всех записей
     *
     * @return array
     */
    public function getAll()
    {
        $sql = "SELECT * FROM {$this->getTableName()}";
        return $this->db->findAll($sql);
    }
}