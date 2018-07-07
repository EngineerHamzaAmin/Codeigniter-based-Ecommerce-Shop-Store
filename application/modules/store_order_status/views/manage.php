<h1>Manage Order Status Options</h1>

<?= $flash_data;?>

<p style="margin-top: 20px">
    <a href="<?= base_url().'store_order_status/create';?>">
        <button type="button" class="btn btn-primary">Add New Order Status Option</button>
    </a>
</p>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white briefcase"></i><span class="break"></span>Order Status Options</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th>Status Title</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($query->result() as $row):?>
                <tr>
                    <td class="center"><?= $row->status_title?></td>
                    <td class="center">
                        <a class="btn btn-info" href="<?= base_url("store_order_status/create/$row->id");?>">
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