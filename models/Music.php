<?php


namespace app\models;

use Yii;

class Music extends \yii\db\ActiveRecord
{

    public $type_id = 2;

    /** @inheritdoc */
    public static function tableName()
    {
        return 'music';
    }




}