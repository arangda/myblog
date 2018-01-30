<?php
/* @var $this yii\web\View */
use yii\grid\GridView;
use yii\helpers\Html;
$this->title = '分类管理';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cat_add">
    <?= Html::a('添加分类','create',['class'=>'btn btn-primary'])?>
</div>
<div class="post-model-index">

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'id',
            'cat_name',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>