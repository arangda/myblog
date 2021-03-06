<?php

namespace frontend\controllers;

use Yii;
use common\models\ShareUrls;
use common\models\ShareUrlsSearch;
use yii\data\Pagination;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\models\CatModel;


/**
 * ShareUrlsController implements the CRUD actions for ShareUrls model.
 */
class ShareUrlsController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all ShareUrls models.
     * @return mixed
     */
    public function actionIndex()
    {
        $model = new ShareUrls();
        $cat_id = $_GET['cat_id']? $_GET['cat_id']:4;
        $which = $_GET['which'] == 'new' ? 'id DESC' : 'views_num DESC';

        if($cat_id == 4){

            $query = $model->find()
                ->where(['cat_id' =>4])
                ->orderBy($which);
        }
        $curPage = Yii::$app->request->get('page',1);
        $pageSize = 20;
        $res = $model->getPages($query,$curPage,$pageSize);

        $pages = new Pagination(['totalCount'=>$res['count'],'pageSize'=>$res['pageSize']]);

        return $this->render('index', [
            'urls' => $res['data'],
            'pages' => $pages
        ]);
    }

    /**
     * Displays a single ShareUrls model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        if(!empty($_GET['url'])){
            ShareUrls::updateAllCounters(['views_num'=>1],['id'=>$id]);
            return $this->redirect($_GET['url']);
        }else{
            return $this->render('view', [
                'model' => $this->findModel($id)
            ]);
        }

    }

    /**
     * Creates a news ShareUrls model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new ShareUrls();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }
        $cat = CatModel::getAllCats();
        return $this->render('create', [
            'model' => $model,
            'cat' => $cat
        ]);
    }

    /**
     * Updates an existing ShareUrls model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }
        $cat = CatModel::getAllCats();
        return $this->render('update', [
            'model' => $model,
            'cat' => $cat
        ]);
    }

    /**
     * Deletes an existing ShareUrls model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the ShareUrls model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return ShareUrls the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = ShareUrls::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
