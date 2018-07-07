<h1>Manage <?= $folder_type?></h1>

<?= $flash_data;?>

<p style="margin-top: 20px">
    <a href="<?= base_url().'enquiries/create';?>">
        <button type="button" class="btn btn-primary">Compose Message</button>
    </a>
</p>


<style type="text/css">
    .urgent{
        color:red;
    }
</style>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white envelope"></i><span class="break"></span><?= $folder_type?></h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th>Ranking</th>
                    <th>Date Sent</th>
                    <th>Sent By</th>
                    <th>Subject</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $this->load->module('Store_orderstatus');
                $this->load->module('Store_accounts');
                $this->load->module('timedate');
                foreach($query->result() as $row):

                    $customer_data['firstname'] = $row->firstname;
                    $customer_data['lastname'] = $row->lastname;
                    $customer_data['company'] = $row->company;
                    $opened = $row->opened;
                    $ranking = $row->ranking;
                    if($opened == 1){
                        $icon = '<span class="icon-envelope"></span>';
                    } else {
                        $icon = '<span class="icon-envelope-alt" style="color: orange;"></span>';
                    }

                    $date_sent = $this->timedate->get_nice_date($row->date_created,'full');

                    if($row->sent_by == 0){
                        $sent_by = 'Admin';
                    } else{
                        $sent_by = $this->store_accounts->_get_customer_name($row->sent_by,$customer_data);
                    }

                 ?>
                <tr <?php
                    if($row->urgent == 1){
                        echo ' class="urgent"';
                    }
                ?>>

                    <td class="span1"><?= $icon?></td>
                    <td><?php
                        if($ranking>0){
                            for($i=0;$i<$ranking;$i++){
                               echo '<span class="icon-star"></span>';
                            }
                        } else {
                            echo '-';
                        }
                     ?></td>
                    <td><?= $date_sent?></td>
                    <td><?= $sent_by?></td>
                    <td><?= $row->subject?></td>
                    <td>
                        <a class="btn btn-info" href="<?= base_url("enquiries/view/$row->id");?>">
                            <i class="halflings-icon white eye-open"></i>
                        </a>
                    </td>
                </tr>
                <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div><!--/span-->
</div><!--/row-->