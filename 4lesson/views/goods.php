<?php /**@var array $users */ ?>
<h1>Товары</h1>

<?php foreach ($goods as $good): /**@var  App\models\User $good */ ?>
    <a href="?id=<?= $good->id ?>&c=good&a=good">
        <h2><?= $good->name ?></h2>
    </a>
    <p><?= $good->price ?></p>
    <hr>
<?php endforeach; ?>