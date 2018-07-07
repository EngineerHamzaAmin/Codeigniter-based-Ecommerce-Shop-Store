<h1><?= $cat_title;?></h1>
<p><?= $showing_statement;?></p>

<?= $pagination;?>


<div class="row">
    <?php foreach ($query->result() as $row):
        $item_title = $row->item_title;
        $small_pic = $row->small_pic;
        $item_price = $row->item_price;
        $was_price = $row->was_price;
        $small_pic_path = base_url("small_pics/$row->small_pic");
        $item_page = base_url("$item_segments$row->item_url");
    ?>
    <div class="col-md-2 img-thumbnail" style="margin: 6px;min-height: 300px">
        <a href="<?= $item_page?>"><img src="<?= $small_pic_path?>" class="img-responsive" title="<?= $item_title?>"></a>
        <br>
        <h6><a href="<?= $item_page?>"><?= $item_title?></a></h6>
        <div style="clear:both; color:red;font-weight: bold">
            <?= $currency_symbol.number_format($item_price,2)?>
            <?php if($was_price > 0):?>
            <span style="text-decoration: line-through; font-weight: normal; color: #9999">
                <?= $currency_symbol.$was_price?>
            </span>
            <?php endif;?>
        </div>
    </div>
    <?php endforeach;?>
</div>
<?= $pagination;?>