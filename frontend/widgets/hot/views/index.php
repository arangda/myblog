<?php
use yii\helpers\Url;
?>
<?php if(!empty($data)):?>
<div class="panel">
    <div class="panel-title box-title">
        <span><strong><?=$data['title']?></strong></span>
        <a href="<?= Url::toRoute(['post/index','which'=>'hot']) ?>" class="pull-right" target="_blank">more+</a>
    </div>
    <div class="panel-body hot-body">
        <?php foreach ($data['body'] as $list):?>
        <div class="clearfix hot-list">
            <div class="pull-left media-left">
                <span class="glyphicon glyphicon-fire"><em class="read"><?=$list['browser']?></em></span>
            </div>
            <div class="media-right">
                <a href="<?=Url::to(['post/view','id'=>$list['id']])?>" target="_blank">
                    <?= mb_strlen($list['title'],'gbk')>36?mb_substr($list['title'],0,36,'gbk').'...':$list['title'] ?>
                </a>
            </div>
        </div>
        <?php endforeach;?>
    </div>
</div>
<?php endif;?>
