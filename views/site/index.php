<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Лента событий</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>
<body>
<div class="container">
        <!-- Stack the columns on mobile by making one full-width and the other half-width -->
    <div class="row">
        <div class="col-xs-12 col-md-12">
            <h1 class="f-left">Лента событий</h1>
            <button type="button" class="btn btn-primary f-right statistic-btn " data-toggle="modal" data-target="#statisticModal">Статистика</button>
        </div>
    </div>

    <div class="row">
            <div class="col-xs-6 col-md-3">
                <label>Сортировка по типу</label>
                <select id="type-sort" class="form-control filter-select">
                    <option value = '0'>Все</option>
                    <option value = '1'>Фильмы</option>
                    <option value = '2'>Музыка</option>
                    <option value = '3'>События</option>
                </select>
            </div>
            <div class="col-xs-6 col-md-3">
                <label>Сортировка по дате</label>
                <select id="date-sort" class="form-control filter-select">
                    <option value="1">По убыванию</option>
                    <option value="2">По возрастанию</option>
                </select>
            </div>
    </div>

    <div class="results">
        <?php echo $result_html;?>
    </div>
    <div class="paging">
        <?php echo $pagination_html;?>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="statisticModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Статистика</h4>
            </div>
            <div class="modal-body">
                <p>Сущностей всего: <?php echo $count?></p>
                <p>Сущностей сегодня: <?php echo $count_today?></p>
                <p>Фильмов сегодня: <?php echo $count_today_cinema?></p>
                <p>Музыки сегодня: <?php echo $count_today_music?></p>
                <p>Событий сегодня: <?php echo $count_today_event?></p>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="/js/custom.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>