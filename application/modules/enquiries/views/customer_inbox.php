<h1>Manage <?= $folder_type ?></h1>

<?= $flash_data; ?>

<p style="margin-top: 20px">
    <a href="<?= base_url() . 'yourmessages/create'; ?>">
        <button type="button" class="btn btn-primary">Compose Message</button>
    </a>
</p>


<table class="table table-striped table-bordered bootstrap-datatable datatable">
    <thead >
    <tr style="color: white; background-color: #666">
        <th>&nbsp;</th>
        <th>Date Sent</th>
        <th>Sent By</th>
        <th>Subject</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $this->load->module('Store_orderstatus');
    $this->load->module('site_security');
    $this->load->module('timedate');
    $team_name = $this->site_security->_get_support_team_name();
    foreach ($query->result() as $row):

        $customer_data['firstname'] = $row->firstname;
        $customer_data['lastname'] = $row->lastname;
        $customer_data['company'] = $row->company;
        $opened = $row->opened;
        if ($opened == 1) {
            $icon = '<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>';
        } else {
            $icon = '<span class="glyphicon glyphicon-envelope" style="color: orange;" aria-hidden="true"></span>';
        }

        $date_sent = $this->timedate->get_nice_date($row->date_created, 'mini');

        if ($row->sent_by == 0) {
            $sent_by = $team_name;
        } else {
            $sent_by = $this->store_accounts->_get_customer_name($row->sent_by, $customer_data);
        }
        ?>
        <tr>

            <td class="span1"><?= $icon ?></td>
            <td><?= $date_sent ?></td>
            <td><?= $sent_by ?></td>
            <td><?= $row->subject ?></td>
            <td>
                <a class="btn btn-default" href="<?= base_url("yourmessages/view/$row->code"); ?>">
                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>View
                </a>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
        