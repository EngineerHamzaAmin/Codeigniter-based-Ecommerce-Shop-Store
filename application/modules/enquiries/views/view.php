<h1><?= $headline ?></h1>


<p style="margin-top: 20px">
    <a href="<?= base_url("enquiries/create/$update_id"); ?>">
        <button type="button" class="btn btn-primary">Reply To Message</button>
    </a>
</p>

<?php
$this->load->module('Store_orderstatus');
$this->load->module('timedate');
foreach ($query->result() as $row):

    $date_sent = $this->timedate->get_nice_date($row->date_created, 'full');

    if ($row->sent_by == 0) {
        $sent_by = 'Admin';
    } else {
        $sent_by = $this->store_accounts->_get_customer_name($row->sent_by);
    }

    $subject = $row->subject;
    $message = $row->message;
    $ranking = $row->ranking;
?>


<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white star"></i><span class="break"></span>Enquiry Ranking</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>


        <div class="box-content">
            <?php
            $form_location = base_url("enquiries/submit_ranking/$update_id");
            ?>
            <form class="form-horizontal" method="post" action="<?= $form_location; ?>">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="ranking">Ranking</label>
                        <div class="controls">
                            <?php
                            $additional_dd_code = "id='selectError3'";
                            if($ranking>0){
                               unset($options['']);
                            }
                            echo form_dropdown('ranking', $options, $ranking, $additional_dd_code);
                            ?>
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


<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white envelope"></i><span class="break"></span>Enquiry Details</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <tbody>
                <tr>
                    <td style="font-weight: bold">Date Sent</td>
                    <td><?= $date_sent ?></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Sent By</td>
                    <td><?= $sent_by ?></td>
                </tr>
                <tr>
                    <td style="font-weight: bold">Subject</td>
                    <td><?= $subject ?></td>
                </tr>
                <tr>
                    <td style="font-weight: bold; vertical-align: top">Message</td>
                    <td style="vertical-align: top"><?= nl2br($message) ?></td>
                </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div><!--/span-->

</div><!--/row-->