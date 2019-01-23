<?php

use yii\helpers\Url;
use yii\widgets\LinkPager;
?>
<div class="panel">
    <div class="new-list">
    <?php foreach ($data['body'] as $list):?>
        <div class="panel-body border-bottom">      
            <div class="row">
                <div class="btn-group col-xs-12">
                    <h1><a href="<?=Url::to(['post/view','id'=>$list['id']])?>" target="_blank"><?=$list['title']?>
                            <span class="badge"><?=$list['browser']?></span>
                        </a>
                    </h1>

                </div>
            </div>

        </div>
        <?php endforeach;?>            
    </div>
    <?php if($this->context->page):?>
    <div class="page"><?=LinkPager::widget(['pagination' => $data['page']]);?></div>
    <?php endif;?>
</div>