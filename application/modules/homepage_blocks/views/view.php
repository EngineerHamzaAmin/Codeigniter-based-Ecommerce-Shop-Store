<h1><?= $block_title;?></h1>
<p><?= $showing_statement;?></p>

<?= $pagination;?>


<div class="row">
    <?php foreach ($query->result() as $row):
        $small_pic_path = base_url("small_pics/$row->small_pic");
        $item_page = base_url("$item_segments$row->item_url");
    ?>
    <div class="col-md-2 img-thumbnail" style="margin: 6px;min-height: 300px">
        <a href="<?= $item_page?>"><img src="<?= $small_pic_path?>" class="img-responsive" title="<?= $row->item_title?>"></a>
        <br>
        <h6><a href="<?= $item_page?>"><?= $row->item_title?></a></h6>
        <div style="clear:both; color:red;font-weight: bold">
            <?= $currency_symbol.number_format($row->item_price,2)?>
            <?php if($row->was_price > 0):?>
            <span style="text-decoration: line-through; font-weight: normal; color: #9999">
                <?= $currency_symbol.$row->was_price?>
            </span>
            <?php endif;?>
        </div>
    </div>
    <?php endforeach;?>
</div>
<?= $pagination;?>