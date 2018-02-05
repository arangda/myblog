<?php
use yii\helpers\Url;
/**
 * User: arangda
 * Date: 2018/2/5
 * Time: 10:17
 */
?>
<div class="panel-title box-title">
    <span><strong><?=$data['title']?></strong></span>
</div>
<div class="panel-body padding-left-0">
    <div class="cat_list">
        <?php foreach ($data['body'] as $list):?>
            <a  href="<?=Url::to(['post/index','cat'=>$list['cat_name']])?>"><span class="glyphicon glyphicon-folder-open"></span><em><?=$list['cat_name']?></em></a>
        <?php endforeach;?>
    </div>
</div>