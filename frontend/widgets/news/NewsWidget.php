<?php
namespace frontend\widgets\news;

/**
*最新浏览组件
*/
use Yii;
use yii\bootstrap\Widget;
use yii\boot\Object;
use common\models\PostExtendModel;
use common\models\PostModel;
use yii\db\Query;

class NewsWidget extends Widget
{
	public $title = '';
	public $limit = 6;
	
	public function run()
	{
		$res = (new Query())
			->from(PostModel::tableName())
			->limit($this->limit)
            ->orderBy('created_at DESC')
			->all();
			
		$result['title'] = $this->title?:'最新文章';
		$result['body'] = $res?:[];
		
		return $this->render('index',['data'=>$result]);
	}
}




?>