<?php if($count > 10):?>
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li class="<?php echo $active==1?'disabled':''?>" data-id = '<?php echo $active-1?>'>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <?php for($i = 1; $i <= $count/10+1; $i++):?>
                <li class=" <?php echo $active==$i?'active':''?>" data-id = '<?php echo $i?>'><a href="#"><?php echo $i; ?></a></li>
            <?php endfor;?>
            <li class="<?php echo $active*10>$count?'disabled':''?>" data-id="<?php echo $active+1?>">
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
<?php endif;?>