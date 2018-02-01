<?php
use frontend\widgets\chat\ChatWidget;
use frontend\widgets\hot\HotWidget;
use frontend\widgets\tag\TagWidget;
use yii\helpers\Markdown;
use yii\helpers\Html;
$this->title = $data['title'];
$this->params['breadcrumbs'][] = ['label'=>'文章','url'=>['post/index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="">
	<div class="col-lg-9">
		<div class="page-title">
			<h1><?= $data['title'] ?></h1>
			<span>作者：<?= $data['user_name'] ?></span>
			<span>发布：<?= date('Y-m-d',$data['created_at']); ?></span>
			<span>浏览：<?= isset($data['extend']['browser'])?$data['extend']['browser']:0 ?>次</span>
		</div>
		<?= $content = Markdown::process($data['content'],'gfm');?>
		<div class="page-tag">
			标签:
			<?php foreach ($data['tags'] as $tag): ?>
				<span><a href="#"><?=$tag?></a></span>
			<?php endforeach; ?>
		</div>
        <?php if($data['handle']): ?>
        <p>
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