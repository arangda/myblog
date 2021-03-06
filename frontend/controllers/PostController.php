<?php
namespace frontend\controllers;

use frontend\models\PostForm;
use common\models\CatModel;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\PostExtendModel;
use common\models\PostModel;
/**
*文章控制器
*/

use Yii;
use frontend\controllers\base\BaseController;

class PostController extends BaseController
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['index', 'create','upload','ueditor'],
                'rules' => [
                    [
                        'actions' => ['index'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['create','upload','ueditor'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    '*'=>['get','post'],
                    'create' => ['get','post'],
                ],
            ],
        ];
    }
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
	    $which = Yii::$app->request->get('which');
	    $which = $which ? $which : 'new';
		return $this->render('index',[
		    'which' => $which
        ]);
	}

    /**
     *搜索列表
     */
    public function actionSearch()
    {
        $word = Yii::$app->request->post('title');


        $s = PostModel::find()
            ->where(['like','title',$word])
            ->orWhere(['like','content',$word])
            ->all();

        return $this->render('search',[
            'data' => $s,
            'word' => $word
        ]);
    }
	/**
	*创建文章
	*/
	
	public function actionCreate()
	{
		$model = new PostForm();
        //定义场景
        $model->setScenario(PostForm::SCENARIOS_CREATE);
        
        if($model->load(Yii::$app->request->post()) && $model->validate()){
            
            if(!$model->create()){
               
                Yii::$app->session->setFlash('warning',$model->_lastError);
            }else{
                return $this->redirect(['post/view','id'=>$model->id]);
            }
        }
        //获取所有分类
        $cat = CatModel::getAllCats();
		return $this->render('create',['model'=>$model,'cat'=>$cat]);
	}
	
	/**
	* 文章详情
	*/
	
	public function actionView($id)
	{
		$model = new PostForm();
		$data = $model->getViewById($id);
		if(Yii::$app->user->isGuest){
		    $data['handle'] = false;
        }else{
            $tid = Yii::$app->user->identity->getId();
            $aid = $data['user_id'];
            $data['handle'] = ($tid==$aid)?true:false;
        }

        //文章统计
        $model = new PostExtendModel();
        $model->upCounter(['post_id'=>$id],'browser',1);
		return $this->render('view',['data'=>$data]);
	}

    /**
     * 更新文章
     * @param $id
     * @return string
     */
	public function actionUpdate($id)
    {
        $model = new PostForm();

        //定义场景
        $model->setScenario(PostForm::SCENARIOS_UPDATE);
        $data = $model->getViewById($id);

        if($model->load(Yii::$app->request->post()) && $model->validate()){
            if(!$model->update($id)){

                Yii::$app->session->setFlash('warning',$model->_lastError);
            }else{
                return $this->redirect(['post/view','id'=>$id]);
            }
        }
        //获取所有分类
        $cat = CatModel::getAllCats();
        return $this->render('update',['model'=>$model,'cat'=>$cat,'data'=>$data]);
    }

    /**
     * 删除文章
     *
     */
    public function actionDelete($id)
    {
        $model = new PostForm();
        if(!$model->delete($id)){
            Yii::$app->session->setFlash('warning',$model->_lastError);
        }else {
            return $this->redirect(['index']);
        }
    }


}
?>