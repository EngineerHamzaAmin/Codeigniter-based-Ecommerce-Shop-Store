<h1><?= $headline;?></h1>

<?= validation_errors("<p style='color:red;'>","</p>");?>
<?= $flash_data;?>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Page Details</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>


        <div class="box-content">
            <?php
                $form_location=base_url("blog/create/$update_id");
            ?>
            <form class="form-horizontal" method="post" action="<?= $form_location;?>">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="date_published">Date Published</label>
                        <div class="controls">
                            <input type="text" class="input-xlarge datepicker" name="date_published" value="<?= $date_published?>">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="page_title">Page Title</label>
                        <div class="controls">
                            <input type="text" class="span6" name="page_title" value="<?= $page_title?>">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="author">Author</label>
                        <div class="controls">
                            <input type="text" class="span6" name="author" value="<?= $author?>">
                        </div>
                    </div>

                    <div class="control-group hidden-phone">
                        <label class="control-label">Page Keywords</label>
                        <div class="controls">
                            <textarea rows="3" class="span6" name="page_keywords" rows="3">
                                <?= $page_keywords;?>
                            </textarea>
                        </div>
                    </div>


                    <div class="control-group hidden-phone">
                        <label class="control-label">Page Description</label>
                        <div class="controls">
                            <textarea rows="3" class="span6" name="page_description" rows="3">
                                <?= $page_description;?>
                            </textarea>
                        </div>
                    </div>

                    <div class="control-group hidden-phone">
                        <label class="control-label" for="textarea2">Page Content</label>
                        <div class="controls">
                            <textarea class="cleditor" id="textarea2" name="page_content" rows="3">
                                <?= $page_content;?>
                            </textarea>
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

<?php if(isset($update_id)):?>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon white edit"></i><span class="break"></span>Additional Page Options</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>

            <div class="box-content">
                <div class="row-fluid sortable">

                    <?php if($picture==""){?>
                        <a href="<?= base_url("blog/upload_image/$update_id")?>"><button type="button" class="btn btn-primary">Upload Blog Image</button></a>
                    <?php }else{?>
                        <a href="<?= base_url("blog/delete_image/$update_id")?>"><button type="button" class="btn btn-danger">Delete Blog Image</button></a>
                    <?php }
                    if($update_id>2):?>
                    <a href="<?= base_url("blog/deleteConf/$update_id")?>"><button type="button" class="btn btn-danger">Delete Page</button></a>
                    <?php endif;?>
                    <a href="<?= base_url("$page_url")?>"><button type="button" class="btn btn-default">View Page</button></a>
                </div>
            </div>

        </div><!--/span-->

    </div><!--/row-->
<?php endif;?>

<?php if(isset($picture) && $picture != ''):?>
    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-content">
                <div class="row-fluid sortable">
                    <img src="<?=base_url("blog_pics/$picture")?>">
                </div>
            </div>
        </div><!--/span-->

    </div><!--/row-->
<?php endif;?>
