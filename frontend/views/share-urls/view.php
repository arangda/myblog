<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\ShareUrls */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Share Urls', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="share-urls-view">


    <p>
        <?= Html::a('修改', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('删除', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        <?= Html::a('添加', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'title',
            'describe',
            'url:url',
            'cat_id',
            'views_num',
        ],
    ]) ?>

</div>
