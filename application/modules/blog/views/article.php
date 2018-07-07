<div class="row">
    <div class="col-md-12">
        <h1><?= $page_details->page_title?></h1>
        <p><?= $page_details->page_description?></p>
        <img src="<?= base_url('blog_pics/').$page_details->picture?>"><br><br><br>
        <legend>Author: <?= $page_details->author?></legend>
        <strong>Date Published: <?= $page_details->date_published;?></strong>
        <p><b>Keywords:</b> <?= $page_details->page_keywords?></p>
    </div>
</div>