<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\ShareUrls */

$this->title = '添加链接';
$this->params['breadcrumbs'][] = ['label' => '添加链接', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="share-urls-create">


    <?= $this->render('_form', [
        'model' => $model,
        'cat' => $cat
    ]) ?>

</div>
