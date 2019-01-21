<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\ShareUrls */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="share-urls-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'describe')->textarea(['rows'=>3])?>

    <?= $form->field($model, 'url')->textInput(['maxlength' => true]) ?>

    <?=$form->field($model,'cat_id')->dropDownList($cat)?>

    <div class="form-group">
        <?= Html::submitButton('保存', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
