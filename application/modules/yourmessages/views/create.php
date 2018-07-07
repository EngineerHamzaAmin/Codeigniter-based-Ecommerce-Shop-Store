<?php
$form_location = current_url();
?>
<div class="row">
    <div class="col-md-8">


        <h1><?= $headline; ?></h1>

        <?= validation_errors("<p style='color:red;'>", "</p>"); ?>


        <form class="form-horizontal" method="post" action="<?= $form_location; ?>" style="margin-top: 24px;">
            <?php if($code==''){ ?>
                <div class="form-group">
                    <label for="subject" class="col-sm-2 control-label">Subject</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="subject" name="subject" value="<?= $subject ?>"
                               placeholder="Enter your subject here">
                    </div>
                </div>
                <?php
            } else{
                echo form_hidden('subject','Subject',$subject);
            }?>
            <div class="form-group">
                <label for="message" class="col-sm-2 control-label">Message</label>
                <div class="col-sm-10">
                    <textarea class="form-control" name="message" id="message" rows="6"
                              placeholder="Enter your message here"><?= $message ?></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="urgent" value="1" <?php
                            if ($urgent == 1) {
                                echo "checked";
                            }
                            ?> > Urgent
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" value="Submit" name="submit" class="btn btn-primary">Submit Your Message
                    </button>
                    <button type="submit" value="Cancel" name="submit" class="btn btn-default">Cancel</button>
                    <?php
                        echo form_hidden('token',$token);
                    ?>
                </div>
            </div>
        </form>

    </div>
</div>