<?php /**@var array $users */ ?>
<h1>Пользователи</h1>

<?php foreach ($users as $user): /**@var  App\models\User $user */ ?>
    <a href="?id=<?= $user->id ?>&c=user&a=user">
        <h2><?= $user->login ?></h2>
    </a>
    <p><?= $user->password ?></p>
    <hr>
<?php endforeach; ?>
