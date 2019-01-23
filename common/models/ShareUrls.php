<?php

namespace common\models;

use Yii;
use common\models\base\BaseModel;
/**
 * This is the model class for table "share_urls".
 *
 * @property int $id
 * @property string $title
 * @property string $describe
 * @property string $url
 * @property int $cat_id
 * @property int $views_num
 */
class ShareUrls extends BaseModel
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'share_urls';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'url', 'cat_id'], 'required'],
            [['cat_id', 'views_num'], 'integer'],
            [['title', 'url'], 'string', 'max' => 255],
            [['describe'], 'string', 'max' => 500],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => '标题',
            'describe' => '描述',
            'url' => 'Url',
            'cat_id' => '类别',
            'views_num' => '访问量',
        ];
    }
}
