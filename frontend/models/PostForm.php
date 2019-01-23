<?php 
namespace frontend\models;
use yii;
use yii\base\Model;
use common\models\PostModel;
use yii\base\Object;
use common\models\RelationPostTagModel;
use yii\db\Query;

/**
*文章表单模型
*/
class PostForm extends Model
{
	public $id;
	public $title;
	public $content;
	public $label_img;
	public $cat_id;
	public $tags;
	public $oldTags;
	public $_lastError = "";
    
    /**
    *定义场景
    *SCENARIOS_CREATE 创建
    *SCENARIOS_UPDATE 更新
    */
    const SCENARIOS_CREATE = 'create';
    const SCENARIOS_UPDATE = 'update';
	
    /**
    *定义事件
    *EVENT_AFTER_CREATE创建后事件
    *EVENT_AFTER_UPDATE更新后事件
    */
    const EVENT_AFTER_CREATE ='eventAfterCreare';
    const EVENT_AFTER_UPDATE ='eventAfterUpdate';
    const EVENT_AFTER_DELETE ='eventAfterDelete';
    
    /**
    *   场景设置
    */
    public function scenarios()
    {
        $scenarios = [
            self::SCENARIOS_CREATE =>['title','content','label_img','cat_id','tags'],
            self::SCENARIOS_UPDATE =>['title','content','label_img','cat_id','tags'],
        ];
        return array_merge(parent::scenarios(),$scenarios);
    }
	public function rules()
	{
		return [
			[['id','title','content','cat_id'],'required'],
			[['id','cat_id'],'integer'],
			['title','string','min'=>4,'max'=>50],
		];
	}
	
	public function attributeLabels()
	{
		return [
			'id'=>'编码',
			'title'=>'标题',
			'content'=>'内容',
			'label_img'=>'标签图',
			'tags'=>'标签',
			'cat_id'=>'分类',
		];
	}
	public static function getList($cond,$curPage = 1,$pageSize = 10,$which = ['id'=>SORT_DESC])
	{

		$model = new PostModel();
		//查询语句
        if($which == 'new'){
            $orderBy = 'posts.id DESC';
        }
        if($which == 'hot'){
            $orderBy = 'post_extends.browser DESC';
        }
		$query = $model->find()
                ->select('posts.id,posts.title,posts.created_at,post_extends.browser')
				->where($cond)
				->joinWith('extend')
				->orderBy($orderBy);


		//获取分页数据		
		$res = $model->getPages($query,$curPage,$pageSize);
		//格式化
		$res['data'] = self::_formatList($res['data']);
		return $res;
	}
	
	/**
	*	数据格式化
	*/
	public static function _formatList($data)
	{
		foreach($data as &$list){
			$list['tags'] = [];
			if(isset($list['relate']) && !empty($list['relate'])){
				foreach($list['relate'] as $lt){
					$list['tags'][] = $lt['tag']['tag_name'];
				}
			}
			unset($list['relate']);
		}
		return $data;
	}
	
	
    public function create()
    {

        //事务
        $transaction = Yii::$app->db->beginTransaction();
        
        try{
            
            $model = new PostModel();
            $model->setAttributes($this->attributes);
            $model->summary = $this->_getSummary();
            $model->user_id = Yii::$app->user->identity->id;
            $model->user_name = Yii::$app->user->identity->username;
            $model->is_valid = PostModel::IS_VALID;
            $model->created_at = time();
            $model->updated_at = time();

            if(!$model->save())
                throw new \Exception('文章保存失败');
            
            $this->id = $model->id;
            
            //调用事件
            $data = array_merge($this->getAttributes(),$model->getAttributes());
            $this->_evenAfterCreate($data);
            
            $transaction->commit();
            return true;
        }catch(\Exception $e){
            $transaction->rollBack();
            $this->_lastError = $e->getMessage();
            return false;
        }
    }
    public function update($id)
    {

        $res = PostModel::find()
            ->select('*')
            ->where(['id'=>$id])
            ->with('relate.tag')
            ->limit(1)
            ->asArray()
            ->one();
        foreach($res['relate'] as $r){
            $this->oldTags[] = $r['tag']['tag_name'];
        }

        $this->_eventDelTag($this->oldTags);
        $model = $this->findModel($id);
        //事务
        $transaction = Yii::$app->db->beginTransaction();

        try{
            $model->setAttributes($this->attributes);
            $model->summary = $this->_getSummary();
            $model->updated_at = time();
            if(!$model->save())
                throw new \Exception('文章保存失败');
            $this->id = $model->id;
            //调用事件
            $data = array_merge($this->getAttributes(),$model->getAttributes());
            $this->_evenAfterCreate($data);
            $transaction->commit();
            return true;
        }catch(\Exception $e){
            $transaction->rollBack();
            $this->_lastError = $e->getMessage();
            return false;
        }
    }
    protected function findModel($id)
    {
        if (($model = PostModel::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
    public function delete($id)
    {
        $model = new PostModel();
        $data = $this->getViewById($id);
        //print_r($data);die();
        $tags = $data['tags'];
        $res = $model->findOne($id)->delete();
        $this->_eventDelTag($tags);
        RelationPostTagModel::deleteAll(['post_id'=>$id]);
        return $res;
    }

    public function _eventDelTag($tags)
    {
        $tag = new TagForm();
        $tag->tags = $tags;
        $tag->delTags();
    }

	public function getViewById($id)
	{
		$res = PostModel::find()->with('relate.tag')->with('cat')->with('extend')->where(['id'=>$id])->asArray()->one();
		if(!$res){
			throw new NotFoundHttpException('文章不存在！');
		}

		//处理标签格式
		$res['tags'] = [];
		if(isset($res['relate']) && !empty($res['relate'])){
			foreach($res['relate'] as $list){
				$res['tags'][] = $list['tag']['tag_name'];
			}
		}
		unset($res['relate']);
		return $res;
	}
    /**
    *  获取文章摘要
    */
    private function _getSummary($s=0,$e=90,$char='utf-8')
    {
        if(empty($this->content))
            return null;
        
        return (mb_substr(str_replace('&nbsp;','',strip_tags($this->content)),$s,$e,$char));
    }
    /**
    * 创建完成后调用的事件方法
    */
    public function _evenAfterCreate($data){
        //添加事件
        $this->on(self::EVENT_AFTER_CREATE,[$this,'_eventAddTag'],$data);
        
        //触发事件
        $this->trigger(self::EVENT_AFTER_CREATE);
    }


    /**
    *添加标签
    */
    public function _eventAddTag($event)
    {
        $tag = new TagForm();
        $tag->tags = $event->data['tags'];
        $tagids = $tag->saveTags($event->data);
        
        //删除原先的关联关系
        RelationPostTagModel::deleteAll(['post_id'=>$event->data['id']]);
        
        //批量保存文章和标签的关联关系
        if(!empty($tagids)){
            foreach($tagids as $k => $id){
                $row[$k]['post_id'] = $this->id;
                $row[$k]['tag_id'] = $id;
            }
            //批量插入
            $res = (new Query())->createCommand()
                ->batchInsert(RelationPostTagModel::tableName(),['post_id','tag_id'],$row)
                ->execute();
            //返回结果   
            if(!$res)
                throw new \Exception("关联关系保存失败!");
        }
        
    }
}
