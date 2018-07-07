<?php
    foreach ($query->result() as $row):
        $item_title = $row->item_title;
        $small_pic = $row->small_pic;
        $was_price = $row->was_price;
        $small_pic_path = base_url("small_pics/$row->small_pic");
        $item_page = base_url("$item_segments$row->item_url");
        $item_price = number_format($row->item_price,2);
        $item_price = str_replace('.00','',$item_price);
?>
        <div class="col-xs-3">
            <div class="offer offer-<?=$theme?>" style="min-height: 400px;">
                <div class="shape">
                    <div class="shape-text">
                        <span class="glyphicon glyphicon-star" style="font-size: 1.4em;"></span>
                    </div>
                </div>
                <div class="offer-content">
                    <h3 class="lead">
                        Price Value
                        <?= $currency_symbol.$item_price?>
                    </h3>
                    <a href="<?= $item_page?>"><img src="<?= $small_pic_path?>" class="img-responsive" title="<?= $item_title?>"></a>
                    <br>
                    <p>
                       <a href="<?= $item_page?>"><?= $item_title?></a>
                    </p>
                </div>
            </div>
        </div>

<?php endforeach;?>
