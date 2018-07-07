<?= form_open($form_location)?>
<div class="ui-body ui-body-a ui-corner-all">
    <h3>Contact Us</h3>

    <?= validation_errors('<p style="color: red ;">','</p>')?>

    <label for="text_basic">Name:</label>
    <input type="text" name="yourname" value="<?= $yourname?>" id="text_basic">

    <label for="text_basic">Email:</label>
    <input type="text" name="email" value="<?= $email?>" id="text_basic">

    <label for="text_basic">Telephone Number:</label>
    <input type="text" name="telnum" value="<?= $telnum?>" id="text_basic">

    <label for="textarea">Message:</label>
    <textarea cols="40" rows="8" name="message" id="textarea"><?= $message?></textarea>

    <button type="submit" name="submit" value="Submit" class="ui-shadow ui-button ui-corner-all">Submit</button>
</div>
<?= form_close()?>