<style type="text/css">
    .map-responsive{
        overflow: hidden;
        padding-bottom: 56.25%;
        position: relative;
        height: 0;
    }
    .map-responsive iframe{
        left: 0;
        top: 0;
        height: 100%;
        width: 100%;
        position: absolute;
    }

</style>

<div class="row">
    <div class="col-md-12">
        <div class="container">
            <h1>Contact Us</h1><br>
            <?= validation_errors('<p style="color: red ;">','</p>')?>
            <div class="row">
                <div class="col-md-8">
                    <div class="well well-sm">
                        <form method="post" action="<?= base_url('contactus/submit')?>">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="yourname">
                                            Your Name</label>
                                        <input type="text" class="form-control" name="yourname" value="<?= $yourname?>" id="yourname" placeholder="Enter Your Name" required="required" />
                                    </div>
                                    <div class="form-group">
                                        <label for="email">
                                            Email</label>
                                        <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                            <input type="email" class="form-control" id="email" value="<?= $email?>" name="email" placeholder="Enter your email" required="required" /></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="telnum">
                                            Telephone Number</label>
                                        <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span>
                                </span>
                                            <input type="text" class="form-control" id="telnum" name="telnum" value="<?= $telnum?>" placeholder="Enter your telephone number" required="required" /></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="message">
                                            Message</label>
                                        <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                                  placeholder="Message"><?= $message?></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <button type="submit" value="Submit" name="submit" class="btn btn-primary pull-right" id="btnContactUs">
                                        Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <form>
                        <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
                        <address>
                            <strong><?= $our_name?></strong><br>
                           <?= $our_address?>
                            <abbr title="Phone">
                                P:</abbr>
                            <?= $our_telnum?>
                        </address>
                        <address>
                            <strong>Telephone</strong><br>
                            <a href="mailto:#"><?= $our_telnum?></a>
                        </address>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="map-responsive">
                        <?= $map_code?>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>