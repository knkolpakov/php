<?php
namespace App\controllers;
use App\models\User;
use App\models\Model;
use App\models\IModel;

class UserController extends DefaultController
{
    
    public function userAction()
    {
        $id = (int)$_GET['id'];
        $params = [
            'user' => User::getOne($id),
        ];
        echo $this->render('user', $params);
    }

    public function usersAction()
    {
        $params = [
            'users' => User::getAll(),
        ];

        echo $this->render('users', $params);

    }


}