<?php

namespace common\models;
use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "cats".
 *
 * @property integer $id
 * @property string $cat_name
 * @property int $sortrank
 */
class CatModel extends BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'cats';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sortrank'], 'integer'],
            [['cat_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cat_name' => '分类',
            'sortrank' => '排序',
        ];
    }
    /**
    * 获取所有分类
    */
    public static function getAllCats()
    {

        $res = self::find()->orderBy('sortrank ASC')->asArray()->all();
        if($res){
            foreach($res as $key => $list){
                $cat[$list['id']] = $list['cat_name'];
            }
        }
        return $cat;
    }
}
