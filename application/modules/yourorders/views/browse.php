<h1>Your orders</h1>
<?php
    if($num_rows<1){
        echo 'You have not placed any order yet';
    }  else {
        echo '<p>'.$showing_statement.'</p>';
        echo $pagination;
?>

<table class="table table-striped table-bordered bootstrap-datatable datatable">
    <thead>
    <tr style="background-color: #666; color: white;">
        <th>Order Ref</th>
        <th>Order Value</th>
        <th>Date Created</th>
        <th>Order Status</th>
        <th>Opened</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $this->load->module('timedate');
    foreach($query->result() as $row):
        $date_created = $this->timedate->get_nice_date($row->date_created,'cool');
        $order_status = $row->order_status;
        $order_status_title = $order_status_options[$order_status];
        ?>
        <tr>
            <td><?= $row->order_ref?></td>
            <td><?= $row->mc_gross?></td>
            <td><?= $date_created?></td>
            <td class="center"><?= $order_status_title ?></td>
            <td class="center">
                <a class="btn btn-default" href="<?= base_url("yourorders/view/$row->order_ref")?>">
                    <i class="glyphicon glyphicon-eye-open" aria-hidden="true"></i> View
                </a>
            </td>
        </tr>
    <?php endforeach;?>
    </tbody>
</table>
<?php } ?>