<p style="margin-top: 20px">

    <a href="<?= base_url("sliders/create/$parent_id")?>">
        <button type="button" class="btn btn-default">Previous Page</button>
    </a>
<a href="#myModal" role="button" class="btn btn-info" data-toggle="modal">Create New Slide</a>

<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="1" role="dialog" aria-labelledby="myModalLable" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
        <h3 id="myModalLabel">Create Slide</h3>
    </div>
    <form class="form-horizontal" action="<?= $form_location ?>" method="post">
        <div class="modal-body">
            <div class="form-group">
                 <label class="control-label" for="target_url">Target URL(OPTIONAL)</label>
                <div class="controls">
                    <input type="text" class="span6" name="target_url" placeholder="enter slide target URL here">
                </div>
            <div class="form-group">
                 <label class="control-label" for="alt_text">Alt Text(OPTIONAL)</label>
                <div class="controls">
                    <input type="text" class="span6" name="alt_text" placeholder="enter slide Alt Text here">
                </div>
            </div>
        </div>
        <div class="modal-footer">
             <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
             <button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button>
        </div>
            <?php
                echo form_hidden('parent_id',$parent_id);
            ?>
        </div>
    </form>
</div>
</p>
