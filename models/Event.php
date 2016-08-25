<?php


namespace app\models;

use Yii;

class Event extends \yii\db\ActiveRecord
{

    public $type_id = 3;

    /** @inheritdoc */
    public static function tableName()
    {
        return 'event';
    }


}