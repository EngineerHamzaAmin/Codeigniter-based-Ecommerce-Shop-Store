<?php echo Modules::run('templates/_draw_breadcrumbs', $breadcrumbs_data);
if (isset($flash)) {
    echo $flash;
}
?>

<div class="row">
    <div class="col-md-2" style="margin-top: 24px">
        <a href="#" data-featherlight="<?= base_url("big_pics/$big_pic") ?>">
            <img class="img-responsive" src="<?= base_url("big_pics/$big_pic") ?>" alt="<?= $item_title ?>">
        </a>
    </div>
    <div class="col-md-7">
        <h1><?= $item_title ?></h1>
        <h1>Our Price: <?= $currency_symbol . $item_price_des ?></h1>
        <div style="clear: both">
            <?= nl2br($item_description); ?>
        </div>
    </div>
    <div class="col-md-3">
        <?= Modules::run("cart/_draw_add_to_cart", $update_id); ?>
    </div>
</div>