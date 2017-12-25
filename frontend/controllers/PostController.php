<?php
namespace frontend\controllers;

use frontend\models\PostForm;
use common\models\CatModel;
/**
*文章控制器
*/

use Yii;
use frontend\controllers\base\BaseController;

class PostController extends BaseController
{
	public function actions()
    {
        return [
            'upload'=>[
                'class' => 'common\widgets\file_upload\UploadAction',     //这里扩展地址别写错
                'config' => [
                    'imagePathFormat' => "/image/{yyyy}{mm}{dd}/{time}{rand:6}",
                ]
            ],
			
			'ueditor'=>[
            'class' => 'common\widgets\ueditor\UeditorAction',
            'config'=>[
                //上传图片配置
                'imageUrlPrefix' => "", /* 图片访问路径前缀 */
                'imagePathFormat' => "/image/{yyyy}{mm}{dd}/{time}{rand:6}", /* 上传保存路径,可以自定义保存路径和文件名格式 */
            ]
        ]
        ];
    }
	/**
	*文章列表
	*/
	public function actionIndex()
	{
		return $this->render('index');
	}
	
	/**
	*创建文章
	*/
	
	public function actionCreate()
	{
		$model = new PostForm();
        //定义场景
        $model->setScenario(PostForm::SCENARIOS_CREATE);
        //获取所有分类
        $cat = CatModel::getAllCats();
		return $this->render('create',['model'=>$model,'cat'=>$cat]);
	}
}
?>