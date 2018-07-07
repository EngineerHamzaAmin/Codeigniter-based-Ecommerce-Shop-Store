<div style="background-color: #ddd; border-radius: 7px; margin-top: 24px; padding:7px">

    <?= form_open('store_basket/add_to_basket');?>
    <table class="table" >

        <tr>
            <td colspan="2">Item ID:  <?= $item_id?></td>
        </tr>
        <?php if($num_colors>0):?>
        <tr>

            <td>Color:</td>
            <td>

                <div class="controls">
                    <?php

                    $additional_dd_code="class='form-control'";
                    echo form_dropdown('item_color', $color_options, $submitted_color,$additional_dd_code);

                    ?>
                </div>

            </td>
        </tr>
        <?php endif;?>

        <?php if($num_sizes>0):?>
            <tr>

                <td>Size:</td>
                <td>

                    <div class="controls">
                        <?php

                        $additional_dd_code="class='form-control'";
                        echo form_dropdown('item_size', $size_options, $submitted_size,$additional_dd_code);

                        ?>
                    </div>

                </td>
            </tr>
        <?php endif;?>
        <tr>
            <td>Qty:</td>
            <td>
                <div class="col-sm-6" style="padding-left: 0px">
                    <input type="text" name="item_qty" class="form-control">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <button type="submit" name="submit" value="Submit" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</button>
            </td>
        </tr>
    </table>
    <?= form_hidden('item_id',$item_id)?>
    <?= form_close();?>

</div>