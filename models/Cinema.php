<?php


namespace app\models;

use Yii;

class Cinema extends \yii\db\ActiveRecord
{

    public $type_id = 1;

    /** @inheritdoc */
    public static function tableName()
    {
        return 'cinema';
    }


}