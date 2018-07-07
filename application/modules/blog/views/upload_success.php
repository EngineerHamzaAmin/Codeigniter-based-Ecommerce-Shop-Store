<h1><?= $headline;?></h1>

<?= validation_errors("<p style='color:red;'>","</p>");?>

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon white edit"></i><span class="break"></span>Upload Success</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
                </div>
            </div>

            <div class="box-content">
                <ul>
                    <?php foreach ($upload_data as $item => $value):?>
                        <li><?php echo $item;?>: <?php echo $value;?></li>
                    <?php endforeach; ?>
                </ul>
                <a href="<?= base_url("blog/create/$update_id");?>"><button type="submit" class="btn btn-primary">Go to Main Update Page</button></a>
            </div>

        </div><!--/span-->

    </div><!--/row-->