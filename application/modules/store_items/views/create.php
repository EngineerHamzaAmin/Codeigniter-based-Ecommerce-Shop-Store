<h1><?= $headline;?></h1>

<?= validation_errors("<p style='color:red;'>","</p>");?>
<?= $flash_data;?>

<?php if(isset($update_id)):?>
<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Item Options</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>

        <div class="box-content">

            <?php
                if($got_gallery_pic==TRUE){
                    echo "<div class='alert alert-info'>";
                    echo "Note: You have at least one gallery pic for this item";
                    echo "</div>";
                    $gallery_btn_theme = 'success';
                    $delete_btn_text = "Delete Main Image";
                } else {
                    $gallery_btn_theme = 'primary';
                    $delete_btn_text = "Delete Item Image";

                }
            ?>

            <div class="row-fluid sortable">
                <?php if($big_pic==""){?>
                <a href="<?= base_url("store_items/upload_image/$update_id")?>"><button type="button" class="btn btn-primary">Upload Item Image</button></a>
                <?php }else{?>
                <a href="<?= base_url("store_items/delete_image/$update_id")?>"><button type="button" class="btn btn-danger"><?= $delete_btn_text?></button></a>
                <?php }?>
                <a href="<?= base_url("item_galleries/update_group/$update_id")?>"><button type="button" class="btn btn-<?= $gallery_btn_theme?>">Manage Item Gallery</button></a>
               
                <a href="<?= base_url("store_item_colors/update/$update_id")?>"><button type="button" class="btn btn-primary">Update Item Colors</button></a>
                <a href="<?= base_url("store_item_sizes/update/$update_id")?>"><button type="button" class="btn btn-primary">Update Item Sizes</button></a>
                <a href="<?= base_url("store_cat_assign/update/$update_id")?>"><button type="button" class="btn btn-primary">Update Item Categories</button></a>
                <a href="<?= base_url("store_items/deleteConf/$update_id")?>"><button type="button" class="btn btn-danger">Delete Item</button></a>
                <a href="<?= base_url("store_items/view/$update_id")?>"><button type="button" class="btn btn-default">View Item</button></a>

            </div>
        </div>

    </div><!--/span-->

</div><!--/row-->
<?php endif;?>



<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Item Details</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>


        <div class="box-content">
            <?php
                $form_location=base_url("store_items/create/$update_id");
            ?>
            <form class="form-horizontal" method="post" action="<?= $form_location;?>">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="item_title">Item Title</label>
                        <div class="controls">
                            <input type="text" class="span6" name="item_title" value="<?= $item_title?>">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="item_price">Item price</label>
                        <div class="controls">
                            <input type="text" class="span6" name="item_price" value="<?= $item_price?>">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="was_price">Was Price</label>
                        <div class="controls">
                            <input type="text" class="span6" name="was_price" value="<?= $was_price?>">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="status">Status</label>
                        <div class="controls">
                            <?php

                                $additional_dd_code="id='selectError3'";
                                $options = array(
                                    ''         => 'Select Please...',
                                    '1'         => 'Active',
                                    '0'           => 'Inactive',
                                );
                                echo form_dropdown('status', $options, $status,$additional_dd_code);

                            ?>
                        </div>
                    </div>


                    <div class="control-group hidden-phone">
                        <label class="control-label" for="textarea2">Item Description</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" name="item_description" rows="3">
                                <?= $item_description;?>
                            </textarea>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary" name="submit" value="Submit">Save changes</button>
                        <button type="submit" class="btn" name="submit" value="Cancel">Cancel</button>
                    </div>
                </fieldset>
            </form>

        </div>
    </div><!--/span-->

</div><!--/row-->


<?php if(isset($big_pic) && $big_pic!=''):?>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon white edit"></i><span class="break"></span>Item Options</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>

            <div class="box-content">
                <div class="row-fluid sortable">
                    <img src="<?=base_url("big_pics/$big_pic")?>">
                </div>
            </div>

        </div><!--/span-->

    </div><!--/row-->
<?php endif;?>
