<h1><?= $headline;?></h1>

<?= $flash_data;?>


<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Item Sizes Options</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>


        <div class="box-content">
            <p>Submit new Option as required. When you finish your work then press "Finished"</p>
            <?php
            $form_location=base_url("store_item_sizes/submit/$update_id");
            ?>
            <form class="form-horizontal" method="post" action="<?= $form_location;?>">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="size">New Option</label>
                        <div class="controls">
                            <input type="text" class="span6" name="size">
                        </div>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
                        <button type="submit" class="btn" name="submit" value="Finished">Finished</button>
                    </div>
                </fieldset>
            </form>

        </div>
    </div><!--/span-->

</div><!--/row-->

<?php if($num_rows>0):?>
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
                    <th>Count</th>
                    <th>size</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <?php
                    $count=1;
                    foreach($query->result() as $row):
                ?>
                    <tr>
                        <td><?= $count++?></td>
                        <td class="center"><?= $row->size?></td>
                        <td class="center">
                            <a class="btn btn-danger" href="<?= base_url("store_item_sizes/delete/$row->id");?>">Remove Option
                                <i class="halflings-icon white trash"></i>
                            </a>
                        </td>
                    </tr>
                <?php endforeach;?>
                </tbody>
            </table>
        </div>
    </div><!--/span-->

</div><!--/row-->
<?php endif;?>