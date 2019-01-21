<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\ShareUrls */

$this->title = 'Create Share Urls';
$this->params['breadcrumbs'][] = ['label' => 'Share Urls', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="share-urls-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>