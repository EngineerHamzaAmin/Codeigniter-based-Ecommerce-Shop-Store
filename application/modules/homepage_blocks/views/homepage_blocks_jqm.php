
<?php
$this->load->module('homepage_offers');
$this->load->module('site_settings');
$item_segments = $this->site_settings->_get_item_segments();
$currency_symbol = $this->site_settings->_get_currency_symbol();
$count = 0;
foreach ($query->result() as $row):
    $block_id = $row->id;
    $count++;

    $num_items_on_block = $this->homepage_offers->count_where('block_id', $block_id);
    if($num_items_on_block>0):
        if($count>4){
            $count = 1;
        }
        ?>
        <h3 class="ui-bar ui-bar-a"><?= $row->block_title?></h3>
                    <?php
                    $block_data['block_id'] = $block_id;
                    $block_data['theme'] = $theme;
                    $block_data['item_segments'] = $item_segments;
                    $block_data['currency_symbol'] = $currency_symbol;
                    $this->homepage_offers->_draw_offers($block_data,TRUE);
    endif;
endforeach;
?>