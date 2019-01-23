<?php
use frontend\widgets\banner\BannerWidget;
use frontend\widgets\post\PostWidget;
use frontend\widgets\chat\ChatWidget;
use frontend\widgets\good\GoodWidget;
use frontend\widgets\better\BetterWidget;
use frontend\widgets\news\NewsWidget;
use frontend\widgets\hot\HotWidget;
use frontend\widgets\tag\TagWidget;
use frontend\widgets\classify\ClassifyWidget;
use yii\helpers\Url;
use yii\base\Widget;
use yii\widgets\ActiveForm;
use yii\helpers\Html;
/* @var $this yii\web\View */

$this->title = '阿让达-首页';
?>
<div class="row">
    <div class="col-lg-7">
        <div class="search">

            <form class="form-inline row" action="<?= Url::toRoute(['post/search']) ?>" method="post">
                <div class="form-group col-lg-9">
                    <input type="text" class="form-control" id="search" name="title" placeholder="输入搜索内容">
                </div>
                <div class="form-group col-lg-3">
                    <input name="_csrf-frontend" type="hidden" value="<?= Yii::$app->request->csrfToken ?>">
                <button type="submit" class="btn btn-success">搜索</button>
                </div>
            </form>
        </div>

        <?php foreach ($data as $k => $v): ?>
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-title"><?= $k ?></div>


            <div class="panel-body">
                <?php foreach ($v as $kk => $vv): ?>
                <a class="website" href="<?= Url::toRoute(['share-urls/view','id'=>$vv['id'],'url'=>$vv['url']]) ?>" title="<?= $vv['describe'] ?>" target="_blank"><?= $vv['title'] ?><span class="badge"><?= $vv['views_num'] ?></span></a>
                <?php endforeach;?>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
    <div class="col-lg-5">
        <div class="addthat">

            <?php if($handle):?>
                <span class="pull-right"><a href="<?= Url::toRoute(['share-urls/create']) ?>" class="btn btn-primary">添加网址</a></span>
                <span class="pull-right"><a href="<?= Url::toRoute(['post/create']) ?>" class="btn btn-primary">添加文章</a></span>
            <?php endif;?>
        </div>
		<!--最新分享-->
		<?=GoodWidget::widget()?>
        <!--热门分享-->
        <?=BetterWidget::widget()?>
        <!--分类
        <?=ClassifyWidget::widget()?>
        -->
        <!--最新文章-->
        <?=NewsWidget::widget()?>
		<!--热门浏览-->
		<?=HotWidget::widget()?>
		<!--标签云
		<?=TagWidget::widget()?>
		-->
        <!--留言板
        <?=ChatWidget::widget()?>
        -->
    </div>

</div>
