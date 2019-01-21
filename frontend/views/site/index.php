<?php
use frontend\widgets\banner\BannerWidget;
use frontend\widgets\post\PostWidget;
use frontend\widgets\chat\ChatWidget;
use frontend\widgets\hot\HotWidget;
use frontend\widgets\tag\TagWidget;
use frontend\widgets\classify\ClassifyWidget;
use yii\helpers\Url;
use yii\base\Widget;
/* @var $this yii\web\View */

$this->title = '阿让达-首页';
?>
<div class="row">
    <div class="col-lg-9">

        <div class="panel-title box-title">

            <?php if($handle):?>
                <span class="pull-right"><a href="<?= Url::toRoute(['share-urls/create']) ?>" class="btn btn-primary">添加网址</a></span>
                <span class="pull-right"><a href="<?= Url::toRoute(['post/create']) ?>" class="btn btn-primary">添加文章</a></span>
            <?php endif;?>
        </div>
        <?php foreach ($data as $k => $v): ?>
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading"><?= $k ?></div>


            <div class="panel-body">
                <?php foreach ($v as $kk => $vv): ?>
                <a href="<?= Url::toRoute(['share-urls/view','id'=>$vv['id'],'url'=>$vv['url']]) ?>" title="<?= $vv['describe'] ?>" target="_blank"><?= $vv['title'] ?><span class="badge"><?= $vv['views_num'] ?></span></a>
                <?php endforeach;?>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
    <div class="col-lg-3">
		<!--留言板
		<?=ChatWidget::widget()?>
		-->
        <!--分类-->
        <?=ClassifyWidget::widget()?>
		<!--热门浏览-->
		<?=HotWidget::widget()?>
		<!--标签云-->
		<?=TagWidget::widget()?>
    </div>

</div>
