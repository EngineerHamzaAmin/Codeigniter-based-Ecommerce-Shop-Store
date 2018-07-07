<h1>Please Create An Account</h1>
<p>You do not need to create an account with us, however if you do then you will be able to enjoy:</p>
<ul>
    <li>Order Tracking</li>
    <li>Downloadable Order Forms</li>
    <li>Priority Technical Support</li>
</ul>

<p>Creating an account take a minute or so</p>
<p>Would you like to create an account></p>

<div class="col-md-10 col-md-offset-1" style="text-align: center">
    <?= form_open('cart/submit_choice') ?>
    <button type="submit" class="btn btn-success" name="submit" value="Yes - Let's Do It">
        <span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
        Yes - Let's Do It
    </button>

    <button type="submit" style="margin-left: 24px;" class="btn btn-danger" name="submit" value="No Thanks">
        <span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
        No Thanks
    </button>

    <a href="<?= base_url("youraccount/login") ?>">
        <button type="button" style="margin-left: 24px;" class="btn btn-danger" name="submit">
            <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
           Already Have Account(Login)
        </button>
    </a>
    <?= form_hidden('checkout_token', $checkout_token) ?>
    <?= form_close() ?>
</div>