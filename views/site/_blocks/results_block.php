<?php if($result):?>
    <?php foreach($result as $res):?>
        <div class="row one-result">
            <div class="col-md-3 col-xs-6">
                <img class="" src="/img/<?php echo $res->essence_image?>">
            </div>
            <div class="col-md-9 col-xs-6">
                <p><?php echo $res->essence_name?></p>
                <?php echo $res->essence_info?'<p>'.$res->essence_info.'</p>':''?>
                <p><?php echo $res->essence_date?></p>
            </div>
        </div>
    <?php endforeach;?>

<?php endif;?>