<?php
namespace frontend\widgets\classify;
use common\models\CatModel;
use yii\base\Widget;

/**
 * User: arangda
 * Date: 2018/2/5
 * Time: 10:17
 * 分类组件
 */
class ClassifyWidget extends Widget
{
    public $title = '';
    public function run()
    {
        $result['title'] = $this->title?:'分类';
        $result['body'] = CatModel::find()
            ->asArray()
            ->all();


       // print_r($model);die();
        return $this->render('index',['data'=>$result]);
    }
}