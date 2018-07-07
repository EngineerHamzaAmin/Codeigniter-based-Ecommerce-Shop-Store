<h1><?= $headline;?></h1>



<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Delete Confirmation</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>




        <div class="box-content">
         <?php echo form_open('store_accounts/delete/'.$update_id,["class"=>"form-horizontal"]);?>
            <p style="margin-top: 20px;">Please confirm if you really want to delete this Account</p>
            <fieldset>
                <div class="control-group" style="height: 200px">
                        <button type="submit" class="btn btn-danger" value="Yes - Delete">Yes - Delete</button>
                        <button type="submit" name="submit" class="btn" value="Cancel" >Cancel</button>
                </div>
            </fieldset>
        </div>
    </div><!--/span-->

</div><!--/row-->