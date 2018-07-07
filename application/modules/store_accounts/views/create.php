<h1><?= $headline;?></h1>

<?= validation_errors("<p style='color:red;'>","</p>");?>
<?= $flash_data;?>

<?php if(isset($update_id)):?>
<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Account Options</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>

        <div class="box-content">
            <div class="row-fluid sortable">
                <a href="<?= base_url("store_accounts/update_pword/$update_id")?>"><button type="button" class="btn btn-primary">Update Password</button></a>
                <a href="<?= base_url("store_accounts/deleteConf/$update_id")?>"><button type="button" class="btn btn-danger">Delete Account</button></a>
            </div>
        </div>

    </div><!--/span-->

</div><!--/row-->
<?php endif;?>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>account Details</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>


        <div class="box-content">
            <?php
                $form_location=base_url("store_accounts/create/$update_id");
            ?>
            <form class="form-horizontal" method="post" action="<?= $form_location;?>">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="username">Username</label>
                        <div class="controls"> <input type="text" class="span6" name=usertname" value="<?=$username?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="firstname">Firstname</label>
                        <div class="controls"> <input type="text" class="span6" name="firstname" value="<?=$firstname?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="lastname">Lastname</label> <div class="controls">
                            <input type="text" class="span6" name="lastname" value="<?=$lastname?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="company">Company</label>
                        <div class="controls"> <input type="text" class="span6" name="company" value="<?=$company?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="address1">Address1</label>
                        <div class="controls"> <input type="text" class="span6" name="address1" value="<?=$address1?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="address2">Address2</label>
                        <div class="controls"> <input type="text" class="span6" name="address2" value="<?=$address2?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="town">Town</label>
                        <div class="controls"> <input type="text" class="span6" name="town" value="<?=$town?>"> </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="country">Country</label>
                        <div class="controls"> <input type="text" class="span6" name="country" value="<?=$country?>" >
                        </div> </div>
                    <div class="control-group">
                        <label class="control-label" for="postcode">Postcode</label>
                        <div class="controls"> <input type="text" class="span6" name="postcode" value="<?=$postcode?>" > </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="telnum">Telnum</label>
                        <div class="controls"> <input type="text" class="span6" name="telnum" value="<?=$telnum?>" > </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="email">Email</label>
                        <div class="controls"> <input type="text" class="span6" name="email" value="<?=$email?>"> </div>
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