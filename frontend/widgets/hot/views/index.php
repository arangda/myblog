<?php
use yii\helpers\Url;
?>
<?php if(!empty($data)):?>
<div class="panel">
    <div class="panel-title box-title">
        <span><strong><?=$data['title']?></strong></span>
    </div>
    <div class="panel-body hot-body">
        <?php foreach ($data['body'] as $list):?>
        <div class="clearfix hot-list">
            <div class="pull-left media-left">
                <span class="glyphicon glyphicon-eye-open"><em class="read"><?=$list['browser']?></em></span>
            </div>
            <div class="media-right">
                <a href="<?=Url::to(['post/view','id'=>$list['id']])?>"><?=$list['title']?></a>
            </div>
        </div>
        <?php endforeach;?>
    </div>
</div>
<?php endif;?>
