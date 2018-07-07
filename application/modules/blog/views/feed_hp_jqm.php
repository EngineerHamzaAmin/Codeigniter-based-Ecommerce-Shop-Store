<h3 class="ui-bar ui-bar-a">The Blog</h3>
<div data-role="collapsibleset" data-theme="a" data-content-theme="a" data-mini="true">
    <?php
    foreach ($query->result() as $row):
        $this->load->module('timedate');
        $article_preview = word_limiter($row->page_content, 25);
        $pic_path = str_replace('.', '_thumb.', $row->picture);
        $thumbnail_pic = base_url("blog_pics/$pic_path");
        $date_published = $this->timedate->get_nice_date($row->date_published, 'mini');
        $article_url = base_url("blog/article/$row->page_url");
        ?>

        <div data-role="collapsible">
            <h3><?= $row->page_title ?></h3>
            <p style="font-size: 0.9em;">
                <?= $row->author ?> -
                <span style="color: #999"><?= $date_published ?></span>
            </p>
            <p><?= $article_preview ?></p>
            <p style="text-align: right">
                <a href="<?= $article_url ?>">Read More</a>
            </p>
        </div>
    <?php endforeach; ?>

</div>