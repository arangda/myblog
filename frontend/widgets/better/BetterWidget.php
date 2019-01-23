<?php
namespace frontend\widgets\better;

/**
*最热好文浏览组件
*/
use Yii;
use yii\bootstrap\Widget;
use yii\boot\Object;
use common\models\PostExtendModel;
use common\models\PostModel;
use yii\db\Query;

class BetterWidget extends Widget
{
	public $title = '';
	public $limit = 6;
	
	public function run()
	{
		$res = (new Query())
			->from('share_urls')
            ->where(['cat_id'=>4])
            ->orderBy('views_num DESC')
			->limit($this->limit)
			->all();


		$result['title'] = $this->title?:'热门分享';
		$result['body'] = $res?:[];
		
		return $this->render('index',['data'=>$result]);
	}
}




?>