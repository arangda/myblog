<?php
use frontend\widgets\post\PostWidget;
use yii\base\Widget;
use frontend\widgets\chat\ChatWidget;
use frontend\widgets\hot\HotWidget;
use frontend\widgets\tag\TagWidget;
?>
<div class="row">
	<div class="col-lg-9">
		<?=PostWidget::widget();?>
	</div>
	<div class="col-lg-3">
        <!--留言板
		<?=ChatWidget::widget()?>
		-->
        <!--热门浏览-->
        <?=HotWidget::widget()?>
        <!--标签云-->
        <?=TagWidget::widget()?>
	</div>
</div>



