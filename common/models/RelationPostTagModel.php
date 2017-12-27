<?php

namespace common\models;
use common\models\base\BaseModel;
use Yii;

/**
 * This is the model class for table "relation_post_tags".
 *
 * @property integer $id
 * @property integer $post_id
 * @property integer $tag_id
 */
class RelationPostTagModel extends BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'relation_post_tags';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['post_id', 'tag_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'post_id' => 'Post ID',
            'tag_id' => 'Tag ID',
        ];
    }
}
