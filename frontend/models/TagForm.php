<?php
namespace frontend\models;

use yii;
use yii\base\Model;
use common\models\TagModel;
/**
* 标签的表单模型
*/

class TagForm extends Model
{
    public $id;
    public $tags;
    
    public function rules()
    {
        return [
            ['tags','required'],
            ['tags','each','rule'=>['string']],
        ];
    }
    //保存标签集合
    public function saveTags($action)
    {
        if($action=='update'){
            print_r($this->id);die();
            $this->delTags();
        }
        $ids = [];
        if(!empty($this->tags)){
            foreach($this->tags as $tag){
                $ids[] = $this->_saveTag($tag,$action);
            }
        }
        
        return $ids;
    }
    
    private function _saveTag($tag,$action)
    {
        $model = new TagModel();
        $res = $model->find()->where(['tag_name'=>$tag])->one();
        //新建标签
        if(!$res){
            $model->tag_name = $tag;
            $model->post_num = 1;
            if(!$model->save()){
                throw new \Exception("保存标签失败");
            }
            return $model->id;
        }else{

            $res->updateCounters(['post_num' => 1]);
        }
        
        return $res->id;
    }

    /**
     * 删除标签集合
     */
    public function delTags()
    {
        if(!empty($this->tags)){
            foreach($this->tags as $tag){
                $this->_delTag($tag);
            }
        }
    }

    public function _delTag($tag)
    {
        $model = new TagModel();
        $res = $model->find()->where(['tag_name'=>$tag])->one();
        $pn = $model->find()->where(['tag_name'=>$tag])->asArray()->one();
        if($pn['post_num']>1){
            $res->updateCounters(['post_num'=>-1]);
        }else{
            $res->delete();
        }
    }
}



?>