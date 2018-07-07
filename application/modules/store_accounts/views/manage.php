<h1>Manage accounts</h1>

<?= $flash_data;?>

<p style="margin-top: 20px">
    <a href="<?= base_url().'store_accounts/create';?>">
        <button type="button" class="btn btn-primary">Add New Account</button>
    </a>
</p>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white briefcase"></i><span class="break"></span>Customers Accounts</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th>User Name</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Company</th>
                    <th>Date Created</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($query->result() as $row):?>
                <tr>
                    <?php $this->load->module('timedate');?>
                    <td><?= $row->username?></td>
                    <td><?= $row->firstname?></td>
                    <td class="center"><?= $row->lastname?></td>
                    <td class="center"><?= $row->company?></td>
                    <td class="center"><?=$this->timedate->get_nice_date($row->date_made,'cool')?></td>
                    <td class="center">
                        <a class="btn btn-info" href="<?= base_url("store_accounts/create/$row->id");?>">
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