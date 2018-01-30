<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = '创建';
$this->params['breadcrumbs'][] = ['label'=>'文章','url'=>['post/index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
	<div class="col-lg-9">
		<div class="panel-title box-title">
			<span>创建文章</span>
		</div>
		<div class="panel-body">
			<?php $form = ActiveForm::begin()?>
				<?=$form->field($model,'title')->textinput(['maxlength'=>true])?>
				<?=$form->field($model,'cat_id')->dropDownList($cat)?>
				 <?= $form->field($model,'label_img')->widget('common\widgets\file_upload\FileUpload',[
					'config'=>[
					]
				]) ?>
				<?= $form->field($model, 'content')->widget('yidashi\markdown\Markdown',['language'=>'zh']) ?>
				<?=$form->field($model,'tags')->widget('common\widgets\tags\TagWidget')?>
			<div class="form-group">
				<?=Html::submitButton('发布',['class'=>'btn btn-success'])?>
			</div>
			<?php ActiveForm::end()?>
		</div>
	</div>
	<div class="col-lg-3">
		555
	</div>
</div>