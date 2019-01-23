<?php
use frontend\widgets\post\PostWidget;
use yii\base\Widget;
use frontend\widgets\chat\ChatWidget;
use frontend\widgets\good\GoodWidget;
use frontend\widgets\better\BetterWidget;
use frontend\widgets\news\NewsWidget;
use frontend\widgets\hot\HotWidget;
use frontend\widgets\tag\TagWidget;
use frontend\widgets\classify\ClassifyWidget;
?>
<div class="row">
	<div class="col-lg-7">
		<?=PostWidget::widget(['which'=>$which]);?>
	</div>
	<div class="col-lg-5">
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



