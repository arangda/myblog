<?php 
namespace frontend\widgets\post;
/**
*文章列表组件
*/
use Yii;
use yii\helpers\Url;
use yii\base\Widget;
use common\models\PostModel;
use frontend\models\PostForm;
class PostWidget extends Widget
{
	/**
	*文章列表组件
	*/
	public $title = '';
	/**
	*显示条数
	*/
	public $limit = 6;
	/**
	*是否显示更多
	*/
	public $more = true;
	/**
	*是否显示分页
	*/
	public $page = false;
	
	public function run()
	{
		$curPage = Yii::$app->request->get('page',1);
		//查询条件
		$cond = ['=','is_valid',PostModel::IS_VALID];
		$res = PostForm::getList($cond,$curPage,$this->limit);
		$result['title'] = $this->title?:"最新文章";
		$result['more'] = Url::to(['post/index']);
		$result['body'] = $res['data']?:[];
		//是否显示分页
		if($this->page){
			$pages = new Pagination(['totalCount'=>$res['count'],'pageSize'=>$res['pagesize']]);
			$result['page'] = $pages;
		}
		return $this->render('index',['data'=>$result]);
	}
}
