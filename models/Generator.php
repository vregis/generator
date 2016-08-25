<?php

namespace app\models;

Class Generator {

    public function setRandomValue(){
        $model = $this->getRandomClass();
        $result = $model->find()->select('id')->orderBy('Rand()')->limit(1)->one();
        if($result){
            $essence = new Essence();
            $essence->type_id = $model->type_id;
            $essence->essence_id = $result->id;
            if($essence->save()){
                return 0; //not error
            }else{
                return 1; //has error
            }
        }else{
            return 1; // has error
        }
    }

    private function getRandomClass(){
        $classArray = [];
        $classArray[1] = new Cinema();
        $classArray[2] = new Music();
        $classArray[3] = new Event();
        $random = rand(1,3);
        return $classArray[$random];
    }



}