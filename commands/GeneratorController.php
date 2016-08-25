<?php
namespace app\commands;

use app\models\Generator;
use yii\console\Controller;

class GeneratorController extends Controller {


    public function actionGenerator(){
        $generator = new Generator();
        $error = $generator->setRandomValue(); //generate random essence
        if($error == 0){
            echo 'Essence was added';
        }else{
            echo 'Error!';
        }
    }


}