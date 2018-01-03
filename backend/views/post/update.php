<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\PostModel */

$this->title = '编辑: '.$model->title;
$this->params['breadcrumbs'][] = ['label' => '文章管理', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = '编辑';
?>
<div class="post-model-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
