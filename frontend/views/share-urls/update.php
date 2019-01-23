<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\ShareUrls */

$this->title = '修改';
$this->params['breadcrumbs'][] = ['label' => 'Share Urls', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="share-urls-update">



    <?= $this->render('_form', [
        'model' => $model,
        'cat' => $cat
    ]) ?>

</div>
