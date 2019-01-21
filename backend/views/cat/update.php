<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\CatModel */

$this->title = '修改';
$this->params['breadcrumbs'][] = ['label' => '分类', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="cat-model-update">



    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
