<?php

use yii\helpers\Markdown;
use yii\helpers\Html;

$this->title = $data['title'];
$this->params['breadcrumbs'][] = ['label'=>'文章','url'=>['post/index']];
$this->params['breadcrumbs'][] = $this->title;
?>

	<div class="col-lg-10 col-sm-10">
		<div class="page-title">
			<h1><?= $data['title'] ?></h1>
        </div>

        <div class="page-content">
            <?= $content = Markdown::process($data['content'],'gfm');?>
        </div>
        <div class="page-addtion">
            <span>作者：<?= $data['user_name'] ?></span>
            <span>发布：<?= date('Y-m-d',$data['created_at']); ?></span>
            <span>分类：<?= $data['cat']['cat_name'] ?></span>
            <span>浏览：<?= isset($data['extend']['browser'])?$data['extend']['browser']:0 ?>次</span>
        </div>
		<div class="page-tag">
			标签:
			<?php foreach ($data['tags'] as $tag): ?>
				<span><a href="#"><?=$tag?></a></span>
			<?php endforeach; ?>
		</div>
        <?php if($data['handle']): ?>
        <p class="page-handle">
            <?= Html::a('删除',['delete','id'=>$data['id']],['class'=>'btn btn-danger',
                'data'=>[
                    'confirm'=>'确定要删除这篇文章吗',
                    'method'=>'post',
                ],
                ])?>
            <?= Html::a('编辑',['update','id'=>$data['id']],['class'=>'btn btn-primary'])?>
        </p>
        <?php endif ?>
	</div>
<div class="col-lg-2">
</div>

