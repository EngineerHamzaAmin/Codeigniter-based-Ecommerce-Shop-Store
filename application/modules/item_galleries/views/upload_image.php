<h1><?= $headline;?></h1>



<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header" data-original-title>
            <h2><i class="halflings-icon white edit"></i><span class="break"></span>Select Image</h2>
            <div class="box-icon">
                <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
            </div>
        </div>




        <div class="box-content">
            <?php
                if(isset($error)){
                   foreach($error as $key => $value){
                       echo $value;
                   }
                }
            ?>

            <?php echo form_open_multipart('item_galleries/do_upload/'.$parent_id,["class"=>"form-horizontal"]);?>
                <p style="margin-top: 20px;">Please select a file from your computer and then press 'Upload'</p>
                <fieldset>

                    <div class="control-group" style="height: 200px">

                        <label class="control-label" for="fileInput">File input</label>
                        <div class="controls">
                            <input class="input-file uniform_on" id="fileInput" type="file" name="userfile">
                        </div>
                    </div>

                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary" value="upload">Upload</button>
                        <button type="submit" name="submit" class="btn" value="Cancel" >Cancel</button>
                    </div>
                </fieldset>
            </form>




        </div>
    </div><!--/span-->

</div><!--/row-->