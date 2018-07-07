<?php $form_location = base_url('youraccount/submit');?>

<h1>Create Account</h1>
<?= validation_errors('<p style="color: red">','</p>');?>
<form class="form-horizontal" method="post" action="<?= $form_location ?>">
    <fieldset>

        <!-- Form Name -->
        <legend>Please submit your details using form below</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="username">Username</label>
            <div class="col-md-4">
                <input id="username" name="username" type="text" placeholder="Enter Username of your choice here" class="form-control input-md" value="<?= $username?>">
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="email">E-mail</label>
            <div class="col-md-4">
                <input id="email" name="email" type="text" placeholder="Enter your email here" class="form-control input-md"  value="<?= $email?>">
            </div>
        </div>


        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="pword">Password</label>
            <div class="col-md-4">
                <input id="pword" name="pword" type="password" placeholder="Enter password here" class="form-control input-md"  value="<?= $pword?>">
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="repeat_pword">Repeat Password</label>
            <div class="col-md-4">
                <input id="repeat_pword" name="repeat_pword" type="password" placeholder="Confirm password here" class="form-control input-md"  value="<?= $pword?>">
            </div>
        </div>

        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="singlebutton">Create account?</label>
            <div class="col-md-4">
                <button id="singlebutton" name="submit" value="Submit" class="btn btn-primary">Yes</button>
            </div>
        </div>

    </fieldset>
</form>
