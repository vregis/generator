<?php


namespace app\models;

use Yii;

class Essence extends \yii\db\ActiveRecord
{

    public $essence_name;
    public $essence_date;
    public $essence_image;
    public $essence_info; // place for Events, singer for Music, NULL for cinema

    /** @inheritdoc */
    public static function tableName()
    {
        return 'essence';
    }

    public static function getEssence($page=1, $type=0, $date=1){
        $sql = self::find()
            ->select(['type_id,
                CASE WHEN type_id=1 THEN C.name WHEN type_id=2 THEN CONCAT_WS ("/",M.name, M.`album`) ELSE `E`.`name` END AS essence_name,
                CASE WHEN type_id=1 THEN C.date WHEN type_id=2 THEN M.date ELSE CONCAT_WS(" - ",start_date, `E`.`end_date`) END AS essence_date,
                CASE WHEN type_id=1 THEN C.image WHEN type_id=2 THEN M.image ELSE E.image END AS essence_image,
                CASE WHEN type_id=1 THEN NULL WHEN type_id=2 THEN M.singer ELSE E.place END AS essence_info'])
            ->join('LEFT JOIN', 'cinema C', 'C.id = essence.essence_id')
            ->join('LEFT JOIN', 'music M', 'M.id = essence.essence_id')
            ->join('LEFT JOIN', 'event E', 'E.id = essence.essence_id');

        //if uses filter

        if($type != 0){
            $sql = $sql->where(['essence.type_id' => $type]);
        }
        if($date == 1){
            $sql = $sql->orderBy(['essence.date' => SORT_DESC]);
        }else{
            $sql = $sql->orderBy(['essence.date' => SORT_ASC]);
        }

        //if uses pagination
        if($page != 1){
            $sql = $sql->offset(10*($page-1)+1);
        }

         $sql = $sql->limit(10)
            ->all();
        return $sql;
    }

    public static function getCountEssence($type = 0, $today = false){
        $essence = self::find();
        if($type != 0){
            $essence = $essence->where(['type_id' => $type]);
        }
        if($today != false){
            $essence = $essence->andWhere('date >= CURDATE()');
        }
        $essence = $essence->count();
        return $essence;

    }




}