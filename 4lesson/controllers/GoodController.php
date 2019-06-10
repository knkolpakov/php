<?php
namespace App\controllers;
use App\models\Good;

class GoodController extends DefaultController
{

    public function goodAction()
    {
        $id = (int)$_GET['id'];
        $params = [
            'good' => Good::getOne($id),
        ];
        echo $this->render('good', $params);
    }

    public function goodsAction()
    {
        $params = [
            'goods' => Good::getAll(),
        ];

        echo $this->render('goods', $params);

    }

}