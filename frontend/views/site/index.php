<?php
use frontend\widgets\banner\BannerWidget;
use yii\base\Widget;
/* @var $this yii\web\View */

$this->title = '博客-首页';
?>
<div class="row">
    <div class="col-lg-9">
        <!--图片轮播-->
        <?=BannerWidget::widget()?>
    </div>
    <div class="col-lg-3">
    222
    </div>

</div>
