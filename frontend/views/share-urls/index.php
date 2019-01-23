<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;

/* @var $this yii\web\View */
/* @var $searchModel common\models\ShareUrlsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '分享文章';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="share-urls-index">

    <ul class="list-group">
        <?php foreach ($urls as $k => $v): ?>
        <li class="list-group-item">
            <a href="<?= \yii\helpers\Url::toRoute(['share-urls/view','id'=>$v['id'],'url'=>$v['url']]) ?>" target="_blank">
            <span class="badge"><?= $v['views_num'] ?></span>
            <?= $v['title'] ?>
            </a>
        </li>
        <?php endforeach; ?>
    </ul>

        <div class="page"><?=LinkPager::widget(['pagination' =>$pages]);?></div>

</div>
