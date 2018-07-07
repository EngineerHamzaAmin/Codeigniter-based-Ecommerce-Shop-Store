<h1>Manage Items</h1>

<?= $flash_data;?>

<p style="margin-top: 20px">
    <a href="<?= base_url().'store_items/create';?>">
        <button type="button" class="btn btn-primary">Create Item</button>
    </a>
</p>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white tag"></i><span class="break"></span>Items Layout</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th>Item Title</th>
                    <th>Price</th>
                    <th>Was Price</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php
                    foreach($query->result() as $row):
                        $status=$row->status;
                        if($status==1){
                            $status_label='success';
                            $status_desc="Active";
                        }else{
                            $status_label='default';
                            $status_desc="Inactive";
                        }
                 ?>
                <tr>
                    <td><?= $row->item_title?></td>
                    <td class="center"><?= $row->item_price?></td>
                    <td class="center"><?= $row->was_price?></td>
                    <td class="center">
                        <span class="label label-<?=$status_label?>"><?=$status_desc?></span>
                    </td>
                    <td class="center">
                        <a class="btn btn-success" href="#">
                            <i class="halflings-icon white zoom-in"></i>
                        </a>
                        <a class="btn btn-info" href="<?= base_url("store_items/create/$row->id");?>">
                            <i class="halflings-icon white edit"></i>
                        </a>
                    </td>
                </tr>
                <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div><!--/span-->

</div><!--/row-->