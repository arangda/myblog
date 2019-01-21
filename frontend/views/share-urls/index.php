<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\ShareUrlsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Share Urls';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="share-urls-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Share Urls', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
            'describe',
            'url:url',
            'cat_id',
            //'views_num',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
