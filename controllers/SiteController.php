<?php

namespace app\controllers;

use app\models\Cinema;
use app\models\Essence;
use app\models\Event;
use app\models\Generator;
use app\models\Music;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;

class SiteController extends Controller
{

    public function beforeAction()
    {
        if ($this->action->id == 'index') {
            Yii::$app->controller->enableCsrfValidation = false;
        }

        return true;

    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $result = Essence::getEssence();
        $count = Essence::getCountEssence();
        $this->layout = false;

        $result_html = $this->renderPartial('_blocks/results_block', ['result' => $result]);
        $pagination_html = $this->renderPartial('_blocks/pagination_block', ['count' => $count, 'active' => 1]);

        $count_today = Essence::getCountEssence(0, true);
        $count_today_cinema = Essence::getCountEssence(1, true);
        $count_today_music = Essence::getCountEssence(2, true);
        $count_today_event = Essence::getCountEssence(3, true);


        return $this->render('index', [
            'result_html' => $result_html,
            'pagination_html' => $pagination_html,
            'count' => $count,
            'count_today' => $count_today,
            'count_today_cinema' => $count_today_cinema,
            'count_today_music' => $count_today_music,
            'count_today_event' => $count_today_event,

        ]);
    }

    public function actionFilter(){

        $result = Essence::getEssence($_POST['page'], $_POST['type'], $_POST['date']);
        $count = Essence::getCountEssence($_POST['type']);
        $response['result_html'] = $this->renderPartial('_blocks/results_block', ['result' => $result]);
        $response['pagination_html'] = $this->renderPartial('_blocks/pagination_block', ['count' => $count, 'active' => $_POST['page']]);
        return json_encode($response);
    }


}
