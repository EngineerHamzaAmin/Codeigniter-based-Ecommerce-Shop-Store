<h1><?= $headline;?></h1>
<h2><?= $sub_headline;?></h2>

<?= $flash_data;?>

<p style="margin-top: 20px">

    <a href="<?= base_url("store_items/create/$parent_id")?>">
        <button type="button" class="btn btn-default">Previous Page</button>
    </a>
    <a href="<?= base_url("item_galleries/upload_image/$parent_id")?>" role="button" class="btn btn-info" data-toggle="modal">Upload New Picture</a>
</p>


<?php
    if($num_rows<1){
        echo "So far you have not uploaded any gallery $entity_name for $parent_title";
    } else {
?>


<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white picture"></i><span class="break"></span>Existing Images</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th>Picture</th>
                    <th class="span2">Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php
                    foreach($query->result() as $row):
                        $delete_url = base_url("item_galleries/deleteConf/$row->id");
                        $picture = $row->picture;
                        $pic_path = base_url("item_galleries_pics/$picture");
                 ?>
                <tr>
                    <td>
                        <?php if($picture!=''):?>
                            <img src="<?= $pic_path?>">
                        <?php endif; ?>
                    </td>
                    <td class="center">
                        <a class="btn btn-danger" href="<?= $delete_url;?>">
                            <i class="halflings-icon white trash"></i>
                        </a>
                    </td>
                </tr>
                <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div><!--/span-->

</div><!--/row-->
            <?php }?>