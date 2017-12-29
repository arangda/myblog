<?php 
namespace frontend\widgets\banner;
use Yii;
use yii\helpers\Url;
use yii\bootstrap\Widget;

class BannerWidget extends Widget
{
    public $item = [];
    public function init()
    {
        if(empty($this->item)){
            $this->item = [
                [
                    'label'=>'demo',
                    'image_url' =>'/statics/images/banner/banner1.jpg',
                    'url'=>['site/index'],
                    'html'=>'aaaa',
                    'active' =>'active',
                ],
                [
                    'label'=>'demo',
                    'image_url' =>'/statics/images/banner/banner2.jpg',
                    'url'=>['site/index'],
                    'html'=>'',
                ],
                [
                    'label'=>'demo',
                    'image_url' =>'/statics/images/banner/banner3.jpg',
                    'url'=>['site/index'],
                    'html'=>'',
                ],
            ];
        }
    }
    
    public function run()
    {
        $data['items']=$this->item;
        return $this->render('index',['data'=>$data]);
    }
}




?>