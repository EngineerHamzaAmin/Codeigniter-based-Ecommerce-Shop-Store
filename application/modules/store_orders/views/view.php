<h1><?= $headline; ?></h1>

<?= validation_errors("<p style='color:red;'>", "</p>"); ?>
<?= $flash_data; ?>

<?php if (isset($update_id)): ?>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon white edit"></i><span class="break"></span>Order
                    Status: <?= $status_title ?></h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>

            <div class="box-content">
                <div class="row-fluid sortable">
                    <p>If you want to update status title, kindly choose it from the below dropdown menu.</p>
                    <?php
                    $form_location = base_url("store_orders/submit_order_status/$update_id");
                    ?>
                    <form class="form-horizontal" method="post" action="<?= $form_location; ?>">
                        <fieldset>
                            <div class="control-group">
                                <label class="control-label" for="parent_cat_id">Order Status</label>
                                <div class="controls">
                                    <?php
                                    $additional_dd_code = "id='selectError3'";
                                    echo form_dropdown('order_status', $options, $order_status, $additional_dd_code);
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
            </div>

        </div><!--/span-->

    </div><!--/row-->
<?php endif; ?>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white file"></i><span class="break"></span>Order Status Option</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>


        <div class="box-content">
            <p style="text-align: right">
                <a href="<?= base_url("store_accounts/create/$shopper_id"); ?>">
                    <button type="button" class="btn btn-info">Edit Account Details</button>
                </a>
            </p>
            <table>
                <tr>
                    <td class="span3">First Name</td>
                    <td><?= $store_accounts_data['firstname'] ?></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><?= $store_accounts_data['lastname'] ?></td>
                </tr>
                <tr>
                    <td>Company</td>
                    <td><?= $store_accounts_data['company'] ?></td>
                </tr>
                <tr>
                    <td>Telephone Number</td>
                    <td><?= $store_accounts_data['telnum'] ?></td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td><?= $store_accounts_data['email'] ?></td>
                </tr>
                <tr>
                    <td style="vertical-align: top">Customer Address</td>
                    <td style="vertical-align: top"><?= $customer_address ?></td>
                </tr>
            </table>
        </div>
    </div><!--/span-->
</div><!--/row-->
<?php

$user_type = 'admin';
echo Modules::run('cart/_draw_cart_contents',$query_cc,$user_type);
?>